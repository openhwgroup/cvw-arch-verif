///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-div.S
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
li x0, 0x83b6da86 # initialize rs1
li x31, 0x0bae4d65 # initialize rs2
div x14, x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x84560694 # initialize rs1
li x5, 0x7dee2b3f # initialize rs2
div x19, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x137c2650 # initialize rs1
li x20, 0xc04ad70b # initialize rs2
div x15, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x825563be # initialize rs1
li x27, 0x48faa6b2 # initialize rs2
div x2, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd1854ebe # initialize rs1
li x25, 0xb60d15d1 # initialize rs2
div x15, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb592d284 # initialize rs1
li x9, 0x8e5d922d # initialize rs2
div x24, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x11fd3526 # initialize rs1
li x2, 0x536ca4e4 # initialize rs2
div x28, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x14c0b7bf # initialize rs1
li x14, 0xb3ed5592 # initialize rs2
div x19, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x57772982 # initialize rs1
li x18, 0x898f097e # initialize rs2
div x12, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9677de8e # initialize rs1
li x25, 0x523e4944 # initialize rs2
div x8, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4d95f4ea # initialize rs1
li x20, 0x55181bf0 # initialize rs2
div x16, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2c1a1844 # initialize rs1
li x20, 0xc2516220 # initialize rs2
div x3, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x68031273 # initialize rs1
li x7, 0x0d237241 # initialize rs2
div x14, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3a75dfc1 # initialize rs1
li x31, 0x53fe32dd # initialize rs2
div x19, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x833db5fc # initialize rs1
li x1, 0x78e53557 # initialize rs2
div x16, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8a787c4e # initialize rs1
li x27, 0xe6d4f576 # initialize rs2
div x11, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6423b7b7 # initialize rs1
li x2, 0x2239be39 # initialize rs2
div x27, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6cb4e4f8 # initialize rs1
li x1, 0xbcc63234 # initialize rs2
div x18, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xef0aa021 # initialize rs1
li x27, 0xafcdb53a # initialize rs2
div x8, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xcb392b58 # initialize rs1
li x9, 0xcbfbe95c # initialize rs2
div x13, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x535e3925 # initialize rs1
li x24, 0xeb941e7d # initialize rs2
div x9, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x007a5cd4 # initialize rs1
li x14, 0xf82d9ac7 # initialize rs2
div x6, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd60b651b # initialize rs1
li x29, 0xfc5ff40c # initialize rs2
div x10, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe9af1fcb # initialize rs1
li x9, 0xba5a0ad3 # initialize rs2
div x16, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1547a5bf # initialize rs1
li x2, 0xc56ddee8 # initialize rs2
div x14, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa50ec393 # initialize rs1
li x5, 0xb8efe13c # initialize rs2
div x19, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd6452e0c # initialize rs1
li x12, 0x7aaf54c2 # initialize rs2
div x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0baa6b3b # initialize rs1
li x12, 0xc7621c12 # initialize rs2
div x23, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7f009bef # initialize rs1
li x20, 0x98c23906 # initialize rs2
div x23, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf266b213 # initialize rs1
li x16, 0xcc5d1aab # initialize rs2
div x19, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd06609d1 # initialize rs1
li x13, 0x293d803f # initialize rs2
div x5, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xab88db1e # initialize rs1
li x22, 0xf810057d # initialize rs2
div x13, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0xb914eccd # initialize rs1
li x0, 0xae7c544d # initialize rs2
div x18, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0x129829ec # initialize rs1
li x1, 0xcd9fe293 # initialize rs2
div x25, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x5, 0x78dbbb1f # initialize rs1
li x2, 0xb250cb09 # initialize rs2
div x27, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x615b1415 # initialize rs1
li x3, 0xc12fb639 # initialize rs2
div x28, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xb1422846 # initialize rs1
li x4, 0xa7e36fea # initialize rs2
div x11, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x3aea616f # initialize rs1
li x5, 0x25338f78 # initialize rs2
div x22, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x1fa41689 # initialize rs1
li x6, 0x95945482 # initialize rs2
div x4, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xd24856b1 # initialize rs1
li x7, 0x3fe2d419 # initialize rs2
div x14, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0xac8f5d07 # initialize rs1
li x8, 0xc240ee03 # initialize rs2
div x9, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0xa1002d94 # initialize rs1
li x9, 0xe2002371 # initialize rs2
div x27, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x20, 0x891a08c7 # initialize rs1
li x10, 0x6e8b23b5 # initialize rs2
div x9, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0x9a37b62b # initialize rs1
li x11, 0xcda4ed3f # initialize rs2
div x23, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x2, 0xd48efe72 # initialize rs1
li x12, 0xba3036d0 # initialize rs2
div x27, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x430a61cf # initialize rs1
li x13, 0x9983a75e # initialize rs2
div x6, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x51b822fd # initialize rs1
li x14, 0x3a9fa8e4 # initialize rs2
div x24, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0xf1baafe5 # initialize rs1
li x15, 0xa012e3f4 # initialize rs2
div x5, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0x50572ae3 # initialize rs1
li x16, 0xcdcea3f4 # initialize rs2
div x13, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0xb0f79c9c # initialize rs1
li x17, 0xd048ac9a # initialize rs2
div x20, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0xe3567305 # initialize rs1
li x18, 0x8a659b85 # initialize rs2
div x21, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x2, 0x9a5f549d # initialize rs1
li x19, 0xec29e1e1 # initialize rs2
div x1, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0x0e50c184 # initialize rs1
li x20, 0x64095c54 # initialize rs2
div x5, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x22, 0x20f52a14 # initialize rs1
li x21, 0xfab01101 # initialize rs2
div x2, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0x40e12a61 # initialize rs1
li x22, 0x7a97a43f # initialize rs2
div x3, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x925e7cb9 # initialize rs1
li x23, 0x320bded1 # initialize rs2
div x20, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xd3cf0dab # initialize rs1
li x24, 0xb2074c13 # initialize rs2
div x23, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0x8182fc04 # initialize rs1
li x25, 0xbec7f68c # initialize rs2
div x31, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0xaf59240b # initialize rs1
li x26, 0xfe784f4e # initialize rs2
div x30, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x28, 0x2d5851ea # initialize rs1
li x27, 0x74acd545 # initialize rs2
div x19, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0x83c3bed3 # initialize rs1
li x28, 0x5ec117d5 # initialize rs2
div x20, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x25, 0x5dd69bcd # initialize rs1
li x29, 0x4254b7cc # initialize rs2
div x7, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0x555c8c8c # initialize rs1
li x30, 0x35ef1634 # initialize rs2
div x18, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x28, 0x0ec667ad # initialize rs1
li x31, 0x98005c88 # initialize rs2
div x16, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x6af534a0 # initialize rs1
li x28, 0x09d12b14 # initialize rs2
div x0, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x7ca63ce0 # initialize rs1
li x15, 0xde223d81 # initialize rs2
div x1, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0xb593a5d5 # initialize rs1
li x14, 0x4cbdc9fe # initialize rs2
div x2, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x238cfae3 # initialize rs1
li x28, 0xf0df4ccc # initialize rs2
div x3, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x1f12a180 # initialize rs1
li x13, 0xec538762 # initialize rs2
div x4, x30, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x86a8981a # initialize rs1
li x17, 0x95253c19 # initialize rs2
div x5, x23, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x478a4076 # initialize rs1
li x23, 0x10a74a3b # initialize rs2
div x6, x15, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x217ab178 # initialize rs1
li x6, 0xa0599d65 # initialize rs2
div x7, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x4, 0x345fce49 # initialize rs1
li x26, 0x77b28cdd # initialize rs2
div x8, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x29072268 # initialize rs1
li x26, 0x4a7ff60b # initialize rs2
div x9, x9, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0x215a254c # initialize rs1
li x21, 0xe4ed287b # initialize rs2
div x10, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0x0b0a0c97 # initialize rs1
li x20, 0xbcf6df64 # initialize rs2
div x11, x29, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x5b4ca8ce # initialize rs1
li x27, 0xa6a00152 # initialize rs2
div x12, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x742cf1d1 # initialize rs1
li x17, 0x96939ab7 # initialize rs2
div x13, x2, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x8bcb128c # initialize rs1
li x15, 0x795c8ebc # initialize rs2
div x14, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0x9c6c4bae # initialize rs1
li x4, 0x6324489c # initialize rs2
div x15, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x779b790a # initialize rs1
li x17, 0xc7ac48fb # initialize rs2
div x16, x24, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x4ef03d9c # initialize rs1
li x8, 0x5d0f90d5 # initialize rs2
div x17, x22, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0x0719fc0c # initialize rs1
li x28, 0xa4ab445b # initialize rs2
div x18, x29, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x25, 0xd733c500 # initialize rs1
li x9, 0x77ec1a1c # initialize rs2
div x19, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x482c7fc7 # initialize rs1
li x11, 0x10686668 # initialize rs2
div x20, x6, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xb66dd3b3 # initialize rs1
li x20, 0xec33c8c3 # initialize rs2
div x21, x16, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0x9af9ec08 # initialize rs1
li x9, 0x47fcc78a # initialize rs2
div x22, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0x363564cb # initialize rs1
li x4, 0x624ec60b # initialize rs2
div x23, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x95a27bb6 # initialize rs1
li x20, 0x81a4efed # initialize rs2
div x24, x3, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0xfd6118f7 # initialize rs1
li x31, 0x80cb24da # initialize rs2
div x25, x10, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x0187c770 # initialize rs1
li x16, 0xd627cfa8 # initialize rs2
div x26, x11, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x13, 0x7fd57e09 # initialize rs1
li x21, 0x478ad1b1 # initialize rs2
div x27, x13, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0xdc0c080f # initialize rs1
li x28, 0x5be4b183 # initialize rs2
div x28, x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x406826e6 # initialize rs1
li x1, 0x5e19df29 # initialize rs2
div x29, x10, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x298fe4d7 # initialize rs1
li x16, 0xcfe7d0fe # initialize rs2
div x30, x1, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xcbb3f927 # initialize rs1
li x20, 0x3264f78e # initialize rs2
div x31, x9, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x00000000 # initialize rs1
li x9, 0x7e23b7d5 # initialize rs2
div x6, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
li x3, 0x3151f5b9 # initialize rs2
div x13, x2, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x00000002 # initialize rs1
li x10, 0x334bce44 # initialize rs2
div x14, x7, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x17, 0xee716377 # initialize rs2
div x3, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x4, 0x80000001 # initialize rs1
li x28, 0x6e13c733 # initialize rs2
div x19, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs1
li x31, 0x0526d9f0 # initialize rs2
div x26, x14, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x26, 0x7ffffffe # initialize rs1
li x29, 0xaa8d7be0 # initialize rs2
div x16, x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x20, 0x7e9c9266 # initialize rs2
div x12, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x17, 0xeef1e14f # initialize rs2
div x7, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x11, 0x5750e0d9 # initialize rs2
div x9, x18, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x1, 0x2f284b99 # initialize rs2
div x7, x25, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x24, 0xa705401d # initialize rs2
div x18, x31, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x704f370a # initialize rs1
li x12, 0x00000000 # initialize rs2
div x2, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0xa190738f # initialize rs1
li x2, 0x00000001 # initialize rs2
div x6, x3, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x28, 0x57f17a3e # initialize rs1
li x25, 0x00000002 # initialize rs2
div x1, x28, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x16, 0x7dddb6e1 # initialize rs1
li x15, 0x80000000 # initialize rs2
div x10, x16, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0xe0a09ed2 # initialize rs1
li x15, 0x80000001 # initialize rs2
div x23, x10, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x8, 0x9f6fcc48 # initialize rs1
li x19, 0x7fffffff # initialize rs2
div x30, x8, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x26, 0xb13652af # initialize rs1
li x30, 0x7ffffffe # initialize rs2
div x2, x26, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x0d7e1631 # initialize rs1
li x25, 0xffffffff # initialize rs2
div x30, x15, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0xaa74b6cb # initialize rs1
li x15, 0xfffffffe # initialize rs2
div x11, x17, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x23, 0xe7330956 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
div x15, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0xbbd8c850 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
div x16, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x4, 0x3800ee6c # initialize rs1
li x11, 0x55555555 # initialize rs2
div x8, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
div x7, x22, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x1, 0x00000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
div x31, x1, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
div x13, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x20, 0x00000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
div x27, x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x25, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
div x6, x25, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x12, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
div x9, x12, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x26, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
div x28, x26, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x00000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
div x24, x22, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x18, 0x00000000 # initialize rs1
li x4, 0xfffffffe # initialize rs2
div x30, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
div x13, x18, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x8, 0x00000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
div x16, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x24, 0x00000000 # initialize rs1
li x29, 0x55555555 # initialize rs2
div x20, x24, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0x00000001 # initialize rs1
li x26, 0x00000000 # initialize rs2
div x10, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x19, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
div x13, x19, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x4, 0x00000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
div x16, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x26, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
div x14, x26, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
div x16, x26, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x2, 0x00000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
div x7, x2, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
div x23, x14, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x00000001 # initialize rs1
li x20, 0xffffffff # initialize rs2
div x12, x15, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x10, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
div x24, x10, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x6, 0x00000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
div x24, x6, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
div x21, x14, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x4, 0x00000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
div x22, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x00000002 # initialize rs1
li x16, 0x00000000 # initialize rs2
div x28, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x1, 0x00000002 # initialize rs1
li x10, 0x00000001 # initialize rs2
div x4, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x00000002 # initialize rs1
li x22, 0x00000002 # initialize rs2
div x6, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x22, 0x00000002 # initialize rs1
li x3, 0x80000000 # initialize rs2
div x24, x22, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x8, 0x00000002 # initialize rs1
li x29, 0x80000001 # initialize rs2
div x27, x8, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x29, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
div x14, x29, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x29, 0x00000002 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
div x4, x29, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x13, 0x00000002 # initialize rs1
li x18, 0xffffffff # initialize rs2
div x1, x13, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x18, 0xfffffffe # initialize rs2
div x16, x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x10, 0x00000002 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
div x2, x10, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0x00000002 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
div x16, x13, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x20, 0x00000002 # initialize rs1
li x22, 0x55555555 # initialize rs2
div x25, x20, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x28, 0x80000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
div x26, x28, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x22, 0x80000000 # initialize rs1
li x12, 0x00000001 # initialize rs2
div x21, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x25, 0x80000000 # initialize rs1
li x13, 0x00000002 # initialize rs2
div x2, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
div x14, x23, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x25, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
div x18, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x21, 0x80000000 # initialize rs1
li x13, 0x7fffffff # initialize rs2
div x31, x21, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x25, 0x80000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
div x20, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x80000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
div x22, x8, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x10, 0x80000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
div x23, x10, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x1, 0x80000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
div x15, x1, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
div x31, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x31, 0x80000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
div x30, x31, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x6, 0x80000001 # initialize rs1
li x13, 0x00000000 # initialize rs2
div x15, x6, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x31, 0x80000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
div x22, x31, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x7, 0x80000001 # initialize rs1
li x25, 0x00000002 # initialize rs2
div x4, x7, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x17, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
div x10, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
div x11, x10, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x31, 0x80000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
div x26, x31, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x6, 0x80000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
div x26, x6, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x16, 0x80000001 # initialize rs1
li x22, 0xffffffff # initialize rs2
div x1, x16, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x29, 0x80000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
div x14, x29, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x20, 0x80000001 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
div x30, x20, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x12, 0x80000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
div x20, x12, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x18, 0x80000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
div x29, x18, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x9, 0x7fffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
div x23, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x17, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
div x14, x17, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
div x23, x7, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x14, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
div x22, x14, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x19, 0x7fffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
div x10, x19, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
div x13, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x7fffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
div x1, x28, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x7fffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
div x29, x22, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x11, 0x7fffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
div x30, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x17, 0x7fffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
div x12, x17, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x8, 0x7fffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
div x12, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x31, 0x7fffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
div x16, x31, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x23, 0x7ffffffe # initialize rs1
li x1, 0x00000000 # initialize rs2
div x26, x23, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x18, 0x7ffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
div x4, x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x22, 0x7ffffffe # initialize rs1
li x15, 0x00000002 # initialize rs2
div x1, x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x27, 0x80000000 # initialize rs2
div x1, x2, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x28, 0x7ffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
div x26, x28, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x29, 0x7ffffffe # initialize rs1
li x13, 0x7fffffff # initialize rs2
div x15, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
li x7, 0x7ffffffe # initialize rs2
div x11, x25, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffe # initialize rs1
li x27, 0xffffffff # initialize rs2
div x12, x7, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
div x17, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x11, 0x7ffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
div x27, x11, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x20, 0x7ffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
div x21, x20, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x30, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
div x22, x30, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
div x23, x10, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0xffffffff # initialize rs1
li x12, 0x00000001 # initialize rs2
div x28, x24, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x22, 0x00000002 # initialize rs2
div x10, x18, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x22, 0xffffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
div x21, x22, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x1, 0xffffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
div x3, x1, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x15, 0xffffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
div x6, x15, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x17, 0xffffffff # initialize rs1
li x4, 0x7ffffffe # initialize rs2
div x24, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x31, 0xffffffff # initialize rs1
li x4, 0xffffffff # initialize rs2
div x23, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
div x30, x13, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x17, 0xffffffff # initialize rs1
li x4, 0x5bbc8872 # initialize rs2
div x25, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x9, 0xffffffff # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
div x27, x9, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x7, 0xffffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
div x21, x7, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x18, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
div x24, x18, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0xfffffffe # initialize rs1
li x31, 0x00000001 # initialize rs2
div x8, x23, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
div x3, x15, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x7, 0xfffffffe # initialize rs1
li x14, 0x80000000 # initialize rs2
div x18, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x11, 0xfffffffe # initialize rs1
li x2, 0x80000001 # initialize rs2
div x22, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x11, 0xfffffffe # initialize rs1
li x14, 0x7fffffff # initialize rs2
div x1, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x27, 0xfffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
div x30, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0xfffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
div x12, x7, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffe # initialize rs1
li x31, 0xfffffffe # initialize rs2
div x13, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x4, 0xfffffffe # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
div x29, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x10, 0xfffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
div x17, x10, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
div x20, x27, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x8, 0x5bbc8872 # initialize rs1
li x26, 0x00000000 # initialize rs2
div x10, x8, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x29, 0x5bbc8872 # initialize rs1
li x14, 0x00000001 # initialize rs2
div x26, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x10, 0x5bbc8872 # initialize rs1
li x19, 0x00000002 # initialize rs2
div x3, x10, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x30, 0x5bbc8872 # initialize rs1
li x28, 0x80000000 # initialize rs2
div x16, x30, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x14, 0x5bbc8872 # initialize rs1
li x11, 0x80000001 # initialize rs2
div x18, x14, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x9, 0x5bbc8872 # initialize rs1
li x11, 0x7fffffff # initialize rs2
div x21, x9, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x7, 0x5bbc8872 # initialize rs1
li x4, 0x7ffffffe # initialize rs2
div x8, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x31, 0x5bbc8872 # initialize rs1
li x18, 0xffffffff # initialize rs2
div x4, x31, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x27, 0x5bbc8872 # initialize rs1
li x24, 0xfffffffe # initialize rs2
div x17, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x20, 0x5bbc8872 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
div x2, x20, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x3, 0x5bbc8872 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
div x2, x3, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x13, 0x5bbc8872 # initialize rs1
li x20, 0x55555555 # initialize rs2
div x28, x13, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaa # initialize rs1
li x30, 0x00000000 # initialize rs2
div x2, x21, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaa # initialize rs1
li x11, 0x00000001 # initialize rs2
div x30, x26, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x15, 0x00000002 # initialize rs2
div x21, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x14, 0xaaaaaaaa # initialize rs1
li x15, 0x80000000 # initialize rs2
div x9, x14, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x9, 0xaaaaaaaa # initialize rs1
li x25, 0x80000001 # initialize rs2
div x13, x9, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x6, 0xaaaaaaaa # initialize rs1
li x26, 0x7fffffff # initialize rs2
div x11, x6, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x7, 0xaaaaaaaa # initialize rs1
li x15, 0x7ffffffe # initialize rs2
div x1, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x30, 0xaaaaaaaa # initialize rs1
li x1, 0xffffffff # initialize rs2
div x22, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaa # initialize rs1
li x6, 0xfffffffe # initialize rs2
div x4, x16, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x7, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
div x10, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
div x17, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x20, 0x55555555 # initialize rs2
div x9, x21, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x19, 0x55555555 # initialize rs1
li x26, 0x00000000 # initialize rs2
div x2, x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x31, 0x55555555 # initialize rs1
li x4, 0x00000001 # initialize rs2
div x23, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0x55555555 # initialize rs1
li x8, 0x00000002 # initialize rs2
div x13, x27, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x18, 0x55555555 # initialize rs1
li x22, 0x80000000 # initialize rs2
div x2, x18, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x3, 0x55555555 # initialize rs1
li x8, 0x80000001 # initialize rs2
div x21, x3, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x28, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
div x4, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x4, 0x55555555 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
div x18, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x30, 0x55555555 # initialize rs1
li x3, 0xffffffff # initialize rs2
div x8, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x55555555 # initialize rs1
li x3, 0xfffffffe # initialize rs2
div x20, x22, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x15, 0x55555555 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
div x7, x15, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
div x18, x1, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
div x24, x23, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbad525c5 # initialize rs1
li x0, 0x9daea0ae # initialize rs2
div x2, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8aad7794 # initialize rs1
li x1, 0x1049bf4a # initialize rs2
div x19, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe0af516d # initialize rs1
li x2, 0xb49a18de # initialize rs2
div x19, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x573155f5 # initialize rs1
li x3, 0x5f74eb08 # initialize rs2
div x22, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0xde2f4119 # initialize rs1
li x4, 0x1112e7ac # initialize rs2
div x16, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x57f20bfc # initialize rs1
li x5, 0xcde93b43 # initialize rs2
div x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbc899ec4 # initialize rs1
li x6, 0x17d9d388 # initialize rs2
div x20, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf17570c1 # initialize rs1
li x7, 0xf6b5c676 # initialize rs2
div x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xe2709215 # initialize rs1
li x8, 0x8f5313ab # initialize rs2
div x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x00a1e73f # initialize rs1
li x9, 0xa6da5a5a # initialize rs2
div x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa098a65e # initialize rs1
li x10, 0x7512534e # initialize rs2
div x19, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb26ff601 # initialize rs1
li x11, 0x81fc7482 # initialize rs2
div x14, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x693adc0d # initialize rs1
li x12, 0x6bd772a6 # initialize rs2
div x17, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc93d9477 # initialize rs1
li x13, 0xcaaa7aa3 # initialize rs2
div x8, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x35be4489 # initialize rs1
li x14, 0x92b741e2 # initialize rs2
div x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x58b88ece # initialize rs1
li x15, 0xe88c0026 # initialize rs2
div x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4bd63c37 # initialize rs1
li x16, 0x3e7daa34 # initialize rs2
div x30, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xdbb5b801 # initialize rs1
li x17, 0x3c1af95a # initialize rs2
div x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x08eba320 # initialize rs1
li x18, 0xab0803ca # initialize rs2
div x10, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbf37d269 # initialize rs1
li x19, 0x242e2faa # initialize rs2
div x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x8380de82 # initialize rs1
li x20, 0x4c7271ac # initialize rs2
div x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5c830e30 # initialize rs1
li x21, 0xc45914cd # initialize rs2
div x24, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xbb08b011 # initialize rs1
li x22, 0x3485df99 # initialize rs2
div x31, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x341c79d5 # initialize rs1
li x23, 0xf0c4b8cc # initialize rs2
div x27, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x07831c3b # initialize rs1
li x24, 0x334cbf29 # initialize rs2
div x18, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x39087990 # initialize rs1
li x25, 0x9eb3b975 # initialize rs2
div x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x2c373290 # initialize rs1
li x26, 0x224ad16d # initialize rs2
div x9, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x55603623 # initialize rs1
li x27, 0x6403e534 # initialize rs2
div x20, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7b9ce00e # initialize rs1
li x28, 0x37688f14 # initialize rs2
div x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xdc363a81 # initialize rs1
li x29, 0xcf90eadf # initialize rs2
div x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x360c9210 # initialize rs1
li x30, 0x84a81ad7 # initialize rs2
div x31, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xab9a02f7 # initialize rs1
li x31, 0x98e34102 # initialize rs2
div x27, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa277d409 # initialize rs1
li x26, 0x7b70e197 # initialize rs2
div x0, x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x0fc7a795 # initialize rs1
li x22, 0x8ccc96a1 # initialize rs2
div x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1f2dcdc2 # initialize rs1
li x19, 0x667b44cc # initialize rs2
div x2, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x92dbe903 # initialize rs1
li x23, 0x6b66a4ab # initialize rs2
div x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x977f8791 # initialize rs1
li x5, 0xc03c07ba # initialize rs2
div x4, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x7ef36355 # initialize rs1
li x28, 0x7b8f75e0 # initialize rs2
div x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc4efc474 # initialize rs1
li x2, 0x810e8744 # initialize rs2
div x6, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc65a64f5 # initialize rs1
li x28, 0xe921f0a3 # initialize rs2
div x7, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xbf85ddb9 # initialize rs1
li x9, 0xcb117b1f # initialize rs2
div x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7156b5ed # initialize rs1
li x14, 0x8951815c # initialize rs2
div x9, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x80a93014 # initialize rs1
li x12, 0x116577b7 # initialize rs2
div x10, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb127ced5 # initialize rs1
li x14, 0xea67f099 # initialize rs2
div x11, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x74ae4fe4 # initialize rs1
li x20, 0x7bec0201 # initialize rs2
div x12, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf1a00714 # initialize rs1
li x31, 0xcc6c83b9 # initialize rs2
div x13, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x25b770b7 # initialize rs1
li x20, 0xdbd944a5 # initialize rs2
div x14, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xba4e2cfd # initialize rs1
li x16, 0x53786163 # initialize rs2
div x15, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1fc0ba8d # initialize rs1
li x5, 0x472fc684 # initialize rs2
div x16, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb3f96333 # initialize rs1
li x11, 0xc4222f5e # initialize rs2
div x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x16fb40fe # initialize rs1
li x27, 0x68916aec # initialize rs2
div x18, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf077f20b # initialize rs1
li x14, 0x05d167f6 # initialize rs2
div x19, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9c3b543c # initialize rs1
li x13, 0x10b077e3 # initialize rs2
div x20, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x79ee5b7b # initialize rs1
li x23, 0xaea3cc2d # initialize rs2
div x21, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x66c340fa # initialize rs1
li x12, 0x5927aefc # initialize rs2
div x22, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb64aba47 # initialize rs1
li x18, 0xcf53daf9 # initialize rs2
div x23, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb18426ec # initialize rs1
li x17, 0xa9793ca0 # initialize rs2
div x24, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2a8a8fd9 # initialize rs1
li x18, 0x3c6f4271 # initialize rs2
div x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0e491c7b # initialize rs1
li x26, 0x32cef401 # initialize rs2
div x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x409bf5f0 # initialize rs1
li x10, 0x7bd6e176 # initialize rs2
div x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x10d61b43 # initialize rs1
li x13, 0xc89ed23d # initialize rs2
div x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x64abcd45 # initialize rs1
li x23, 0xfbe4d53b # initialize rs2
div x29, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3638da30 # initialize rs1
li x18, 0x38b36ad5 # initialize rs2
div x30, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb9c9f358 # initialize rs1
li x16, 0x6f394a57 # initialize rs2
div x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0xc693831d # initialize rs1
li x0, 0x76832c1d # initialize rs2
div x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0xfd7f7cdc # initialize rs1
li x1, 0xf9c91e38 # initialize rs2
div x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x04b12ad5 # initialize rs1
li x2, 0x0f299bbf # initialize rs2
div x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x20, 0x90c077ea # initialize rs1
li x3, 0x76f2426d # initialize rs2
div x3, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0xee9b741f # initialize rs1
li x4, 0x6b71c387 # initialize rs2
div x4, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x9013c5db # initialize rs1
li x5, 0x12ce1f12 # initialize rs2
div x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xbc89f16c # initialize rs1
li x6, 0x3f933a20 # initialize rs2
div x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x308523de # initialize rs1
li x7, 0x962ec091 # initialize rs2
div x7, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x20, 0x2f24aa7d # initialize rs1
li x8, 0x21c1aa6b # initialize rs2
div x8, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x16, 0xa8878a42 # initialize rs1
li x9, 0x8fb05b5d # initialize rs2
div x9, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x29, 0x48612e56 # initialize rs1
li x10, 0x7276e72b # initialize rs2
div x10, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0xa5dac522 # initialize rs1
li x11, 0xb44f6a04 # initialize rs2
div x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x2623366f # initialize rs1
li x12, 0x5262f452 # initialize rs2
div x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x10, 0x0c236049 # initialize rs1
li x13, 0x81ca1ab6 # initialize rs2
div x13, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x5ea6fb22 # initialize rs1
li x14, 0xdbe94ecd # initialize rs2
div x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x6, 0xfa876e56 # initialize rs1
li x15, 0x9cc1490d # initialize rs2
div x15, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x8, 0xa77fb759 # initialize rs1
li x16, 0x609d2b84 # initialize rs2
div x16, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xc52db383 # initialize rs1
li x17, 0xcd7ccaaa # initialize rs2
div x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x25, 0x3f349843 # initialize rs1
li x18, 0x6e11cc84 # initialize rs2
div x18, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x2, 0xb7310137 # initialize rs1
li x19, 0xbb7c2ae8 # initialize rs2
div x19, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xe254c44a # initialize rs1
li x20, 0xf2518978 # initialize rs2
div x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x24, 0x5d763dcb # initialize rs1
li x21, 0x3aac5d77 # initialize rs2
div x21, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xebb3776e # initialize rs1
li x22, 0xb4edb7a7 # initialize rs2
div x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x53e41d12 # initialize rs1
li x23, 0xbc8e8db8 # initialize rs2
div x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0x181f3551 # initialize rs1
li x24, 0x79904fc2 # initialize rs2
div x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0xa6eaf68b # initialize rs1
li x25, 0x131a575a # initialize rs2
div x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x30, 0xcc3e1027 # initialize rs1
li x26, 0xa2083c2b # initialize rs2
div x26, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xe936c1e1 # initialize rs1
li x27, 0x56851366 # initialize rs2
div x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x3, 0x1466e725 # initialize rs1
li x28, 0xa36f6226 # initialize rs2
div x28, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0x9ce398f9 # initialize rs1
li x29, 0xe0a1f99c # initialize rs2
div x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0xf137e7e1 # initialize rs1
li x30, 0x0d09ddfb # initialize rs2
div x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x26, 0x13f026e0 # initialize rs1
li x31, 0x181ef771 # initialize rs2
div x31, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x62a6abe2 # initialize rs1
li x0, 0x0376b51e # initialize rs2
div x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4493bcf5 # initialize rs1
li x1, 0x479ba111 # initialize rs2
div x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xaa29b85e # initialize rs1
li x2, 0x037702cc # initialize rs2
div x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3c2a19f3 # initialize rs1
li x3, 0x7cdab036 # initialize rs2
div x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6e6548c2 # initialize rs1
li x4, 0x25dfa1f0 # initialize rs2
div x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8de6faa8 # initialize rs1
li x5, 0x69957a5b # initialize rs2
div x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2f025019 # initialize rs1
li x6, 0x45ee2144 # initialize rs2
div x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1f0f7bb9 # initialize rs1
li x7, 0x918e8f15 # initialize rs2
div x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3591a8ce # initialize rs1
li x8, 0xdd6da812 # initialize rs2
div x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x7893e010 # initialize rs1
li x9, 0x915797a3 # initialize rs2
div x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x37e297e2 # initialize rs1
li x10, 0x092fc795 # initialize rs2
div x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2c0ff6a6 # initialize rs1
li x11, 0x9cccc76f # initialize rs2
div x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xaa1be881 # initialize rs1
li x12, 0x3df3c6f0 # initialize rs2
div x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xaef12876 # initialize rs1
li x13, 0x998b1e1e # initialize rs2
div x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x009c0284 # initialize rs1
li x14, 0x370ebdb9 # initialize rs2
div x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x17db7ba0 # initialize rs1
li x15, 0xf1ce1d3d # initialize rs2
div x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x337a5532 # initialize rs1
li x16, 0xf4b85b83 # initialize rs2
div x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x999cfb13 # initialize rs1
li x17, 0x36cb36fe # initialize rs2
div x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xbc67332c # initialize rs1
li x18, 0x726e79b7 # initialize rs2
div x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xbbf02430 # initialize rs1
li x19, 0x6b280e78 # initialize rs2
div x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x082a0f13 # initialize rs1
li x20, 0x570e36b0 # initialize rs2
div x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xe19bb313 # initialize rs1
li x21, 0xc190123f # initialize rs2
div x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xb93d4b35 # initialize rs1
li x22, 0xacda9ad5 # initialize rs2
div x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x9bbcf516 # initialize rs1
li x23, 0x7450402f # initialize rs2
div x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd6a67682 # initialize rs1
li x24, 0xe638c1e9 # initialize rs2
div x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc9e9f830 # initialize rs1
li x25, 0x09db83ad # initialize rs2
div x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd7b6203f # initialize rs1
li x26, 0x21df6160 # initialize rs2
div x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x827e0c72 # initialize rs1
li x27, 0x3d4fd1f6 # initialize rs2
div x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x24ad8a24 # initialize rs1
li x28, 0x70981605 # initialize rs2
div x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8954db52 # initialize rs1
li x29, 0x16d92716 # initialize rs2
div x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb267464b # initialize rs1
li x30, 0x3b224826 # initialize rs2
div x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x712e12bc # initialize rs1
li x31, 0x497dbc57 # initialize rs2
div x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x16, x23 # perform first operation
div x18, x6, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x18, x14 # perform first operation
div x9, x28, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x28, x26 # perform first operation
div x6, x23, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x7, x13 # perform first operation
div x7, x29, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x30, x9 # perform first operation
div x25, x30, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x13, x28 # perform first operation
div x29, x1, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x12, x14 # perform first operation
div x27, x8, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x16, x6 # perform first operation
div x15, x22, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x27, x29 # perform first operation
div x28, x18, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x23, x6 # perform first operation
div x23, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x19, x9 # perform first operation
div x9, x15, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x19, x12 # perform first operation
div x5, x18, x23 # perform second (triggering) operation

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
