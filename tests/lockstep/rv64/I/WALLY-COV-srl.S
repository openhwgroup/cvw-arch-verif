///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-srl.S
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
li x0, 0xa23ae617ae7d9e59 # initialize rs1
li x22, 0x7ebf4c6b14deff81 # initialize rs2
srl x31, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xccaf45663f88c47e # initialize rs1
li x31, 0x0d2c518dc419a814 # initialize rs2
srl x5, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4e7ee52fe6a64b0d # initialize rs1
li x23, 0x65ba87bff9ee53be # initialize rs2
srl x30, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc551cee51384cc0d # initialize rs1
li x27, 0x67eb0c092920d19b # initialize rs2
srl x12, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x788f60f4b15d0961 # initialize rs1
li x10, 0xca2cc789bedcb142 # initialize rs2
srl x17, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0adab8730afe1b0b # initialize rs1
li x6, 0xe6b8512dd8fd6514 # initialize rs2
srl x9, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x7f750b926486703e # initialize rs1
li x14, 0x66267812efbccdd6 # initialize rs2
srl x20, x6, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x467639833b164d7d # initialize rs1
li x17, 0xe2c19c66d19997d3 # initialize rs2
srl x3, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x14ca954a9200a7d3 # initialize rs1
li x1, 0xd83d3a32b805f168 # initialize rs2
srl x18, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc7f40672950a31bf # initialize rs1
li x22, 0xfbb7c66df5c8fd53 # initialize rs2
srl x13, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x373f42e8551377fa # initialize rs1
li x31, 0x8472f693da445daa # initialize rs2
srl x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1b25ac2e46ae062f # initialize rs1
li x24, 0x612f143109d2a452 # initialize rs2
srl x29, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x43506556d52929cd # initialize rs1
li x29, 0x8242e79a288605f7 # initialize rs2
srl x18, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xff45f48bd10a4a00 # initialize rs1
li x18, 0x18865f60c4b4c409 # initialize rs2
srl x8, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x25ccedadfe84836b # initialize rs1
li x21, 0x44ff2db6e8b2b209 # initialize rs2
srl x26, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xfb0ca38d7634b9a0 # initialize rs1
li x28, 0x96c8ab2faa4cecf4 # initialize rs2
srl x19, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5621818f9f717906 # initialize rs1
li x13, 0xb0f7ddefebcf132d # initialize rs2
srl x2, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xcce652f5a7638d8a # initialize rs1
li x31, 0x712216ea1b16a7e7 # initialize rs2
srl x2, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9853721753687893 # initialize rs1
li x24, 0x82dcafdeb4bcb218 # initialize rs2
srl x15, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7d833dfdae5e8d63 # initialize rs1
li x28, 0x60febae1b261ffa9 # initialize rs2
srl x17, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x2bfb5be01f27af86 # initialize rs1
li x1, 0x339860311d743381 # initialize rs2
srl x17, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc8a47f65647f41db # initialize rs1
li x17, 0x4603100ba5ff885e # initialize rs2
srl x22, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xff9c2e8d5f8683e3 # initialize rs1
li x26, 0x20039d2c720ed279 # initialize rs2
srl x14, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x46ee01a6e9f27c89 # initialize rs1
li x26, 0xd351c960ea33446f # initialize rs2
srl x29, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5832ef9a1b2ad154 # initialize rs1
li x8, 0x3d61b1770507161e # initialize rs2
srl x10, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9b8bb07771ad077c # initialize rs1
li x19, 0x03a102c5c54c291b # initialize rs2
srl x17, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x57aa3dee624e7d70 # initialize rs1
li x21, 0xfdab08399ed448e7 # initialize rs2
srl x28, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x629b24cdb8ddbc38 # initialize rs1
li x14, 0x8e4b23f5124e938b # initialize rs2
srl x29, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2bcaa58b6f550140 # initialize rs1
li x13, 0x8aa392c82964f345 # initialize rs2
srl x26, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf3025a65f432ff5e # initialize rs1
li x24, 0x47d3add179f533c4 # initialize rs2
srl x14, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9663e53aafe98e19 # initialize rs1
li x9, 0xfe020a7d5a0d771b # initialize rs2
srl x25, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd81afc39c6547527 # initialize rs1
li x12, 0xeebef92314e6760e # initialize rs2
srl x8, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x31, 0xaaf58e6e43837c3d # initialize rs1
li x0, 0xe602974af7d1c62a # initialize rs2
srl x13, x31, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x4e1c47f2e555c8fb # initialize rs1
li x1, 0x78423a1b9ccea66d # initialize rs2
srl x26, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0x07c498887a5f4a99 # initialize rs1
li x2, 0x8c8b0c1a1af1bfeb # initialize rs2
srl x12, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x3dc6b4dd950901ce # initialize rs1
li x3, 0x98b40c69aef7da4f # initialize rs2
srl x13, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x83f57a63f8d42fb5 # initialize rs1
li x4, 0x53a16c51edc0eb8e # initialize rs2
srl x26, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xead1b9c143574b00 # initialize rs1
li x5, 0x9e7ac37e6c7290c4 # initialize rs2
srl x31, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x4db6cca9f5f74acc # initialize rs1
li x6, 0x7e4843b3697576ee # initialize rs2
srl x10, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x4df2af44ab61fe4e # initialize rs1
li x7, 0x9e1c6fc740359373 # initialize rs2
srl x30, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x96bc5657b19a5287 # initialize rs1
li x8, 0x4122c88cf1679bf9 # initialize rs2
srl x2, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x1da54cbfe76c92c1 # initialize rs1
li x9, 0xc07940d73a7a0e9f # initialize rs2
srl x18, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0x7070385eea5bbebe # initialize rs1
li x10, 0x3b7a8d9c244d15f6 # initialize rs2
srl x12, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x0a7c5ae7728d9b43 # initialize rs1
li x11, 0x26dd54c2c1dcc3e9 # initialize rs2
srl x25, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x9170081fe3d20a52 # initialize rs1
li x12, 0xfdeeb8263aa6c85d # initialize rs2
srl x25, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0xcb1d08ec82a1ba0a # initialize rs1
li x13, 0xf359513f878cc5a4 # initialize rs2
srl x10, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0xe36bcbbf178b8f7b # initialize rs1
li x14, 0x27d0b56e65526419 # initialize rs2
srl x21, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x20ce7333d9e48521 # initialize rs1
li x15, 0x768a805f9a1c5b5e # initialize rs2
srl x24, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x948e3421e7b0ea7d # initialize rs1
li x16, 0xba7d981c2d9de25f # initialize rs2
srl x9, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0xa0e110386f3da420 # initialize rs1
li x17, 0x7e07fa381b8ff2af # initialize rs2
srl x12, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x5167bfb61d16fbb9 # initialize rs1
li x18, 0x532e71e4b3e74713 # initialize rs2
srl x16, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x27, 0x8adc3458efa6f769 # initialize rs1
li x19, 0xc9523b979dcd6965 # initialize rs2
srl x10, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x16b2f21990a6f50e # initialize rs1
li x20, 0x77b96800cf358bb0 # initialize rs2
srl x6, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0x366b17c2c7acffe9 # initialize rs1
li x21, 0x895c4cad07704412 # initialize rs2
srl x27, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x29, 0xc63cfbf1bab0cf36 # initialize rs1
li x22, 0x54befb222a7037a2 # initialize rs2
srl x9, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0x66956288d14e01fc # initialize rs1
li x23, 0x048b7cca5bbf3db2 # initialize rs2
srl x17, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0x2896a7541fb39961 # initialize rs1
li x24, 0xfd02656197856612 # initialize rs2
srl x23, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0xe27d280b6e74bff3 # initialize rs1
li x25, 0xed1d1b8505658406 # initialize rs2
srl x18, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0x154ecae76c6d08cc # initialize rs1
li x26, 0xa0dc3130179e36b6 # initialize rs2
srl x15, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x17, 0x8306109fbc886b21 # initialize rs1
li x27, 0xeb2e3c57c9e86dd9 # initialize rs2
srl x29, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x25, 0xc405de6ed8173bfd # initialize rs1
li x28, 0xab9ff6dc82d0a0bc # initialize rs2
srl x26, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xe790915a050950d7 # initialize rs1
li x29, 0x852900e4415df740 # initialize rs2
srl x30, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x1456aa33f1b90b2c # initialize rs1
li x30, 0xbb335cd6faaf6c0d # initialize rs2
srl x15, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x74430f4eb8327633 # initialize rs1
li x31, 0x6ba33b998038d0d0 # initialize rs2
srl x6, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cp_rd (Test destination rd = x0)
li x27, 0xe36457165842c0c7 # initialize rs1
li x15, 0x405b17fb6d300277 # initialize rs2
srl x0, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x7c21fb84204869e5 # initialize rs1
li x8, 0xa1331179ec957fcf # initialize rs2
srl x1, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0xdc14a72063a40279 # initialize rs1
li x30, 0x8f0dde808d3a9c7e # initialize rs2
srl x2, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0x5a9ae86751c52017 # initialize rs1
li x16, 0xbcefc06eb157b331 # initialize rs2
srl x3, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x3d00ba9e95c45100 # initialize rs1
li x26, 0x506c5cc7837fd08e # initialize rs2
srl x4, x25, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0xb8b54481df2cf05b # initialize rs1
li x28, 0x40a95ca96507423c # initialize rs2
srl x5, x23, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x0dcc3495d0de71e0 # initialize rs1
li x12, 0x0b22737da00c50fe # initialize rs2
srl x6, x20, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xb990135bd56a921c # initialize rs1
li x3, 0x9a34d1e663d658d9 # initialize rs2
srl x7, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x1193812ccf9148d5 # initialize rs1
li x21, 0x8829a25db16bb5bd # initialize rs2
srl x8, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x29, 0xd52bce5ae7d5a802 # initialize rs1
li x15, 0xf22e20351b89b81d # initialize rs2
srl x9, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x17, 0x54477d39a569ab37 # initialize rs1
li x14, 0x6958c11db1c6eb32 # initialize rs2
srl x10, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x6, 0x9433c5e5b23a8dfa # initialize rs1
li x8, 0x889190953a3eee90 # initialize rs2
srl x11, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xf20a2e57ebad612d # initialize rs1
li x20, 0x5ef0fa3fdbed020d # initialize rs2
srl x12, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x08728ae71b40eb4f # initialize rs1
li x16, 0x653a00d78b4f24f0 # initialize rs2
srl x13, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x3ccf678f140b23e3 # initialize rs1
li x13, 0x30f816f94300b70e # initialize rs2
srl x14, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xe09e3bbdfc165044 # initialize rs1
li x30, 0xece7d4cc98ac0c84 # initialize rs2
srl x15, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x301696a6ef23af30 # initialize rs1
li x13, 0xfa7a010b11a3d4cb # initialize rs2
srl x16, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x77b736b37fe5e0e1 # initialize rs1
li x5, 0x3b6bf98be461d11b # initialize rs2
srl x17, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0x0dec30866cd08c60 # initialize rs1
li x10, 0x689d10cc5d0785dc # initialize rs2
srl x18, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0xa4d83bd3cdbd56d3 # initialize rs1
li x24, 0x4cb673bed94fdbc9 # initialize rs2
srl x19, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x15, 0xa390c40e58e0f3fe # initialize rs1
li x29, 0xe15435a3fda3a3c1 # initialize rs2
srl x20, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0x757f7fbafe3c1134 # initialize rs1
li x6, 0x6c274f152d30e3a2 # initialize rs2
srl x21, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x986e3be29e48e2c0 # initialize rs1
li x28, 0xa8a354187528989a # initialize rs2
srl x22, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0x0d66e3349fabe6e4 # initialize rs1
li x29, 0x2ff8bc2c965d2a94 # initialize rs2
srl x23, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe9a57e5a78fc602b # initialize rs1
li x26, 0x9f46ded7ab305054 # initialize rs2
srl x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x74256668bb24b7f6 # initialize rs1
li x7, 0x7ea17162cca6b983 # initialize rs2
srl x25, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0xd7fc42e54afba23c # initialize rs1
li x28, 0x7d6e26768c91f80b # initialize rs2
srl x26, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0xee650ea21b798254 # initialize rs1
li x18, 0xad1c73b880cc0fce # initialize rs2
srl x27, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0xac49eb5394367b47 # initialize rs1
li x23, 0x43efc5c6c0c86b9a # initialize rs2
srl x28, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0xcc67b34eb597b52d # initialize rs1
li x9, 0x2eb97f8231962bb1 # initialize rs2
srl x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x712432569a1b7145 # initialize rs1
li x20, 0xcbca4f0ebe9b26bf # initialize rs2
srl x30, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x9096ad8227f9fb2f # initialize rs1
li x8, 0xa493d9d575da655f # initialize rs2
srl x31, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x0000000000000000 # initialize rs1
li x19, 0xd72d1fbde29e3e24 # initialize rs2
srl x15, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x9, 0x9db0d7202d5d2932 # initialize rs2
srl x19, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rs1
li x17, 0x226bf1b291f25a43 # initialize rs2
srl x5, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x14, 0xd470f4dde6954a82 # initialize rs2
srl x12, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
li x16, 0x9016e6cf456a84be # initialize rs2
srl x13, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
li x25, 0xa8662b0d981c8b1a # initialize rs2
srl x2, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x12, 0x53b2786e68f016f1 # initialize rs2
srl x19, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x666cd3b5c35ede87 # initialize rs2
srl x19, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x11, 0x4cdd1dcc5163bad2 # initialize rs2
srl x15, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x04e9c65e90cbbe5f # initialize rs2
srl x8, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x339f858e2b7003aa # initialize rs2
srl x3, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x13, 0xe0ddf09e31836af4 # initialize rs2
srl x19, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x9, 0x3e40727d941a0a5e # initialize rs2
srl x14, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x13, 0x9e59eb969117513b # initialize rs2
srl x24, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
li x9, 0x24217d0b1850fd9d # initialize rs2
srl x20, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
li x2, 0x5d45cd47baf13f2d # initialize rs2
srl x27, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0x6ae343484487facf # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
srl x12, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x2fab82ee32978a22 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
srl x25, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x2, 0xbf17f17d4c78a205 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
srl x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x26, 0xfa954ebf62110816 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
srl x12, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x2fef48432a441de8 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
srl x24, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x11, 0x11130458f3e62a37 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
srl x24, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x17, 0x891beb6ce56da5f3 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
srl x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0xc4d02f771ef8d4ae # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
srl x24, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x30, 0x68581250aceaa4ac # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
srl x13, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x30, 0x759ef18fd4da892b # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
srl x28, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x71e2930798ca3d74 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x15, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0xa0c59e5846cb2876 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
srl x31, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xc82e8def60a856cd # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
srl x23, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0xedd6b21ad9e87948 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
srl x6, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x510add7badb7a2ed # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
srl x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x16, 0x344ef75f666ef890 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
srl x21, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
srl x2, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x14, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
srl x22, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
srl x29, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
srl x17, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
srl x15, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
srl x24, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
srl x15, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
srl x22, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
srl x25, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000000 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
srl x29, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x19, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x28, 0x0000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
srl x14, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x25, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
srl x3, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
srl x29, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x27, 0x0000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
srl x5, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x3, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
srl x25, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
srl x7, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
srl x17, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
srl x14, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x10, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
srl x17, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x16, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
srl x2, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
srl x9, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
srl x13, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
srl x31, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
srl x25, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
srl x9, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x8, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x21, 0x0000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
srl x19, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
srl x2, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
srl x24, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
srl x16, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x21, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
srl x17, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
srl x11, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
srl x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x2, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
srl x22, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x6, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
srl x24, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
srl x11, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
srl x10, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
srl x5, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
srl x7, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
srl x23, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000002 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
srl x24, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x29, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x13, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
srl x24, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
srl x9, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
srl x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x30, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
srl x14, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x6, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
srl x21, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x11, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
srl x16, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x14, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
srl x10, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x29, 0x8000000000000000 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
srl x9, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
srl x31, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0x8000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
srl x13, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x24, 0x8000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
srl x30, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
srl x13, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x17, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
srl x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
srl x21, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
srl x3, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x1, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x14, 0x8000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
srl x27, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
srl x7, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
srl x6, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x28, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
srl x10, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x8, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
srl x10, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
srl x24, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
srl x29, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x16, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
srl x10, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x3, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
srl x27, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
srl x9, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x10, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
srl x18, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
srl x28, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
srl x30, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
srl x29, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000001 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
srl x5, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000001 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x21, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x13, 0x8000000000000001 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
srl x25, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
srl x21, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
srl x10, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x22, 0x8000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
srl x26, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x23, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
srl x3, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x31, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
srl x3, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x17, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
srl x12, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x26, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
srl x29, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
srl x22, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
srl x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
srl x29, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x16, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
srl x18, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
srl x26, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
srl x3, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x21, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
srl x17, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x7fffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x14, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x7fffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
srl x14, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
srl x24, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
srl x14, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
srl x22, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
srl x14, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x24, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
srl x5, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x5, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
srl x31, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x17, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
srl x6, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
srl x23, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
srl x10, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
srl x23, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
srl x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
srl x12, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
srl x31, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
srl x29, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7ffffffffffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x3, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x27, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
srl x11, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
srl x5, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
srl x11, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x19, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
srl x5, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
srl x27, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x10, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
srl x8, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x24, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
srl x5, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x28, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
srl x17, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x20, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
srl x11, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
srl x17, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
srl x8, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
srl x16, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
srl x27, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
srl x9, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
srl x7, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xffffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x1, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x14, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
srl x27, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
srl x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
srl x1, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x18, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
srl x26, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x8, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
srl x27, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x6, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
srl x1, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
srl x28, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x27, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
srl x10, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
srl x28, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
srl x16, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
srl x12, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
srl x27, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x27, 0xfffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
srl x22, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
srl x11, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0xfffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
srl x12, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x27, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
srl x6, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
srl x8, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
srl x10, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
srl x20, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x17, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
srl x21, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
srl x2, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
srl x29, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
srl x7, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
srl x30, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
srl x6, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
srl x19, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
srl x30, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
srl x13, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
srl x22, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
srl x1, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x31, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
srl x28, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
srl x8, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
srl x5, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
srl x9, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
srl x26, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
srl x31, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
srl x27, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
srl x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
srl x23, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
srl x17, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
srl x11, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
srl x28, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
srl x5, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
srl x6, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
srl x17, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x3, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
srl x26, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
srl x8, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
srl x23, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
srl x11, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
srl x30, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
srl x31, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x15, 0x5555555555555555 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
srl x28, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
srl x20, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
srl x20, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x6, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
srl x23, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
srl x26, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
srl x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
srl x11, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x29, 0x5555555555555555 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
srl x7, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x19, 0x5555555555555555 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
srl x20, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5555555555555555 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x14, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
srl x11, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
srl x29, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
srl x12, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
srl x18, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x14, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
srl x9, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
srl x13, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
srl x10, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
srl x8, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
srl x24, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x29, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
srl x13, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
srl x28, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
srl x21, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x31, 0x00000000ffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
srl x27, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x00000000ffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
srl x30, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
srl x22, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x00000000ffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x15, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
srl x15, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
srl x23, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
srl x28, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x23, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
srl x30, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x28, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
srl x22, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
srl x28, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x12, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
srl x1, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
srl x30, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x28, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
srl x7, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x28, 0x00000000fffffffe # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
srl x14, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
srl x28, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
srl x15, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
srl x31, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
srl x18, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
srl x3, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000fffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x20, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x12, 0x00000000fffffffe # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
srl x20, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
srl x16, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
srl x2, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
srl x7, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x15, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
srl x17, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x21, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
srl x12, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x6, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
srl x28, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x11, 0x0000000100000000 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
srl x22, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x3, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
srl x2, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x21, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
srl x29, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
srl x31, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
srl x12, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
srl x14, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
srl x31, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000100000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
srl x6, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x14, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x11, 0x0000000100000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
srl x19, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x1, 0x0000000100000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
srl x23, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x9, 0x0000000100000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
srl x28, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
srl x25, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x3, 0x0000000100000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
srl x17, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x6, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
srl x21, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
srl x26, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x6, 0x0000000100000001 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
srl x17, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
srl x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x13, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
srl x25, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
srl x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
srl x30, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x30, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
srl x19, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
srl x31, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000100000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
srl x17, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
srl x14, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x13, 0x0000000100000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
srl x5, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
srl x22, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
srl x11, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
srl x13, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
srl x9, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x072e7b334b0dfdc9 # initialize rs1
li x0, 0x3035e3ce185a1e0c # initialize rs2
srl x20, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xfc751a60ff870274 # initialize rs1
li x1, 0x7386db2f4281e7d8 # initialize rs2
srl x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x5721f63dc1389853 # initialize rs1
li x2, 0xdc6a0ba8fbf3902d # initialize rs2
srl x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x90c83a1bba61cd3e # initialize rs1
li x3, 0xb1c68a52cfb8f257 # initialize rs2
srl x11, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x787369112706b8c1 # initialize rs1
li x4, 0xf7e86e524fe7e600 # initialize rs2
srl x5, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0xae1c39c80cc963cd # initialize rs1
li x5, 0xc5362e1d6d46ccb5 # initialize rs2
srl x4, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x26ddf39d0a3245ab # initialize rs1
li x6, 0x18a426e9cfddf64d # initialize rs2
srl x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf1280e5d8bc72f3e # initialize rs1
li x7, 0x460a7fc83bdf4b75 # initialize rs2
srl x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1de9e1542b37b4f7 # initialize rs1
li x8, 0x17318cc1976bc965 # initialize rs2
srl x5, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xdd066f42c6a7aed3 # initialize rs1
li x9, 0xcb6e29878e3b12ef # initialize rs2
srl x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7d93120f5f1dabaf # initialize rs1
li x10, 0xc37ea6ab3170f0de # initialize rs2
srl x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x89e8a70c654098ed # initialize rs1
li x11, 0x17aa986921eb220d # initialize rs2
srl x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7ab03720c501c8be # initialize rs1
li x12, 0xb89e4cc905a58ea0 # initialize rs2
srl x26, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xf548f0cb097aa823 # initialize rs1
li x13, 0x4b0514d05b748d9f # initialize rs2
srl x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x6547c427868b1d21 # initialize rs1
li x14, 0xfad064e8aa447c40 # initialize rs2
srl x13, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0c965b06b9ff1e62 # initialize rs1
li x15, 0x9c90ed3aa36e6437 # initialize rs2
srl x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xe28a4093bde38bb6 # initialize rs1
li x16, 0x92efad1df27c3f5b # initialize rs2
srl x9, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xa848dbd34a69c9d5 # initialize rs1
li x17, 0x53dc04cf7e12f5d7 # initialize rs2
srl x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x38d4c20a847d6be3 # initialize rs1
li x18, 0x1a0d89f1688b113f # initialize rs2
srl x7, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xa1d4b1568c2e4408 # initialize rs1
li x19, 0x9bfde1270dc6bd35 # initialize rs2
srl x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3e00bf0e4e89a262 # initialize rs1
li x20, 0xbf6a2f37f1e55b96 # initialize rs2
srl x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x20793e85151c8a27 # initialize rs1
li x21, 0x4092c93b5b11175c # initialize rs2
srl x26, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x71316fa6bfde21b0 # initialize rs1
li x22, 0xf3eb436f534d3683 # initialize rs2
srl x26, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x3ecb73dc5bc32035 # initialize rs1
li x23, 0x5db052e0680dfc7b # initialize rs2
srl x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x05742853108810f0 # initialize rs1
li x24, 0x0a772c7eabd15100 # initialize rs2
srl x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x0cf4bcd4eff419f0 # initialize rs1
li x25, 0xf7011a5f198a7c33 # initialize rs2
srl x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x6cef4770a5114b6f # initialize rs1
li x26, 0x397f9cf68a3a2422 # initialize rs2
srl x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1935bca27429a177 # initialize rs1
li x27, 0x41472b12a9832a30 # initialize rs2
srl x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd7a9f3df61f99af9 # initialize rs1
li x28, 0x61261c7cefc59afe # initialize rs2
srl x18, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc27ad4d22b66afcf # initialize rs1
li x29, 0x204f3d85cee9066e # initialize rs2
srl x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc6431508d6667206 # initialize rs1
li x30, 0xe3fdc749d4da338d # initialize rs2
srl x3, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xba30f0ed781cc282 # initialize rs1
li x31, 0x925737ead1e101b6 # initialize rs2
srl x26, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd1960df646f946aa # initialize rs1
li x16, 0x01a070961af39964 # initialize rs2
srl x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x84e223e9de869ce9 # initialize rs1
li x8, 0xeb191d17a94d3be2 # initialize rs2
srl x1, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x933bc0d126e366d6 # initialize rs1
li x7, 0x3e3dc67ded330556 # initialize rs2
srl x2, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x250ea98136aac91f # initialize rs1
li x26, 0xb1310ba1b433c638 # initialize rs2
srl x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x53f9aaa3229759d1 # initialize rs1
li x20, 0xd818e9b8ad1004c2 # initialize rs2
srl x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x08e540d3df7a7773 # initialize rs1
li x24, 0xde7c69441be738b2 # initialize rs2
srl x5, x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x98329a102d26473b # initialize rs1
li x9, 0x95bfa00265d9d9c7 # initialize rs2
srl x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x25e86c89c5e84318 # initialize rs1
li x6, 0xb7641047057fe300 # initialize rs2
srl x7, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8a51cd6c12ae10e9 # initialize rs1
li x17, 0x0f81a31fe722dbc0 # initialize rs2
srl x8, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc414a320c38d8d0d # initialize rs1
li x22, 0xe62abee2ec2921b0 # initialize rs2
srl x9, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x67ffbabc8c1d8bc7 # initialize rs1
li x23, 0x131801f09311c6d8 # initialize rs2
srl x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x689498e79fde7433 # initialize rs1
li x3, 0x74d875c98a098e23 # initialize rs2
srl x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2be56e25fbd36010 # initialize rs1
li x5, 0x2a071c0f673b2267 # initialize rs2
srl x12, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x35cef524c9d8e28b # initialize rs1
li x10, 0x9e7b333769e50477 # initialize rs2
srl x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x422105adf3ec5139 # initialize rs1
li x29, 0x5aadb3bd3a941dc2 # initialize rs2
srl x14, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x652b0b89a76cbcd7 # initialize rs1
li x1, 0x018c4c62d24d1004 # initialize rs2
srl x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5aa3d23e18825758 # initialize rs1
li x18, 0xea1658919dff0b35 # initialize rs2
srl x16, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1f838e12ef15fd60 # initialize rs1
li x29, 0xd58bfd772716315c # initialize rs2
srl x17, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x323d4e74a7299446 # initialize rs1
li x27, 0xaeecf3254b61a4ec # initialize rs2
srl x18, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1e9dc546b587f805 # initialize rs1
li x20, 0xb2689350fd2f7b74 # initialize rs2
srl x19, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9fca7753eff6060a # initialize rs1
li x7, 0xcdfb2ea39aae8c2a # initialize rs2
srl x20, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x41b1878986bf789f # initialize rs1
li x28, 0x1a2bb319d664558d # initialize rs2
srl x21, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5619e4bbaf8b138f # initialize rs1
li x22, 0x2bbc81158fa3b67c # initialize rs2
srl x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1370808034d35fed # initialize rs1
li x5, 0x8c8f91f619a374e6 # initialize rs2
srl x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6c57db43e36fff26 # initialize rs1
li x18, 0x644d36bd105f3aa6 # initialize rs2
srl x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x1bc34311273330d9 # initialize rs1
li x12, 0xc306f3de5911c1e7 # initialize rs2
srl x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xeebd3aa2d64f1fb2 # initialize rs1
li x9, 0x6c7ac0df04f9c2f9 # initialize rs2
srl x26, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xca0454c0dd3d6cf2 # initialize rs1
li x19, 0x46bce2e6b9c4f94a # initialize rs2
srl x27, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb15e62d5c017d14c # initialize rs1
li x12, 0xc8e2acdd22cac95d # initialize rs2
srl x28, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb141f47c89ceaac9 # initialize rs1
li x1, 0x7412262d1dd645ec # initialize rs2
srl x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x81515bb846895abb # initialize rs1
li x30, 0x6ac10b8036c9e342 # initialize rs2
srl x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe80f18cb49322868 # initialize rs1
li x3, 0x50e17c72bcfebe28 # initialize rs2
srl x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0x6a366c7a4626bc72 # initialize rs1
li x0, 0x0c6c0075bfa82f47 # initialize rs2
srl x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x10, 0x6679bb8b3056e78c # initialize rs1
li x1, 0x2e944f4503dc432a # initialize rs2
srl x1, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0xaffdc47efcda91b0 # initialize rs1
li x2, 0x53aa3587a84c2b31 # initialize rs2
srl x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x29, 0x24468bb459838ed1 # initialize rs1
li x3, 0x433176b6d5494e38 # initialize rs2
srl x3, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x74be2e3f7a734be2 # initialize rs1
li x4, 0xf75fb7ee198e4b8f # initialize rs2
srl x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x40fe0083a011d836 # initialize rs1
li x5, 0x91709224f598e819 # initialize rs2
srl x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x4a375ff20adf1c37 # initialize rs1
li x6, 0x008f9c895121a795 # initialize rs2
srl x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x27a2226644b3fc03 # initialize rs1
li x7, 0x63f599727f813315 # initialize rs2
srl x7, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0x7bc9514dae072d91 # initialize rs1
li x8, 0x74e96cd5c3c56415 # initialize rs2
srl x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0x841e94128e976fad # initialize rs1
li x9, 0xbb02eec6a9ececf4 # initialize rs2
srl x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0xf71b0a2c3208cb33 # initialize rs1
li x10, 0xef27550662c99625 # initialize rs2
srl x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x26, 0x4f05ae20a5f707b1 # initialize rs1
li x11, 0x17e1e14453c7daad # initialize rs2
srl x11, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0xa8fadda5955bd0cd # initialize rs1
li x12, 0x3a0d308e9d9325a1 # initialize rs2
srl x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x15, 0x05d6403539a7eedf # initialize rs1
li x13, 0xe1aad83f7fc9645d # initialize rs2
srl x13, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x24, 0x52e9560d000d65b2 # initialize rs1
li x14, 0x1aaf90bb4d04721f # initialize rs2
srl x14, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x2, 0x050616f7ee5bdfd0 # initialize rs1
li x15, 0x30c585f7e1dcfb10 # initialize rs2
srl x15, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x20, 0x9d3216218ae159a6 # initialize rs1
li x16, 0x93ac293372fbf176 # initialize rs2
srl x16, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x8, 0x6161637f09d856c9 # initialize rs1
li x17, 0xf3da7821e94e24dc # initialize rs2
srl x17, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0x89edcc28ca29c991 # initialize rs1
li x18, 0xe8f81913ecdc9e81 # initialize rs2
srl x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x20, 0xd55ce49ff03a352e # initialize rs1
li x19, 0x2df2ea57934e936c # initialize rs2
srl x19, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x26, 0x473ecfcec88ed361 # initialize rs1
li x20, 0xfb303b07c9856c95 # initialize rs2
srl x20, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0xb704eed06c31dc60 # initialize rs1
li x21, 0xfb67d4559eac2e56 # initialize rs2
srl x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0x2fe5e448817f78c7 # initialize rs1
li x22, 0x30234ca4476e9a04 # initialize rs2
srl x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x28, 0x81f455005fdd9d73 # initialize rs1
li x23, 0x676a9655117680c6 # initialize rs2
srl x23, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0x8b72e64c9a8031f8 # initialize rs1
li x24, 0x813667b699e94966 # initialize rs2
srl x24, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0x25dec3c4eafcc451 # initialize rs1
li x25, 0x462019d2425debbe # initialize rs2
srl x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x25, 0x062ae4b9fb8f3802 # initialize rs1
li x26, 0x29f5fa238aeca36f # initialize rs2
srl x26, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0x9bf574f162577cba # initialize rs1
li x27, 0xfcf6dbb1ab784825 # initialize rs2
srl x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x30, 0x3a19de9a5e248573 # initialize rs1
li x28, 0x6762761ec7b6370e # initialize rs2
srl x28, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x7, 0x943dbdaf1934d6a6 # initialize rs1
li x29, 0x34974a93ded145b1 # initialize rs2
srl x29, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x8a2b22e6ac91f4df # initialize rs1
li x30, 0x7ed55ad287b0a960 # initialize rs2
srl x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x8, 0x4e1b1dac304d4507 # initialize rs1
li x31, 0xdbea2a9287aa61b1 # initialize rs2
srl x31, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3685b0c61db07640 # initialize rs1
li x0, 0x7d89d44371d804d9 # initialize rs2
srl x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa9bee6503f1c75ea # initialize rs1
li x1, 0x88e4cba5a545df69 # initialize rs2
srl x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0a25f846ea97c723 # initialize rs1
li x2, 0x0fd5ce4de14c25bd # initialize rs2
srl x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x568557e55b56e3a2 # initialize rs1
li x3, 0x8c79c8d20dc91e66 # initialize rs2
srl x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf401e159d818bac7 # initialize rs1
li x4, 0x6ba313015ac41183 # initialize rs2
srl x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x059a0b892f8476d3 # initialize rs1
li x5, 0x15a8f9e52c854dd0 # initialize rs2
srl x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a27e74e047e97f6 # initialize rs1
li x6, 0x7bf853c78e2c57d8 # initialize rs2
srl x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1df7cacf8ab6e8aa # initialize rs1
li x7, 0xa1520678023c77dd # initialize rs2
srl x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe80d0acdd8525f7d # initialize rs1
li x8, 0xbd5be0dcb8fcae80 # initialize rs2
srl x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa1e9536ec8e644ab # initialize rs1
li x9, 0xb2154553833f4293 # initialize rs2
srl x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x81241e29b1ea7397 # initialize rs1
li x10, 0xddc95394a41eeead # initialize rs2
srl x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xc8a9aefacc0079d7 # initialize rs1
li x11, 0xd2af4e902c10d3b1 # initialize rs2
srl x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4a9a372d4d85f530 # initialize rs1
li x12, 0xea1dfbc0e0909ceb # initialize rs2
srl x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc9d0b88ad5b3ed37 # initialize rs1
li x13, 0xafe5ff30792636f8 # initialize rs2
srl x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf24333c44f185ba5 # initialize rs1
li x14, 0xb80f29460b5d67fd # initialize rs2
srl x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x0f2725d695874476 # initialize rs1
li x15, 0x092827583475299c # initialize rs2
srl x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x7fa8ebc55c929e20 # initialize rs1
li x16, 0x768b11f8cfb24ce8 # initialize rs2
srl x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xcff2f54bb21defc2 # initialize rs1
li x17, 0x986ff5026edc5cb9 # initialize rs2
srl x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc1c3e062f0d80a0e # initialize rs1
li x18, 0xda35814194be894c # initialize rs2
srl x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xf26d110bd901d70a # initialize rs1
li x19, 0x7c01ceb5f4a691f8 # initialize rs2
srl x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xa019bd6acac0639d # initialize rs1
li x20, 0xdd2328de25dbf5dd # initialize rs2
srl x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2b315a7a435b3b1b # initialize rs1
li x21, 0x968e2051bead4891 # initialize rs2
srl x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xdedbfa8d907bbabc # initialize rs1
li x22, 0x34c33fa42a9d3656 # initialize rs2
srl x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfce1fb3ea338a359 # initialize rs1
li x23, 0xa90ffa861784e752 # initialize rs2
srl x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x9af69d3b5ff4eb2a # initialize rs1
li x24, 0xc8bfc2082b1dfa0d # initialize rs2
srl x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x84a6fff3f34511f7 # initialize rs1
li x25, 0x23c7855d382b85ce # initialize rs2
srl x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x08f64bd602792720 # initialize rs1
li x26, 0x3430dd85d3e98ab9 # initialize rs2
srl x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc71013267a3713a2 # initialize rs1
li x27, 0x1f8550305032c738 # initialize rs2
srl x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x69b35e34ec546be0 # initialize rs1
li x28, 0x51ed7482cdf22c4c # initialize rs2
srl x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xae520f18af9035e1 # initialize rs1
li x29, 0xd08fa2b61488beb5 # initialize rs2
srl x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x5205163bf96883db # initialize rs1
li x30, 0x1400cd77fee304cb # initialize rs2
srl x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xab3bc5e712ab2907 # initialize rs1
li x31, 0xe599652654a8b361 # initialize rs2
srl x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x30, x28 # perform first operation
srl x21, x13, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x27, x16 # perform first operation
srl x22, x18, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x1, x5 # perform first operation
srl x11, x17, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x2, x21 # perform first operation
srl x16, x28, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x29, x10 # perform first operation
srl x29, x25, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x23, x5 # perform first operation
srl x23, x26, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x10, x30 # perform first operation
srl x5, x19, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x9, x16 # perform first operation
srl x11, x13, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x19, x18 # perform first operation
srl x11, x25, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x10, x31 # perform first operation
srl x10, x24, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x31, x25 # perform first operation
srl x25, x28, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x22, x27 # perform first operation
srl x19, x29, x11 # perform second (triggering) operation

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
