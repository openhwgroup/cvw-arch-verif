///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sltu.S
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
li x0, 0xb1d4b220 # initialize rs1
li x22, 0xab31e683 # initialize rs2
sltu x9, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x44fb0733 # initialize rs1
li x22, 0x514a1324 # initialize rs2
sltu x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcfd9c30f # initialize rs1
li x23, 0x6185061b # initialize rs2
sltu x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x33044a46 # initialize rs1
li x28, 0x61e7469e # initialize rs2
sltu x8, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe1839ad4 # initialize rs1
li x6, 0xb72cfa24 # initialize rs2
sltu x27, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb4834938 # initialize rs1
li x25, 0x93aa2c9a # initialize rs2
sltu x2, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x77f4b96c # initialize rs1
li x28, 0x67105809 # initialize rs2
sltu x21, x6, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa4ea883e # initialize rs1
li x26, 0x6aea8413 # initialize rs2
sltu x27, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x001d4241 # initialize rs1
li x25, 0x11ce35cf # initialize rs2
sltu x10, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xed0a136f # initialize rs1
li x28, 0x7154afc1 # initialize rs2
sltu x14, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xafb87e4a # initialize rs1
li x20, 0xbb5eec05 # initialize rs2
sltu x25, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd0ec5171 # initialize rs1
li x9, 0x79ba110e # initialize rs2
sltu x22, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7698287e # initialize rs1
li x3, 0xec0b505f # initialize rs2
sltu x14, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa30a96c3 # initialize rs1
li x7, 0xff19de6b # initialize rs2
sltu x15, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0f40d55d # initialize rs1
li x25, 0x32cf1d2a # initialize rs2
sltu x21, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0e5a6c32 # initialize rs1
li x23, 0xb88bc7b0 # initialize rs2
sltu x7, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4ba77e37 # initialize rs1
li x27, 0x961f9456 # initialize rs2
sltu x26, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x9e856cc3 # initialize rs1
li x27, 0x08be55c7 # initialize rs2
sltu x1, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x42b1056f # initialize rs1
li x29, 0xcb19c6c9 # initialize rs2
sltu x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd1e17559 # initialize rs1
li x26, 0xbcb61621 # initialize rs2
sltu x25, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x12b0e334 # initialize rs1
li x19, 0xc491fb3d # initialize rs2
sltu x10, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x70b5fe33 # initialize rs1
li x3, 0xfc777c2e # initialize rs2
sltu x28, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x61c12234 # initialize rs1
li x26, 0x7eea0d35 # initialize rs2
sltu x17, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc15d37c1 # initialize rs1
li x31, 0xfcc6a167 # initialize rs2
sltu x15, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7beee776 # initialize rs1
li x8, 0x69e32199 # initialize rs2
sltu x14, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd85ef95c # initialize rs1
li x14, 0xf893a7bd # initialize rs2
sltu x2, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1660de2c # initialize rs1
li x11, 0x3d80b0c7 # initialize rs2
sltu x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x40763762 # initialize rs1
li x22, 0x4805c352 # initialize rs2
sltu x23, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xcbf780f7 # initialize rs1
li x25, 0x7307badf # initialize rs2
sltu x24, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7c2d0e37 # initialize rs1
li x9, 0xceb72614 # initialize rs2
sltu x2, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xdf47d1a6 # initialize rs1
li x11, 0x69fe8051 # initialize rs2
sltu x13, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf656b119 # initialize rs1
li x26, 0x9ced223f # initialize rs2
sltu x7, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0xc1fc3c36 # initialize rs1
li x0, 0x72d8368b # initialize rs2
sltu x1, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xba8789c2 # initialize rs1
li x1, 0x0fe49d1c # initialize rs2
sltu x7, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x928945f7 # initialize rs1
li x2, 0x31d06627 # initialize rs2
sltu x13, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0x8dbcd5a8 # initialize rs1
li x3, 0x17382a42 # initialize rs2
sltu x13, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x4cfb9530 # initialize rs1
li x4, 0xc498ef67 # initialize rs2
sltu x22, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xf1e1c825 # initialize rs1
li x5, 0xa91d6451 # initialize rs2
sltu x31, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x7a2f3b2e # initialize rs1
li x6, 0x2b4fc974 # initialize rs2
sltu x18, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x824f58c2 # initialize rs1
li x7, 0x5dab0c5a # initialize rs2
sltu x8, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0xbed863c1 # initialize rs1
li x8, 0x04c9486f # initialize rs2
sltu x7, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x479a2cfb # initialize rs1
li x9, 0x1439744e # initialize rs2
sltu x19, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x5b1a4d96 # initialize rs1
li x10, 0x91794d88 # initialize rs2
sltu x23, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x1341e03a # initialize rs1
li x11, 0xf11e3df3 # initialize rs2
sltu x12, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x300ef0dd # initialize rs1
li x12, 0xf291d4ba # initialize rs2
sltu x13, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x81c9fe37 # initialize rs1
li x13, 0xcac68c09 # initialize rs2
sltu x31, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x3eaeae45 # initialize rs1
li x14, 0xe3230ed0 # initialize rs2
sltu x22, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x11, 0xaf0fe1b3 # initialize rs1
li x15, 0xd381fbc5 # initialize rs2
sltu x20, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x17, 0xf0170cb1 # initialize rs1
li x16, 0xb8a16058 # initialize rs2
sltu x12, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x7f4f1df0 # initialize rs1
li x17, 0x3163a6be # initialize rs2
sltu x15, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x99ecf208 # initialize rs1
li x18, 0x68f5d33b # initialize rs2
sltu x2, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x598212fc # initialize rs1
li x19, 0x2d440daa # initialize rs2
sltu x9, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0xf778de7f # initialize rs1
li x20, 0x7217ce12 # initialize rs2
sltu x11, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xbbdb37b9 # initialize rs1
li x21, 0x9053154c # initialize rs2
sltu x9, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x7484a925 # initialize rs1
li x22, 0x04d2f57a # initialize rs2
sltu x25, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x7, 0xf9782133 # initialize rs1
li x23, 0x7f8bf137 # initialize rs2
sltu x1, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x53523cfa # initialize rs1
li x24, 0x5708c6fa # initialize rs2
sltu x21, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x14ea7540 # initialize rs1
li x25, 0xbe0f179d # initialize rs2
sltu x10, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x6680cbcb # initialize rs1
li x26, 0x1acf459f # initialize rs2
sltu x12, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x14, 0x806cd6ac # initialize rs1
li x27, 0x2864cd24 # initialize rs2
sltu x2, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x0de422f8 # initialize rs1
li x28, 0xb7fa0d10 # initialize rs2
sltu x8, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0xb27a7f54 # initialize rs1
li x29, 0x223caa13 # initialize rs2
sltu x7, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0xd53cbdd2 # initialize rs1
li x30, 0x1a7a8987 # initialize rs2
sltu x13, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0xf404236d # initialize rs1
li x31, 0xbadb1388 # initialize rs2
sltu x15, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

