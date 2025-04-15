///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-ror.S
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
li x0, 0xd2876daf # initialize rs1
li x24, 0x1b5f62c0 # initialize rs2
ror x14, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa0cb7b48 # initialize rs1
li x16, 0x2b1fec7b # initialize rs2
ror x14, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf66ce77c # initialize rs1
li x1, 0x616d7389 # initialize rs2
ror x15, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd9d83ed2 # initialize rs1
li x21, 0xaf66a7f7 # initialize rs2
ror x8, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1e7097d # initialize rs1
li x3, 0xf34656b7 # initialize rs2
ror x6, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc6b21414 # initialize rs1
li x23, 0x311087de # initialize rs2
ror x19, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5eecf1dc # initialize rs1
li x21, 0x5537e6ca # initialize rs2
ror x3, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xea9529c7 # initialize rs1
li x9, 0x4cdb3948 # initialize rs2
ror x12, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x4f26febd # initialize rs1
li x16, 0xb2f25c4b # initialize rs2
ror x28, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2a59f43c # initialize rs1
li x20, 0xd6d6908c # initialize rs2
ror x6, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb53836e0 # initialize rs1
li x17, 0xd2b1ad7a # initialize rs2
ror x27, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5e310ae3 # initialize rs1
li x17, 0xb510e3c0 # initialize rs2
ror x31, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x09ce7d18 # initialize rs1
li x24, 0x2fe7ad4f # initialize rs2
ror x22, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x89b492a7 # initialize rs1
li x31, 0x309bf4b6 # initialize rs2
ror x22, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x60a8dece # initialize rs1
li x16, 0x513bb37f # initialize rs2
ror x7, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc586be56 # initialize rs1
li x19, 0x2737838d # initialize rs2
ror x17, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0d196ba4 # initialize rs1
li x7, 0xa6ab3778 # initialize rs2
ror x10, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x88a66daf # initialize rs1
li x10, 0x2c16bda0 # initialize rs2
ror x3, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x64dc6b10 # initialize rs1
li x21, 0xfcd22acf # initialize rs2
ror x1, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x480692b8 # initialize rs1
li x21, 0x90662dbf # initialize rs2
ror x10, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd5862539 # initialize rs1
li x25, 0x4d2b0ff3 # initialize rs2
ror x3, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf566f8ff # initialize rs1
li x6, 0x438ce9e7 # initialize rs2
ror x16, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5440fc18 # initialize rs1
li x18, 0xbfb3b8fb # initialize rs2
ror x9, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbff77f13 # initialize rs1
li x5, 0x3e24c8a9 # initialize rs2
ror x27, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2e815a15 # initialize rs1
li x31, 0x4f5b63ba # initialize rs2
ror x17, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9c634132 # initialize rs1
li x24, 0xd5c721c0 # initialize rs2
ror x14, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9c24de15 # initialize rs1
li x21, 0x6d063c1d # initialize rs2
ror x9, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0d15d61e # initialize rs1
li x19, 0x0910867e # initialize rs2
ror x8, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf38c69ec # initialize rs1
li x10, 0x0577494d # initialize rs2
ror x14, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x4b7b6f91 # initialize rs1
li x7, 0x48550564 # initialize rs2
ror x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xaeb0b722 # initialize rs1
li x17, 0xe16b70eb # initialize rs2
ror x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x10d2cc51 # initialize rs1
li x29, 0x739554cb # initialize rs2
ror x24, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x3a2a2c4b # initialize rs1
li x0, 0x7d17be56 # initialize rs2
ror x3, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x15, 0x2acfe943 # initialize rs1
li x1, 0x7db219d9 # initialize rs2
ror x11, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xfeed7025 # initialize rs1
li x2, 0xb2b82754 # initialize rs2
ror x27, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0xacc02c95 # initialize rs1
li x3, 0x55c486d2 # initialize rs2
ror x30, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0xad88db71 # initialize rs1
li x4, 0xa9593aa4 # initialize rs2
ror x16, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xc7011466 # initialize rs1
li x5, 0x7c033076 # initialize rs2
ror x2, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0xdb178b73 # initialize rs1
li x6, 0xae8e4f49 # initialize rs2
ror x24, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x05649e52 # initialize rs1
li x7, 0x36ae5380 # initialize rs2
ror x15, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0x69b65d0a # initialize rs1
li x8, 0xeec7a090 # initialize rs2
ror x12, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0xc3ddcd28 # initialize rs1
li x9, 0x930fa7ea # initialize rs2
ror x13, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0xe5305a8d # initialize rs1
li x10, 0xc8bf1e9b # initialize rs2
ror x13, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0xcc507aae # initialize rs1
li x11, 0x819855e2 # initialize rs2
ror x31, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x750c58cb # initialize rs1
li x12, 0x13ba42c9 # initialize rs2
ror x24, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x94db0eb7 # initialize rs1
li x13, 0x3e67941c # initialize rs2
ror x5, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0xaef50104 # initialize rs1
li x14, 0x0df9292e # initialize rs2
ror x19, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xeb33c71d # initialize rs1
li x15, 0xa7348c98 # initialize rs2
ror x3, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x96e939de # initialize rs1
li x16, 0x56a58f90 # initialize rs2
ror x1, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0x747d6d97 # initialize rs1
li x17, 0x4c5c58aa # initialize rs2
ror x14, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0x3b312879 # initialize rs1
li x18, 0xc6804294 # initialize rs2
ror x3, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x022ffe1d # initialize rs1
li x19, 0x05084528 # initialize rs2
ror x9, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0x036b74a4 # initialize rs1
li x20, 0xbcd4f668 # initialize rs2
ror x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0x998c28b5 # initialize rs1
li x21, 0xa7d543c0 # initialize rs2
ror x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0x5770401e # initialize rs1
li x22, 0xf0fb87b3 # initialize rs2
ror x9, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x24, 0xff1261f0 # initialize rs1
li x23, 0xa2cfbeb4 # initialize rs2
ror x12, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0xf661e8fe # initialize rs1
li x24, 0x1b1b9fd1 # initialize rs2
ror x20, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0x7b57f3e3 # initialize rs1
li x25, 0x7769e69f # initialize rs2
ror x28, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xb5cd3c21 # initialize rs1
li x26, 0x581e1018 # initialize rs2
ror x19, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x270bb2c1 # initialize rs1
li x27, 0x4255a0fa # initialize rs2
ror x22, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x51b24b07 # initialize rs1
li x28, 0x2eed049f # initialize rs2
ror x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x25, 0xf21f6cc7 # initialize rs1
li x29, 0xd5b3e906 # initialize rs2
ror x24, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0xccc50841 # initialize rs1
li x30, 0xbf817301 # initialize rs2
ror x31, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0xa0120ba6 # initialize rs1
li x31, 0x8f0cf238 # initialize rs2
ror x29, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 252)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x315e4dee # initialize rs1
li x23, 0x21ef89ed # initialize rs2
ror x0, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x5929d75b # initialize rs1
li x1, 0xb06c72f6 # initialize rs2
ror x1, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x22, 0x0088aab8 # initialize rs1
li x16, 0xa537ce3f # initialize rs2
ror x2, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x0c33a44e # initialize rs1
li x12, 0x96ec89db # initialize rs2
ror x3, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x6c0da8d9 # initialize rs1
li x9, 0xc094871c # initialize rs2
ror x4, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x2648b340 # initialize rs1
li x12, 0xafb56b2e # initialize rs2
ror x5, x30, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x04961454 # initialize rs1
li x1, 0x73efd838 # initialize rs2
ror x6, x31, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xc9c860a3 # initialize rs1
li x31, 0x2207b8b9 # initialize rs2
ror x7, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1c49c3f6 # initialize rs1
li x18, 0xbf0ac9e5 # initialize rs2
ror x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x7eab9250 # initialize rs1
li x26, 0x2b7dd865 # initialize rs2
ror x9, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0xd94adcee # initialize rs1
li x2, 0xc1675876 # initialize rs2
ror x10, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x3745d572 # initialize rs1
li x16, 0xc3851df5 # initialize rs2
ror x11, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0x9375fac0 # initialize rs1
li x31, 0x92c4f786 # initialize rs2
ror x12, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f93548c # initialize rs1
li x10, 0xb83e74f3 # initialize rs2
ror x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x90b2874a # initialize rs1
li x31, 0xf6684a60 # initialize rs2
ror x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x957ecde4 # initialize rs1
li x25, 0xeb875d65 # initialize rs2
ror x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x26, 0xabc3d145 # initialize rs1
li x29, 0x4cda4fcc # initialize rs2
ror x16, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xdc03b177 # initialize rs1
li x22, 0x38be9010 # initialize rs2
ror x17, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x9c10e022 # initialize rs1
li x17, 0xbfb1c0e2 # initialize rs2
ror x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x24, 0x17d5651b # initialize rs1
li x31, 0x8c2f7adc # initialize rs2
ror x19, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x7e3362e8 # initialize rs1
li x5, 0x036b02a0 # initialize rs2
ror x20, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xe0aa94e3 # initialize rs1
li x5, 0x6944f628 # initialize rs2
ror x21, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x2bb8b150 # initialize rs1
li x23, 0x2f1ac682 # initialize rs2
ror x22, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x51d66c1f # initialize rs1
li x29, 0x955645d3 # initialize rs2
ror x23, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0xdb95c762 # initialize rs1
li x9, 0xcea8c293 # initialize rs2
ror x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x194bd469 # initialize rs1
li x18, 0x591ba06e # initialize rs2
ror x25, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x729a5e0c # initialize rs1
li x21, 0xdd64fd23 # initialize rs2
ror x26, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x0f106760 # initialize rs1
li x30, 0xd1783bac # initialize rs2
ror x27, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x3996c023 # initialize rs1
li x31, 0x684ab4df # initialize rs2
ror x28, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xc90d50e3 # initialize rs1
li x30, 0xf74b559e # initialize rs2
ror x29, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x04f6f62e # initialize rs1
li x19, 0x6cd44ff5 # initialize rs2
ror x30, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xa301451f # initialize rs1
li x8, 0xc078a3b5 # initialize rs2
ror x31, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
li x5, 0x1fad95de # initialize rs2
ror x25, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x24, 0xf0cdd394 # initialize rs2
ror x8, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x18, 0x45cb938a # initialize rs2
ror x16, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x7, 0x7f5c28a3 # initialize rs2
ror x22, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x29, 0x80000001 # initialize rs1
li x9, 0x212f532f # initialize rs2
ror x20, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x9, 0x23b6dc9b # initialize rs2
ror x10, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x3, 0x1977cb2f # initialize rs2
ror x6, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x29, 0x922b9428 # initialize rs2
ror x24, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x27, 0x71f243b5 # initialize rs2
ror x9, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x22, 0xcbd4368e # initialize rs2
ror x1, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
li x18, 0x355566f2 # initialize rs2
ror x26, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555 # initialize rs1
li x3, 0x5161029c # initialize rs2
ror x24, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x16, 0xea9dfcdf # initialize rs1
li x19, 0x00000000 # initialize rs2
ror x25, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x14151b19 # initialize rs1
li x7, 0x00000001 # initialize rs2
ror x23, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0xc779d988 # initialize rs1
li x3, 0x00000002 # initialize rs2
ror x10, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x24, 0x6929f305 # initialize rs1
li x26, 0x80000000 # initialize rs2
ror x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0x17055465 # initialize rs1
li x7, 0x80000001 # initialize rs2
ror x26, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x19, 0xbcfb3b1e # initialize rs1
li x8, 0x7fffffff # initialize rs2
ror x31, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0x5441ba42 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
ror x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xfe376115 # initialize rs1
li x28, 0xffffffff # initialize rs2
ror x10, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xed68b1e3 # initialize rs1
li x16, 0xfffffffe # initialize rs2
ror x14, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x2, 0xa9c26970 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
ror x8, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0x24fc6373 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
ror x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0x2c8cddb5 # initialize rs1
li x17, 0x55555555 # initialize rs2
ror x29, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x21, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
ror x5, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
ror x27, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x17, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
ror x15, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
ror x5, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x31, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
ror x24, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x13, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
ror x26, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
ror x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
ror x23, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
ror x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x8, 0x00000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
ror x7, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x1, 0x00000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
ror x21, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x2, 0x00000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
ror x17, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x00000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
ror x30, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
ror x18, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x00000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
ror x23, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x16, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
ror x12, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x00000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
ror x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
ror x23, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x18, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
ror x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
ror x19, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
ror x19, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x2, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
ror x11, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0x00000001 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
ror x6, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x11, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
ror x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x00000002 # initialize rs1
li x9, 0x00000000 # initialize rs2
ror x2, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x00000002 # initialize rs1
li x17, 0x00000001 # initialize rs2
ror x19, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
ror x9, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x1, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
ror x9, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
ror x14, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x31, 0x7fffffff # initialize rs2
ror x13, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
ror x18, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
ror x5, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
ror x2, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
ror x14, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
ror x23, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x30, 0x00000002 # initialize rs1
li x8, 0x55555555 # initialize rs2
ror x1, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x6, 0x80000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
ror x15, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x11, 0x80000000 # initialize rs1
li x5, 0x00000001 # initialize rs2
ror x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
ror x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x27, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
ror x10, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x11, 0x80000000 # initialize rs1
li x1, 0x80000001 # initialize rs2
ror x31, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
ror x21, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x80000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
ror x13, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x23, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
ror x6, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x9, 0x80000000 # initialize rs1
li x22, 0xfffffffe # initialize rs2
ror x14, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x10, 0x80000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
ror x13, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x10, 0x80000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
ror x27, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x20, 0x80000000 # initialize rs1
li x24, 0x55555555 # initialize rs2
ror x18, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
ror x30, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
ror x8, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x80000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
ror x15, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x28, 0x80000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
ror x27, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
ror x7, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x20, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
ror x19, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x10, 0x80000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
ror x17, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x6, 0x80000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
ror x7, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0x80000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
ror x21, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x11, 0x80000001 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
ror x8, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x29, 0x80000001 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
ror x20, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x12, 0x80000001 # initialize rs1
li x8, 0x55555555 # initialize rs2
ror x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x31, 0x7fffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
ror x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x24, 0x7fffffff # initialize rs1
li x2, 0x00000001 # initialize rs2
ror x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x3, 0x7fffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
ror x11, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x6, 0x7fffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
ror x28, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x18, 0x7fffffff # initialize rs1
li x1, 0x80000001 # initialize rs2
ror x15, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
ror x9, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x24, 0x7fffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
ror x11, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x28, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
ror x14, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x7, 0x7fffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
ror x29, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
ror x28, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x30, 0x7fffffff # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
ror x24, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
ror x12, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x14, 0x7ffffffe # initialize rs1
li x29, 0x00000000 # initialize rs2
ror x24, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x7, 0x7ffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
ror x17, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x11, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
ror x20, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x20, 0x7ffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
ror x28, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x9, 0x7ffffffe # initialize rs1
li x7, 0x80000001 # initialize rs2
ror x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x8, 0x7ffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
ror x13, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
ror x17, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x26, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
ror x7, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x24, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
ror x1, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
ror x18, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0x7ffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
ror x11, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x27, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
ror x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0xffffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
ror x24, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
ror x14, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x24, 0x00000002 # initialize rs2
ror x19, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x2, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
ror x28, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
ror x30, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
ror x22, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
ror x8, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
ror x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xffffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
ror x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x17, 0xffffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
ror x30, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x6, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
ror x17, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x12, 0xffffffff # initialize rs1
li x10, 0x55555555 # initialize rs2
ror x30, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xfffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
ror x12, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
ror x10, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0xfffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
ror x18, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x17, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
ror x27, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
ror x24, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
ror x28, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xfffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
ror x25, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
ror x21, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
ror x26, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x31, 0xfffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
ror x10, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x13, 0xfffffffe # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
ror x24, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0xfffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
ror x10, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x16, 0x5bbc8872 # initialize rs1
li x20, 0x00000000 # initialize rs2
ror x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x25, 0x5bbc8872 # initialize rs1
li x19, 0x00000001 # initialize rs2
ror x31, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x6, 0x5bbc8872 # initialize rs1
li x17, 0x00000002 # initialize rs2
ror x8, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x25, 0x5bbc8872 # initialize rs1
li x28, 0x80000000 # initialize rs2
ror x11, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x25, 0x5bbc8872 # initialize rs1
li x2, 0x80000001 # initialize rs2
ror x11, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x9, 0x5bbc8872 # initialize rs1
li x7, 0x7fffffff # initialize rs2
ror x16, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x23, 0x5bbc8872 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
ror x17, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x20, 0x5bbc8872 # initialize rs1
li x11, 0xffffffff # initialize rs2
ror x3, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x18, 0x5bbc8872 # initialize rs1
li x1, 0xfffffffe # initialize rs2
ror x31, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
ror x26, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x27, 0x5bbc8872 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
ror x8, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x24, 0x5bbc8872 # initialize rs1
li x28, 0x55555555 # initialize rs2
ror x25, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x11, 0xaaaaaaaa # initialize rs1
li x17, 0x00000000 # initialize rs2
ror x9, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaa # initialize rs1
li x25, 0x00000001 # initialize rs2
ror x13, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaa # initialize rs1
li x12, 0x00000002 # initialize rs2
ror x1, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x5, 0xaaaaaaaa # initialize rs1
li x24, 0x80000000 # initialize rs2
ror x19, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x19, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
ror x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
ror x1, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0xaaaaaaaa # initialize rs1
li x12, 0x7ffffffe # initialize rs2
ror x31, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x15, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
ror x14, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
ror x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x7, 0xaaaaaaaa # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
ror x28, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x30, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
ror x29, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x6, 0x55555555 # initialize rs2
ror x24, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x11, 0x00000000 # initialize rs2
ror x8, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x8, 0x55555555 # initialize rs1
li x13, 0x00000001 # initialize rs2
ror x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x23, 0x55555555 # initialize rs1
li x15, 0x00000002 # initialize rs2
ror x24, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x5, 0x55555555 # initialize rs1
li x15, 0x80000000 # initialize rs2
ror x19, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x13, 0x55555555 # initialize rs1
li x17, 0x80000001 # initialize rs2
ror x24, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x3, 0x55555555 # initialize rs1
li x25, 0x7fffffff # initialize rs2
ror x6, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x23, 0x55555555 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
ror x20, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x28, 0x55555555 # initialize rs1
li x14, 0xffffffff # initialize rs2
ror x6, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x55555555 # initialize rs1
li x21, 0xfffffffe # initialize rs2
ror x6, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x13, 0x55555555 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
ror x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
ror x6, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
ror x11, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x32ba6c17 # initialize rs1
li x0, 0x482d9ca7 # initialize rs2
ror x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x513268b2 # initialize rs1
li x1, 0xdf5ae525 # initialize rs2
ror x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc95d76f8 # initialize rs1
li x2, 0xc2452b9e # initialize rs2
ror x10, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x34e08a93 # initialize rs1
li x3, 0x55e19922 # initialize rs2
ror x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x73fbea17 # initialize rs1
li x4, 0xae3aff8e # initialize rs2
ror x26, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1ee32749 # initialize rs1
li x5, 0x2a1d348d # initialize rs2
ror x14, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6adf35a8 # initialize rs1
li x6, 0xf0895e9c # initialize rs2
ror x7, x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0x46149e2e # initialize rs1
li x7, 0xdacdcaef # initialize rs2
ror x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2ffe0cd2 # initialize rs1
li x8, 0xe237b875 # initialize rs2
ror x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x21203f50 # initialize rs1
li x9, 0xd66d50f1 # initialize rs2
ror x27, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3b59cba6 # initialize rs1
li x10, 0x8fe8d652 # initialize rs2
ror x5, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb86b33a6 # initialize rs1
li x11, 0xffc6b9d6 # initialize rs2
ror x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4f0ede51 # initialize rs1
li x12, 0x8328fb95 # initialize rs2
ror x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd51160a0 # initialize rs1
li x13, 0xbc464b6e # initialize rs2
ror x31, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x4b97797a # initialize rs1
li x14, 0xf571d846 # initialize rs2
ror x9, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf1ebef19 # initialize rs1
li x15, 0xa6aca91b # initialize rs2
ror x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x2dcd62e8 # initialize rs1
li x16, 0x67afff4a # initialize rs2
ror x22, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x479b18fa # initialize rs1
li x17, 0x075cb6bf # initialize rs2
ror x12, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xdbe360dd # initialize rs1
li x18, 0x3350a40d # initialize rs2
ror x25, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6c711488 # initialize rs1
li x19, 0x7bbd4207 # initialize rs2
ror x14, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0c076d89 # initialize rs1
li x20, 0xbb06308a # initialize rs2
ror x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4f5c1707 # initialize rs1
li x21, 0x11c75c38 # initialize rs2
ror x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd8023d13 # initialize rs1
li x22, 0x1a1c090b # initialize rs2
ror x6, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xc8cdea3e # initialize rs1
li x23, 0x0b996e4c # initialize rs2
ror x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xcf0d5a4a # initialize rs1
li x24, 0x60b1814b # initialize rs2
ror x29, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa367454b # initialize rs1
li x25, 0x699dcd15 # initialize rs2
ror x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3dadde1f # initialize rs1
li x26, 0xcfb55997 # initialize rs2
ror x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x7a055473 # initialize rs1
li x27, 0xe70d26b7 # initialize rs2
ror x1, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa8af1826 # initialize rs1
li x28, 0x5631a2bb # initialize rs2
ror x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x9ec5783f # initialize rs1
li x29, 0x990fb27b # initialize rs2
ror x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc9d01bef # initialize rs1
li x30, 0x96de2a6a # initialize rs2
ror x23, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa5023929 # initialize rs1
li x31, 0xc1849e97 # initialize rs2
ror x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0370f81b # initialize rs1
li x16, 0x9be26f98 # initialize rs2
ror x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf5328525 # initialize rs1
li x6, 0x927463e5 # initialize rs2
ror x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7ef13db2 # initialize rs1
li x23, 0xbc16f8bc # initialize rs2
ror x2, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x41f131c8 # initialize rs1
li x20, 0x5142e113 # initialize rs2
ror x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x76d5e926 # initialize rs1
li x20, 0xe677f6f2 # initialize rs2
ror x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4361084b # initialize rs1
li x13, 0x9bd50f46 # initialize rs2
ror x5, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8fb29f40 # initialize rs1
li x18, 0x099f6887 # initialize rs2
ror x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcc36b777 # initialize rs1
li x27, 0x27bf5ff3 # initialize rs2
ror x7, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1b911482 # initialize rs1
li x9, 0xec09291a # initialize rs2
ror x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x83b815c0 # initialize rs1
li x18, 0x8b30f66f # initialize rs2
ror x9, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6375e5ce # initialize rs1
li x23, 0x95e9aa40 # initialize rs2
ror x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x55eaebb9 # initialize rs1
li x9, 0xa8960229 # initialize rs2
ror x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4152576c # initialize rs1
li x19, 0xa87f4f1e # initialize rs2
ror x12, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe9e46aea # initialize rs1
li x27, 0xc01415b6 # initialize rs2
ror x13, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x65e0191b # initialize rs1
li x31, 0x0c0f89e1 # initialize rs2
ror x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7915de98 # initialize rs1
li x14, 0xfdd83c56 # initialize rs2
ror x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4f1fb616 # initialize rs1
li x24, 0x5e4f3e78 # initialize rs2
ror x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x86afb9a0 # initialize rs1
li x10, 0x2fb505e8 # initialize rs2
ror x17, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x314eb09f # initialize rs1
li x28, 0xfb019ec9 # initialize rs2
ror x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd34431e1 # initialize rs1
li x18, 0x6708f412 # initialize rs2
ror x19, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa809826b # initialize rs1
li x15, 0x19ea2299 # initialize rs2
ror x20, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x20718e59 # initialize rs1
li x12, 0xfd552a13 # initialize rs2
ror x21, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbe1c468e # initialize rs1
li x19, 0x7e94b4c9 # initialize rs2
ror x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9c4e6f90 # initialize rs1
li x7, 0x75f4bc4e # initialize rs2
ror x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd55ecec7 # initialize rs1
li x10, 0xc472215f # initialize rs2
ror x24, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x6cb8269e # initialize rs1
li x31, 0xc216d61b # initialize rs2
ror x25, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc2af05f3 # initialize rs1
li x5, 0x898ffa80 # initialize rs2
ror x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2d12efd6 # initialize rs1
li x9, 0x54f5f552 # initialize rs2
ror x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x43e301e6 # initialize rs1
li x11, 0xec399176 # initialize rs2
ror x28, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc5b92fc1 # initialize rs1
li x15, 0xd75e301c # initialize rs2
ror x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5421a183 # initialize rs1
li x7, 0xeb5f47ba # initialize rs2
ror x30, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3f3416df # initialize rs1
li x12, 0xf33c5580 # initialize rs2
ror x31, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x9, 0x8d33d99f # initialize rs1
li x0, 0x4f50d471 # initialize rs2
ror x0, x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x2, 0x8565b59e # initialize rs1
li x1, 0x21bc495b # initialize rs2
ror x1, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0x9a57f8db # initialize rs1
li x2, 0x3b07e614 # initialize rs2
ror x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0xdb6fa92a # initialize rs1
li x3, 0x6030f9ff # initialize rs2
ror x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0xc90bc9bc # initialize rs1
li x4, 0x4cf6e0e0 # initialize rs2
ror x4, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xb6787313 # initialize rs1
li x5, 0xfce59ded # initialize rs2
ror x5, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x7e9f26fa # initialize rs1
li x6, 0xd1614a86 # initialize rs2
ror x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x5c8437b4 # initialize rs1
li x7, 0x35e3ce89 # initialize rs2
ror x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x856b0c33 # initialize rs1
li x8, 0x472ed954 # initialize rs2
ror x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x6, 0x81911a1c # initialize rs1
li x9, 0xed857d65 # initialize rs2
ror x9, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x578efa60 # initialize rs1
li x10, 0x6f980f0e # initialize rs2
ror x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x17, 0xcee37443 # initialize rs1
li x11, 0x9b77c1f8 # initialize rs2
ror x11, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x2, 0x48449d9a # initialize rs1
li x12, 0x3ce5b619 # initialize rs2
ror x12, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x24, 0xf64dd514 # initialize rs1
li x13, 0x24f86d61 # initialize rs2
ror x13, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x10, 0x7be7f8f0 # initialize rs1
li x14, 0x06490729 # initialize rs2
ror x14, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0xfd352c49 # initialize rs1
li x15, 0x47d86002 # initialize rs2
ror x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x35c9d957 # initialize rs1
li x16, 0x199ffef1 # initialize rs2
ror x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0x06a5c9d6 # initialize rs1
li x17, 0x7b410436 # initialize rs2
ror x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0x2f12b69e # initialize rs1
li x18, 0x805cfa72 # initialize rs2
ror x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x10, 0x05a5d18e # initialize rs1
li x19, 0x353292da # initialize rs2
ror x19, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x7, 0x38c53c55 # initialize rs1
li x20, 0xc9aa648f # initialize rs2
ror x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0x128d9bdf # initialize rs1
li x21, 0xcb3119af # initialize rs2
ror x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0x5df0256f # initialize rs1
li x22, 0xa6317222 # initialize rs2
ror x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x2, 0x748b7887 # initialize rs1
li x23, 0xf3c5691d # initialize rs2
ror x23, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x21, 0xf37c96ac # initialize rs1
li x24, 0x31424fe6 # initialize rs2
ror x24, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0xef099ec6 # initialize rs1
li x25, 0x5eb3b409 # initialize rs2
ror x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x029c5595 # initialize rs1
li x26, 0xd3be3fb3 # initialize rs2
ror x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x7, 0x51faa3d9 # initialize rs1
li x27, 0xdfc8cc2a # initialize rs2
ror x27, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x1, 0x61a0deed # initialize rs1
li x28, 0xac6709d3 # initialize rs2
ror x28, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x0d3acdf5 # initialize rs1
li x29, 0x2af5cfd9 # initialize rs2
ror x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x41d35b3c # initialize rs1
li x30, 0xea363a92 # initialize rs2
ror x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x193a2dbf # initialize rs1
li x31, 0xf1774151 # initialize rs2
ror x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x43f5ad5e # initialize rs1
li x0, 0xaddb6949 # initialize rs2
ror x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x794d8195 # initialize rs1
li x1, 0xbc988bd2 # initialize rs2
ror x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x33a050fc # initialize rs1
li x2, 0x503d0de0 # initialize rs2
ror x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd368a99f # initialize rs1
li x3, 0x2cebbf45 # initialize rs2
ror x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdd743174 # initialize rs1
li x4, 0xf5b24309 # initialize rs2
ror x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e9e06e5 # initialize rs1
li x5, 0x1e700ad1 # initialize rs2
ror x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9a299dd0 # initialize rs1
li x6, 0xac0adbdb # initialize rs2
ror x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7ec85563 # initialize rs1
li x7, 0xca09eb1a # initialize rs2
ror x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x359db45e # initialize rs1
li x8, 0x5b466ab5 # initialize rs2
ror x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xcf5e61f1 # initialize rs1
li x9, 0x3cf63f49 # initialize rs2
ror x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x70850df4 # initialize rs1
li x10, 0xf654a02b # initialize rs2
ror x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xdbf81d56 # initialize rs1
li x11, 0xae6c9954 # initialize rs2
ror x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x542a632b # initialize rs1
li x12, 0xe5a19db9 # initialize rs2
ror x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa94b4da9 # initialize rs1
li x13, 0x456ef553 # initialize rs2
ror x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfd17285f # initialize rs1
li x14, 0x96fd8df0 # initialize rs2
ror x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc456a511 # initialize rs1
li x15, 0x937e0a95 # initialize rs2
ror x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xaa6361ec # initialize rs1
li x16, 0xde8fdc9c # initialize rs2
ror x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x15990b54 # initialize rs1
li x17, 0x7ee9deec # initialize rs2
ror x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xabbfd1be # initialize rs1
li x18, 0x8cff72ce # initialize rs2
ror x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x74b35c5f # initialize rs1
li x19, 0x796073ed # initialize rs2
ror x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe3d17905 # initialize rs1
li x20, 0x0a17fa5e # initialize rs2
ror x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xedfe74e8 # initialize rs1
li x21, 0xbae2fe88 # initialize rs2
ror x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x788da863 # initialize rs1
li x22, 0x85c4352b # initialize rs2
ror x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x53715d47 # initialize rs1
li x23, 0x0eb637c0 # initialize rs2
ror x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbb0f0973 # initialize rs1
li x24, 0x8924e762 # initialize rs2
ror x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xee57fd3c # initialize rs1
li x25, 0x9a5a26bf # initialize rs2
ror x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x520c76b5 # initialize rs1
li x26, 0xd58d14c6 # initialize rs2
ror x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xbfa7be71 # initialize rs1
li x27, 0x5233e52d # initialize rs2
ror x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xcf9f361f # initialize rs1
li x28, 0xd70aa695 # initialize rs2
ror x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5486fb90 # initialize rs1
li x29, 0xfc3c5aaa # initialize rs2
ror x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf970b986 # initialize rs1
li x30, 0x25ffa599 # initialize rs2
ror x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xee362d65 # initialize rs1
li x31, 0xbc8edb95 # initialize rs2
ror x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x16, x28 # perform first operation
ror x24, x30, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x30, x18 # perform first operation
ror x24, x11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x24, x25 # perform first operation
ror x13, x28, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x18, x22 # perform first operation
ror x6, x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x6, x14 # perform first operation
ror x14, x2, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x31, x14 # perform first operation
ror x31, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x31, x16 # perform first operation
ror x20, x19, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x18, x20 # perform first operation
ror x25, x8, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x1, x7 # perform first operation
ror x23, x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x21, x30 # perform first operation
ror x21, x27, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x1, x24 # perform first operation
ror x24, x17, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x23, x9 # perform first operation
ror x19, x16, x1 # perform second (triggering) operation

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
