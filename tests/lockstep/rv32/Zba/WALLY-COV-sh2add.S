///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zba/WALLY-COV-sh2add.S
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
