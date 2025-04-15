///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-mul.S
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
li x0, 0xb8c98178 # initialize rs1
li x2, 0x9c098d64 # initialize rs2
mul x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd179d4f8 # initialize rs1
li x8, 0x66bc34ca # initialize rs2
mul x24, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfb5e041d # initialize rs1
li x29, 0x521af14e # initialize rs2
mul x28, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6926bb14 # initialize rs1
li x5, 0xf4a4d294 # initialize rs2
mul x25, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x80b96cea # initialize rs1
li x10, 0xb211d0b7 # initialize rs2
mul x8, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x43025d5a # initialize rs1
li x18, 0x03203d43 # initialize rs2
mul x9, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xac42cbce # initialize rs1
li x26, 0x1c0984f7 # initialize rs2
mul x12, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfb6b01c4 # initialize rs1
li x14, 0x83c20b3a # initialize rs2
mul x12, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xaeedb360 # initialize rs1
li x18, 0xf65e1ec3 # initialize rs2
mul x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x704ce1fb # initialize rs1
li x22, 0x8df8228b # initialize rs2
mul x16, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9799fef7 # initialize rs1
li x3, 0x4a679270 # initialize rs2
mul x19, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa09b3878 # initialize rs1
li x17, 0x2f69ed12 # initialize rs2
mul x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xaf8deb1f # initialize rs1
li x2, 0x7d7e4425 # initialize rs2
mul x27, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x47715d14 # initialize rs1
li x24, 0x0feb71fb # initialize rs2
mul x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x077acbd9 # initialize rs1
li x1, 0xe1821b97 # initialize rs2
mul x31, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc11ed59b # initialize rs1
li x18, 0xcf4bc615 # initialize rs2
mul x23, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x08f63eab # initialize rs1
li x28, 0x67dccbd6 # initialize rs2
mul x23, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7271588d # initialize rs1
li x3, 0x426542a0 # initialize rs2
mul x30, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa2d0be2e # initialize rs1
li x27, 0xec072c45 # initialize rs2
mul x20, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc567b78a # initialize rs1
li x9, 0x8dd068e1 # initialize rs2
mul x31, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4b4f4902 # initialize rs1
li x21, 0x130b66da # initialize rs2
mul x28, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xad76cf42 # initialize rs1
li x13, 0x6bc78a33 # initialize rs2
mul x10, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe10ba049 # initialize rs1
li x6, 0x96ead85d # initialize rs2
mul x23, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa011c122 # initialize rs1
li x27, 0x403071f1 # initialize rs2
mul x26, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x47320b15 # initialize rs1
li x10, 0x6d2afb28 # initialize rs2
mul x12, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5adee5d9 # initialize rs1
li x20, 0xf585031a # initialize rs2
mul x7, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x89cc640f # initialize rs1
li x20, 0x0a569f5b # initialize rs2
mul x8, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa34c8c40 # initialize rs1
li x5, 0x4443fed6 # initialize rs2
mul x26, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x473363fd # initialize rs1
li x13, 0xbc2ebb31 # initialize rs2
mul x19, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x324414f2 # initialize rs1
li x14, 0xb1a1bf4e # initialize rs2
mul x9, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9e521f42 # initialize rs1
li x11, 0x3d2b651b # initialize rs2
mul x1, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbfe47921 # initialize rs1
li x23, 0xb0cf5e2d # initialize rs2
mul x21, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0xa537c6fc # initialize rs1
li x0, 0x8c0af779 # initialize rs2
mul x30, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x62dc5be7 # initialize rs1
li x1, 0xe9e126df # initialize rs2
mul x11, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x3feb7d44 # initialize rs1
li x2, 0xec2ecc2c # initialize rs2
mul x19, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x494d03f4 # initialize rs1
li x3, 0xceed911e # initialize rs2
mul x29, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x76cdd968 # initialize rs1
li x4, 0xb82db550 # initialize rs2
mul x24, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xdcf60980 # initialize rs1
li x5, 0x13db9952 # initialize rs2
mul x30, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x777794bc # initialize rs1
li x6, 0x45dc31b2 # initialize rs2
mul x25, x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x52bbc1f6 # initialize rs1
li x7, 0xe46bfcb5 # initialize rs2
mul x16, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0xdeb92e4b # initialize rs1
li x8, 0x39e194e4 # initialize rs2
mul x21, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x9303cb01 # initialize rs1
li x9, 0x5f010a30 # initialize rs2
mul x20, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x02587f19 # initialize rs1
li x10, 0xb6ad3244 # initialize rs2
mul x15, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0xc3b38d12 # initialize rs1
li x11, 0xd2c0b670 # initialize rs2
mul x9, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0x6b870858 # initialize rs1
li x12, 0x20b30ebd # initialize rs2
mul x5, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0xcf628840 # initialize rs1
li x13, 0x6e2225eb # initialize rs2
mul x15, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0x1c6d2efa # initialize rs1
li x14, 0xc4cf3a51 # initialize rs2
mul x12, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x59874e8c # initialize rs1
li x15, 0x490ea0b2 # initialize rs2
mul x16, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x73a8cd66 # initialize rs1
li x16, 0x470769ee # initialize rs2
mul x17, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x3219bfd6 # initialize rs1
li x17, 0xf8a41705 # initialize rs2
mul x28, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xdbb64e54 # initialize rs1
li x18, 0x7152ce67 # initialize rs2
mul x25, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x0f9ba287 # initialize rs1
li x19, 0x3a791523 # initialize rs2
mul x7, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x89fb8acc # initialize rs1
li x20, 0x253639ee # initialize rs2
mul x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xe7b4f4c1 # initialize rs1
li x21, 0x6e48455e # initialize rs2
mul x11, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x7521ca87 # initialize rs1
li x22, 0x0f41525d # initialize rs2
mul x26, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x9d54eed5 # initialize rs1
li x23, 0x43cce517 # initialize rs2
mul x7, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x6, 0x20eefa64 # initialize rs1
li x24, 0x69ac9e38 # initialize rs2
mul x19, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0x55686a50 # initialize rs1
li x25, 0x0bf720c7 # initialize rs2
mul x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x688bc59e # initialize rs1
li x26, 0x808e5602 # initialize rs2
mul x16, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x41a89dc3 # initialize rs1
li x27, 0xb8690771 # initialize rs2
mul x8, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0xd9844a36 # initialize rs1
li x28, 0x908262aa # initialize rs2
mul x7, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x18, 0xbbbf836c # initialize rs1
li x29, 0x2bd1b9d2 # initialize rs2
mul x27, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x17, 0x23c0e4a6 # initialize rs1
li x30, 0x6143fbf8 # initialize rs2
mul x2, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0xa45051b3 # initialize rs1
li x31, 0x30ba5b0c # initialize rs2
mul x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 252)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0x42b3932f # initialize rs1
li x27, 0xcb660400 # initialize rs2
mul x0, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xf6a46b43 # initialize rs1
li x5, 0xf1389bfe # initialize rs2
mul x1, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0xa1b7c8b5 # initialize rs1
li x14, 0xc05f17cf # initialize rs2
mul x2, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xec567265 # initialize rs1
li x26, 0x2cd7b568 # initialize rs2
mul x3, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x10d1f0af # initialize rs1
li x31, 0xae03607d # initialize rs2
mul x4, x24, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0xe0313d4c # initialize rs1
li x11, 0xe82f66c2 # initialize rs2
mul x5, x22, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xd928f23c # initialize rs1
li x29, 0xda4e97fe # initialize rs2
mul x6, x27, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x676f210b # initialize rs1
li x17, 0xf73cea98 # initialize rs2
mul x7, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0x5ca02390 # initialize rs1
li x21, 0x88cff377 # initialize rs2
mul x8, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x26, 0x646eaa16 # initialize rs1
li x23, 0xaadd7989 # initialize rs2
mul x9, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x71a2b988 # initialize rs1
li x19, 0xdbb5af14 # initialize rs2
mul x10, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xd13164d3 # initialize rs1
li x8, 0x18843d59 # initialize rs2
mul x11, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x57745bc3 # initialize rs1
li x5, 0x137d8aa9 # initialize rs2
mul x12, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0xb9785707 # initialize rs1
li x14, 0xe2fc4ec0 # initialize rs2
mul x13, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0xce196ab7 # initialize rs1
li x3, 0x7c2ca259 # initialize rs2
mul x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xb26cea1b # initialize rs1
li x21, 0xa7b1fa6a # initialize rs2
mul x15, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x25, 0xccfa0697 # initialize rs1
li x18, 0xa2061141 # initialize rs2
mul x16, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0xa51e72d2 # initialize rs1
li x20, 0xfd3a285a # initialize rs2
mul x17, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0xab49f468 # initialize rs1
li x9, 0x22e81071 # initialize rs2
mul x18, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0xf04f85ff # initialize rs1
li x27, 0xe524820f # initialize rs2
mul x19, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x2cb924b9 # initialize rs1
li x22, 0x39d02dd3 # initialize rs2
mul x20, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x742b2672 # initialize rs1
li x17, 0xd6cced45 # initialize rs2
mul x21, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x8ab3115b # initialize rs1
li x13, 0xf16fc737 # initialize rs2
mul x22, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0xadbc4fe8 # initialize rs1
li x16, 0x28c58e93 # initialize rs2
mul x23, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x32207b6b # initialize rs1
li x25, 0xbb03becf # initialize rs2
mul x24, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x3, 0xc76c19be # initialize rs1
li x25, 0xc2143dae # initialize rs2
mul x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x76592811 # initialize rs1
li x1, 0x013dd29d # initialize rs2
mul x26, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x806e0544 # initialize rs1
li x28, 0x282f53ed # initialize rs2
mul x27, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x51c50ae7 # initialize rs1
li x11, 0xd8b4ecc9 # initialize rs2
mul x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xdf6e90ea # initialize rs1
li x31, 0x111bd85d # initialize rs2
mul x29, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x86e10d32 # initialize rs1
li x19, 0x212f6a52 # initialize rs2
mul x30, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x9490d9de # initialize rs1
li x16, 0x292a8109 # initialize rs2
mul x31, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x00000000 # initialize rs1
li x11, 0xed51b523 # initialize rs2
mul x23, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
li x29, 0xf009696f # initialize rs2
mul x18, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x19, 0x6b9143d7 # initialize rs2
mul x18, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rs1
li x3, 0xe1367989 # initialize rs2
mul x6, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x14, 0x42b6c52c # initialize rs2
mul x25, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x11, 0x71b0364d # initialize rs2
mul x26, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x17, 0x7ffffffe # initialize rs1
li x13, 0x1cfcfd9f # initialize rs2
mul x15, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x1, 0xb9e1c5b4 # initialize rs2
mul x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x3, 0x7b9eb787 # initialize rs2
mul x25, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x22, 0x5bbc8872 # initialize rs1
li x31, 0x35a7f7db # initialize rs2
mul x1, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x3, 0xece1192c # initialize rs2
mul x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0x55555555 # initialize rs1
li x24, 0x09b1af0f # initialize rs2
mul x19, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x8f796404 # initialize rs1
li x8, 0x00000000 # initialize rs2
mul x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0xb2a6c497 # initialize rs1
li x27, 0x00000001 # initialize rs2
mul x13, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0xf5c505b1 # initialize rs1
li x21, 0x00000002 # initialize rs2
mul x11, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x28, 0x14d6f0b6 # initialize rs1
li x16, 0x80000000 # initialize rs2
mul x7, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x25, 0xf761d4fc # initialize rs1
li x20, 0x80000001 # initialize rs2
mul x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x31, 0xd93f2771 # initialize rs1
li x20, 0x7fffffff # initialize rs2
mul x9, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x25, 0x96ce0ab0 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
mul x24, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xbdb22445 # initialize rs1
li x13, 0xffffffff # initialize rs2
mul x24, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x23559a17 # initialize rs1
li x22, 0xfffffffe # initialize rs2
mul x31, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x7, 0x878a5eae # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
mul x17, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0x3bcba8ac # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
mul x3, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0x478ecde9 # initialize rs1
li x31, 0x55555555 # initialize rs2
mul x14, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0x00000000 # initialize rs1
li x2, 0x00000000 # initialize rs2
mul x17, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x00000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
mul x16, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
mul x26, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x00000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
mul x14, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x17, 0x00000000 # initialize rs1
li x23, 0x80000001 # initialize rs2
mul x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x2, 0x00000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mul x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x24, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
mul x28, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0x00000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
mul x29, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mul x26, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x11, 0x00000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
mul x24, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x17, 0x00000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
mul x20, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x29, 0x00000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
mul x12, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x00000001 # initialize rs1
li x6, 0x00000000 # initialize rs2
mul x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x00000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
mul x12, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x10, 0x00000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
mul x6, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x30, 0x00000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
mul x1, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x19, 0x00000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x1, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x20, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
mul x19, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x12, 0x00000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mul x31, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x00000001 # initialize rs1
li x15, 0xffffffff # initialize rs2
mul x8, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
mul x29, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x27, 0x00000001 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
mul x23, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x2, 0x00000001 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
mul x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x23, 0x00000001 # initialize rs1
li x21, 0x55555555 # initialize rs2
mul x25, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x1, 0x00000000 # initialize rs2
mul x7, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x00000002 # initialize rs1
li x12, 0x00000001 # initialize rs2
mul x6, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x11, 0x00000002 # initialize rs2
mul x3, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x6, 0x00000002 # initialize rs1
li x11, 0x80000000 # initialize rs2
mul x10, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x10, 0x00000002 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x8, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x6, 0x7fffffff # initialize rs2
mul x1, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0x00000002 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
mul x27, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
mul x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x11, 0x00000002 # initialize rs1
li x3, 0xfffffffe # initialize rs2
mul x30, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
mul x11, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
mul x16, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x19, 0x00000002 # initialize rs1
li x25, 0x55555555 # initialize rs2
mul x2, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x80000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
mul x19, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x26, 0x00000001 # initialize rs2
mul x30, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x24, 0x00000002 # initialize rs2
mul x16, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
mul x24, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
mul x1, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x16, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
mul x10, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x28, 0x80000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
mul x19, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x14, 0x80000000 # initialize rs1
li x28, 0xffffffff # initialize rs2
mul x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x11, 0xfffffffe # initialize rs2
mul x31, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x23, 0x80000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
mul x9, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mul x25, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x1, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
mul x6, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0x80000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
mul x24, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
mul x23, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x19, 0x80000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
mul x24, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x8, 0x80000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
mul x3, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x8, 0x80000001 # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x7, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x18, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
mul x16, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mul x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x30, 0x80000001 # initialize rs1
li x22, 0xffffffff # initialize rs2
mul x15, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x27, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
mul x7, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
mul x26, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x18, 0x80000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mul x11, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x7, 0x55555555 # initialize rs2
mul x20, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
mul x8, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x26, 0x7fffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
mul x2, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x9, 0x7fffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
mul x31, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x1, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
mul x26, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x1, 0x7fffffff # initialize rs1
li x17, 0x80000001 # initialize rs2
mul x10, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
mul x2, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x26, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
mul x31, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x2, 0x7fffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
mul x14, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x24, 0x7fffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
mul x18, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
mul x22, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x1, 0x7fffffff # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
mul x15, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x11, 0x55555555 # initialize rs2
mul x10, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
mul x24, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
mul x17, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x30, 0x7ffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
mul x29, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x30, 0x7ffffffe # initialize rs1
li x13, 0x80000000 # initialize rs2
mul x18, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x18, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
mul x13, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x31, 0x7fffffff # initialize rs2
mul x28, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mul x28, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
mul x3, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
mul x10, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
mul x21, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
mul x1, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x25, 0x7ffffffe # initialize rs1
li x1, 0x55555555 # initialize rs2
mul x12, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
mul x29, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xffffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
mul x11, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
mul x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xffffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
mul x7, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x18, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
mul x26, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x5, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
mul x16, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
mul x21, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
mul x18, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x21, 0xffffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
mul x2, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x27, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
mul x26, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0xffffffff # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
mul x7, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x1, 0xffffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
mul x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x18, 0xfffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
mul x12, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xfffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
mul x29, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x19, 0xfffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
mul x21, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
mul x22, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x21, 0xfffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
mul x13, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe # initialize rs1
li x17, 0x7fffffff # initialize rs2
mul x9, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
mul x1, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x28, 0xfffffffe # initialize rs1
li x16, 0xffffffff # initialize rs2
mul x31, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
mul x25, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x1, 0xfffffffe # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
mul x27, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x11, 0xfffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
mul x31, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x26, 0xfffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
mul x6, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x12, 0x5bbc8872 # initialize rs1
li x29, 0x00000000 # initialize rs2
mul x28, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x13, 0x5bbc8872 # initialize rs1
li x27, 0x00000001 # initialize rs2
mul x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x3, 0x00000002 # initialize rs2
mul x29, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x30, 0x80000000 # initialize rs2
mul x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x23, 0x5bbc8872 # initialize rs1
li x15, 0x80000001 # initialize rs2
mul x12, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x10, 0x7fffffff # initialize rs2
mul x14, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x22, 0x5bbc8872 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
mul x29, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x10, 0xffffffff # initialize rs2
mul x19, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x5, 0xfffffffe # initialize rs2
mul x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
mul x27, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
mul x11, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x25, 0x55555555 # initialize rs2
mul x12, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
mul x14, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x23, 0xaaaaaaaa # initialize rs1
li x28, 0x00000001 # initialize rs2
mul x30, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaa # initialize rs1
li x25, 0x00000002 # initialize rs2
mul x24, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x9, 0xaaaaaaaa # initialize rs1
li x28, 0x80000000 # initialize rs2
mul x27, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0xaaaaaaaa # initialize rs1
li x24, 0x80000001 # initialize rs2
mul x5, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x9, 0x7fffffff # initialize rs2
mul x30, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x7, 0x7ffffffe # initialize rs2
mul x27, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x3, 0xffffffff # initialize rs2
mul x17, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x27, 0xaaaaaaaa # initialize rs1
li x16, 0xfffffffe # initialize rs2
mul x28, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x1, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
mul x12, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
mul x9, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x30, 0xaaaaaaaa # initialize rs1
li x6, 0x55555555 # initialize rs2
mul x7, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x9, 0x55555555 # initialize rs1
li x20, 0x00000000 # initialize rs2
mul x28, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x17, 0x55555555 # initialize rs1
li x16, 0x00000001 # initialize rs2
mul x8, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x12, 0x55555555 # initialize rs1
li x5, 0x00000002 # initialize rs2
mul x21, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x29, 0x55555555 # initialize rs1
li x15, 0x80000000 # initialize rs2
mul x28, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x3, 0x80000001 # initialize rs2
mul x14, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x2, 0x55555555 # initialize rs1
li x27, 0x7fffffff # initialize rs2
mul x11, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x3, 0x55555555 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
mul x13, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x26, 0x55555555 # initialize rs1
li x30, 0xffffffff # initialize rs2
mul x14, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x27, 0x55555555 # initialize rs1
li x20, 0xfffffffe # initialize rs2
mul x26, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x16, 0x55555555 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
mul x7, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
mul x12, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x10, 0x55555555 # initialize rs2
mul x25, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5f034b25 # initialize rs1
li x0, 0x8e3f5069 # initialize rs2
mul x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9e44a467 # initialize rs1
li x1, 0x77caad7b # initialize rs2
mul x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc8f66f52 # initialize rs1
li x2, 0x619169d8 # initialize rs2
mul x19, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2bda2365 # initialize rs1
li x3, 0x1292a0c8 # initialize rs2
mul x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x50d73295 # initialize rs1
li x4, 0x767d9554 # initialize rs2
mul x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x050caff7 # initialize rs1
li x5, 0xa6abbbff # initialize rs2
mul x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a1799a0 # initialize rs1
li x6, 0xafbd911c # initialize rs2
mul x21, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaf2bafd0 # initialize rs1
li x7, 0x67a2b2ee # initialize rs2
mul x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xba75d973 # initialize rs1
li x8, 0x124bca9a # initialize rs2
mul x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc5ea2cfa # initialize rs1
li x9, 0xdf1a059f # initialize rs2
mul x24, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x00b0f1c1 # initialize rs1
li x10, 0x674b2f42 # initialize rs2
mul x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x778c9800 # initialize rs1
li x11, 0xbf5012a3 # initialize rs2
mul x24, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb5800380 # initialize rs1
li x12, 0x3a6875b6 # initialize rs2
mul x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd35330b4 # initialize rs1
li x13, 0x9fde5a96 # initialize rs2
mul x20, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1b30fc34 # initialize rs1
li x14, 0x59123ffd # initialize rs2
mul x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9ef2d88e # initialize rs1
li x15, 0xa948814e # initialize rs2
mul x8, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa4d8783f # initialize rs1
li x16, 0x3160f2ea # initialize rs2
mul x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x204f6174 # initialize rs1
li x17, 0x2254c45d # initialize rs2
mul x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd1e26d7b # initialize rs1
li x18, 0xd3518bba # initialize rs2
mul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf09d0b03 # initialize rs1
li x19, 0x6f453473 # initialize rs2
mul x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x59811fbb # initialize rs1
li x20, 0xd1a48b01 # initialize rs2
mul x21, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xcb6f3370 # initialize rs1
li x21, 0x25002589 # initialize rs2
mul x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x5036b94a # initialize rs1
li x22, 0xdac04cbc # initialize rs2
mul x20, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x80fdd393 # initialize rs1
li x23, 0x620351a7 # initialize rs2
mul x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xd8a92f9e # initialize rs1
li x24, 0x9d1212a1 # initialize rs2
mul x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbb2e7bf7 # initialize rs1
li x25, 0x79ebbe13 # initialize rs2
mul x29, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3033c229 # initialize rs1
li x26, 0xc282b9ca # initialize rs2
mul x6, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xa3d768ab # initialize rs1
li x27, 0x5d548300 # initialize rs2
mul x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd8147692 # initialize rs1
li x28, 0x82813a21 # initialize rs2
mul x1, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcb7df2f7 # initialize rs1
li x29, 0xe3d16af6 # initialize rs2
mul x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x27059227 # initialize rs1
li x30, 0x7320664e # initialize rs2
mul x10, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8e1e77ba # initialize rs1
li x31, 0xe4e0b047 # initialize rs2
mul x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4a8bb751 # initialize rs1
li x15, 0xd7c63137 # initialize rs2
mul x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x06c53ac6 # initialize rs1
li x2, 0x4143e6b5 # initialize rs2
mul x1, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3f718953 # initialize rs1
li x29, 0x790a65ab # initialize rs2
mul x2, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd813f4fe # initialize rs1
li x18, 0x78ee59c3 # initialize rs2
mul x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1a253947 # initialize rs1
li x6, 0xeba5951f # initialize rs2
mul x4, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5e297094 # initialize rs1
li x28, 0x4ee65220 # initialize rs2
mul x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd3357156 # initialize rs1
li x15, 0x24ac2f50 # initialize rs2
mul x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaeae30f5 # initialize rs1
li x12, 0xce91cdce # initialize rs2
mul x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfe46bd0e # initialize rs1
li x6, 0xe7497876 # initialize rs2
mul x8, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x76f0a6b5 # initialize rs1
li x27, 0x0bc6babf # initialize rs2
mul x9, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2b2177ca # initialize rs1
li x27, 0x30bd7d17 # initialize rs2
mul x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x78e030f9 # initialize rs1
li x17, 0x8a61b892 # initialize rs2
mul x11, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xffe3360d # initialize rs1
li x23, 0xcdcb95fd # initialize rs2
mul x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x09ea9b91 # initialize rs1
li x11, 0x7af49cac # initialize rs2
mul x13, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x789080d5 # initialize rs1
li x25, 0xf409f892 # initialize rs2
mul x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2dc0c0c3 # initialize rs1
li x27, 0xc3efa147 # initialize rs2
mul x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6eb0e785 # initialize rs1
li x15, 0x9dc7983e # initialize rs2
mul x16, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x49a94f87 # initialize rs1
li x6, 0xdbcef929 # initialize rs2
mul x17, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbe2c9a74 # initialize rs1
li x20, 0x0821d736 # initialize rs2
mul x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x454ecd44 # initialize rs1
li x22, 0x9e51d050 # initialize rs2
mul x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfaf826c6 # initialize rs1
li x22, 0x7cc227aa # initialize rs2
mul x20, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xabd9414a # initialize rs1
li x25, 0xa72f9da2 # initialize rs2
mul x21, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd177ba17 # initialize rs1
li x20, 0x87f3fd05 # initialize rs2
mul x22, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3edbd0f0 # initialize rs1
li x1, 0x9eda23cc # initialize rs2
mul x23, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9a293705 # initialize rs1
li x21, 0x6024d0d5 # initialize rs2
mul x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9225c293 # initialize rs1
li x2, 0x15e20707 # initialize rs2
mul x25, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf1ef15d0 # initialize rs1
li x20, 0xd3118d2b # initialize rs2
mul x26, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf14a3986 # initialize rs1
li x12, 0xad9e86d5 # initialize rs2
mul x27, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x80d427f1 # initialize rs1
li x27, 0xc5a6f43a # initialize rs2
mul x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfe44a700 # initialize rs1
li x15, 0xafdc76fa # initialize rs2
mul x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x472869d6 # initialize rs1
li x13, 0x950601d7 # initialize rs2
mul x30, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xca4044ef # initialize rs1
li x14, 0x77b303af # initialize rs2
mul x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xefed7cba # initialize rs1
li x0, 0xea95840f # initialize rs2
mul x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x971e864e # initialize rs1
li x1, 0x7719db2a # initialize rs2
mul x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x21, 0x528a5890 # initialize rs1
li x2, 0x9decd63d # initialize rs2
mul x2, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x18, 0x20915ec1 # initialize rs1
li x3, 0x52bf67ab # initialize rs2
mul x3, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x1b86b644 # initialize rs1
li x4, 0x8c56d973 # initialize rs2
mul x4, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x50148ad9 # initialize rs1
li x5, 0x7ab325e5 # initialize rs2
mul x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x9d51fb71 # initialize rs1
li x6, 0xfecd2f96 # initialize rs2
mul x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x38662b80 # initialize rs1
li x7, 0x272615ce # initialize rs2
mul x7, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x98fc9e06 # initialize rs1
li x8, 0x1f5b7b49 # initialize rs2
mul x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x21, 0x387ef0b1 # initialize rs1
li x9, 0x762f63aa # initialize rs2
mul x9, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0xd1129137 # initialize rs1
li x10, 0xb7c0a694 # initialize rs2
mul x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0x3f77054b # initialize rs1
li x11, 0x2459f5c1 # initialize rs2
mul x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x1504ff18 # initialize rs1
li x12, 0xb6058d52 # initialize rs2
mul x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x3, 0x9b851329 # initialize rs1
li x13, 0x4b0c1d40 # initialize rs2
mul x13, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0xfc57738c # initialize rs1
li x14, 0xcf9f09a3 # initialize rs2
mul x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0xc75f69a6 # initialize rs1
li x15, 0x2960da03 # initialize rs2
mul x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0x57da1c05 # initialize rs1
li x16, 0xcdf711de # initialize rs2
mul x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x90576e12 # initialize rs1
li x17, 0xf0fb51b2 # initialize rs2
mul x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x1, 0xeaaad5f7 # initialize rs1
li x18, 0xc77ddd3b # initialize rs2
mul x18, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0x65b2f7a2 # initialize rs1
li x19, 0xfc56b80a # initialize rs2
mul x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0xd73ad7d1 # initialize rs1
li x20, 0x7884a980 # initialize rs2
mul x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0x3ff6f7bc # initialize rs1
li x21, 0xd30989b5 # initialize rs2
mul x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x26f9d753 # initialize rs1
li x22, 0x07e33006 # initialize rs2
mul x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x29, 0x2ef576c8 # initialize rs1
li x23, 0x1dd23d1f # initialize rs2
mul x23, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0x463dd24d # initialize rs1
li x24, 0x6deb2c06 # initialize rs2
mul x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0x4e8fe29f # initialize rs1
li x25, 0xf64f32ed # initialize rs2
mul x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x17, 0x65b30d61 # initialize rs1
li x26, 0x636a1659 # initialize rs2
mul x26, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x30, 0x8ce138b1 # initialize rs1
li x27, 0x0ccdfaa7 # initialize rs2
mul x27, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0x3b09cdb0 # initialize rs1
li x28, 0x9728c02d # initialize rs2
mul x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x21, 0xee7d5835 # initialize rs1
li x29, 0x5f41a1c2 # initialize rs2
mul x29, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x9eb17c3e # initialize rs1
li x30, 0x3d07273d # initialize rs2
mul x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x18, 0x5ae02247 # initialize rs1
li x31, 0x9a582bbb # initialize rs2
mul x31, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x340229ae # initialize rs1
li x0, 0xa5b1861e # initialize rs2
mul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x12b5bc5e # initialize rs1
li x1, 0x5a6c617b # initialize rs2
mul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x23644f4d # initialize rs1
li x2, 0xebda3a82 # initialize rs2
mul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xedaf06a4 # initialize rs1
li x3, 0xa1f8c1d6 # initialize rs2
mul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9895b80f # initialize rs1
li x4, 0xccb187b9 # initialize rs2
mul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x80445eef # initialize rs1
li x5, 0xe05d5d4c # initialize rs2
mul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8dd4c8a0 # initialize rs1
li x6, 0x8bda0724 # initialize rs2
mul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3f652209 # initialize rs1
li x7, 0x88a7205d # initialize rs2
mul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8c6397d3 # initialize rs1
li x8, 0xcd6258fa # initialize rs2
mul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x32e12151 # initialize rs1
li x9, 0xf89a55b1 # initialize rs2
mul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x73415f07 # initialize rs1
li x10, 0xda20acd1 # initialize rs2
mul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x0d6ae0aa # initialize rs1
li x11, 0xc4472a0d # initialize rs2
mul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x0caefd28 # initialize rs1
li x12, 0xd1d702f2 # initialize rs2
mul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa5689b47 # initialize rs1
li x13, 0xe9270bf4 # initialize rs2
mul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x7a4b5578 # initialize rs1
li x14, 0x8e8a6e78 # initialize rs2
mul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6c0d1c89 # initialize rs1
li x15, 0x6802fb50 # initialize rs2
mul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xcd213b76 # initialize rs1
li x16, 0x0ffbabab # initialize rs2
mul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xf0a1ecf1 # initialize rs1
li x17, 0x2f508cf6 # initialize rs2
mul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7be19b6d # initialize rs1
li x18, 0xbd2141d5 # initialize rs2
mul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2fabe3ec # initialize rs1
li x19, 0x3bacb2a0 # initialize rs2
mul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9e00ac48 # initialize rs1
li x20, 0x0280d86e # initialize rs2
mul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xad579ff9 # initialize rs1
li x21, 0xef8a6974 # initialize rs2
mul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4fe4f815 # initialize rs1
li x22, 0xa0666590 # initialize rs2
mul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbf4d088d # initialize rs1
li x23, 0xd8c9104a # initialize rs2
mul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x36ead279 # initialize rs1
li x24, 0xbe1e9e3d # initialize rs2
mul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf3ed634c # initialize rs1
li x25, 0xae2e3727 # initialize rs2
mul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa748e85d # initialize rs1
li x26, 0x1304991c # initialize rs2
mul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xde2a2b4f # initialize rs1
li x27, 0xbc5d9c3f # initialize rs2
mul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x766efa65 # initialize rs1
li x28, 0x6288cfe5 # initialize rs2
mul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x86182a39 # initialize rs1
li x29, 0x49b44da3 # initialize rs2
mul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc4bbb43e # initialize rs1
li x30, 0xf42dae17 # initialize rs2
mul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3c787e84 # initialize rs1
li x31, 0xd45e7405 # initialize rs2
mul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x10, x21 # perform first operation
mul x20, x16, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x10, x19 # perform first operation
mul x22, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x3, x13 # perform first operation
mul x12, x14, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x2, x7 # perform first operation
mul x12, x19, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x25, x2 # perform first operation
mul x22, x3, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x3, x21 # perform first operation
mul x3, x7, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x26, x12 # perform first operation
mul x30, x24, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x21, x16 # perform first operation
mul x23, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x28, x1 # perform first operation
mul x14, x16, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x17, x22 # perform first operation
mul x17, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x20, x18 # perform first operation
mul x18, x5, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x16, x29 # perform first operation
mul x30, x2, x24 # perform second (triggering) operation

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