# Testcase cp_rd (Test destination rd = x0)
li x30, 0x6e611d70 # initialize rs1
li x31, 0xb08091d0 # initialize rs2
sltu x0, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0x17ae0b34 # initialize rs1
li x9, 0x9382b690 # initialize rs2
sltu x1, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x1, 0x7eb5f896 # initialize rs1
li x14, 0x505827c2 # initialize rs2
sltu x2, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xb4390e08 # initialize rs1
li x30, 0xe8c9e3fc # initialize rs2
sltu x3, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x5eb1e429 # initialize rs1
li x25, 0xd2bfb173 # initialize rs2
sltu x4, x11, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xe34361da # initialize rs1
li x6, 0xff6a0142 # initialize rs2
sltu x5, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
li x20, 0xd37e0b62 # initialize rs1
li x13, 0x96f9e9b3 # initialize rs2
sltu x6, x20, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x27913e2a # initialize rs1
li x4, 0xc351d1ee # initialize rs2
sltu x7, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0x5359d67d # initialize rs1
li x16, 0x2fe806d6 # initialize rs2
sltu x8, x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x5ee0d371 # initialize rs1
li x30, 0x4877e58c # initialize rs2
sltu x9, x27, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0xb20a34f1 # initialize rs1
li x13, 0x1eeb2527 # initialize rs2
sltu x10, x16, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x60870b5e # initialize rs1
li x1, 0x0de2e137 # initialize rs2
sltu x11, x22, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x27, 0x0e4cd333 # initialize rs1
li x14, 0xa5f14699 # initialize rs2
sltu x12, x27, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x8d2a6d9b # initialize rs1
li x29, 0x537ff329 # initialize rs2
sltu x13, x10, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0xadb84c2d # initialize rs1
li x10, 0x5f3ca396 # initialize rs2
sltu x14, x18, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x87bf9f8f # initialize rs1
li x27, 0xf54c23ab # initialize rs2
sltu x15, x7, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x8, 0xd95e2416 # initialize rs1
li x31, 0xbf70c06c # initialize rs2
sltu x16, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xc8fc8b07 # initialize rs1
li x11, 0xe6c3dd96 # initialize rs2
sltu x17, x10, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0xef359fbb # initialize rs1
li x18, 0x09d80c43 # initialize rs2
sltu x18, x31, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x64acdb7e # initialize rs1
li x4, 0xac9666bb # initialize rs2
sltu x19, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x3b1b7959 # initialize rs1
li x11, 0x347b8d42 # initialize rs2
sltu x20, x18, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0x77e434ad # initialize rs1
li x19, 0xf59723a4 # initialize rs2
sltu x21, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x266c39fa # initialize rs1
li x18, 0x6234d76e # initialize rs2
sltu x22, x20, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0x458674fe # initialize rs1
li x8, 0x25c4ae34 # initialize rs2
sltu x23, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0x0ab125bb # initialize rs1
li x9, 0x85f84f00 # initialize rs2
sltu x24, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0x994f4f04 # initialize rs1
li x1, 0xdf4f5d41 # initialize rs2
sltu x25, x20, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0xdc3eac39 # initialize rs1
li x19, 0x6d6c3616 # initialize rs2
sltu x26, x9, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x31, 0x50db43e0 # initialize rs1
li x18, 0xeb1c2244 # initialize rs2
sltu x27, x31, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x4, 0x6ac1b0eb # initialize rs1
li x7, 0xcb4b93a1 # initialize rs2
sltu x28, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0x29ae02e7 # initialize rs1
li x7, 0x92b242a9 # initialize rs2
sltu x29, x9, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x34617985 # initialize rs1
li x29, 0xaf9f58ff # initialize rs2
sltu x30, x12, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xc1f8ef60 # initialize rs1
li x24, 0x4d3959cf # initialize rs2
sltu x31, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x00000000 # initialize rs1
li x27, 0xab053589 # initialize rs2
sltu x22, x1, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x00000001 # initialize rs1
li x14, 0x5032f606 # initialize rs2
sltu x25, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x00000002 # initialize rs1
li x21, 0x05e9a52b # initialize rs2
sltu x23, x13, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x4, 0x941a1946 # initialize rs2
sltu x2, x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001 # initialize rs1
li x27, 0x9ea69cfa # initialize rs2
sltu x7, x24, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x1, 0x3a3829aa # initialize rs2
sltu x30, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x2, 0x9825e63e # initialize rs2
sltu x28, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x12, 0x10973d6e # initialize rs2
sltu x26, x8, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0xfffffffe # initialize rs1
li x25, 0x33932a9c # initialize rs2
sltu x13, x6, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x16, 0xd0c13092 # initialize rs2
sltu x10, x31, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x3, 0x99592c2b # initialize rs2
sltu x14, x25, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x23, 0xaee448e9 # initialize rs2
sltu x18, x10, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x28, 0xdb4d2cb3 # initialize rs1
li x29, 0x00000000 # initialize rs2
sltu x13, x28, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xc0bd0556 # initialize rs1
li x1, 0x00000001 # initialize rs2
sltu x27, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x354d4dd8 # initialize rs1
li x25, 0x00000002 # initialize rs2
sltu x24, x20, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x5883bfdc # initialize rs1
li x20, 0x80000000 # initialize rs2
sltu x27, x16, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x4c026a39 # initialize rs1
li x9, 0x80000001 # initialize rs2
sltu x2, x8, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0x36de9892 # initialize rs1
li x26, 0x7fffffff # initialize rs2
sltu x17, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x24, 0xe7ba8374 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sltu x12, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xe6187818 # initialize rs1
li x6, 0xffffffff # initialize rs2
sltu x20, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x971d0205 # initialize rs1
li x9, 0xfffffffe # initialize rs2
sltu x28, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xd4455e94 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sltu x23, x19, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x13, 0x9c0220ee # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sltu x12, x13, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x30, 0x72fd337e # initialize rs1
li x3, 0x55555555 # initialize rs2
sltu x20, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x00000000 # initialize rs1
li x26, 0x00000000 # initialize rs2
sltu x15, x25, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x00000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
sltu x29, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
sltu x13, x19, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x17, 0x80000000 # initialize rs2
sltu x26, x1, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x7, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
sltu x27, x7, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x15, 0x00000000 # initialize rs1
li x25, 0x7fffffff # initialize rs2
sltu x7, x15, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x8, 0x00000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sltu x13, x8, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x00000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
sltu x1, x8, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
sltu x28, x2, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x21, 0x00000000 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sltu x15, x21, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x7, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
sltu x29, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x16, 0x00000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
sltu x4, x16, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
sltu x24, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
sltu x12, x14, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
sltu x15, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x15, 0x00000001 # initialize rs1
li x21, 0x80000000 # initialize rs2
sltu x10, x15, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x24, 0x00000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
sltu x7, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x25, 0x00000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sltu x13, x25, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sltu x2, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
sltu x10, x22, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x00000001 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sltu x26, x29, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x25, 0x00000001 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sltu x1, x25, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x2, 0x00000001 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sltu x28, x2, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x26, 0x00000001 # initialize rs1
li x4, 0x55555555 # initialize rs2
sltu x2, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x4, 0x00000002 # initialize rs1
li x31, 0x00000000 # initialize rs2
sltu x8, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x16, 0x00000002 # initialize rs1
li x19, 0x00000001 # initialize rs2
sltu x3, x16, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x9, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
sltu x14, x9, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x17, 0x00000002 # initialize rs1
li x20, 0x80000000 # initialize rs2
sltu x14, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x20, 0x00000002 # initialize rs1
li x22, 0x80000001 # initialize rs2
sltu x2, x20, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x4, 0x00000002 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sltu x21, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x2, 0x00000002 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sltu x9, x2, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
sltu x24, x25, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0x00000002 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sltu x1, x13, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x19, 0x00000002 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sltu x6, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x27, 0x00000002 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sltu x1, x27, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x18, 0x00000002 # initialize rs1
li x8, 0x55555555 # initialize rs2
sltu x23, x18, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x1, 0x80000000 # initialize rs1
li x14, 0x00000000 # initialize rs2
sltu x30, x1, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x12, 0x80000000 # initialize rs1
li x15, 0x00000001 # initialize rs2
sltu x21, x12, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x4, 0x80000000 # initialize rs1
li x29, 0x00000002 # initialize rs2
sltu x2, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x28, 0x80000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
sltu x17, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x23, 0x80000001 # initialize rs2
sltu x12, x8, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x80000000 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sltu x23, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x80000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sltu x4, x21, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x7, 0x80000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
sltu x23, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sltu x17, x12, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x22, 0x80000000 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sltu x29, x22, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x24, 0x80000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sltu x22, x24, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x19, 0x80000000 # initialize rs1
li x25, 0x55555555 # initialize rs2
sltu x24, x19, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x3, 0x80000001 # initialize rs1
li x16, 0x00000000 # initialize rs2
sltu x14, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x2, 0x80000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
sltu x28, x2, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x17, 0x80000001 # initialize rs1
li x30, 0x00000002 # initialize rs2
sltu x25, x17, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x80000001 # initialize rs1
li x24, 0x80000000 # initialize rs2
sltu x22, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
sltu x8, x10, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x31, 0x80000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sltu x27, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x1, 0x80000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sltu x22, x1, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x7, 0x80000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
sltu x6, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sltu x26, x18, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
sltu x9, x31, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x18, 0x80000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sltu x10, x18, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x3, 0x80000001 # initialize rs1
li x15, 0x55555555 # initialize rs2
sltu x21, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x7, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
sltu x9, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x13, 0x7fffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
sltu x2, x13, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x15, 0x7fffffff # initialize rs1
li x22, 0x00000002 # initialize rs2
sltu x16, x15, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x19, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
sltu x22, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
sltu x6, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x14, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
sltu x12, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x18, 0x7fffffff # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sltu x21, x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x30, 0x7fffffff # initialize rs1
li x11, 0xffffffff # initialize rs2
sltu x9, x30, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x8, 0x7fffffff # initialize rs1
li x22, 0xfffffffe # initialize rs2
sltu x13, x8, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x13, 0x7fffffff # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
sltu x23, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x14, 0x7fffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sltu x26, x14, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
sltu x21, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x9, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
sltu x20, x9, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x2, 0x7ffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
sltu x14, x2, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x7, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
sltu x21, x7, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x16, 0x7ffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
sltu x13, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x18, 0x7ffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
sltu x25, x18, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x21, 0x7ffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
sltu x28, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sltu x20, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
sltu x24, x10, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x22, 0x7ffffffe # initialize rs1
li x20, 0xfffffffe # initialize rs2
sltu x17, x22, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x12, 0x7ffffffe # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sltu x3, x12, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x25, 0x7ffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
sltu x23, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x29, 0x7ffffffe # initialize rs1
li x4, 0x55555555 # initialize rs2
sltu x31, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xffffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
sltu x29, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x11, 0xffffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
sltu x19, x11, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0xffffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
sltu x2, x23, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x28, 0xffffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
sltu x15, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x29, 0xffffffff # initialize rs1
li x4, 0x80000001 # initialize rs2
sltu x1, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
sltu x10, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x1, 0xffffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sltu x21, x1, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
sltu x30, x17, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0xffffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
sltu x9, x27, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x7, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sltu x24, x7, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x13, 0xffffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sltu x30, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x30, 0xffffffff # initialize rs1
li x1, 0x55555555 # initialize rs2
sltu x17, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0xfffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
sltu x14, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xfffffffe # initialize rs1
li x7, 0x00000001 # initialize rs2
sltu x12, x8, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
sltu x6, x28, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x8, 0xfffffffe # initialize rs1
li x31, 0x80000000 # initialize rs2
sltu x20, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
sltu x14, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x16, 0x7fffffff # initialize rs2
sltu x21, x30, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x4, 0xfffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sltu x28, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0xfffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
sltu x29, x25, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
sltu x18, x17, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
sltu x29, x9, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x26, 0xfffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
sltu x14, x26, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x3, 0xfffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
sltu x12, x3, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x29, 0x5bbc8872 # initialize rs1
li x25, 0x00000000 # initialize rs2
sltu x4, x29, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x10, 0x5bbc8872 # initialize rs1
li x9, 0x00000001 # initialize rs2
sltu x21, x10, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x21, 0x5bbc8872 # initialize rs1
li x9, 0x00000002 # initialize rs2
sltu x16, x21, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x15, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
sltu x6, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x2, 0x5bbc8872 # initialize rs1
li x1, 0x80000001 # initialize rs2
sltu x21, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x28, 0x5bbc8872 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sltu x4, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sltu x7, x26, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x26, 0x5bbc8872 # initialize rs1
li x2, 0xffffffff # initialize rs2
sltu x22, x26, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sltu x8, x28, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x28, 0x5bbc8872 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sltu x27, x28, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x7, 0x5bbc8872 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sltu x12, x7, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x27, 0x5bbc8872 # initialize rs1
li x9, 0x55555555 # initialize rs2
sltu x28, x27, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x29, 0xaaaaaaaa # initialize rs1
li x19, 0x00000000 # initialize rs2
sltu x10, x29, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaa # initialize rs1
li x9, 0x00000001 # initialize rs2
sltu x28, x15, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x29, 0xaaaaaaaa # initialize rs1
li x17, 0x00000002 # initialize rs2
sltu x21, x29, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x29, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
sltu x10, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x16, 0xaaaaaaaa # initialize rs1
li x17, 0x80000001 # initialize rs2
sltu x2, x16, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x16, 0x7fffffff # initialize rs2
sltu x12, x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sltu x13, x17, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x11, 0xaaaaaaaa # initialize rs1
li x7, 0xffffffff # initialize rs2
sltu x16, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x14, 0xfffffffe # initialize rs2
sltu x20, x23, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x26, 0xaaaaaaaa # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sltu x20, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x21, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sltu x30, x21, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x17, 0xaaaaaaaa # initialize rs1
li x14, 0x55555555 # initialize rs2
sltu x7, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x12, 0x55555555 # initialize rs1
li x24, 0x00000000 # initialize rs2
sltu x27, x12, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x31, 0x55555555 # initialize rs1
li x4, 0x00000001 # initialize rs2
sltu x15, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x24, 0x55555555 # initialize rs1
li x17, 0x00000002 # initialize rs2
sltu x25, x24, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x23, 0x80000000 # initialize rs2
sltu x1, x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x4, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
sltu x3, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x16, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sltu x7, x16, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x3, 0x55555555 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sltu x17, x3, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x23, 0x55555555 # initialize rs1
li x1, 0xffffffff # initialize rs2
sltu x29, x23, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x9, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sltu x28, x9, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x3, 0x55555555 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sltu x7, x3, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x30, 0x55555555 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sltu x28, x30, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x4, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
sltu x26, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x26c308d9 # initialize rs1
li x0, 0xf54f667a # initialize rs2
sltu x8, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x3c4090ef # initialize rs1
li x1, 0x1db25a93 # initialize rs2
sltu x4, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe00bdb69 # initialize rs1
li x2, 0x97d776d0 # initialize rs2
sltu x3, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x72ed51bc # initialize rs1
li x3, 0x01c95331 # initialize rs2
sltu x27, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0xcd1c35e2 # initialize rs1
li x4, 0x65bbb4b3 # initialize rs2
sltu x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3e4a5ec7 # initialize rs1
li x5, 0xac5b75c8 # initialize rs2
sltu x9, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc11fedf5 # initialize rs1
li x6, 0x731726e1 # initialize rs2
sltu x11, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x79894e2a # initialize rs1
li x7, 0x17397b24 # initialize rs2
sltu x15, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9e4727e3 # initialize rs1
li x8, 0x5617d180 # initialize rs2
sltu x22, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd667fb97 # initialize rs1
li x9, 0x602b487a # initialize rs2
sltu x29, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9dc685f2 # initialize rs1
li x10, 0x58321f2a # initialize rs2
sltu x26, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x3ce64f33 # initialize rs1
li x11, 0xefcd874b # initialize rs2
sltu x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa109e6bd # initialize rs1
li x12, 0x0490a0b5 # initialize rs2
sltu x16, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x89acae6f # initialize rs1
li x13, 0xbc4a1383 # initialize rs2
sltu x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfc1cf107 # initialize rs1
li x14, 0x9f5e1a63 # initialize rs2
sltu x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2451a60f # initialize rs1
li x15, 0x06e93658 # initialize rs2
sltu x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x55c79fbd # initialize rs1
li x16, 0x10f3d5bf # initialize rs2
sltu x25, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xbb681853 # initialize rs1
li x17, 0xf7ef89fe # initialize rs2
sltu x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x09cbef22 # initialize rs1
li x18, 0x4b929a64 # initialize rs2
sltu x10, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb8af50bd # initialize rs1
li x19, 0xbdaf7e17 # initialize rs2
sltu x9, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x112cedcd # initialize rs1
li x20, 0xb3145cf6 # initialize rs2
sltu x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xfa334301 # initialize rs1
li x21, 0xb9ebf6be # initialize rs2
sltu x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x80f14d56 # initialize rs1
li x22, 0x40df7d58 # initialize rs2
sltu x17, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x326e58ac # initialize rs1
li x23, 0x2d6f9658 # initialize rs2
sltu x29, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xaf6b6213 # initialize rs1
li x24, 0x741469d1 # initialize rs2
sltu x10, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x0e0303ed # initialize rs1
li x25, 0x482a18e9 # initialize rs2
sltu x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0c02f0f5 # initialize rs1
li x26, 0x388d5a2e # initialize rs2
sltu x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xcee9027f # initialize rs1
li x27, 0xe8947c78 # initialize rs2
sltu x1, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf06c4892 # initialize rs1
li x28, 0x7a7ed314 # initialize rs2
sltu x2, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x969ccdb4 # initialize rs1
li x29, 0xcdfdbb90 # initialize rs2
sltu x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x3f5f3ccc # initialize rs1
li x30, 0x3d329c5b # initialize rs2
sltu x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xfb52cf0f # initialize rs1
li x31, 0xa41bc073 # initialize rs2
sltu x10, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa8ae7d74 # initialize rs1
li x16, 0xdb6b3dac # initialize rs2
sltu x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6a61d1f9 # initialize rs1
li x9, 0xbf41efd0 # initialize rs2
sltu x1, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x51d47885 # initialize rs1
li x25, 0xaf3d961b # initialize rs2
sltu x2, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xae25a5c3 # initialize rs1
li x14, 0xb804ff69 # initialize rs2
sltu x3, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb470cc4f # initialize rs1
li x13, 0xc9972dc9 # initialize rs2
sltu x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2b416202 # initialize rs1
li x18, 0x835656bd # initialize rs2
sltu x5, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa1717049 # initialize rs1
li x9, 0x72378e33 # initialize rs2
sltu x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1f64a616 # initialize rs1
li x3, 0x5609ce10 # initialize rs2
sltu x7, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2f9de9ed # initialize rs1
li x17, 0x0340143c # initialize rs2
sltu x8, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc15c09ea # initialize rs1
li x24, 0xaf24974f # initialize rs2
sltu x9, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x53dbf0a9 # initialize rs1
li x27, 0x5b1d1f07 # initialize rs2
sltu x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9a374473 # initialize rs1
li x13, 0x6b4c2354 # initialize rs2
sltu x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x69407ea7 # initialize rs1
li x14, 0xe692d9ba # initialize rs2
sltu x12, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc4bc289e # initialize rs1
li x31, 0x1abe4eab # initialize rs2
sltu x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x02b4198c # initialize rs1
li x14, 0xb663565b # initialize rs2
sltu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xae7f1586 # initialize rs1
li x16, 0x81dcd2ed # initialize rs2
sltu x15, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x19881efc # initialize rs1
li x20, 0xe5e84292 # initialize rs2
sltu x16, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x853010d9 # initialize rs1
li x27, 0xdbcacd2f # initialize rs2
sltu x17, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xfc6a37fd # initialize rs1
li x2, 0xceb71436 # initialize rs2
sltu x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe3ed9bcf # initialize rs1
li x15, 0xa566b6b4 # initialize rs2
sltu x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc3d8f430 # initialize rs1
li x1, 0x108056cb # initialize rs2
sltu x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x36638019 # initialize rs1
li x1, 0x33963253 # initialize rs2
sltu x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb2248908 # initialize rs1
li x10, 0x746a5e35 # initialize rs2
sltu x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7a526f6a # initialize rs1
li x13, 0x9a0a5b8d # initialize rs2
sltu x23, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcf26a8fc # initialize rs1
li x1, 0x8108c060 # initialize rs2
sltu x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe5a085b6 # initialize rs1
li x1, 0xf6b33c7f # initialize rs2
sltu x25, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3f925f1a # initialize rs1
li x21, 0xea961082 # initialize rs2
sltu x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9cd76fd3 # initialize rs1
li x11, 0x9f6ded5f # initialize rs2
sltu x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5474b2f9 # initialize rs1
li x27, 0x225119be # initialize rs2
sltu x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe1281850 # initialize rs1
li x28, 0xe7e6066f # initialize rs2
sltu x29, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x98bcc4df # initialize rs1
li x30, 0x21bc108b # initialize rs2
sltu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x13ffc363 # initialize rs1
li x27, 0x5def2153 # initialize rs2
sltu x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0x5ec32d8d # initialize rs1
li x0, 0x07b788a2 # initialize rs2
sltu x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0x41df600b # initialize rs1
li x1, 0x0534bbc6 # initialize rs2
sltu x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x2f526f76 # initialize rs1
li x2, 0x761f8df7 # initialize rs2
sltu x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x14, 0x9ad04def # initialize rs1
li x3, 0x2abe5f92 # initialize rs2
sltu x3, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x8875b8db # initialize rs1
li x4, 0xb4d70edd # initialize rs2
sltu x4, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x5823aed6 # initialize rs1
li x5, 0x5c7a76c2 # initialize rs2
sltu x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xebff7936 # initialize rs1
li x6, 0xcbb91431 # initialize rs2
sltu x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xddf07629 # initialize rs1
li x7, 0x7f58c218 # initialize rs2
sltu x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x1c60b4d1 # initialize rs1
li x8, 0x5de4d6cc # initialize rs2
sltu x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0xa950ba1e # initialize rs1
li x9, 0x21a8fe7d # initialize rs2
sltu x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0x11eb50f6 # initialize rs1
li x10, 0xccee0b17 # initialize rs2
sltu x10, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0x196b7b53 # initialize rs1
li x11, 0xc219f92a # initialize rs2
sltu x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x31, 0xc2b54069 # initialize rs1
li x12, 0x8f1e002a # initialize rs2
sltu x12, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x77cd3281 # initialize rs1
li x13, 0xd0ec53b2 # initialize rs2
sltu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x12, 0x8489e89a # initialize rs1
li x14, 0x52ec44ac # initialize rs2
sltu x14, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0xa8d18b8d # initialize rs1
li x15, 0x2aed762c # initialize rs2
sltu x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x23, 0x6744f818 # initialize rs1
li x16, 0xf28dcfb5 # initialize rs2
sltu x16, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0x47014e4a # initialize rs1
li x17, 0xeca7a88f # initialize rs2
sltu x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0xb28bc4d2 # initialize rs1
li x18, 0x9b4cd106 # initialize rs2
sltu x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xd30f0a03 # initialize rs1
li x19, 0xd83aab52 # initialize rs2
sltu x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0xc73c5b0c # initialize rs1
li x20, 0x883cb099 # initialize rs2
sltu x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x27, 0xc20cc84a # initialize rs1
li x21, 0xa490cec2 # initialize rs2
sltu x21, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0xbe7679a4 # initialize rs1
li x22, 0x940a94ba # initialize rs2
sltu x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x4ee1d53b # initialize rs1
li x23, 0x2ad3093b # initialize rs2
sltu x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x2, 0x64866069 # initialize rs1
li x24, 0xc8f52526 # initialize rs2
sltu x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0xdb67be55 # initialize rs1
li x25, 0x8fa22b03 # initialize rs2
sltu x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x18, 0x34f8ca41 # initialize rs1
li x26, 0x57b1554e # initialize rs2
sltu x26, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x1, 0xc440d82b # initialize rs1
li x27, 0x349a4933 # initialize rs2
sltu x27, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0x433feeb4 # initialize rs1
li x28, 0xea8268dd # initialize rs2
sltu x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x5726a954 # initialize rs1
li x29, 0xf48d19e1 # initialize rs2
sltu x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0x25ce5e89 # initialize rs1
li x30, 0x0dff0355 # initialize rs2
sltu x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x9, 0x3391c414 # initialize rs1
li x31, 0x7a1492de # initialize rs2
sltu x31, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xcf8a2fe5 # initialize rs1
li x0, 0xdc9cec03 # initialize rs2
sltu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc00658df # initialize rs1
li x1, 0x20e572bf # initialize rs2
sltu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x34665e2f # initialize rs1
li x2, 0xd8605abe # initialize rs2
sltu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xdf35644a # initialize rs1
li x3, 0xefcafc61 # initialize rs2
sltu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x21825e1f # initialize rs1
li x4, 0xdc2d01d2 # initialize rs2
sltu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3560c6b4 # initialize rs1
li x5, 0x0f79ede8 # initialize rs2
sltu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x230801b5 # initialize rs1
li x6, 0xd5df864f # initialize rs2
sltu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5d997852 # initialize rs1
li x7, 0x60ae245a # initialize rs2
sltu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcdd30c10 # initialize rs1
li x8, 0xcdd9ed54 # initialize rs2
sltu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x926cf503 # initialize rs1
li x9, 0xbd31696d # initialize rs2
sltu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3bd09a81 # initialize rs1
li x10, 0xec6bde74 # initialize rs2
sltu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa1d8c31c # initialize rs1
li x11, 0xaad83a02 # initialize rs2
sltu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x0b2ec90f # initialize rs1
li x12, 0xe0c6308c # initialize rs2
sltu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xfa0d0154 # initialize rs1
li x13, 0x641935ae # initialize rs2
sltu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x9dac10ed # initialize rs1
li x14, 0xcbcdc2d3 # initialize rs2
sltu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9bbf1a9c # initialize rs1
li x15, 0x5d78e5f4 # initialize rs2
sltu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xbf051d46 # initialize rs1
li x16, 0xc3c6a796 # initialize rs2
sltu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7f313000 # initialize rs1
li x17, 0xc1964be5 # initialize rs2
sltu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x9616fc7a # initialize rs1
li x18, 0x027746fb # initialize rs2
sltu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x98b8ac5d # initialize rs1
li x19, 0xece37223 # initialize rs2
sltu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc04813a3 # initialize rs1
li x20, 0x06fa4f5a # initialize rs2
sltu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xac1a20fd # initialize rs1
li x21, 0x953a2a99 # initialize rs2
sltu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xefffcee2 # initialize rs1
li x22, 0xb32b824e # initialize rs2
sltu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x9ff08f6e # initialize rs1
li x23, 0x9608aa71 # initialize rs2
sltu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x1f242ecb # initialize rs1
li x24, 0xe46d14b4 # initialize rs2
sltu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3d3cf303 # initialize rs1
li x25, 0x4b55f489 # initialize rs2
sltu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xea69c257 # initialize rs1
li x26, 0xfae68e9b # initialize rs2
sltu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x1c3aef42 # initialize rs1
li x27, 0x2cc08ffd # initialize rs2
sltu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x17438f63 # initialize rs1
li x28, 0xcf245873 # initialize rs2
sltu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x370f02f0 # initialize rs1
li x29, 0xdad75af4 # initialize rs2
sltu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x30aa46ca # initialize rs1
li x30, 0xb559ff6b # initialize rs2
sltu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x711cf455 # initialize rs1
li x31, 0x6219c39a # initialize rs2
sltu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x7, x3 # perform first operation
sltu x15, x29, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x16, x13 # perform first operation
sltu x3, x7, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x24, x2 # perform first operation
sltu x25, x8, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x24, x6 # perform first operation
sltu x11, x29, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x20, x18 # perform first operation
sltu x20, x15, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x24, x30 # perform first operation
sltu x15, x24, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x16, x15 # perform first operation
sltu x5, x23, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x29, x31 # perform first operation
sltu x27, x6, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x24, x6 # perform first operation
sltu x3, x22, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x27, x28 # perform first operation
sltu x27, x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x31, x21 # perform first operation
sltu x21, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x11, x25 # perform first operation
sltu x2, x28, x10 # perform second (triggering) operation

.EQU SIGSIZE,1568


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
