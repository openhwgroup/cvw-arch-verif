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
// Tests from: WALLY-COV-sh2add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x88ba8246 # initialize rs1
li x22, 0x13e865af # initialize rs2
sh2add x21, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7bcb87fc # initialize rs1
li x11, 0xf497e411 # initialize rs2
sh2add x26, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb820d601 # initialize rs1
li x8, 0x7dc8a637 # initialize rs2
sh2add x28, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf9c6dd8c # initialize rs1
li x13, 0x952e77f4 # initialize rs2
sh2add x16, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc17df063 # initialize rs1
li x17, 0xcec27cce # initialize rs2
sh2add x26, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x67a02482 # initialize rs1
li x17, 0xcb73b3f0 # initialize rs2
sh2add x22, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a36bcc5 # initialize rs1
li x30, 0x79edfc85 # initialize rs2
sh2add x28, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1e5c33b8 # initialize rs1
li x31, 0x93ac00fd # initialize rs2
sh2add x10, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8974e185 # initialize rs1
li x23, 0x4d82d216 # initialize rs2
sh2add x20, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa4ae4c07 # initialize rs1
li x14, 0x60d41cfb # initialize rs2
sh2add x13, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xfa1ace1d # initialize rs1
li x23, 0x62cb6f0f # initialize rs2
sh2add x20, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x4c402d6c # initialize rs1
li x31, 0x168b3fcd # initialize rs2
sh2add x25, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xb5043144 # initialize rs1
li x8, 0x6864366e # initialize rs2
sh2add x18, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xba45160e # initialize rs1
li x8, 0x0ee3d5a6 # initialize rs2
sh2add x12, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x27d9187b # initialize rs1
li x9, 0xdea097b5 # initialize rs2
sh2add x13, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x69dd767a # initialize rs1
li x7, 0x0426721f # initialize rs2
sh2add x5, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0f79a715 # initialize rs1
li x9, 0x29ddd2b3 # initialize rs2
sh2add x21, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x049ab32c # initialize rs1
li x15, 0x1b69290c # initialize rs2
sh2add x24, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfbff3129 # initialize rs1
li x7, 0x63fb8060 # initialize rs2
sh2add x16, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x57fc2bd5 # initialize rs1
li x2, 0x45c1c31d # initialize rs2
sh2add x30, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd42a801f # initialize rs1
li x1, 0x7160ec14 # initialize rs2
sh2add x2, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xeae4856a # initialize rs1
li x7, 0x446c929b # initialize rs2
sh2add x17, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x8101e6f1 # initialize rs1
li x29, 0x76fa6027 # initialize rs2
sh2add x9, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x46cd7e5a # initialize rs1
li x8, 0xcb3b0479 # initialize rs2
sh2add x24, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x15d68ab2 # initialize rs1
li x13, 0x12c5f888 # initialize rs2
sh2add x30, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3c50a32c # initialize rs1
li x19, 0x3c9f7349 # initialize rs2
sh2add x7, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x78b504fc # initialize rs1
li x31, 0x3a102ed0 # initialize rs2
sh2add x8, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xcdc5d1c1 # initialize rs1
li x15, 0x011f9d3f # initialize rs2
sh2add x28, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5fd623bc # initialize rs1
li x11, 0xb46848e2 # initialize rs2
sh2add x14, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x57741011 # initialize rs1
li x11, 0x2ea14def # initialize rs2
sh2add x13, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x6903f58d # initialize rs1
li x23, 0x1f92b857 # initialize rs2
sh2add x14, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5ce4bbed # initialize rs1
li x1, 0xba3c10e0 # initialize rs2
sh2add x22, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x3, 0x0ba0fb0f # initialize rs1
li x0, 0x12ce56fb # initialize rs2
sh2add x15, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0xb1905e46 # initialize rs1
li x1, 0x4696a815 # initialize rs2
sh2add x9, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0xadc5e1f3 # initialize rs1
li x2, 0x59085e36 # initialize rs2
sh2add x14, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x67066c32 # initialize rs1
li x3, 0xab1bb29c # initialize rs2
sh2add x7, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x418c913f # initialize rs1
li x4, 0xc43b63d7 # initialize rs2
sh2add x1, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xecfce52b # initialize rs1
li x5, 0x4c38da8a # initialize rs2
sh2add x30, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x2ef1d88c # initialize rs1
li x6, 0xcd2835aa # initialize rs2
sh2add x14, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xecb88854 # initialize rs1
li x7, 0x11a83430 # initialize rs2
sh2add x16, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x1b36aaf6 # initialize rs1
li x8, 0x377db457 # initialize rs2
sh2add x13, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0x612b9a63 # initialize rs1
li x9, 0xb1230901 # initialize rs2
sh2add x30, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0xb358d4fd # initialize rs1
li x10, 0xa5c740b9 # initialize rs2
sh2add x17, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x8d60157c # initialize rs1
li x11, 0x29518666 # initialize rs2
sh2add x16, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x264d05e8 # initialize rs1
li x12, 0xc6afd5f3 # initialize rs2
sh2add x7, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0xf4792f06 # initialize rs1
li x13, 0x9c486180 # initialize rs2
sh2add x29, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xf2a774b7 # initialize rs1
li x14, 0x03756484 # initialize rs2
sh2add x10, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x1d90a065 # initialize rs1
li x15, 0x08b9629f # initialize rs2
sh2add x20, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0xaf10fe68 # initialize rs1
li x16, 0x0d60efa7 # initialize rs2
sh2add x28, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x8800c901 # initialize rs1
li x17, 0x0939f58c # initialize rs2
sh2add x13, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0x09cdfed7 # initialize rs1
li x18, 0xbc7cd897 # initialize rs2
sh2add x8, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x1dbabbf7 # initialize rs1
li x19, 0xefe62ca0 # initialize rs2
sh2add x17, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x0cc3ac72 # initialize rs1
li x20, 0x87bd01a0 # initialize rs2
sh2add x8, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0x8e93193d # initialize rs1
li x21, 0xb09328ef # initialize rs2
sh2add x3, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0xbbe8fd30 # initialize rs1
li x22, 0x37a80a6b # initialize rs2
sh2add x11, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x34204fa9 # initialize rs1
li x23, 0x46dc6b12 # initialize rs2
sh2add x15, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0xc253cf96 # initialize rs1
li x24, 0xd759be3a # initialize rs2
sh2add x13, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0xd15c2aab # initialize rs1
li x25, 0x1354ffda # initialize rs2
sh2add x5, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x099a4544 # initialize rs1
li x26, 0xef874da8 # initialize rs2
sh2add x31, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0xd5ab614b # initialize rs1
li x27, 0x208f47c9 # initialize rs2
sh2add x15, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x25, 0x47245cd1 # initialize rs1
li x28, 0x7c3d7247 # initialize rs2
sh2add x17, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0xd6be8653 # initialize rs1
li x29, 0x694fa1d6 # initialize rs2
sh2add x18, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xa3eeda0e # initialize rs1
li x30, 0x21027f92 # initialize rs2
sh2add x12, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0xea2647a3 # initialize rs1
li x31, 0x4670ee30 # initialize rs2
sh2add x13, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 252)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x27c3b8d8 # initialize rs1
li x31, 0xd1fdb706 # initialize rs2
sh2add x0, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x14, 0x883200fc # initialize rs1
li x22, 0xbc397b92 # initialize rs2
sh2add x1, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x90857681 # initialize rs1
li x2, 0x174310a4 # initialize rs2
sh2add x2, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x5408cf8a # initialize rs1
li x18, 0xd1d47b67 # initialize rs2
sh2add x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xa15d4ec3 # initialize rs1
li x15, 0x9ee42cb9 # initialize rs2
sh2add x4, x18, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x9d369b9f # initialize rs1
li x11, 0x55c78510 # initialize rs2
sh2add x5, x25, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0x2a2fe557 # initialize rs1
li x22, 0xfd06b315 # initialize rs2
sh2add x6, x16, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x326b6290 # initialize rs1
li x22, 0x3efefc4d # initialize rs2
sh2add x7, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xf0ae4b3b # initialize rs1
li x28, 0xe55f1b9a # initialize rs2
sh2add x8, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0x82d9d49c # initialize rs1
li x26, 0x0aaa2e70 # initialize rs2
sh2add x9, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xf8e243bd # initialize rs1
li x29, 0x66e6bd8e # initialize rs2
sh2add x10, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xf2761c98 # initialize rs1
li x16, 0x71c57ff1 # initialize rs2
sh2add x11, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x507a630b # initialize rs1
li x19, 0x1c72eee2 # initialize rs2
sh2add x12, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x3, 0x4292f7a3 # initialize rs1
li x23, 0x49567e83 # initialize rs2
sh2add x13, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x46900f0a # initialize rs1
li x12, 0xe5f0d30a # initialize rs2
sh2add x14, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0xdefbb062 # initialize rs1
li x28, 0x25a58f44 # initialize rs2
sh2add x15, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x69f543f0 # initialize rs1
li x19, 0x7ec06f3e # initialize rs2
sh2add x16, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0x3d408de1 # initialize rs1
li x19, 0x5da6a42b # initialize rs2
sh2add x17, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0x8d1a1372 # initialize rs1
li x14, 0x7d4b6406 # initialize rs2
sh2add x18, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0xfef45b4f # initialize rs1
li x8, 0x0450a8e9 # initialize rs2
sh2add x19, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x24f24545 # initialize rs1
li x24, 0x29d011ec # initialize rs2
sh2add x20, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0x4e313e10 # initialize rs1
li x11, 0x01ab3aa0 # initialize rs2
sh2add x21, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x5352a36a # initialize rs1
li x3, 0x45f839d7 # initialize rs2
sh2add x22, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0xd16d44c6 # initialize rs1
li x14, 0x8c42fc52 # initialize rs2
sh2add x23, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x10, 0x7cb29fd6 # initialize rs1
li x9, 0xce15ec03 # initialize rs2
sh2add x24, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0xcb18cb6f # initialize rs1
li x21, 0x3aee33ac # initialize rs2
sh2add x25, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x303b21dc # initialize rs1
li x18, 0x05471112 # initialize rs2
sh2add x26, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0xd61ad28f # initialize rs1
li x20, 0x7501fd47 # initialize rs2
sh2add x27, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0xaba51106 # initialize rs1
li x28, 0x99282dc2 # initialize rs2
sh2add x28, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x4de3d227 # initialize rs1
li x14, 0x28714b80 # initialize rs2
sh2add x29, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x15, 0x7fcf6140 # initialize rs1
li x11, 0x55084167 # initialize rs2
sh2add x30, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x3abb27ae # initialize rs1
li x13, 0xb2f6ddd5 # initialize rs2
sh2add x31, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
li x23, 0xe8b6a711 # initialize rs2
sh2add x5, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
li x29, 0x50d639f2 # initialize rs2
sh2add x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x00000002 # initialize rs1
li x22, 0xda2a3f24 # initialize rs2
sh2add x27, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
li x15, 0x127d51c3 # initialize rs2
sh2add x29, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x17, 0x9f5e9a19 # initialize rs2
sh2add x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x7fffffff # initialize rs1
li x21, 0xde351d38 # initialize rs2
sh2add x20, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs1
li x19, 0xa00835a8 # initialize rs2
sh2add x2, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rs1
li x7, 0x85b4f5d1 # initialize rs2
sh2add x23, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0xfffffffe # initialize rs1
li x8, 0x5636b4b1 # initialize rs2
sh2add x6, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
li x9, 0xe2f60569 # initialize rs2
sh2add x17, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs1
li x9, 0x96af93dd # initialize rs2
sh2add x13, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x14, 0x9261b746 # initialize rs2
sh2add x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x16a9aa36 # initialize rs1
li x10, 0x00000000 # initialize rs2
sh2add x26, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x268d0a11 # initialize rs1
li x27, 0x00000001 # initialize rs2
sh2add x11, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0xbee37e48 # initialize rs1
li x10, 0x00000002 # initialize rs2
sh2add x25, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0x8ab500e4 # initialize rs1
li x6, 0x80000000 # initialize rs2
sh2add x5, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x22, 0x0aa9d1a0 # initialize rs1
li x6, 0x80000001 # initialize rs2
sh2add x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0x63bb5485 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sh2add x15, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x21, 0xce319b5a # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sh2add x29, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x70aebcc2 # initialize rs1
li x31, 0xffffffff # initialize rs2
sh2add x7, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x25, 0x0ebd8000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
sh2add x29, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x8cad847b # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sh2add x30, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x2, 0xe30b971e # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sh2add x6, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0x9d663c11 # initialize rs1
li x28, 0x55555555 # initialize rs2
sh2add x14, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x7, 0x00000000 # initialize rs1
li x17, 0x00000000 # initialize rs2
sh2add x2, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x3, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
sh2add x24, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x17, 0x00000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
sh2add x28, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x29, 0x00000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
sh2add x19, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x17, 0x00000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
sh2add x8, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x18, 0x00000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sh2add x2, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x21, 0x00000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sh2add x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
sh2add x17, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x8, 0x00000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sh2add x6, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x22, 0x00000000 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
sh2add x16, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x6, 0x00000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sh2add x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0x00000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
sh2add x1, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x00000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
sh2add x28, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
sh2add x2, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x1, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
sh2add x11, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x30, 0x00000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
sh2add x23, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x14, 0x00000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
sh2add x27, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sh2add x30, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x31, 0x00000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sh2add x3, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x00000001 # initialize rs1
li x7, 0xffffffff # initialize rs2
sh2add x21, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sh2add x26, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x29, 0x00000001 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sh2add x13, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x28, 0x00000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sh2add x25, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
sh2add x6, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x27, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
sh2add x26, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x00000002 # initialize rs1
li x29, 0x00000001 # initialize rs2
sh2add x2, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
sh2add x10, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x22, 0x00000002 # initialize rs1
li x16, 0x80000000 # initialize rs2
sh2add x26, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x24, 0x00000002 # initialize rs1
li x28, 0x80000001 # initialize rs2
sh2add x10, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x00000002 # initialize rs1
li x19, 0x7fffffff # initialize rs2
sh2add x14, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x14, 0x00000002 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sh2add x30, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x00000002 # initialize rs1
li x26, 0xffffffff # initialize rs2
sh2add x13, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x00000002 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sh2add x1, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x21, 0x00000002 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
sh2add x9, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0x00000002 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sh2add x7, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x00000002 # initialize rs1
li x16, 0x55555555 # initialize rs2
sh2add x20, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x2, 0x80000000 # initialize rs1
li x3, 0x00000000 # initialize rs2
sh2add x30, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x3, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
sh2add x16, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x30, 0x80000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
sh2add x23, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x80000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
sh2add x31, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x3, 0x80000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
sh2add x8, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sh2add x8, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x30, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sh2add x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x80000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
sh2add x2, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x22, 0x80000000 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sh2add x21, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x5, 0x80000000 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sh2add x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x5, 0x80000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sh2add x18, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x25, 0x80000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
sh2add x30, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x1, 0x80000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
sh2add x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
sh2add x5, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x14, 0x80000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
sh2add x18, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x21, 0x80000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
sh2add x30, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x12, 0x80000001 # initialize rs1
li x20, 0x80000001 # initialize rs2
sh2add x10, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x15, 0x80000001 # initialize rs1
li x28, 0x7fffffff # initialize rs2
sh2add x18, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x30, 0x80000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sh2add x19, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x8, 0x80000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
sh2add x19, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x10, 0x80000001 # initialize rs1
li x13, 0xfffffffe # initialize rs2
sh2add x27, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x21, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sh2add x22, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x22, 0x80000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
sh2add x3, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x26, 0x80000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
sh2add x16, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x2, 0x7fffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
sh2add x31, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x31, 0x7fffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
sh2add x28, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x7fffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
sh2add x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x15, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
sh2add x28, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x9, 0x7fffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
sh2add x5, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x5, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
sh2add x24, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x29, 0x7fffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sh2add x17, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x1, 0x7fffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
sh2add x24, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0x7fffffff # initialize rs1
li x16, 0xfffffffe # initialize rs2
sh2add x12, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x5, 0x7fffffff # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sh2add x10, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x18, 0x7fffffff # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
sh2add x24, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x14, 0x7fffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
sh2add x2, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x23, 0x7ffffffe # initialize rs1
li x11, 0x00000000 # initialize rs2
sh2add x2, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x19, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
sh2add x11, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x3, 0x7ffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sh2add x23, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x6, 0x80000000 # initialize rs2
sh2add x26, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
sh2add x22, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x1, 0x7ffffffe # initialize rs1
li x11, 0x7fffffff # initialize rs2
sh2add x27, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x5, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sh2add x29, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
sh2add x22, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
sh2add x21, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x19, 0x7ffffffe # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sh2add x6, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x28, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh2add x14, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x13, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
sh2add x9, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x14, 0xffffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
sh2add x2, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x23, 0xffffffff # initialize rs1
li x25, 0x00000001 # initialize rs2
sh2add x17, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0xffffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
sh2add x23, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x7, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
sh2add x9, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x9, 0xffffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
sh2add x3, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x21, 0xffffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
sh2add x31, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x8, 0xffffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sh2add x21, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x7, 0xffffffff # initialize rs1
li x12, 0xffffffff # initialize rs2
sh2add x8, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
sh2add x15, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x27, 0xffffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sh2add x2, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x5, 0xffffffff # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sh2add x20, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x9, 0xffffffff # initialize rs1
li x28, 0x55555555 # initialize rs2
sh2add x23, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
sh2add x14, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x22, 0xfffffffe # initialize rs1
li x9, 0x00000001 # initialize rs2
sh2add x21, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x22, 0xfffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
sh2add x17, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x31, 0xfffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
sh2add x5, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x14, 0xfffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
sh2add x6, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x5, 0xfffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
sh2add x27, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x14, 0xfffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sh2add x30, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0xfffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
sh2add x31, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
sh2add x8, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x2, 0xfffffffe # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sh2add x7, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x21, 0xfffffffe # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sh2add x2, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x10, 0xfffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
sh2add x25, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x2, 0x5bbc8872 # initialize rs1
li x16, 0x00000000 # initialize rs2
sh2add x14, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x2, 0x5bbc8872 # initialize rs1
li x7, 0x00000001 # initialize rs2
sh2add x28, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x25, 0x5bbc8872 # initialize rs1
li x7, 0x00000002 # initialize rs2
sh2add x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x10, 0x5bbc8872 # initialize rs1
li x27, 0x80000000 # initialize rs2
sh2add x8, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x80000001 # initialize rs2
sh2add x16, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x7fffffff # initialize rs2
sh2add x1, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x15, 0x5bbc8872 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sh2add x20, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x12, 0x5bbc8872 # initialize rs1
li x11, 0xffffffff # initialize rs2
sh2add x10, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x18, 0xfffffffe # initialize rs2
sh2add x1, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x30, 0x5bbc8872 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sh2add x1, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x5, 0x5bbc8872 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sh2add x28, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x28, 0x55555555 # initialize rs2
sh2add x7, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x22, 0x00000000 # initialize rs2
sh2add x24, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaa # initialize rs1
li x9, 0x00000001 # initialize rs2
sh2add x31, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x6, 0xaaaaaaaa # initialize rs1
li x8, 0x00000002 # initialize rs2
sh2add x25, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x26, 0xaaaaaaaa # initialize rs1
li x11, 0x80000000 # initialize rs2
sh2add x31, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x16, 0x80000001 # initialize rs2
sh2add x30, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x29, 0xaaaaaaaa # initialize rs1
li x1, 0x7fffffff # initialize rs2
sh2add x2, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x6, 0xaaaaaaaa # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sh2add x16, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x23, 0xffffffff # initialize rs2
sh2add x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaa # initialize rs1
li x1, 0xfffffffe # initialize rs2
sh2add x2, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x29, 0xaaaaaaaa # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
sh2add x9, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sh2add x11, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x18, 0xaaaaaaaa # initialize rs1
li x19, 0x55555555 # initialize rs2
sh2add x14, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x16, 0x55555555 # initialize rs1
li x25, 0x00000000 # initialize rs2
sh2add x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x15, 0x55555555 # initialize rs1
li x17, 0x00000001 # initialize rs2
sh2add x30, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x13, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
sh2add x8, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x6, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
sh2add x17, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x15, 0x55555555 # initialize rs1
li x22, 0x80000001 # initialize rs2
sh2add x16, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x9, 0x55555555 # initialize rs1
li x8, 0x7fffffff # initialize rs2
sh2add x16, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sh2add x23, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x26, 0x55555555 # initialize rs1
li x12, 0xffffffff # initialize rs2
sh2add x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x3, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sh2add x2, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x10, 0x55555555 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sh2add x26, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x7, 0x55555555 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sh2add x11, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x14, 0x55555555 # initialize rs1
li x16, 0x55555555 # initialize rs2
sh2add x23, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb502b5e8 # initialize rs1
li x0, 0x1f55be31 # initialize rs2
sh2add x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x1b6be356 # initialize rs1
li x1, 0x23e81ab6 # initialize rs2
sh2add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc5f7f534 # initialize rs1
li x2, 0x1f151657 # initialize rs2
sh2add x10, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xe1f89d3a # initialize rs1
li x3, 0x40a52042 # initialize rs2
sh2add x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x999cf33c # initialize rs1
li x4, 0xf26be3a1 # initialize rs2
sh2add x17, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x34e0f471 # initialize rs1
li x5, 0x5027e3d0 # initialize rs2
sh2add x19, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1fd05157 # initialize rs1
li x6, 0x9326b783 # initialize rs2
sh2add x20, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7a5cf79c # initialize rs1
li x7, 0x89bae53f # initialize rs2
sh2add x27, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xf1cfa03a # initialize rs1
li x8, 0xdd41217b # initialize rs2
sh2add x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5cb64788 # initialize rs1
li x9, 0xad9ce099 # initialize rs2
sh2add x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x611bf42e # initialize rs1
li x10, 0xe9468778 # initialize rs2
sh2add x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x4bedf8f0 # initialize rs1
li x11, 0x3c64dab3 # initialize rs2
sh2add x18, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0bf2c3b1 # initialize rs1
li x12, 0x47b3d7c0 # initialize rs2
sh2add x10, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xaa37d9a9 # initialize rs1
li x13, 0x950ab2c6 # initialize rs2
sh2add x18, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x20026e1a # initialize rs1
li x14, 0x324ec8b4 # initialize rs2
sh2add x1, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x15fdc5d8 # initialize rs1
li x15, 0x90a7bb71 # initialize rs2
sh2add x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa94264e9 # initialize rs1
li x16, 0x4e0f4d43 # initialize rs2
sh2add x23, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x8fba4986 # initialize rs1
li x17, 0x0dcad57a # initialize rs2
sh2add x27, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3f8f08f1 # initialize rs1
li x18, 0x1411df16 # initialize rs2
sh2add x28, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xa467cb3f # initialize rs1
li x19, 0x5f9f467d # initialize rs2
sh2add x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xeaff2f59 # initialize rs1
li x20, 0xa1e781ee # initialize rs2
sh2add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4394c53d # initialize rs1
li x21, 0x19ce08e2 # initialize rs2
sh2add x5, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x4a7cb85e # initialize rs1
li x22, 0x77e0b67e # initialize rs2
sh2add x27, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x43ce83e5 # initialize rs1
li x23, 0xcb1bab70 # initialize rs2
sh2add x10, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x33f91e89 # initialize rs1
li x24, 0x18ff3b00 # initialize rs2
sh2add x3, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x16804de0 # initialize rs1
li x25, 0xd96d09ab # initialize rs2
sh2add x15, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xab55b670 # initialize rs1
li x26, 0xfb5be48b # initialize rs2
sh2add x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x5ef4ec5c # initialize rs1
li x27, 0x05540155 # initialize rs2
sh2add x29, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8192ffdd # initialize rs1
li x28, 0xfd90106c # initialize rs2
sh2add x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4d04059d # initialize rs1
li x29, 0xc4700d5f # initialize rs2
sh2add x22, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xeab5978d # initialize rs1
li x30, 0x0974509f # initialize rs2
sh2add x5, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x014edda1 # initialize rs1
li x31, 0x3b687a4b # initialize rs2
sh2add x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x12fbf61e # initialize rs1
li x10, 0xfaec8d20 # initialize rs2
sh2add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xbb138c05 # initialize rs1
li x26, 0x38cdc7b2 # initialize rs2
sh2add x1, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x07b49c32 # initialize rs1
li x19, 0xe7cd97f4 # initialize rs2
sh2add x2, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9efcc105 # initialize rs1
li x7, 0x2c1e0240 # initialize rs2
sh2add x3, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8399f8e9 # initialize rs1
li x13, 0xbcfebd95 # initialize rs2
sh2add x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdd3f267f # initialize rs1
li x17, 0x37f96b06 # initialize rs2
sh2add x5, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x229de66b # initialize rs1
li x7, 0x5457d869 # initialize rs2
sh2add x6, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x72657126 # initialize rs1
li x23, 0xaa3fa25e # initialize rs2
sh2add x7, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xca77b782 # initialize rs1
li x9, 0x4270016c # initialize rs2
sh2add x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa49091ef # initialize rs1
li x1, 0xb38b552b # initialize rs2
sh2add x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7ec0c483 # initialize rs1
li x23, 0x495c22c8 # initialize rs2
sh2add x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0c8554a5 # initialize rs1
li x12, 0xab7cf131 # initialize rs2
sh2add x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa17a1df8 # initialize rs1
li x24, 0x3f5da0f3 # initialize rs2
sh2add x12, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc2603370 # initialize rs1
li x26, 0xe92b0841 # initialize rs2
sh2add x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaf2f82f5 # initialize rs1
li x29, 0xa6421d5a # initialize rs2
sh2add x14, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe5c29ea9 # initialize rs1
li x31, 0x22e00694 # initialize rs2
sh2add x15, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9dbe76ee # initialize rs1
li x14, 0x931dd1ab # initialize rs2
sh2add x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbd7e8adc # initialize rs1
li x9, 0x0026e8d3 # initialize rs2
sh2add x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x4f17f1a5 # initialize rs1
li x12, 0xc2e77430 # initialize rs2
sh2add x18, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x01c806fd # initialize rs1
li x15, 0xf5aee965 # initialize rs2
sh2add x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9e44d355 # initialize rs1
li x21, 0xf17ccde2 # initialize rs2
sh2add x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc3642cc0 # initialize rs1
li x6, 0x0cbca8ce # initialize rs2
sh2add x21, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7cfaf1e7 # initialize rs1
li x2, 0xa8ddac2b # initialize rs2
sh2add x22, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4454573e # initialize rs1
li x7, 0x7a5a7821 # initialize rs2
sh2add x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf395864d # initialize rs1
li x27, 0x59db4efe # initialize rs2
sh2add x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9b5525b9 # initialize rs1
li x25, 0xa98c2b53 # initialize rs2
sh2add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x732f92d1 # initialize rs1
li x7, 0x5f1fe54f # initialize rs2
sh2add x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa8ce8cbf # initialize rs1
li x13, 0x1f65d6f0 # initialize rs2
sh2add x27, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe26aaa3c # initialize rs1
li x13, 0xfe3e151f # initialize rs2
sh2add x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3ff9ac17 # initialize rs1
li x10, 0x524aa176 # initialize rs2
sh2add x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x715522e2 # initialize rs1
li x29, 0xedd443f3 # initialize rs2
sh2add x30, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7fd088a4 # initialize rs1
li x26, 0x9640c94f # initialize rs2
sh2add x31, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x5, 0xef701a3f # initialize rs1
li x0, 0xf49b2c46 # initialize rs2
sh2add x0, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0x661b4461 # initialize rs1
li x1, 0xb8f1e0ef # initialize rs2
sh2add x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0xd2e6b323 # initialize rs1
li x2, 0xe18cf613 # initialize rs2
sh2add x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x11, 0x1845ef2a # initialize rs1
li x3, 0xb481de67 # initialize rs2
sh2add x3, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x0f332370 # initialize rs1
li x4, 0xbb279c2f # initialize rs2
sh2add x4, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x23, 0xa4bd177f # initialize rs1
li x5, 0x9a52a050 # initialize rs2
sh2add x5, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0xcaf7618b # initialize rs1
li x6, 0x36d1e64b # initialize rs2
sh2add x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x51efd479 # initialize rs1
li x7, 0x6672c786 # initialize rs2
sh2add x7, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x8065f065 # initialize rs1
li x8, 0x9bdd8957 # initialize rs2
sh2add x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x8, 0x589fdca8 # initialize rs1
li x9, 0x467eff52 # initialize rs2
sh2add x9, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x2c4dfdcf # initialize rs1
li x10, 0xd76e22b7 # initialize rs2
sh2add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x21, 0x28325e08 # initialize rs1
li x11, 0xd7908a2a # initialize rs2
sh2add x11, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x19, 0xce0c6bf3 # initialize rs1
li x12, 0x2e719a6b # initialize rs2
sh2add x12, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x31, 0x20a5bd24 # initialize rs1
li x13, 0x2c7cb80a # initialize rs2
sh2add x13, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x88c9bb3c # initialize rs1
li x14, 0x32e80c2a # initialize rs2
sh2add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0x38fd57f0 # initialize rs1
li x15, 0x2c8f5fef # initialize rs2
sh2add x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x10, 0x85bb66a7 # initialize rs1
li x16, 0x5ddf496a # initialize rs2
sh2add x16, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0x13fc1e9a # initialize rs1
li x17, 0x069d8dd3 # initialize rs2
sh2add x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x7, 0xd644ac3f # initialize rs1
li x18, 0xae59b94a # initialize rs2
sh2add x18, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x20, 0x6ee6c737 # initialize rs1
li x19, 0xfbbc3b6b # initialize rs2
sh2add x19, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xbeccdaf2 # initialize rs1
li x20, 0x60a2700e # initialize rs2
sh2add x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0x4a5597e0 # initialize rs1
li x21, 0x1f366b63 # initialize rs2
sh2add x21, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0xfc3e42a5 # initialize rs1
li x22, 0xb6c3d545 # initialize rs2
sh2add x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x5c39e568 # initialize rs1
li x23, 0x0416a663 # initialize rs2
sh2add x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x17, 0xfc42963a # initialize rs1
li x24, 0x69b3ee1e # initialize rs2
sh2add x24, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0x67588c84 # initialize rs1
li x25, 0xaee086e9 # initialize rs2
sh2add x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x5, 0x63e1d718 # initialize rs1
li x26, 0x7340142e # initialize rs2
sh2add x26, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0x45bc77cf # initialize rs1
li x27, 0xa4757cc3 # initialize rs2
sh2add x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x9, 0xd8e75500 # initialize rs1
li x28, 0xa06091b2 # initialize rs2
sh2add x28, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x683d33fc # initialize rs1
li x29, 0x946ba783 # initialize rs2
sh2add x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0xcfc16325 # initialize rs1
li x30, 0x37330000 # initialize rs2
sh2add x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0x432eadfc # initialize rs1
li x31, 0x767eed19 # initialize rs2
sh2add x31, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x69814c8f # initialize rs1
li x0, 0x5e569507 # initialize rs2
sh2add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x86e32ad5 # initialize rs1
li x1, 0x54bad9da # initialize rs2
sh2add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x34d5aec3 # initialize rs1
li x2, 0x9898d03b # initialize rs2
sh2add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x5a5e30f5 # initialize rs1
li x3, 0x1e8297bc # initialize rs2
sh2add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6970f41c # initialize rs1
li x4, 0x9da00b56 # initialize rs2
sh2add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc8c64ec4 # initialize rs1
li x5, 0xe8fd2fa9 # initialize rs2
sh2add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x06eb3076 # initialize rs1
li x6, 0x72b2c440 # initialize rs2
sh2add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8df120ea # initialize rs1
li x7, 0xe63f74c8 # initialize rs2
sh2add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfe7ee5a0 # initialize rs1
li x8, 0xccca2df7 # initialize rs2
sh2add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x65678564 # initialize rs1
li x9, 0x53f381e8 # initialize rs2
sh2add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e97275f # initialize rs1
li x10, 0xeeb4f01d # initialize rs2
sh2add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2f7b3530 # initialize rs1
li x11, 0xbddca753 # initialize rs2
sh2add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6ccb0c02 # initialize rs1
li x12, 0x28c917db # initialize rs2
sh2add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4faeabfe # initialize rs1
li x13, 0x91515f69 # initialize rs2
sh2add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x9604c446 # initialize rs1
li x14, 0x202735be # initialize rs2
sh2add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x71572d29 # initialize rs1
li x15, 0x8fcb80ce # initialize rs2
sh2add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa5c448ae # initialize rs1
li x16, 0x188ad6bc # initialize rs2
sh2add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xde378344 # initialize rs1
li x17, 0xfd874006 # initialize rs2
sh2add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4f1fa48b # initialize rs1
li x18, 0x861547b4 # initialize rs2
sh2add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd46d6dcf # initialize rs1
li x19, 0x98bc0750 # initialize rs2
sh2add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1a4bbc96 # initialize rs1
li x20, 0xccdd5794 # initialize rs2
sh2add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x19b912ed # initialize rs1
li x21, 0x4fa9c6a8 # initialize rs2
sh2add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x3e686b66 # initialize rs1
li x22, 0xdc242790 # initialize rs2
sh2add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbdfc1db6 # initialize rs1
li x23, 0x2e704693 # initialize rs2
sh2add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x831ba4c2 # initialize rs1
li x24, 0xb66ed4bf # initialize rs2
sh2add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa443b39f # initialize rs1
li x25, 0x7dd6ef43 # initialize rs2
sh2add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x69337f6a # initialize rs1
li x26, 0x5b3c6de7 # initialize rs2
sh2add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xcdd55ad3 # initialize rs1
li x27, 0x18fae92f # initialize rs2
sh2add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x86825012 # initialize rs1
li x28, 0x7ad87bf0 # initialize rs2
sh2add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x9850adf4 # initialize rs1
li x29, 0x63e703bf # initialize rs2
sh2add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8aa5e3ae # initialize rs1
li x30, 0xc159e732 # initialize rs2
sh2add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6313c091 # initialize rs1
li x31, 0xf6c93d6f # initialize rs2
sh2add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x6, x26 # perform first operation
sh2add x21, x19, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x27, x28 # perform first operation
sh2add x18, x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x22, x15 # perform first operation
sh2add x7, x16, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x10, x1 # perform first operation
sh2add x10, x14, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x31, x3 # perform first operation
sh2add x31, x3, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x30, x21 # perform first operation
sh2add x21, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x20, x28 # perform first operation
sh2add x10, x25, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x10, x16 # perform first operation
sh2add x6, x19, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x17, x26 # perform first operation
sh2add x27, x6, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x2, x15 # perform first operation
sh2add x2, x30, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x3, x6 # perform first operation
sh2add x6, x22, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x26, x29 # perform first operation
sh2add x23, x13, x20 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sh3add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x135b5fc5 # initialize rs1
li x11, 0x3b621176 # initialize rs2
sh3add x21, x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb377172f # initialize rs1
li x3, 0x854d0fa7 # initialize rs2
sh3add x19, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8a330b4c # initialize rs1
li x29, 0xcc6df68f # initialize rs2
sh3add x28, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x4bce8615 # initialize rs1
li x15, 0x64f8f58e # initialize rs2
sh3add x25, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x121e748b # initialize rs1
li x29, 0x6aed09cb # initialize rs2
sh3add x31, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0dd64377 # initialize rs1
li x1, 0x4fe70843 # initialize rs2
sh3add x28, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1f6b6ccc # initialize rs1
li x21, 0x7481149b # initialize rs2
sh3add x11, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x78be655c # initialize rs1
li x15, 0xa9d28e61 # initialize rs2
sh3add x29, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x0ef5a262 # initialize rs1
li x13, 0xa821a752 # initialize rs2
sh3add x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x02aabf1a # initialize rs1
li x21, 0x5ad39029 # initialize rs2
sh3add x7, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x84e40e1d # initialize rs1
li x1, 0xfffc5b09 # initialize rs2
sh3add x13, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc79a9588 # initialize rs1
li x17, 0x6da42d98 # initialize rs2
sh3add x19, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfd7d137a # initialize rs1
li x7, 0x4707f509 # initialize rs2
sh3add x8, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8fcf01a4 # initialize rs1
li x21, 0xc23dffee # initialize rs2
sh3add x17, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6f61e4a9 # initialize rs1
li x1, 0xa1c86016 # initialize rs2
sh3add x28, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6425f5d4 # initialize rs1
li x16, 0x2ff7b6d7 # initialize rs2
sh3add x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7feb93eb # initialize rs1
li x15, 0x14ac5f42 # initialize rs2
sh3add x21, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3331088e # initialize rs1
li x27, 0xc9f8acb3 # initialize rs2
sh3add x26, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x07143e77 # initialize rs1
li x28, 0x43c2674b # initialize rs2
sh3add x7, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x6cbd16a4 # initialize rs1
li x12, 0xeb0a6185 # initialize rs2
sh3add x21, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3d54f9d1 # initialize rs1
li x23, 0x785ac150 # initialize rs2
sh3add x10, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5895dee3 # initialize rs1
li x14, 0xc6198eaa # initialize rs2
sh3add x29, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x42f95512 # initialize rs1
li x9, 0xfeb4d87e # initialize rs2
sh3add x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7b0eff70 # initialize rs1
li x24, 0x3134f734 # initialize rs2
sh3add x28, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd6f879ab # initialize rs1
li x28, 0x619255b8 # initialize rs2
sh3add x1, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x998a722d # initialize rs1
li x26, 0x4131d1dd # initialize rs2
sh3add x2, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1ffb8987 # initialize rs1
li x9, 0xc6173fa7 # initialize rs2
sh3add x27, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2d8beb4b # initialize rs1
li x20, 0xfff56584 # initialize rs2
sh3add x21, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5c95f8f9 # initialize rs1
li x13, 0x6e563de1 # initialize rs2
sh3add x22, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x6a57508b # initialize rs1
li x9, 0x04b34f43 # initialize rs2
sh3add x15, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9878b17e # initialize rs1
li x19, 0x2b2bfd1f # initialize rs2
sh3add x13, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x69888185 # initialize rs1
li x26, 0x69a8bce1 # initialize rs2
sh3add x17, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0x3910ab90 # initialize rs1
li x0, 0xc165c006 # initialize rs2
sh3add x17, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0xf78a23cb # initialize rs1
li x1, 0x67fc91e9 # initialize rs2
sh3add x18, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0x9ca129bb # initialize rs1
li x2, 0xc24958c0 # initialize rs2
sh3add x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x171aefac # initialize rs1
li x3, 0x829044d4 # initialize rs2
sh3add x17, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xaab9bcd7 # initialize rs1
li x4, 0x1ddf47bd # initialize rs2
sh3add x30, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x680cfeb4 # initialize rs1
li x5, 0x2fb6a73d # initialize rs2
sh3add x13, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xfec1f2e7 # initialize rs1
li x6, 0x8bd73f05 # initialize rs2
sh3add x2, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x1dfb6140 # initialize rs1
li x7, 0x4add03f8 # initialize rs2
sh3add x1, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xfe23c0cc # initialize rs1
li x8, 0x35612fbe # initialize rs2
sh3add x23, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x599041c6 # initialize rs1
li x9, 0x336717ef # initialize rs2
sh3add x26, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x30, 0x6a742e52 # initialize rs1
li x10, 0xae792d3b # initialize rs2
sh3add x13, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0xabbb70b5 # initialize rs1
li x11, 0x0fb0f377 # initialize rs2
sh3add x23, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x76b68866 # initialize rs1
li x12, 0x1b067f37 # initialize rs2
sh3add x19, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x338e7444 # initialize rs1
li x13, 0xe5b0fe89 # initialize rs2
sh3add x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xea16362c # initialize rs1
li x14, 0xcdfb5d87 # initialize rs2
sh3add x15, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x728cd8fe # initialize rs1
li x15, 0xddc119ea # initialize rs2
sh3add x12, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x3e29e834 # initialize rs1
li x16, 0x051c4796 # initialize rs2
sh3add x15, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x7304d782 # initialize rs1
li x17, 0x5ae1a94f # initialize rs2
sh3add x18, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x0d14c1f9 # initialize rs1
li x18, 0x1119c79d # initialize rs2
sh3add x30, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xe7651ba3 # initialize rs1
li x19, 0x388696ff # initialize rs2
sh3add x18, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x1fe5e7bf # initialize rs1
li x20, 0x082279f0 # initialize rs2
sh3add x29, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x47344c7c # initialize rs1
li x21, 0x4cb4b846 # initialize rs2
sh3add x17, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x12, 0xf19a0a71 # initialize rs1
li x22, 0xf28984f0 # initialize rs2
sh3add x14, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x25, 0xcd9bff04 # initialize rs1
li x23, 0xe74e782d # initialize rs2
sh3add x1, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0xb79b8426 # initialize rs1
li x24, 0x747cd4bb # initialize rs2
sh3add x7, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xb33a87ec # initialize rs1
li x25, 0x2251d12d # initialize rs2
sh3add x19, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0xa871e629 # initialize rs1
li x26, 0x0ef48ee0 # initialize rs2
sh3add x10, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x64e88ea1 # initialize rs1
li x27, 0xa6405077 # initialize rs2
sh3add x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x858a98ba # initialize rs1
li x28, 0x4b9b15bc # initialize rs2
sh3add x19, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0x0ae8eff2 # initialize rs1
li x29, 0x29faec43 # initialize rs2
sh3add x16, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xd6d16b2c # initialize rs1
li x30, 0xf0b383ce # initialize rs2
sh3add x6, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x0a30be28 # initialize rs1
li x31, 0xc2ed71d7 # initialize rs2
sh3add x2, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 252)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x270475d2 # initialize rs1
li x28, 0x20a26192 # initialize rs2
sh3add x0, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0x7660794d # initialize rs1
li x1, 0xe91a0df7 # initialize rs2
sh3add x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x8000aca9 # initialize rs1
li x24, 0xde7bfdca # initialize rs2
sh3add x2, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x09e44ecc # initialize rs1
li x16, 0x39fed03d # initialize rs2
sh3add x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xaff86512 # initialize rs1
li x1, 0xeff6c6bb # initialize rs2
sh3add x4, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x499beb5e # initialize rs1
li x17, 0x03e53d85 # initialize rs2
sh3add x5, x1, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xad847597 # initialize rs1
li x28, 0xc50037ee # initialize rs2
sh3add x6, x21, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x23b998ee # initialize rs1
li x28, 0xaeee2347 # initialize rs2
sh3add x7, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xd597e2a6 # initialize rs1
li x28, 0x8b65a2a8 # initialize rs2
sh3add x8, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x9f0fcd7b # initialize rs1
li x5, 0xd5886621 # initialize rs2
sh3add x9, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x056d7be0 # initialize rs1
li x29, 0xe368089d # initialize rs2
sh3add x10, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0x32a4d8f8 # initialize rs1
li x28, 0x8402c3f1 # initialize rs2
sh3add x11, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x528f7a4a # initialize rs1
li x15, 0x0218ac97 # initialize rs2
sh3add x12, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xb54859cb # initialize rs1
li x7, 0xb530306d # initialize rs2
sh3add x13, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x443714a1 # initialize rs1
li x18, 0xc1d5a158 # initialize rs2
sh3add x14, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x2419206a # initialize rs1
li x11, 0xeca47592 # initialize rs2
sh3add x15, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x25, 0x23b5adfd # initialize rs1
li x9, 0x274572a9 # initialize rs2
sh3add x16, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x1185d9c4 # initialize rs1
li x16, 0x696d6dc2 # initialize rs2
sh3add x17, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0x0f01ddf4 # initialize rs1
li x19, 0x8e903edc # initialize rs2
sh3add x18, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7ebf8027 # initialize rs1
li x11, 0x94f2b1b7 # initialize rs2
sh3add x19, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x471c3625 # initialize rs1
li x10, 0xc72bf927 # initialize rs2
sh3add x20, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x37033ee2 # initialize rs1
li x17, 0x8dc41f3d # initialize rs2
sh3add x21, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x17140092 # initialize rs1
li x8, 0x9906a7af # initialize rs2
sh3add x22, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x4faf20fc # initialize rs1
li x31, 0x6255d7c7 # initialize rs2
sh3add x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0xc712b70f # initialize rs1
li x18, 0xe33e32c2 # initialize rs2
sh3add x24, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0xe2a53dfa # initialize rs1
li x16, 0x0fe0a101 # initialize rs2
sh3add x25, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x2bd5acd2 # initialize rs1
li x18, 0x03f7b4af # initialize rs2
sh3add x26, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xf2851e82 # initialize rs1
li x17, 0x920a9886 # initialize rs2
sh3add x27, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x4423de2a # initialize rs1
li x26, 0xa8def466 # initialize rs2
sh3add x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xd5325eb7 # initialize rs1
li x8, 0xf86d76d1 # initialize rs2
sh3add x29, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x14, 0xbfceb209 # initialize rs1
li x26, 0xbd118ba5 # initialize rs2
sh3add x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xdbeaff49 # initialize rs1
li x27, 0x5f175549 # initialize rs2
sh3add x31, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x00000000 # initialize rs1
li x7, 0xf1ab58c0 # initialize rs2
sh3add x3, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x00000001 # initialize rs1
li x3, 0x4e4a1128 # initialize rs2
sh3add x25, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x00000002 # initialize rs1
li x5, 0xa454f3f8 # initialize rs2
sh3add x2, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x20, 0xed4f3103 # initialize rs2
sh3add x12, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x9, 0xfa08ced3 # initialize rs2
sh3add x12, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x7fffffff # initialize rs1
li x9, 0x36b80cdd # initialize rs2
sh3add x2, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x27, 0x7ffffffe # initialize rs1
li x5, 0x1df3c2b4 # initialize rs2
sh3add x22, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x31, 0xd52b0997 # initialize rs2
sh3add x13, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
li x13, 0x3076ff1c # initialize rs2
sh3add x7, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x8, 0xed845d5e # initialize rs2
sh3add x11, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x19, 0xaaaaaaaa # initialize rs1
li x9, 0x6cf15a7a # initialize rs2
sh3add x15, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x1, 0x8f8e6eb1 # initialize rs2
sh3add x6, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xc1a3ed8c # initialize rs1
li x22, 0x00000000 # initialize rs2
sh3add x24, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x27, 0x4c154f6c # initialize rs1
li x8, 0x00000001 # initialize rs2
sh3add x14, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x6043be3c # initialize rs1
li x18, 0x00000002 # initialize rs2
sh3add x24, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x21, 0xeb87d491 # initialize rs1
li x26, 0x80000000 # initialize rs2
sh3add x25, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0x0676ed35 # initialize rs1
li x10, 0x80000001 # initialize rs2
sh3add x19, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x20, 0x413ce03e # initialize rs1
li x17, 0x7fffffff # initialize rs2
sh3add x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x2a22e005 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sh3add x8, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0x08de8ef5 # initialize rs1
li x2, 0xffffffff # initialize rs2
sh3add x22, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x14, 0x54884399 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sh3add x26, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x6, 0x0686de84 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sh3add x24, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0xe931121a # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sh3add x14, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0x8477358f # initialize rs1
li x11, 0x55555555 # initialize rs2
sh3add x12, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
sh3add x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x00000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
sh3add x5, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
sh3add x17, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x14, 0x00000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
sh3add x6, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x15, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
sh3add x24, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x16, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sh3add x3, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x23, 0x00000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sh3add x20, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x30, 0x00000000 # initialize rs1
li x2, 0xffffffff # initialize rs2
sh3add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x00000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sh3add x3, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x5, 0x00000000 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sh3add x15, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x00000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sh3add x25, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0x00000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
sh3add x13, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x13, 0x00000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
sh3add x14, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
sh3add x21, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x00000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
sh3add x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x00000001 # initialize rs1
li x15, 0x80000000 # initialize rs2
sh3add x24, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x00000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
sh3add x25, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x24, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sh3add x31, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x24, 0x00000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sh3add x10, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x00000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
sh3add x9, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x00000001 # initialize rs1
li x11, 0xfffffffe # initialize rs2
sh3add x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sh3add x24, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sh3add x3, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x14, 0x00000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
sh3add x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x00000002 # initialize rs1
li x18, 0x00000000 # initialize rs2
sh3add x19, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x00000002 # initialize rs1
li x24, 0x00000001 # initialize rs2
sh3add x16, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
sh3add x21, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x25, 0x00000002 # initialize rs1
li x1, 0x80000000 # initialize rs2
sh3add x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x22, 0x00000002 # initialize rs1
li x2, 0x80000001 # initialize rs2
sh3add x28, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x28, 0x00000002 # initialize rs1
li x16, 0x7fffffff # initialize rs2
sh3add x25, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x1, 0x00000002 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sh3add x22, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
sh3add x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
sh3add x16, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x10, 0x00000002 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh3add x8, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sh3add x2, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x30, 0x55555555 # initialize rs2
sh3add x5, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x31, 0x80000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
sh3add x27, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x30, 0x80000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
sh3add x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x26, 0x80000000 # initialize rs1
li x3, 0x00000002 # initialize rs2
sh3add x28, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
sh3add x13, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x17, 0x80000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
sh3add x23, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x2, 0x80000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
sh3add x12, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sh3add x1, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x3, 0x80000000 # initialize rs1
li x12, 0xffffffff # initialize rs2
sh3add x27, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x80000000 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sh3add x31, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x19, 0x80000000 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sh3add x8, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sh3add x6, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x80000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
sh3add x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
sh3add x16, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
sh3add x14, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x24, 0x80000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
sh3add x31, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x80000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
sh3add x26, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x5, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
sh3add x9, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x30, 0x80000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sh3add x13, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x29, 0x80000001 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sh3add x1, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x23, 0x80000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
sh3add x1, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x5, 0x80000001 # initialize rs1
li x17, 0xfffffffe # initialize rs2
sh3add x2, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x1, 0x80000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sh3add x8, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x7, 0x80000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sh3add x29, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x11, 0x55555555 # initialize rs2
sh3add x25, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x2, 0x7fffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
sh3add x6, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x3, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
sh3add x20, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x20, 0x7fffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
sh3add x22, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x9, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
sh3add x28, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x7fffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
sh3add x17, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
sh3add x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x22, 0x7fffffff # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sh3add x1, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x25, 0x7fffffff # initialize rs1
li x5, 0xffffffff # initialize rs2
sh3add x22, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x19, 0x7fffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
sh3add x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x27, 0x7fffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sh3add x9, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x21, 0x7fffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sh3add x28, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x22, 0x7fffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
sh3add x11, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x12, 0x7ffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
sh3add x5, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x30, 0x7ffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
sh3add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x30, 0x7ffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
sh3add x15, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x23, 0x7ffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
sh3add x28, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x12, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
sh3add x26, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x12, 0x7ffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
sh3add x25, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sh3add x14, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x31, 0x7ffffffe # initialize rs1
li x14, 0xffffffff # initialize rs2
sh3add x15, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
sh3add x13, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x23, 0x7ffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sh3add x12, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x28, 0x7ffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sh3add x7, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x2, 0x7ffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
sh3add x15, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0xffffffff # initialize rs1
li x20, 0x00000000 # initialize rs2
sh3add x6, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x24, 0xffffffff # initialize rs1
li x27, 0x00000001 # initialize rs2
sh3add x20, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x26, 0xffffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
sh3add x10, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x22, 0x80000000 # initialize rs2
sh3add x25, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x27, 0xffffffff # initialize rs1
li x5, 0x80000001 # initialize rs2
sh3add x19, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x2, 0xffffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
sh3add x3, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xffffffff # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sh3add x19, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
sh3add x31, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
sh3add x25, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh3add x1, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x17, 0xffffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sh3add x8, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0xffffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
sh3add x29, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x29, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
sh3add x30, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
sh3add x27, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x23, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
sh3add x24, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x26, 0xfffffffe # initialize rs1
li x9, 0x80000000 # initialize rs2
sh3add x12, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x10, 0xfffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
sh3add x27, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x13, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
sh3add x16, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x8, 0xfffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sh3add x6, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x12, 0xfffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
sh3add x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
sh3add x12, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x18, 0xfffffffe # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
sh3add x9, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x20, 0xfffffffe # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sh3add x1, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x10, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
sh3add x9, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x15, 0x5bbc8872 # initialize rs1
li x30, 0x00000000 # initialize rs2
sh3add x9, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x26, 0x5bbc8872 # initialize rs1
li x1, 0x00000001 # initialize rs2
sh3add x7, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x23, 0x5bbc8872 # initialize rs1
li x9, 0x00000002 # initialize rs2
sh3add x31, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x2, 0x5bbc8872 # initialize rs1
li x17, 0x80000000 # initialize rs2
sh3add x14, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x30, 0x5bbc8872 # initialize rs1
li x19, 0x80000001 # initialize rs2
sh3add x28, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x10, 0x5bbc8872 # initialize rs1
li x27, 0x7fffffff # initialize rs2
sh3add x11, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sh3add x27, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x2, 0x5bbc8872 # initialize rs1
li x11, 0xffffffff # initialize rs2
sh3add x20, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x1, 0x5bbc8872 # initialize rs1
li x12, 0xfffffffe # initialize rs2
sh3add x24, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sh3add x12, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x15, 0x5bbc8872 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sh3add x18, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x31, 0x5bbc8872 # initialize rs1
li x27, 0x55555555 # initialize rs2
sh3add x11, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x23, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
sh3add x1, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xaaaaaaaa # initialize rs1
li x28, 0x00000001 # initialize rs2
sh3add x9, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaa # initialize rs1
li x18, 0x00000002 # initialize rs2
sh3add x31, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x12, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
sh3add x3, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x11, 0xaaaaaaaa # initialize rs1
li x5, 0x80000001 # initialize rs2
sh3add x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x28, 0x7fffffff # initialize rs2
sh3add x15, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sh3add x13, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
sh3add x16, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x1, 0xfffffffe # initialize rs2
sh3add x23, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x16, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh3add x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x30, 0xaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh3add x20, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x8, 0xaaaaaaaa # initialize rs1
li x30, 0x55555555 # initialize rs2
sh3add x10, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x14, 0x55555555 # initialize rs1
li x27, 0x00000000 # initialize rs2
sh3add x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x22, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
sh3add x6, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x31, 0x55555555 # initialize rs1
li x26, 0x00000002 # initialize rs2
sh3add x21, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x16, 0x55555555 # initialize rs1
li x7, 0x80000000 # initialize rs2
sh3add x18, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x29, 0x55555555 # initialize rs1
li x18, 0x80000001 # initialize rs2
sh3add x1, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x15, 0x55555555 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sh3add x26, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x21, 0x55555555 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
sh3add x30, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x2, 0x55555555 # initialize rs1
li x13, 0xffffffff # initialize rs2
sh3add x7, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sh3add x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x21, 0x55555555 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sh3add x2, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x55555555 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sh3add x13, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
sh3add x24, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x98b9e8bc # initialize rs1
li x0, 0xb12b8b51 # initialize rs2
sh3add x19, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7676e365 # initialize rs1
li x1, 0x3680fc6e # initialize rs2
sh3add x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe40ecb85 # initialize rs1
li x2, 0xba6ff6ac # initialize rs2
sh3add x22, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x3179856b # initialize rs1
li x3, 0x1a1acf5d # initialize rs2
sh3add x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf566d633 # initialize rs1
li x4, 0xfd3e3666 # initialize rs2
sh3add x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4fab3ded # initialize rs1
li x5, 0xfb0233e2 # initialize rs2
sh3add x2, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x66774cca # initialize rs1
li x6, 0x8575d1c1 # initialize rs2
sh3add x19, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x691557b2 # initialize rs1
li x7, 0xc2a2b40c # initialize rs2
sh3add x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2733982d # initialize rs1
li x8, 0xa98f3491 # initialize rs2
sh3add x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xaf36aff4 # initialize rs1
li x9, 0xbd3efb0f # initialize rs2
sh3add x22, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf465a6da # initialize rs1
li x10, 0xb20bcc1d # initialize rs2
sh3add x9, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf81c7073 # initialize rs1
li x11, 0xf5c38b41 # initialize rs2
sh3add x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa3417579 # initialize rs1
li x12, 0x5276c1f4 # initialize rs2
sh3add x5, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xeada1e6c # initialize rs1
li x13, 0x933f0dc0 # initialize rs2
sh3add x22, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x58114422 # initialize rs1
li x14, 0x4df55cd9 # initialize rs2
sh3add x27, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x11165a2c # initialize rs1
li x15, 0xb789f678 # initialize rs2
sh3add x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x1f790865 # initialize rs1
li x16, 0xa575afb7 # initialize rs2
sh3add x3, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc986a403 # initialize rs1
li x17, 0x2266cf78 # initialize rs2
sh3add x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xe5728bf2 # initialize rs1
li x18, 0x2edc542b # initialize rs2
sh3add x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xa9c240e4 # initialize rs1
li x19, 0x1f34436b # initialize rs2
sh3add x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xabaa4320 # initialize rs1
li x20, 0x1c4ddb76 # initialize rs2
sh3add x8, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x82981ee2 # initialize rs1
li x21, 0xdd921c86 # initialize rs2
sh3add x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xe0ba9ca3 # initialize rs1
li x22, 0x189a92f2 # initialize rs2
sh3add x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfa39694b # initialize rs1
li x23, 0x9ec374a9 # initialize rs2
sh3add x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xdad930e0 # initialize rs1
li x24, 0x3d59f5dc # initialize rs2
sh3add x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd5ebce49 # initialize rs1
li x25, 0xbcac70c2 # initialize rs2
sh3add x16, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9b8c73b4 # initialize rs1
li x26, 0xcdc1a330 # initialize rs2
sh3add x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe1b2a298 # initialize rs1
li x27, 0xc8a16785 # initialize rs2
sh3add x16, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x27883d63 # initialize rs1
li x28, 0x16f03994 # initialize rs2
sh3add x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x6521faee # initialize rs1
li x29, 0x22a66482 # initialize rs2
sh3add x31, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x52346049 # initialize rs1
li x30, 0xf5127a8c # initialize rs2
sh3add x5, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x97302e5a # initialize rs1
li x31, 0x20b03e47 # initialize rs2
sh3add x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x3e90e775 # initialize rs1
li x10, 0x98be55ce # initialize rs2
sh3add x0, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x77fd2faf # initialize rs1
li x17, 0xe82a4de6 # initialize rs2
sh3add x1, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x544e7f68 # initialize rs1
li x27, 0x05da7221 # initialize rs2
sh3add x2, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6bf28d34 # initialize rs1
li x27, 0x22422436 # initialize rs2
sh3add x3, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x98ed5c96 # initialize rs1
li x23, 0x5c7b56c9 # initialize rs2
sh3add x4, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x89970e39 # initialize rs1
li x29, 0x66f447fc # initialize rs2
sh3add x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf6671160 # initialize rs1
li x24, 0xe130e77f # initialize rs2
sh3add x6, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xad895966 # initialize rs1
li x18, 0x2f859809 # initialize rs2
sh3add x7, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9f9399cb # initialize rs1
li x24, 0xfbd38102 # initialize rs2
sh3add x8, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x335d8154 # initialize rs1
li x7, 0x020897ec # initialize rs2
sh3add x9, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x93a2c0e8 # initialize rs1
li x18, 0xb8f0fd3e # initialize rs2
sh3add x10, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf0112fc4 # initialize rs1
li x24, 0xf6a4c591 # initialize rs2
sh3add x11, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x38dfe34c # initialize rs1
li x14, 0xe64ccd56 # initialize rs2
sh3add x12, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xde9519dd # initialize rs1
li x15, 0x00c455a7 # initialize rs2
sh3add x13, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x32f33706 # initialize rs1
li x25, 0x336f55b3 # initialize rs2
sh3add x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x60c5b13e # initialize rs1
li x8, 0x6cdc560d # initialize rs2
sh3add x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0d1c9afb # initialize rs1
li x23, 0xe2dc2bd9 # initialize rs2
sh3add x16, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7050940a # initialize rs1
li x24, 0x6e952fe6 # initialize rs2
sh3add x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdc68be6c # initialize rs1
li x22, 0xe84b005f # initialize rs2
sh3add x18, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4b9b5c91 # initialize rs1
li x28, 0x261cafee # initialize rs2
sh3add x19, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbc3db685 # initialize rs1
li x30, 0x2932759b # initialize rs2
sh3add x20, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc9f27595 # initialize rs1
li x28, 0xa70abd34 # initialize rs2
sh3add x21, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x99f69723 # initialize rs1
li x1, 0x35614a80 # initialize rs2
sh3add x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc175035f # initialize rs1
li x17, 0x9809709c # initialize rs2
sh3add x23, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x96947fb1 # initialize rs1
li x31, 0xfcf0c2d4 # initialize rs2
sh3add x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x568a9c6c # initialize rs1
li x28, 0xf05c4533 # initialize rs2
sh3add x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x063cf6ea # initialize rs1
li x16, 0x42a8e347 # initialize rs2
sh3add x26, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9f4b9076 # initialize rs1
li x14, 0xa005e49a # initialize rs2
sh3add x27, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8ca0ea0d # initialize rs1
li x26, 0xa3a58c20 # initialize rs2
sh3add x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x39c2fb64 # initialize rs1
li x13, 0xf8b1fe56 # initialize rs2
sh3add x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x15e41c4f # initialize rs1
li x24, 0x6fc59b6a # initialize rs2
sh3add x30, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd38a7f0c # initialize rs1
li x3, 0xbcb5ba3d # initialize rs2
sh3add x31, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x15, 0xef2318de # initialize rs1
li x0, 0x4f908353 # initialize rs2
sh3add x0, x15, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x293e9ff2 # initialize rs1
li x1, 0x49318a9a # initialize rs2
sh3add x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x14d27371 # initialize rs1
li x2, 0xa9326d4c # initialize rs2
sh3add x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x8, 0x52082e94 # initialize rs1
li x3, 0xff5c15b8 # initialize rs2
sh3add x3, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x92728bc5 # initialize rs1
li x4, 0x379c4c0c # initialize rs2
sh3add x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xb8de403e # initialize rs1
li x5, 0xe7ef7310 # initialize rs2
sh3add x5, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0xb13a4a98 # initialize rs1
li x6, 0x51d6a2b2 # initialize rs2
sh3add x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x779fd344 # initialize rs1
li x7, 0x1b7ef771 # initialize rs2
sh3add x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0x69391f8e # initialize rs1
li x8, 0xc78d0250 # initialize rs2
sh3add x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x19, 0x4185dd76 # initialize rs1
li x9, 0x0614f71a # initialize rs2
sh3add x9, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0x02c08b3e # initialize rs1
li x10, 0xa9685e8c # initialize rs2
sh3add x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x10, 0xe2bf940b # initialize rs1
li x11, 0x4e3f5982 # initialize rs2
sh3add x11, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x28, 0xc4fd1146 # initialize rs1
li x12, 0x072bb012 # initialize rs2
sh3add x12, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0xd8d35728 # initialize rs1
li x13, 0x151e26b3 # initialize rs2
sh3add x13, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x11, 0x7730e021 # initialize rs1
li x14, 0x22d98035 # initialize rs2
sh3add x14, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0x7d650154 # initialize rs1
li x15, 0x6f3c0ab5 # initialize rs2
sh3add x15, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0xcde495df # initialize rs1
li x16, 0x596fa7bf # initialize rs2
sh3add x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x18, 0x85a04983 # initialize rs1
li x17, 0xaaba2715 # initialize rs2
sh3add x17, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0x6ec1411d # initialize rs1
li x18, 0x1b6f364c # initialize rs2
sh3add x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xaf42a81b # initialize rs1
li x19, 0xe74f65f4 # initialize rs2
sh3add x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x23, 0xe98fc4cc # initialize rs1
li x20, 0xf8fd5678 # initialize rs2
sh3add x20, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0xe38df355 # initialize rs1
li x21, 0xa0b5f3de # initialize rs2
sh3add x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x6, 0xaa2926c7 # initialize rs1
li x22, 0x6a7a0d61 # initialize rs2
sh3add x22, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x20e6fac8 # initialize rs1
li x23, 0x8b1b942f # initialize rs2
sh3add x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x22, 0x5d8a245d # initialize rs1
li x24, 0x93999875 # initialize rs2
sh3add x24, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x77e8373d # initialize rs1
li x25, 0xafd876a9 # initialize rs2
sh3add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x24, 0x4048830f # initialize rs1
li x26, 0x54195c5f # initialize rs2
sh3add x26, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x24, 0xa8cbb560 # initialize rs1
li x27, 0x7c317bb3 # initialize rs2
sh3add x27, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x4435a73a # initialize rs1
li x28, 0x25eff4b4 # initialize rs2
sh3add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x11, 0x896af7ad # initialize rs1
li x29, 0x2f4b3f01 # initialize rs2
sh3add x29, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x9, 0x117c29f7 # initialize rs1
li x30, 0x7701e4df # initialize rs2
sh3add x30, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0xe3a2fe90 # initialize rs1
li x31, 0x722937ea # initialize rs2
sh3add x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6ff1786f # initialize rs1
li x0, 0x050e6cff # initialize rs2
sh3add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8208e245 # initialize rs1
li x1, 0x0b7d867f # initialize rs2
sh3add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1438f897 # initialize rs1
li x2, 0x6e1ec271 # initialize rs2
sh3add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x6ef853af # initialize rs1
li x3, 0x891f6e84 # initialize rs2
sh3add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6b3e704b # initialize rs1
li x4, 0xbdb4f4a8 # initialize rs2
sh3add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x67d1b6e6 # initialize rs1
li x5, 0xc389c9b4 # initialize rs2
sh3add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xabdf5c0c # initialize rs1
li x6, 0xed7a2393 # initialize rs2
sh3add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xedb0b394 # initialize rs1
li x7, 0x224dac96 # initialize rs2
sh3add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x32a7102c # initialize rs1
li x8, 0xecb36900 # initialize rs2
sh3add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xba1511e8 # initialize rs1
li x9, 0x6d10a59d # initialize rs2
sh3add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x64f846e0 # initialize rs1
li x10, 0x75bc9f65 # initialize rs2
sh3add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7bf9e904 # initialize rs1
li x11, 0xa96e2e9f # initialize rs2
sh3add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x81f32ac3 # initialize rs1
li x12, 0x2f5d4fd1 # initialize rs2
sh3add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc44dfeda # initialize rs1
li x13, 0xb217d230 # initialize rs2
sh3add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd1088c86 # initialize rs1
li x14, 0x7a1d9f48 # initialize rs2
sh3add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xa5ef92cf # initialize rs1
li x15, 0x28c6d97f # initialize rs2
sh3add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xad205258 # initialize rs1
li x16, 0xc57df18d # initialize rs2
sh3add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x28cc3d4d # initialize rs1
li x17, 0xf3c9fbee # initialize rs2
sh3add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x63986c00 # initialize rs1
li x18, 0x668b15ea # initialize rs2
sh3add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x264312bf # initialize rs1
li x19, 0x9959b59c # initialize rs2
sh3add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2fc1517b # initialize rs1
li x20, 0xe4e65a33 # initialize rs2
sh3add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x565b4839 # initialize rs1
li x21, 0x1d98f1c3 # initialize rs2
sh3add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xec9b20ca # initialize rs1
li x22, 0x5e18573e # initialize rs2
sh3add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xba4db717 # initialize rs1
li x23, 0x70d86d35 # initialize rs2
sh3add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbbfec834 # initialize rs1
li x24, 0x06f0c419 # initialize rs2
sh3add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x131155f5 # initialize rs1
li x25, 0xdab0b127 # initialize rs2
sh3add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x9fa70a30 # initialize rs1
li x26, 0x377ecbae # initialize rs2
sh3add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xdabee6f8 # initialize rs1
li x27, 0x35ea0c1c # initialize rs2
sh3add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x21ad6077 # initialize rs1
li x28, 0xb0c3058c # initialize rs2
sh3add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc6f376b5 # initialize rs1
li x29, 0xc7f6eb07 # initialize rs2
sh3add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc2126072 # initialize rs1
li x30, 0x526743bc # initialize rs2
sh3add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa722ae4a # initialize rs1
li x31, 0x145a7829 # initialize rs2
sh3add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x9, x29 # perform first operation
sh3add x5, x15, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x6, x31 # perform first operation
sh3add x9, x22, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x22, x28 # perform first operation
sh3add x27, x29, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x1, x13 # perform first operation
sh3add x13, x29, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x18, x7 # perform first operation
sh3add x21, x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x1, x2 # perform first operation
sh3add x28, x15, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x5, x24 # perform first operation
sh3add x10, x11, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x13, x25 # perform first operation
sh3add x27, x1, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x14, x1 # perform first operation
sh3add x15, x17, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x7, x13 # perform first operation
sh3add x7, x10, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x27, x26 # perform first operation
sh3add x26, x8, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x23, x5 # perform first operation
sh3add x13, x2, x1 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sh1add.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x947bf748 # initialize rs1
li x22, 0x75951410 # initialize rs2
sh1add x26, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe2973040 # initialize rs1
li x27, 0x4a10bbe3 # initialize rs2
sh1add x11, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5ba3eac2 # initialize rs1
li x17, 0x672a7747 # initialize rs2
sh1add x30, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x6d2c897c # initialize rs1
li x31, 0xd7f7a440 # initialize rs2
sh1add x26, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5c7640c4 # initialize rs1
li x10, 0x5ea9199e # initialize rs2
sh1add x28, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x30c83e38 # initialize rs1
li x23, 0x7f3f88b7 # initialize rs2
sh1add x17, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xeff801d8 # initialize rs1
li x5, 0xcd1e4f60 # initialize rs2
sh1add x30, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6939eabe # initialize rs1
li x13, 0x95f12a86 # initialize rs2
sh1add x14, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x772f6dc7 # initialize rs1
li x31, 0x578b7171 # initialize rs2
sh1add x24, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe6ee5ecf # initialize rs1
li x15, 0xe1f77006 # initialize rs2
sh1add x12, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x20798cef # initialize rs1
li x27, 0xc76e0ff1 # initialize rs2
sh1add x18, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2270c558 # initialize rs1
li x7, 0x97053019 # initialize rs2
sh1add x25, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8e73a759 # initialize rs1
li x18, 0x7112daeb # initialize rs2
sh1add x13, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x20f0d098 # initialize rs1
li x9, 0x4147362e # initialize rs2
sh1add x6, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x009e2d90 # initialize rs1
li x11, 0xbc2c1cd9 # initialize rs2
sh1add x26, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9dd8bac6 # initialize rs1
li x8, 0x36d314b8 # initialize rs2
sh1add x17, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0a3d0352 # initialize rs1
li x12, 0xca11a063 # initialize rs2
sh1add x15, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2f0066d3 # initialize rs1
li x16, 0x9c795180 # initialize rs2
sh1add x13, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4b1e9ffe # initialize rs1
li x13, 0x51d3c1b0 # initialize rs2
sh1add x6, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1a5c2446 # initialize rs1
li x10, 0xd7438457 # initialize rs2
sh1add x12, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xedb3362a # initialize rs1
li x19, 0x416ca965 # initialize rs2
sh1add x11, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd63f7221 # initialize rs1
li x17, 0x780af1bf # initialize rs2
sh1add x24, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5e232059 # initialize rs1
li x15, 0x522f6f47 # initialize rs2
sh1add x29, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x99eb2925 # initialize rs1
li x26, 0x6ca7e8bb # initialize rs2
sh1add x22, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x68c7f3a0 # initialize rs1
li x19, 0x89cfe710 # initialize rs2
sh1add x15, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb965cda4 # initialize rs1
li x14, 0x43c04940 # initialize rs2
sh1add x5, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfad04920 # initialize rs1
li x12, 0x2b283d64 # initialize rs2
sh1add x17, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbecf8eb0 # initialize rs1
li x15, 0x0f4f3470 # initialize rs2
sh1add x10, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe8d2f33a # initialize rs1
li x3, 0x5717f070 # initialize rs2
sh1add x9, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x77aaca31 # initialize rs1
li x31, 0x7e02504e # initialize rs2
sh1add x2, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcd4f4752 # initialize rs1
li x2, 0x3135be3d # initialize rs2
sh1add x28, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbedd0095 # initialize rs1
li x10, 0x6d13003f # initialize rs2
sh1add x8, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x54a45d4b # initialize rs1
li x0, 0x5abe7f87 # initialize rs2
sh1add x18, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x3bd8a580 # initialize rs1
li x1, 0x4d042c38 # initialize rs2
sh1add x3, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x9e1acd48 # initialize rs1
li x2, 0x78086d0f # initialize rs2
sh1add x3, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x16, 0x72d7a35f # initialize rs1
li x3, 0x5e8e28d8 # initialize rs2
sh1add x30, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x80b6c3e0 # initialize rs1
li x4, 0x28d7efa1 # initialize rs2
sh1add x28, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xe3e86af7 # initialize rs1
li x5, 0x44326936 # initialize rs2
sh1add x27, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xe7ddbf0a # initialize rs1
li x6, 0xdecb494c # initialize rs2
sh1add x15, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x2dd67344 # initialize rs1
li x7, 0x0a353891 # initialize rs2
sh1add x2, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xf5d75a03 # initialize rs1
li x8, 0x382ba4b0 # initialize rs2
sh1add x20, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x18d8aa8b # initialize rs1
li x9, 0xd27840d9 # initialize rs2
sh1add x6, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x7a97afc7 # initialize rs1
li x10, 0xfb3ccf9a # initialize rs2
sh1add x11, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x0b32972a # initialize rs1
li x11, 0x78be6599 # initialize rs2
sh1add x1, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x25b1b8ee # initialize rs1
li x12, 0x2b200c28 # initialize rs2
sh1add x9, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x5565753e # initialize rs1
li x13, 0xf58b987d # initialize rs2
sh1add x26, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x50ee9e5c # initialize rs1
li x14, 0x5c1b1dcf # initialize rs2
sh1add x2, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x627c9a1d # initialize rs1
li x15, 0xade58516 # initialize rs2
sh1add x9, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x9de1402a # initialize rs1
li x16, 0xa697e0c5 # initialize rs2
sh1add x6, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0xfd48a316 # initialize rs1
li x17, 0xc89762d8 # initialize rs2
sh1add x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x9cf2c7b4 # initialize rs1
li x18, 0x793eba34 # initialize rs2
sh1add x23, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x6dd6cf74 # initialize rs1
li x19, 0xe6b33dec # initialize rs2
sh1add x14, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x30, 0xbf408412 # initialize rs1
li x20, 0x24ca935f # initialize rs2
sh1add x31, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x6a589260 # initialize rs1
li x21, 0xd265b887 # initialize rs2
sh1add x8, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0xa24d0cb3 # initialize rs1
li x22, 0xbabbe5f8 # initialize rs2
sh1add x3, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x508c4491 # initialize rs1
li x23, 0xbb2c8cf9 # initialize rs2
sh1add x21, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x28, 0x9388cf3d # initialize rs1
li x24, 0x58868bf3 # initialize rs2
sh1add x10, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xad9da340 # initialize rs1
li x25, 0x44566630 # initialize rs2
sh1add x18, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x33b3739f # initialize rs1
li x26, 0xd1615d8c # initialize rs2
sh1add x24, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x5a59cfbd # initialize rs1
li x27, 0xfaf98e2a # initialize rs2
sh1add x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0xe9f27e29 # initialize rs1
li x28, 0x45041ef4 # initialize rs2
sh1add x24, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x3bbaca69 # initialize rs1
li x29, 0x4e314c2f # initialize rs2
sh1add x23, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0xbde18f1d # initialize rs1
li x30, 0x199c0cf6 # initialize rs2
sh1add x31, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0x93e9a544 # initialize rs1
li x31, 0x51a1d1ca # initialize rs2
sh1add x18, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 252)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x0068f3c8 # initialize rs1
li x2, 0xd309eb61 # initialize rs2
sh1add x0, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x3ef3fcf6 # initialize rs1
li x5, 0xd6564578 # initialize rs2
sh1add x1, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0xaad70f42 # initialize rs1
li x20, 0x51d9c1f4 # initialize rs2
sh1add x2, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0xe84f5f1d # initialize rs1
li x11, 0xf78654b9 # initialize rs2
sh1add x3, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xea60939e # initialize rs1
li x10, 0xd74d7082 # initialize rs2
sh1add x4, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xab192d17 # initialize rs1
li x4, 0x1b306dc3 # initialize rs2
sh1add x5, x14, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x81abf027 # initialize rs1
li x1, 0x6263f5f6 # initialize rs2
sh1add x6, x21, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x3685b96e # initialize rs1
li x11, 0x9993b823 # initialize rs2
sh1add x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x09733ac0 # initialize rs1
li x28, 0x197f2025 # initialize rs2
sh1add x8, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0xca338ab0 # initialize rs1
li x20, 0x68c93399 # initialize rs2
sh1add x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0xa8d3c0c1 # initialize rs1
li x12, 0xb009de81 # initialize rs2
sh1add x10, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x7896f6fd # initialize rs1
li x18, 0xbc63db3a # initialize rs2
sh1add x11, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x5c1aa2dd # initialize rs1
li x11, 0x528725c9 # initialize rs2
sh1add x12, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x5c80632f # initialize rs1
li x23, 0x43638850 # initialize rs2
sh1add x13, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0xf7e49435 # initialize rs1
li x10, 0x2f9520d0 # initialize rs2
sh1add x14, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x4ddee871 # initialize rs1
li x10, 0x834a0c03 # initialize rs2
sh1add x15, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0xa690eef4 # initialize rs1
li x8, 0xb2cd6aa5 # initialize rs2
sh1add x16, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0xdfa0aaea # initialize rs1
li x6, 0x83c02c53 # initialize rs2
sh1add x17, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x3d893ca4 # initialize rs1
li x1, 0x55777057 # initialize rs2
sh1add x18, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x02deb5bc # initialize rs1
li x2, 0x3868a755 # initialize rs2
sh1add x19, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x192e11c4 # initialize rs1
li x7, 0xcaf2396b # initialize rs2
sh1add x20, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x5, 0x5dbafbc4 # initialize rs1
li x23, 0xc84a2094 # initialize rs2
sh1add x21, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xe4c570f1 # initialize rs1
li x5, 0x6ba8ed1d # initialize rs2
sh1add x22, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0xc8652bf4 # initialize rs1
li x23, 0x599d16d8 # initialize rs2
sh1add x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0xec30e8e7 # initialize rs1
li x17, 0x15fd7cb9 # initialize rs2
sh1add x24, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xbc3ebfc3 # initialize rs1
li x25, 0xb48bcd9c # initialize rs2
sh1add x25, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xf9ad2156 # initialize rs1
li x6, 0xb01c33ec # initialize rs2
sh1add x26, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x6ddfd349 # initialize rs1
li x30, 0x8ba20ad4 # initialize rs2
sh1add x27, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x40d5aa8e # initialize rs1
li x24, 0x6dde826a # initialize rs2
sh1add x28, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3d58d0f6 # initialize rs1
li x6, 0x60fda506 # initialize rs2
sh1add x29, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x32134dcd # initialize rs1
li x26, 0x7e9df944 # initialize rs2
sh1add x30, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0x9762d21e # initialize rs1
li x6, 0xe07e0f7c # initialize rs2
sh1add x31, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x00000000 # initialize rs1
li x3, 0xacd72458 # initialize rs2
sh1add x23, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x00000001 # initialize rs1
li x28, 0x60e083c1 # initialize rs2
sh1add x30, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x00000002 # initialize rs1
li x24, 0x956bd227 # initialize rs2
sh1add x15, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x10, 0x3798a39e # initialize rs2
sh1add x28, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x1, 0x80000001 # initialize rs1
li x13, 0xa57f4760 # initialize rs2
sh1add x10, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x8, 0x6d2343c5 # initialize rs2
sh1add x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x23, 0xa53f4d78 # initialize rs2
sh1add x16, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x2, 0x3b16b52b # initialize rs2
sh1add x14, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0xfffffffe # initialize rs1
li x19, 0x96cdf833 # initialize rs2
sh1add x17, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x30, 0x5bbc8872 # initialize rs1
li x19, 0xf9af80bd # initialize rs2
sh1add x2, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x1, 0xc9761443 # initialize rs2
sh1add x26, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x23, 0x5ad88323 # initialize rs2
sh1add x5, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x7f79c053 # initialize rs1
li x22, 0x00000000 # initialize rs2
sh1add x27, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x4b162262 # initialize rs1
li x28, 0x00000001 # initialize rs2
sh1add x7, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0xa2b31522 # initialize rs1
li x1, 0x00000002 # initialize rs2
sh1add x8, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xcbcbce89 # initialize rs1
li x1, 0x80000000 # initialize rs2
sh1add x2, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0x2217d728 # initialize rs1
li x28, 0x80000001 # initialize rs2
sh1add x24, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x2, 0xc0bf999d # initialize rs1
li x5, 0x7fffffff # initialize rs2
sh1add x18, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x12, 0x540ed2c4 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sh1add x25, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xf173d0c9 # initialize rs1
li x20, 0xffffffff # initialize rs2
sh1add x10, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xad73fa1d # initialize rs1
li x20, 0xfffffffe # initialize rs2
sh1add x1, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0xa78f8d1e # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
sh1add x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0xb4a33229 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sh1add x9, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x12, 0x74cf9cd3 # initialize rs1
li x30, 0x55555555 # initialize rs2
sh1add x10, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x00000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
sh1add x14, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
sh1add x15, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x00000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
sh1add x17, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x10, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
sh1add x25, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x1, 0x00000000 # initialize rs1
li x7, 0x80000001 # initialize rs2
sh1add x20, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x15, 0x00000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sh1add x17, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x23, 0x00000000 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sh1add x21, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x00000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
sh1add x21, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x00000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sh1add x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x25, 0x00000000 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
sh1add x20, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x10, 0x00000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sh1add x3, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x26, 0x00000000 # initialize rs1
li x28, 0x55555555 # initialize rs2
sh1add x31, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
sh1add x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x00000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
sh1add x14, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x00000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
sh1add x12, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x29, 0x00000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
sh1add x18, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x00000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
sh1add x3, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x3, 0x00000001 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sh1add x9, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x1, 0x00000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sh1add x24, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x26, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
sh1add x2, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x00000001 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sh1add x9, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x30, 0x00000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sh1add x21, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x9, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sh1add x20, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x5, 0x00000001 # initialize rs1
li x24, 0x55555555 # initialize rs2
sh1add x12, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x00000002 # initialize rs1
li x2, 0x00000000 # initialize rs2
sh1add x27, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x00000002 # initialize rs1
li x25, 0x00000001 # initialize rs2
sh1add x19, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
sh1add x11, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x17, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
sh1add x16, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x23, 0x00000002 # initialize rs1
li x2, 0x80000001 # initialize rs2
sh1add x20, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sh1add x23, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sh1add x12, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x23, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
sh1add x5, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sh1add x31, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x24, 0x00000002 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sh1add x3, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x13, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sh1add x24, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x18, 0x00000002 # initialize rs1
li x11, 0x55555555 # initialize rs2
sh1add x21, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x14, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
sh1add x19, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sh1add x12, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x24, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
sh1add x17, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x20, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
sh1add x14, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x20, 0x80000001 # initialize rs2
sh1add x2, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x13, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sh1add x29, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x11, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sh1add x31, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000 # initialize rs1
li x1, 0xffffffff # initialize rs2
sh1add x28, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x29, 0x80000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
sh1add x20, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x12, 0x80000000 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sh1add x16, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0x80000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh1add x23, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x30, 0x55555555 # initialize rs2
sh1add x18, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x3, 0x80000001 # initialize rs1
li x28, 0x00000000 # initialize rs2
sh1add x13, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x8, 0x80000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
sh1add x27, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
sh1add x12, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x28, 0x80000001 # initialize rs1
li x16, 0x80000000 # initialize rs2
sh1add x9, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x3, 0x80000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
sh1add x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x8, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sh1add x20, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x26, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sh1add x13, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
sh1add x25, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x18, 0x80000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
sh1add x1, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sh1add x8, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x80000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sh1add x25, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x21, 0x80000001 # initialize rs1
li x18, 0x55555555 # initialize rs2
sh1add x16, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x24, 0x7fffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
sh1add x2, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x18, 0x7fffffff # initialize rs1
li x7, 0x00000001 # initialize rs2
sh1add x3, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x22, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
sh1add x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
sh1add x15, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x2, 0x7fffffff # initialize rs1
li x11, 0x80000001 # initialize rs2
sh1add x21, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x8, 0x7fffffff # initialize rs1
li x14, 0x7fffffff # initialize rs2
sh1add x28, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x2, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sh1add x29, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
sh1add x2, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x30, 0x7fffffff # initialize rs1
li x16, 0xfffffffe # initialize rs2
sh1add x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sh1add x29, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x24, 0x7fffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sh1add x21, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
sh1add x15, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x17, 0x7ffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
sh1add x28, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
sh1add x29, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x11, 0x7ffffffe # initialize rs1
li x21, 0x00000002 # initialize rs2
sh1add x22, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
sh1add x11, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x7ffffffe # initialize rs1
li x11, 0x80000001 # initialize rs2
sh1add x17, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x7, 0x7ffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
sh1add x22, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sh1add x20, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
sh1add x17, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
sh1add x22, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x10, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sh1add x23, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x7ffffffe # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sh1add x23, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x3, 0x7ffffffe # initialize rs1
li x19, 0x55555555 # initialize rs2
sh1add x16, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
sh1add x10, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
sh1add x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x7, 0xffffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
sh1add x10, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x3, 0xffffffff # initialize rs1
li x20, 0x80000000 # initialize rs2
sh1add x10, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x20, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
sh1add x1, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x19, 0xffffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
sh1add x1, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x22, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sh1add x14, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x29, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
sh1add x13, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
sh1add x5, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x9, 0xffffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sh1add x11, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sh1add x10, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
sh1add x7, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0xfffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
sh1add x15, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sh1add x16, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xfffffffe # initialize rs1
li x17, 0x00000002 # initialize rs2
sh1add x1, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x18, 0xfffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
sh1add x27, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x10, 0x80000001 # initialize rs2
sh1add x3, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x9, 0xfffffffe # initialize rs1
li x16, 0x7fffffff # initialize rs2
sh1add x31, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0xfffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sh1add x22, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
sh1add x13, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
sh1add x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x23, 0xfffffffe # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sh1add x12, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x27, 0xfffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sh1add x8, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x5, 0x55555555 # initialize rs2
sh1add x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x2, 0x5bbc8872 # initialize rs1
li x8, 0x00000000 # initialize rs2
sh1add x7, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x30, 0x5bbc8872 # initialize rs1
li x1, 0x00000001 # initialize rs2
sh1add x11, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x1, 0x00000002 # initialize rs2
sh1add x15, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x16, 0x5bbc8872 # initialize rs1
li x24, 0x80000000 # initialize rs2
sh1add x8, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x12, 0x5bbc8872 # initialize rs1
li x3, 0x80000001 # initialize rs2
sh1add x5, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x9, 0x5bbc8872 # initialize rs1
li x6, 0x7fffffff # initialize rs2
sh1add x24, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x22, 0x5bbc8872 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sh1add x21, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x26, 0x5bbc8872 # initialize rs1
li x31, 0xffffffff # initialize rs2
sh1add x2, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x16, 0x5bbc8872 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sh1add x3, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sh1add x5, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x2, 0x5bbc8872 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sh1add x16, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x9, 0x5bbc8872 # initialize rs1
li x16, 0x55555555 # initialize rs2
sh1add x11, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaa # initialize rs1
li x20, 0x00000000 # initialize rs2
sh1add x7, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
sh1add x15, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x16, 0x00000002 # initialize rs2
sh1add x17, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xaaaaaaaa # initialize rs1
li x21, 0x80000000 # initialize rs2
sh1add x27, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x28, 0x80000001 # initialize rs2
sh1add x3, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x3, 0x7fffffff # initialize rs2
sh1add x19, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sh1add x21, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x12, 0xffffffff # initialize rs2
sh1add x14, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
sh1add x3, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x23, 0xaaaaaaaa # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sh1add x5, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sh1add x7, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x11, 0xaaaaaaaa # initialize rs1
li x9, 0x55555555 # initialize rs2
sh1add x20, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x1, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
sh1add x22, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x16, 0x55555555 # initialize rs1
li x8, 0x00000001 # initialize rs2
sh1add x25, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x15, 0x55555555 # initialize rs1
li x30, 0x00000002 # initialize rs2
sh1add x3, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x15, 0x55555555 # initialize rs1
li x20, 0x80000000 # initialize rs2
sh1add x6, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
sh1add x28, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x30, 0x7fffffff # initialize rs2
sh1add x22, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x3, 0x55555555 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sh1add x21, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x31, 0x55555555 # initialize rs1
li x21, 0xffffffff # initialize rs2
sh1add x6, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x15, 0x55555555 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sh1add x7, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x22, 0x55555555 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sh1add x17, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sh1add x14, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x20, 0x55555555 # initialize rs2
sh1add x25, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x7e73d36d # initialize rs1
li x0, 0x90dc0c9d # initialize rs2
sh1add x26, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x72cc3c01 # initialize rs1
li x1, 0x19929664 # initialize rs2
sh1add x2, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x06737859 # initialize rs1
li x2, 0x7e3d87d6 # initialize rs2
sh1add x23, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x3728cc6d # initialize rs1
li x3, 0x0cada81a # initialize rs2
sh1add x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x23d49336 # initialize rs1
li x4, 0x3df5f937 # initialize rs2
sh1add x10, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x64ff07ba # initialize rs1
li x5, 0x5530f724 # initialize rs2
sh1add x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0bbb81d4 # initialize rs1
li x6, 0x9f51b292 # initialize rs2
sh1add x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xed55efa3 # initialize rs1
li x7, 0x73480458 # initialize rs2
sh1add x12, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x235022dc # initialize rs1
li x8, 0x173cdd23 # initialize rs2
sh1add x31, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x87fbe46c # initialize rs1
li x9, 0x02779aa8 # initialize rs2
sh1add x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xe6964735 # initialize rs1
li x10, 0x20c33ff2 # initialize rs2
sh1add x20, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x98e83a1e # initialize rs1
li x11, 0x7318f524 # initialize rs2
sh1add x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0902cd34 # initialize rs1
li x12, 0x254015da # initialize rs2
sh1add x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x1978ed68 # initialize rs1
li x13, 0xeabbb50b # initialize rs2
sh1add x29, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3fa4e031 # initialize rs1
li x14, 0xee406d08 # initialize rs2
sh1add x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x174026f6 # initialize rs1
li x15, 0x4101f04b # initialize rs2
sh1add x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb4e9605e # initialize rs1
li x16, 0x66c738db # initialize rs2
sh1add x6, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd0a92252 # initialize rs1
li x17, 0x10aee063 # initialize rs2
sh1add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfa7be285 # initialize rs1
li x18, 0xff9fcc35 # initialize rs2
sh1add x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xc63030f8 # initialize rs1
li x19, 0xedce096d # initialize rs2
sh1add x9, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xabf75fd1 # initialize rs1
li x20, 0x1d3253f2 # initialize rs2
sh1add x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x328da5b9 # initialize rs1
li x21, 0x580f07b7 # initialize rs2
sh1add x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xac6d9250 # initialize rs1
li x22, 0x8cb84c0f # initialize rs2
sh1add x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe15d3609 # initialize rs1
li x23, 0x6b248a35 # initialize rs2
sh1add x26, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xac8c8510 # initialize rs1
li x24, 0x674e8861 # initialize rs2
sh1add x18, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x9eb8c635 # initialize rs1
li x25, 0xcc221733 # initialize rs2
sh1add x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc3a8f482 # initialize rs1
li x26, 0xc24a6430 # initialize rs2
sh1add x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x05fbc6e9 # initialize rs1
li x27, 0x1c5f0bb0 # initialize rs2
sh1add x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf61fc4e2 # initialize rs1
li x28, 0xf4bf9f98 # initialize rs2
sh1add x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3db04a8f # initialize rs1
li x29, 0xa040779f # initialize rs2
sh1add x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x937cef6b # initialize rs1
li x30, 0x02089d8a # initialize rs2
sh1add x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x682ede02 # initialize rs1
li x31, 0x8644e339 # initialize rs2
sh1add x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6f8410fc # initialize rs1
li x29, 0x26f1e142 # initialize rs2
sh1add x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe2600999 # initialize rs1
li x6, 0x0f28413b # initialize rs2
sh1add x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x754a9e3b # initialize rs1
li x28, 0xafc82383 # initialize rs2
sh1add x2, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd4b593aa # initialize rs1
li x15, 0x8839bce8 # initialize rs2
sh1add x3, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x68ca8328 # initialize rs1
li x30, 0xea651ea4 # initialize rs2
sh1add x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x86a4d0db # initialize rs1
li x7, 0xc017ab47 # initialize rs2
sh1add x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2d8c8549 # initialize rs1
li x11, 0x0209b741 # initialize rs2
sh1add x6, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x916fe7fe # initialize rs1
li x21, 0xb04c33f6 # initialize rs2
sh1add x7, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x558498cc # initialize rs1
li x27, 0x4375f5fd # initialize rs2
sh1add x8, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9e2a7f51 # initialize rs1
li x1, 0x77e98c42 # initialize rs2
sh1add x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb8848f99 # initialize rs1
li x6, 0xd417b62e # initialize rs2
sh1add x10, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x05580fef # initialize rs1
li x22, 0x589bd0e8 # initialize rs2
sh1add x11, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x93cf2bf1 # initialize rs1
li x30, 0x0c3c24b1 # initialize rs2
sh1add x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x38b0e32d # initialize rs1
li x14, 0xcc79f6db # initialize rs2
sh1add x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc4119470 # initialize rs1
li x31, 0xb70b21f1 # initialize rs2
sh1add x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb9df3b90 # initialize rs1
li x1, 0x5de3869f # initialize rs2
sh1add x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe13e4919 # initialize rs1
li x16, 0x7cd37723 # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfe640386 # initialize rs1
li x23, 0x6daccdf0 # initialize rs2
sh1add x17, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x74f44646 # initialize rs1
li x2, 0x86300df9 # initialize rs2
sh1add x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x86444ae4 # initialize rs1
li x24, 0x0c59ad54 # initialize rs2
sh1add x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf25004db # initialize rs1
li x21, 0x4265ecf5 # initialize rs2
sh1add x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4fc91d1e # initialize rs1
li x10, 0x985bb12d # initialize rs2
sh1add x21, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x612fd03c # initialize rs1
li x6, 0x41e032f2 # initialize rs2
sh1add x22, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7313ac65 # initialize rs1
li x24, 0x5911ef3f # initialize rs2
sh1add x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9ddfd477 # initialize rs1
li x14, 0xbdb24cc2 # initialize rs2
sh1add x24, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8b99fb93 # initialize rs1
li x6, 0x90ad193c # initialize rs2
sh1add x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4baa99be # initialize rs1
li x6, 0x448cf4a8 # initialize rs2
sh1add x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x58d77552 # initialize rs1
li x6, 0xd8d31601 # initialize rs2
sh1add x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x508c96ff # initialize rs1
li x19, 0xe6089b78 # initialize rs2
sh1add x28, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfc75ac5a # initialize rs1
li x14, 0xa2cc3ab8 # initialize rs2
sh1add x29, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa9b45ad5 # initialize rs1
li x10, 0x7749ad5c # initialize rs2
sh1add x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbf9f012d # initialize rs1
li x30, 0x3b65afdc # initialize rs2
sh1add x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xf5620b38 # initialize rs1
li x0, 0x5d7d9f1a # initialize rs2
sh1add x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x14, 0x90aef994 # initialize rs1
li x1, 0xa5766984 # initialize rs2
sh1add x1, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0x68d60606 # initialize rs1
li x2, 0xae49eed2 # initialize rs2
sh1add x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x25, 0xb7d37350 # initialize rs1
li x3, 0xf954ced3 # initialize rs2
sh1add x3, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xb142b0d0 # initialize rs1
li x4, 0x504565e2 # initialize rs2
sh1add x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xda5acf43 # initialize rs1
li x5, 0xc6f8ddac # initialize rs2
sh1add x5, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x5e8d77eb # initialize rs1
li x6, 0x2631dcce # initialize rs2
sh1add x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xd97d8acf # initialize rs1
li x7, 0x7b06288d # initialize rs2
sh1add x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x5ed6af7c # initialize rs1
li x8, 0x10367e4d # initialize rs2
sh1add x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x24785ab8 # initialize rs1
li x9, 0x05913f50 # initialize rs2
sh1add x9, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x30, 0xd310baa6 # initialize rs1
li x10, 0xfdb4412f # initialize rs2
sh1add x10, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0x50d83695 # initialize rs1
li x11, 0xd2103387 # initialize rs2
sh1add x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x20, 0xb94eb61c # initialize rs1
li x12, 0x15a5c352 # initialize rs2
sh1add x12, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xd8267dd6 # initialize rs1
li x13, 0x3f9b5667 # initialize rs2
sh1add x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x23, 0x95922af0 # initialize rs1
li x14, 0xe8a17a9c # initialize rs2
sh1add x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x20, 0x6edfa5a7 # initialize rs1
li x15, 0x40c6a9a0 # initialize rs2
sh1add x15, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x35475966 # initialize rs1
li x16, 0xa69e7114 # initialize rs2
sh1add x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xa75ebb56 # initialize rs1
li x17, 0x671595c1 # initialize rs2
sh1add x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x6, 0x4e14292d # initialize rs1
li x18, 0xa6a5389a # initialize rs2
sh1add x18, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x8, 0x634061a7 # initialize rs1
li x19, 0xfece1ecf # initialize rs2
sh1add x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x10, 0x7b6dfe9f # initialize rs1
li x20, 0xe3e2c45d # initialize rs2
sh1add x20, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x23, 0x7011d83f # initialize rs1
li x21, 0xc2047552 # initialize rs2
sh1add x21, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0xc4588119 # initialize rs1
li x22, 0xf165c19f # initialize rs2
sh1add x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0x5401baf4 # initialize rs1
li x23, 0xe792e7bb # initialize rs2
sh1add x23, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x2, 0xcfd77ba1 # initialize rs1
li x24, 0xee4da426 # initialize rs2
sh1add x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x19, 0xa72b3fa7 # initialize rs1
li x25, 0xc8beaf67 # initialize rs2
sh1add x25, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x9, 0xbf7449d7 # initialize rs1
li x26, 0x18104668 # initialize rs2
sh1add x26, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x1, 0xbd6490b4 # initialize rs1
li x27, 0xfe19e577 # initialize rs2
sh1add x27, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x9, 0x9ae2357b # initialize rs1
li x28, 0x399b87f3 # initialize rs2
sh1add x28, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x02b7f214 # initialize rs1
li x29, 0x477aa8ea # initialize rs2
sh1add x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0x886dc605 # initialize rs1
li x30, 0x705569f8 # initialize rs2
sh1add x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0x9d4b1ece # initialize rs1
li x31, 0xb7a31edc # initialize rs2
sh1add x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7685fb17 # initialize rs1
li x0, 0xc0c14833 # initialize rs2
sh1add x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4efa2b90 # initialize rs1
li x1, 0x69f2d4c7 # initialize rs2
sh1add x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xfe56062e # initialize rs1
li x2, 0xa03ae800 # initialize rs2
sh1add x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x265609cf # initialize rs1
li x3, 0x981601c3 # initialize rs2
sh1add x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x927f6318 # initialize rs1
li x4, 0xb80d8a11 # initialize rs2
sh1add x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd972859 # initialize rs1
li x5, 0xc64e5f5d # initialize rs2
sh1add x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb996da22 # initialize rs1
li x6, 0x829535dd # initialize rs2
sh1add x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe07327b1 # initialize rs1
li x7, 0xc119c269 # initialize rs2
sh1add x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x71f78ae0 # initialize rs1
li x8, 0xabdf45e1 # initialize rs2
sh1add x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xd8c85ef4 # initialize rs1
li x9, 0x7ff75a65 # initialize rs2
sh1add x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7c443538 # initialize rs1
li x10, 0xe57c9123 # initialize rs2
sh1add x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x75d6fabf # initialize rs1
li x11, 0xc835de07 # initialize rs2
sh1add x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8ed6cf2d # initialize rs1
li x12, 0x57d0b94a # initialize rs2
sh1add x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x1e98bce7 # initialize rs1
li x13, 0x59159194 # initialize rs2
sh1add x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6505b9fb # initialize rs1
li x14, 0x467829a0 # initialize rs2
sh1add x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1ec5248a # initialize rs1
li x15, 0xf8057539 # initialize rs2
sh1add x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc16a9757 # initialize rs1
li x16, 0xa188a77c # initialize rs2
sh1add x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x06753d1d # initialize rs1
li x17, 0x06b45a53 # initialize rs2
sh1add x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x6e341456 # initialize rs1
li x18, 0xed20417b # initialize rs2
sh1add x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9a2fffcd # initialize rs1
li x19, 0x17d193eb # initialize rs2
sh1add x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x38eb5a20 # initialize rs1
li x20, 0xea3ac010 # initialize rs2
sh1add x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x626ec0a1 # initialize rs1
li x21, 0x3d4142e8 # initialize rs2
sh1add x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4e3a726c # initialize rs1
li x22, 0x38d8f3a1 # initialize rs2
sh1add x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x571b8b0d # initialize rs1
li x23, 0x6ff9ee07 # initialize rs2
sh1add x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x166d5c8d # initialize rs1
li x24, 0x5281b828 # initialize rs2
sh1add x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x54dd5fbf # initialize rs1
li x25, 0xb0132a82 # initialize rs2
sh1add x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xa65ca336 # initialize rs1
li x26, 0x5fb3b9a1 # initialize rs2
sh1add x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x7058460b # initialize rs1
li x27, 0xb8d5c30a # initialize rs2
sh1add x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x935455f4 # initialize rs1
li x28, 0xe314c53b # initialize rs2
sh1add x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x06886b22 # initialize rs1
li x29, 0xb1f0c081 # initialize rs2
sh1add x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8325bb1b # initialize rs1
li x30, 0xb83ed554 # initialize rs2
sh1add x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x494d1926 # initialize rs1
li x31, 0x455ace7e # initialize rs2
sh1add x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x20, x12 # perform first operation
sh1add x6, x19, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x16, x24 # perform first operation
sh1add x6, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x7, x30 # perform first operation
sh1add x24, x13, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x14, x26 # perform first operation
sh1add x14, x15, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x24, x5 # perform first operation
sh1add x13, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x6, x1 # perform first operation
sh1add x6, x1, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x25, x10 # perform first operation
sh1add x2, x31, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x27, x22 # perform first operation
sh1add x13, x18, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x22, x27 # perform first operation
sh1add x1, x2, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x5, x8 # perform first operation
sh1add x5, x30, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x10, x31 # perform first operation
sh1add x31, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x9, x20 # perform first operation
sh1add x26, x21, x25 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,4704 #combined


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
