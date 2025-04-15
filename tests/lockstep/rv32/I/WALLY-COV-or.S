///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-or.S
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
li x0, 0x818f60b4 # initialize rs1
li x18, 0x74821bc9 # initialize rs2
or x17, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x91585c0b # initialize rs1
li x19, 0xe6400f49 # initialize rs2
or x12, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xd70aeaa9 # initialize rs1
li x10, 0xd52fb503 # initialize rs2
or x20, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x16e6e961 # initialize rs1
li x12, 0xb395aa2e # initialize rs2
or x13, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5058b865 # initialize rs1
li x18, 0x0ea90643 # initialize rs2
or x29, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xba7ea037 # initialize rs1
li x21, 0x0613f2cf # initialize rs2
or x18, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0e4c6930 # initialize rs1
li x13, 0x6705e419 # initialize rs2
or x3, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe3f6b699 # initialize rs1
li x3, 0x9533ca47 # initialize rs2
or x29, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x34b0b5d6 # initialize rs1
li x14, 0xbea6556b # initialize rs2
or x19, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2193f458 # initialize rs1
li x30, 0x191ea306 # initialize rs2
or x12, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xdecc85c2 # initialize rs1
li x5, 0xcf322292 # initialize rs2
or x24, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x46fcca10 # initialize rs1
li x17, 0x2a45e982 # initialize rs2
or x24, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa5bb15f3 # initialize rs1
li x8, 0xc58f7a9c # initialize rs2
or x18, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa3f1c987 # initialize rs1
li x29, 0x52550d77 # initialize rs2
or x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x3a8c5089 # initialize rs1
li x21, 0xfecc6491 # initialize rs2
or x25, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb0656e13 # initialize rs1
li x2, 0x44c06ba3 # initialize rs2
or x28, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x53deec64 # initialize rs1
li x19, 0xff62ef4f # initialize rs2
or x10, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xfae6e9b5 # initialize rs1
li x30, 0xeb92e666 # initialize rs2
or x15, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x417fb992 # initialize rs1
li x20, 0x73d5a3d5 # initialize rs2
or x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2db7b354 # initialize rs1
li x30, 0x614e5093 # initialize rs2
or x27, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1693b890 # initialize rs1
li x24, 0x039fe123 # initialize rs2
or x9, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x65d7fe30 # initialize rs1
li x9, 0x3b47485f # initialize rs2
or x13, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9df6936d # initialize rs1
li x30, 0x883df180 # initialize rs2
or x15, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x3ea2090c # initialize rs1
li x22, 0x3d908d81 # initialize rs2
or x6, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa7090ee8 # initialize rs1
li x31, 0x999adfb6 # initialize rs2
or x23, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe9bbfc7b # initialize rs1
li x9, 0x1d6c4051 # initialize rs2
or x27, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x41329676 # initialize rs1
li x28, 0x1986ec7f # initialize rs2
or x3, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbcd822c0 # initialize rs1
li x15, 0xfa3e7163 # initialize rs2
or x1, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2550b994 # initialize rs1
li x31, 0xb36930fa # initialize rs2
or x30, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9000b02c # initialize rs1
li x2, 0x818f7af4 # initialize rs2
or x20, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7382808f # initialize rs1
li x21, 0x26faa633 # initialize rs2
or x18, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x1b29cb78 # initialize rs1
li x11, 0x287b4d76 # initialize rs2
or x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0xdb0e6b7f # initialize rs1
li x0, 0x90dcaf8b # initialize rs2
or x3, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xa171ef18 # initialize rs1
li x1, 0xfae7df25 # initialize rs2
or x27, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0xa5d4edb8 # initialize rs1
li x2, 0x112d1b8d # initialize rs2
or x11, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0x806e6504 # initialize rs1
li x3, 0xfc50724e # initialize rs2
or x28, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xbbc12b40 # initialize rs1
li x4, 0xb49732fb # initialize rs2
or x27, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x069f9432 # initialize rs1
li x5, 0x4865d39a # initialize rs2
or x1, x9, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x1505276a # initialize rs1
li x6, 0xf25a635f # initialize rs2
or x7, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
li x2, 0xac9f85dc # initialize rs1
li x7, 0xb7a7eff2 # initialize rs2
or x31, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x1, 0x246c2011 # initialize rs1
li x8, 0x42a85b5b # initialize rs2
or x11, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0x01e2fb83 # initialize rs1
li x9, 0x0582821e # initialize rs2
or x12, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x8ed5c3e5 # initialize rs1
li x10, 0xc2bf2afd # initialize rs2
or x27, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0xaba011a3 # initialize rs1
li x11, 0xc06d85a2 # initialize rs2
or x30, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x800bc19a # initialize rs1
li x12, 0x95551523 # initialize rs2
or x28, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0xa13a0097 # initialize rs1
li x13, 0x6b1038ec # initialize rs2
or x14, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x12, 0xab98edd7 # initialize rs1
li x14, 0xb07afe65 # initialize rs2
or x27, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0x96c6dbae # initialize rs1
li x15, 0x3b7eb5d7 # initialize rs2
or x1, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xe037eacc # initialize rs1
li x16, 0xb5b844a6 # initialize rs2
or x13, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x16, 0x23f2c3c5 # initialize rs1
li x17, 0xb51660e0 # initialize rs2
or x22, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0x6cdaf266 # initialize rs1
li x18, 0x0896b864 # initialize rs2
or x10, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0xd9c90de7 # initialize rs1
li x19, 0xa6cb446a # initialize rs2
or x15, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x1, 0x7cadfd2f # initialize rs1
li x20, 0x4e35e99a # initialize rs2
or x9, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0x13f9d307 # initialize rs1
li x21, 0xdabbdeed # initialize rs2
or x2, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0x96942f36 # initialize rs1
li x22, 0xc6efd67e # initialize rs2
or x5, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0x9f04ae03 # initialize rs1
li x23, 0xc32ad7f3 # initialize rs2
or x31, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0xcd4d7dc4 # initialize rs1
li x24, 0x438813f7 # initialize rs2
or x18, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0xba9ed4c0 # initialize rs1
li x25, 0x3c83b988 # initialize rs2
or x10, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x17, 0x87e1f2f8 # initialize rs1
li x26, 0x1334fc97 # initialize rs2
or x22, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x87b7d167 # initialize rs1
li x27, 0xf570cea5 # initialize rs2
or x18, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x9803839f # initialize rs1
li x28, 0x745ebfbf # initialize rs2
or x29, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0xcc53e3fe # initialize rs1
li x29, 0xae8d0950 # initialize rs2
or x21, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x11, 0x2751df06 # initialize rs1
li x30, 0x624b1140 # initialize rs2
or x25, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x7e9684b6 # initialize rs1
li x31, 0x00f20e2b # initialize rs2
or x25, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x2554d23f # initialize rs1
li x21, 0x16755a91 # initialize rs2
or x0, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0x2a5fa0aa # initialize rs1
li x6, 0x504f26b8 # initialize rs2
or x1, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x09437c6a # initialize rs1
li x30, 0xe37babec # initialize rs2
or x2, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0xa4326559 # initialize rs1
li x11, 0x128dad87 # initialize rs2
or x3, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x94621ec8 # initialize rs1
li x6, 0x971c7cdd # initialize rs2
or x4, x29, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x366c951e # initialize rs1
li x10, 0x42ffe716 # initialize rs2
or x5, x13, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xd54b492b # initialize rs1
li x27, 0x05e4855a # initialize rs2
or x6, x1, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x2c74dd38 # initialize rs1
li x4, 0xb41bbb0b # initialize rs2
or x7, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x9e9d3612 # initialize rs1
li x6, 0x04031c89 # initialize rs2
or x8, x7, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x262afa47 # initialize rs1
li x22, 0x51aceed0 # initialize rs2
or x9, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xa9fc82db # initialize rs1
li x30, 0x17804d5e # initialize rs2
or x10, x14, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x259cac67 # initialize rs1
li x18, 0x70dcb139 # initialize rs2
or x11, x14, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0x94c341ba # initialize rs1
li x6, 0x26356581 # initialize rs2
or x12, x22, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x4, 0x058815ff # initialize rs1
li x26, 0x38474a92 # initialize rs2
or x13, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x0e584118 # initialize rs1
li x7, 0xbaf6ce9b # initialize rs2
or x14, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x1ab249ab # initialize rs1
li x9, 0xaad75928 # initialize rs2
or x15, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xa21c7eae # initialize rs1
li x7, 0x96bb3e04 # initialize rs2
or x16, x1, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0x462b48a1 # initialize rs1
li x19, 0xae2c8471 # initialize rs2
or x17, x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0xa01e18e6 # initialize rs1
li x31, 0x81b8e106 # initialize rs2
or x18, x2, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xa3de41dd # initialize rs1
li x17, 0xb403c8f7 # initialize rs2
or x19, x27, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x19, 0xc09bc5d7 # initialize rs1
li x3, 0x5e130965 # initialize rs2
or x20, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x941f909e # initialize rs1
li x27, 0xf3c4264c # initialize rs2
or x21, x17, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x19, 0xbc4767b5 # initialize rs1
li x11, 0x3bdf7769 # initialize rs2
or x22, x19, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xf42c9790 # initialize rs1
li x7, 0x24bc0840 # initialize rs2
or x23, x28, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xadbe25ae # initialize rs1
li x20, 0xad9abe3e # initialize rs2
or x24, x30, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x6a338851 # initialize rs1
li x4, 0x41a10935 # initialize rs2
or x25, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xfb2d2735 # initialize rs1
li x7, 0x75017037 # initialize rs2
or x26, x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xb003c926 # initialize rs1
li x7, 0xdd85a729 # initialize rs2
or x27, x19, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0xc7a31a80 # initialize rs1
li x22, 0x856c541f # initialize rs2
or x28, x1, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x22ea2b90 # initialize rs1
li x28, 0x030add4f # initialize rs2
or x29, x12, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x31, 0x785ccd43 # initialize rs1
li x6, 0xdd29180b # initialize rs2
or x30, x31, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0x81c660f4 # initialize rs1
li x6, 0x1289237d # initialize rs2
or x31, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x00000000 # initialize rs1
li x26, 0x02fd703b # initialize rs2
or x21, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x00000001 # initialize rs1
li x17, 0xb10bb8c6 # initialize rs2
or x23, x18, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x00000002 # initialize rs1
li x13, 0x2b293ca9 # initialize rs2
or x10, x21, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x80000000 # initialize rs1
li x23, 0x0491d734 # initialize rs2
or x8, x3, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x3, 0x61a73ef9 # initialize rs2
or x2, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x20, 0xc467267a # initialize rs2
or x31, x29, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
li x20, 0x2c3769d5 # initialize rs2
or x17, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xffffffff # initialize rs1
li x28, 0x751c5186 # initialize rs2
or x16, x30, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0xfffffffe # initialize rs1
li x25, 0xe14a0b3e # initialize rs2
or x31, x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x11, 0x0ccf1abb # initialize rs2
or x25, x31, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
li x8, 0xd8857cdb # initialize rs2
or x29, x13, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x55555555 # initialize rs1
li x12, 0x1dd6f90e # initialize rs2
or x28, x19, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x3f298b99 # initialize rs1
li x25, 0x00000000 # initialize rs2
or x22, x6, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0xd1e97f24 # initialize rs1
li x29, 0x00000001 # initialize rs2
or x9, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x53b22d5d # initialize rs1
li x7, 0x00000002 # initialize rs2
or x28, x9, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0x388afd13 # initialize rs1
li x20, 0x80000000 # initialize rs2
or x16, x31, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x3, 0x3fbe008a # initialize rs1
li x14, 0x80000001 # initialize rs2
or x28, x3, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x18, 0x9b61cd44 # initialize rs1
li x11, 0x7fffffff # initialize rs2
or x6, x18, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x4, 0xe0962e48 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
or x21, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xdb40aba7 # initialize rs1
li x29, 0xffffffff # initialize rs2
or x3, x11, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x7b3d3eaa # initialize rs1
li x24, 0xfffffffe # initialize rs2
or x31, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x14, 0x5b93f0ee # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
or x2, x14, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x28, 0x4b3ad873 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
or x7, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x27, 0x0caeb7bb # initialize rs1
li x12, 0x55555555 # initialize rs2
or x21, x27, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x00000000 # initialize rs1
li x24, 0x00000000 # initialize rs2
or x3, x12, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x26, 0x00000001 # initialize rs2
or x10, x11, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x00000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
or x13, x10, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
or x26, x21, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x19, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
or x30, x19, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x8, 0x00000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
or x2, x8, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x1, 0x00000000 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
or x3, x1, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x19, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
or x12, x19, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x00000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
or x13, x10, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x1, 0x00000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
or x29, x1, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x30, 0x00000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
or x12, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x00000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
or x27, x11, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x30, 0x00000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
or x8, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x8, 0x00000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
or x21, x8, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x4, 0x00000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
or x7, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x13, 0x00000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
or x17, x13, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x6, 0x00000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
or x26, x6, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x28, 0x00000001 # initialize rs1
li x31, 0x7fffffff # initialize rs2
or x19, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x7, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
or x13, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x31, 0x00000001 # initialize rs1
li x4, 0xffffffff # initialize rs2
or x15, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
or x1, x21, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
or x16, x28, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x8, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
or x31, x8, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x16, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
or x7, x16, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x00000002 # initialize rs1
li x21, 0x00000000 # initialize rs2
or x24, x16, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0x00000002 # initialize rs1
li x3, 0x00000001 # initialize rs2
or x29, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x14, 0x00000002 # initialize rs2
or x13, x8, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x18, 0x00000002 # initialize rs1
li x17, 0x80000000 # initialize rs2
or x21, x18, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x16, 0x00000002 # initialize rs1
li x25, 0x80000001 # initialize rs2
or x10, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x8, 0x00000002 # initialize rs1
li x15, 0x7fffffff # initialize rs2
or x20, x8, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x26, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
or x7, x26, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x20, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
or x22, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x4, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
or x20, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x8, 0x00000002 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
or x29, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x24, 0x00000002 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
or x26, x24, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x12, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
or x2, x12, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x31, 0x80000000 # initialize rs1
li x13, 0x00000000 # initialize rs2
or x25, x31, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
or x10, x28, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x11, 0x80000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
or x8, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x26, 0x80000000 # initialize rs1
li x1, 0x80000000 # initialize rs2
or x27, x26, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x16, 0x80000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
or x3, x16, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x9, 0x80000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
or x3, x9, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x80000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
or x22, x27, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x20, 0x80000000 # initialize rs1
li x21, 0xffffffff # initialize rs2
or x31, x20, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x9, 0x80000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
or x22, x9, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x21, 0x80000000 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
or x26, x21, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x18, 0x80000000 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
or x13, x18, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x27, 0x55555555 # initialize rs2
or x11, x24, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
or x9, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x1, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
or x24, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x14, 0x80000001 # initialize rs1
li x29, 0x00000002 # initialize rs2
or x13, x14, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x20, 0x80000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
or x24, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x3, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
or x12, x3, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0x80000001 # initialize rs1
li x13, 0x7fffffff # initialize rs2
or x18, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x18, 0x80000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
or x13, x18, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x20, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
or x16, x20, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x12, 0x80000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
or x11, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
or x27, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x11, 0x80000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
or x16, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x27, 0x80000001 # initialize rs1
li x3, 0x55555555 # initialize rs2
or x1, x27, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x27, 0x7fffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
or x24, x27, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x26, 0x7fffffff # initialize rs1
li x7, 0x00000001 # initialize rs2
or x1, x26, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x14, 0x7fffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
or x11, x14, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x3, 0x7fffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
or x14, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x4, 0x7fffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
or x24, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
or x22, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x17, 0x7fffffff # initialize rs1
li x25, 0x7ffffffe # initialize rs2
or x18, x17, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x30, 0x7fffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
or x29, x30, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x21, 0x7fffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
or x15, x21, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
or x29, x3, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x14, 0x7fffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
or x8, x14, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x7, 0x7fffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
or x26, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x26, 0x7ffffffe # initialize rs1
li x1, 0x00000000 # initialize rs2
or x2, x26, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x8, 0x7ffffffe # initialize rs1
li x6, 0x00000001 # initialize rs2
or x30, x8, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x21, 0x7ffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
or x14, x21, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x22, 0x7ffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
or x16, x22, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x7, 0x7ffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
or x30, x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x29, 0x7ffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
or x14, x29, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs1
li x16, 0x7ffffffe # initialize rs2
or x31, x1, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
or x26, x7, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
or x23, x1, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x10, 0x7ffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
or x3, x10, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
or x1, x19, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x30, 0x7ffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
or x31, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x21, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
or x29, x21, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x22, 0xffffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
or x25, x22, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0xffffffff # initialize rs1
li x24, 0x00000002 # initialize rs2
or x6, x31, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x21, 0xffffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
or x10, x21, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0xffffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
or x13, x24, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x25, 0xffffffff # initialize rs1
li x4, 0x7fffffff # initialize rs2
or x12, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x26, 0xffffffff # initialize rs1
li x19, 0x7ffffffe # initialize rs2
or x25, x26, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x29, 0xffffffff # initialize rs2
or x26, x22, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0xffffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
or x1, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x16, 0xffffffff # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
or x11, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x21, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
or x9, x21, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x8, 0xffffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
or x7, x8, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x12, 0xfffffffe # initialize rs1
li x29, 0x00000000 # initialize rs2
or x6, x12, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0xfffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
or x20, x25, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0xfffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
or x25, x9, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x3, 0xfffffffe # initialize rs1
li x28, 0x80000000 # initialize rs2
or x16, x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x22, 0xfffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
or x19, x22, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x3, 0xfffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
or x17, x3, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x2, 0xfffffffe # initialize rs1
li x4, 0x7ffffffe # initialize rs2
or x14, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x19, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
or x11, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
or x12, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x28, 0xfffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
or x21, x28, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x29, 0xfffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
or x9, x29, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x2, 0x55555555 # initialize rs2
or x17, x11, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x18, 0x5bbc8872 # initialize rs1
li x19, 0x00000000 # initialize rs2
or x9, x18, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x4, 0x5bbc8872 # initialize rs1
li x25, 0x00000001 # initialize rs2
or x3, x4, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x12, 0x00000002 # initialize rs2
or x8, x19, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x6, 0x5bbc8872 # initialize rs1
li x14, 0x80000000 # initialize rs2
or x30, x6, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x27, 0x5bbc8872 # initialize rs1
li x10, 0x80000001 # initialize rs2
or x31, x27, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x10, 0x5bbc8872 # initialize rs1
li x20, 0x7fffffff # initialize rs2
or x15, x10, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
or x9, x20, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x13, 0x5bbc8872 # initialize rs1
li x29, 0xffffffff # initialize rs2
or x27, x13, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x9, 0x5bbc8872 # initialize rs1
li x21, 0xfffffffe # initialize rs2
or x27, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
or x25, x27, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x7, 0x5bbc8872 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
or x20, x7, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x12, 0x5bbc8872 # initialize rs1
li x24, 0x55555555 # initialize rs2
or x21, x12, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x24, 0xaaaaaaaa # initialize rs1
li x18, 0x00000000 # initialize rs2
or x6, x24, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x1, 0xaaaaaaaa # initialize rs1
li x22, 0x00000001 # initialize rs2
or x17, x1, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x17, 0xaaaaaaaa # initialize rs1
li x21, 0x00000002 # initialize rs2
or x8, x17, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x25, 0xaaaaaaaa # initialize rs1
li x22, 0x80000000 # initialize rs2
or x6, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x9, 0x80000001 # initialize rs2
or x17, x10, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x15, 0x7fffffff # initialize rs2
or x23, x16, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x24, 0xaaaaaaaa # initialize rs1
li x2, 0x7ffffffe # initialize rs2
or x4, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x10, 0xaaaaaaaa # initialize rs1
li x17, 0xffffffff # initialize rs2
or x18, x10, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaa # initialize rs1
li x31, 0xfffffffe # initialize rs2
or x22, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x29, 0xaaaaaaaa # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
or x12, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
or x4, x27, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x20, 0xaaaaaaaa # initialize rs1
li x27, 0x55555555 # initialize rs2
or x3, x20, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x24, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
or x19, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x6, 0x55555555 # initialize rs1
li x10, 0x00000001 # initialize rs2
or x29, x6, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x1, 0x55555555 # initialize rs1
li x25, 0x00000002 # initialize rs2
or x9, x1, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x14, 0x55555555 # initialize rs1
li x4, 0x80000000 # initialize rs2
or x24, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x16, 0x55555555 # initialize rs1
li x30, 0x80000001 # initialize rs2
or x25, x16, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x10, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
or x9, x10, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x18, 0x55555555 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
or x2, x18, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x2, 0x55555555 # initialize rs1
li x9, 0xffffffff # initialize rs2
or x11, x2, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x23, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
or x18, x23, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x2, 0x55555555 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
or x7, x2, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
or x3, x25, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x22, 0x55555555 # initialize rs2
or x8, x2, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbd8b68c1 # initialize rs1
li x0, 0x09c388ba # initialize rs2
or x25, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x72965e40 # initialize rs1
li x1, 0xe4225276 # initialize rs2
or x26, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7203db67 # initialize rs1
li x2, 0x855ffddf # initialize rs2
or x10, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x0fe4fbe8 # initialize rs1
li x3, 0xa7cb3cfb # initialize rs2
or x26, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0xe05399ff # initialize rs1
li x4, 0xc255c6bc # initialize rs2
or x11, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4daf1bd6 # initialize rs1
li x5, 0x30f8fbb7 # initialize rs2
or x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa3a45b12 # initialize rs1
li x6, 0x4ef603b4 # initialize rs2
or x7, x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0x4ddd4bd8 # initialize rs1
li x7, 0x7a7e76eb # initialize rs2
or x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd6d96483 # initialize rs1
li x8, 0xb2d6d5a5 # initialize rs2
or x24, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5b13a6f7 # initialize rs1
li x9, 0xe217affa # initialize rs2
or x27, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5c974d16 # initialize rs1
li x10, 0x08392c72 # initialize rs2
or x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xdef7afb3 # initialize rs1
li x11, 0x08d67cb0 # initialize rs2
or x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xa66e6e93 # initialize rs1
li x12, 0x9a6f958b # initialize rs2
or x21, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd4adf22d # initialize rs1
li x13, 0xa614fb08 # initialize rs2
or x9, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xcf5f4f58 # initialize rs1
li x14, 0xfbe0d2b1 # initialize rs2
or x13, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3eb0bcdc # initialize rs1
li x15, 0xfda91dbe # initialize rs2
or x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xd31be267 # initialize rs1
li x16, 0xdf28a898 # initialize rs2
or x11, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3ec30249 # initialize rs1
li x17, 0x5d19a422 # initialize rs2
or x5, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7349fc67 # initialize rs1
li x18, 0xecd75742 # initialize rs2
or x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x3bc6e3c1 # initialize rs1
li x19, 0x83de18da # initialize rs2
or x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xca40b232 # initialize rs1
li x20, 0xccfc81cd # initialize rs2
or x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd1abf494 # initialize rs1
li x21, 0xa73c39f1 # initialize rs2
or x25, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2f57b8ef # initialize rs1
li x22, 0x5a52a06d # initialize rs2
or x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xc5bae45e # initialize rs1
li x23, 0xd2ab784f # initialize rs2
or x19, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x2d290490 # initialize rs1
li x24, 0x71d3399d # initialize rs2
or x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x48b63a6b # initialize rs1
li x25, 0xbcb7ed64 # initialize rs2
or x23, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc5fd2799 # initialize rs1
li x26, 0xa31771ea # initialize rs2
or x9, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x69fd4f66 # initialize rs1
li x27, 0xb0ebd907 # initialize rs2
or x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x62492b39 # initialize rs1
li x28, 0xae050cfb # initialize rs2
or x19, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa0636b18 # initialize rs1
li x29, 0xeb0a1d4d # initialize rs2
or x26, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbf4a63c3 # initialize rs1
li x30, 0x1c81d0a6 # initialize rs2
or x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe7de761a # initialize rs1
li x31, 0x448e48ae # initialize rs2
or x12, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe653f087 # initialize rs1
li x22, 0x81a671e4 # initialize rs2
or x0, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3cd09781 # initialize rs1
li x22, 0xbb40a1ad # initialize rs2
or x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x79a7541b # initialize rs1
li x28, 0x8b471c77 # initialize rs2
or x2, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9b9f09eb # initialize rs1
li x14, 0xfc1a86c2 # initialize rs2
or x3, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0f7c637e # initialize rs1
li x11, 0xee4fe9f3 # initialize rs2
or x4, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x76e58ea3 # initialize rs1
li x22, 0x6fa59640 # initialize rs2
or x5, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf21e38d4 # initialize rs1
li x21, 0xcdf33367 # initialize rs2
or x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e85f45e # initialize rs1
li x17, 0xf5dd0fb0 # initialize rs2
or x7, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdfd17802 # initialize rs1
li x14, 0xf450eb54 # initialize rs2
or x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x012eb1b8 # initialize rs1
li x12, 0x96819e0f # initialize rs2
or x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xba14a95b # initialize rs1
li x26, 0x0f36406e # initialize rs2
or x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb0ce7c9a # initialize rs1
li x9, 0x32a52ec6 # initialize rs2
or x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x27b61b1c # initialize rs1
li x19, 0xa37009be # initialize rs2
or x12, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x34a71622 # initialize rs1
li x13, 0xfd580fb8 # initialize rs2
or x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x42ccdef6 # initialize rs1
li x21, 0x0e064165 # initialize rs2
or x14, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfe94cda9 # initialize rs1
li x20, 0x88d34d75 # initialize rs2
or x15, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf6c67911 # initialize rs1
li x29, 0xb281fe6f # initialize rs2
or x16, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6d9ab82b # initialize rs1
li x1, 0xc34af89c # initialize rs2
or x17, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1993497d # initialize rs1
li x23, 0x5cd54135 # initialize rs2
or x18, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x44f69f0e # initialize rs1
li x30, 0x577fdf9d # initialize rs2
or x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf58dbe84 # initialize rs1
li x18, 0xfef63742 # initialize rs2
or x20, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x39c38bb9 # initialize rs1
li x2, 0x23cd0b06 # initialize rs2
or x21, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9b3367d0 # initialize rs1
li x29, 0x499d6878 # initialize rs2
or x22, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd4528239 # initialize rs1
li x11, 0x971f3ac0 # initialize rs2
or x23, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x25f753eb # initialize rs1
li x6, 0xc52055ac # initialize rs2
or x24, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xba984f6d # initialize rs1
li x24, 0x170dd1c6 # initialize rs2
or x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0bf35502 # initialize rs1
li x25, 0x995657fa # initialize rs2
or x26, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x825c7dd5 # initialize rs1
li x24, 0xe2278e93 # initialize rs2
or x27, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x07784f31 # initialize rs1
li x3, 0x9d1df252 # initialize rs2
or x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa78c1a5b # initialize rs1
li x31, 0xb30f6ab0 # initialize rs2
or x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xbf212a7a # initialize rs1
li x16, 0x61b2d07d # initialize rs2
or x30, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x851cad2d # initialize rs1
li x6, 0x35c5d668 # initialize rs2
or x31, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x22, 0xa41def0b # initialize rs1
li x0, 0x88526904 # initialize rs2
or x0, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0xb63edbfa # initialize rs1
li x1, 0x138ae697 # initialize rs2
or x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0x33301dd1 # initialize rs1
li x2, 0xfba21be1 # initialize rs2
or x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0x9bf791c7 # initialize rs1
li x3, 0x3bf435ac # initialize rs2
or x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x2ce9584b # initialize rs1
li x4, 0x87d36676 # initialize rs2
or x4, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xbf9e92e9 # initialize rs1
li x5, 0x34a51255 # initialize rs2
or x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0xa80d862b # initialize rs1
li x6, 0xd2a8dba3 # initialize rs2
or x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x79b7c75d # initialize rs1
li x7, 0x74a3dde2 # initialize rs2
or x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0x3d9155fb # initialize rs1
li x8, 0x19dc20d5 # initialize rs2
or x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0xc068119a # initialize rs1
li x9, 0x30f68267 # initialize rs2
or x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x2155bd2c # initialize rs1
li x10, 0x5739990b # initialize rs2
or x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0x13a54199 # initialize rs1
li x11, 0x1ec90586 # initialize rs2
or x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x19, 0x8f6d78d4 # initialize rs1
li x12, 0x5624a127 # initialize rs2
or x12, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0xd719bffb # initialize rs1
li x13, 0x9826834d # initialize rs2
or x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x5d198f61 # initialize rs1
li x14, 0xcc9578cf # initialize rs2
or x14, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x7, 0x47c08e49 # initialize rs1
li x15, 0x68df5211 # initialize rs2
or x15, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0xc335b292 # initialize rs1
li x16, 0x43b12a06 # initialize rs2
or x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0xd1c6458c # initialize rs1
li x17, 0xcbcc3429 # initialize rs2
or x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x3, 0xe7de142c # initialize rs1
li x18, 0xe64e4959 # initialize rs2
or x18, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x23, 0x4cdfe305 # initialize rs1
li x19, 0x6416bba6 # initialize rs2
or x19, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x1, 0x0e4f7748 # initialize rs1
li x20, 0x43af7fba # initialize rs2
or x20, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x9, 0xc46da4f3 # initialize rs1
li x21, 0x73c7ff13 # initialize rs2
or x21, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x2, 0x4136786e # initialize rs1
li x22, 0xdd24b31b # initialize rs2
or x22, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0x3de5aea3 # initialize rs1
li x23, 0x96b7bdbd # initialize rs2
or x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0x4741205f # initialize rs1
li x24, 0x98771960 # initialize rs2
or x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0xaa8bd946 # initialize rs1
li x25, 0xb9809064 # initialize rs2
or x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0x73fc29f6 # initialize rs1
li x26, 0x1d601b4f # initialize rs2
or x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x9, 0x5de88dd6 # initialize rs1
li x27, 0xb35ad8cb # initialize rs2
or x27, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x6fff0110 # initialize rs1
li x28, 0xf4ab8822 # initialize rs2
or x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x215a2b9a # initialize rs1
li x29, 0xd4ff5dcc # initialize rs2
or x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x11, 0xd5562cdb # initialize rs1
li x30, 0xac0c05b9 # initialize rs2
or x30, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0xf6b1e0b3 # initialize rs1
li x31, 0x33f9fb26 # initialize rs2
or x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xda874c3f # initialize rs1
li x0, 0x3ed514c3 # initialize rs2
or x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x1b9bd89c # initialize rs1
li x1, 0x634a0e98 # initialize rs2
or x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xfbaa2136 # initialize rs1
li x2, 0x3b561cb4 # initialize rs2
or x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xfc6bad94 # initialize rs1
li x3, 0x1fd11401 # initialize rs2
or x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe90d7a17 # initialize rs1
li x4, 0x28138387 # initialize rs2
or x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x161fdb57 # initialize rs1
li x5, 0xaf773108 # initialize rs2
or x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5329fa83 # initialize rs1
li x6, 0xef0e6ae7 # initialize rs2
or x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0a16aee3 # initialize rs1
li x7, 0x394759db # initialize rs2
or x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x1383b96a # initialize rs1
li x8, 0xdcf0b002 # initialize rs2
or x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x8fcadecd # initialize rs1
li x9, 0x20dc00aa # initialize rs2
or x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x82d7a8b6 # initialize rs1
li x10, 0x6984051b # initialize rs2
or x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xcde020e6 # initialize rs1
li x11, 0x285f6b1d # initialize rs2
or x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x75e49a70 # initialize rs1
li x12, 0xce8e0d84 # initialize rs2
or x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe381498e # initialize rs1
li x13, 0x038a6abc # initialize rs2
or x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc772859c # initialize rs1
li x14, 0x595bfd53 # initialize rs2
or x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf924a4b4 # initialize rs1
li x15, 0x31e01562 # initialize rs2
or x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x1d23821e # initialize rs1
li x16, 0xfbeffaa4 # initialize rs2
or x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe768c79c # initialize rs1
li x17, 0x77a4b160 # initialize rs2
or x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x8e942cbb # initialize rs1
li x18, 0x67c13ef5 # initialize rs2
or x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9078de20 # initialize rs1
li x19, 0x5c4dd8f3 # initialize rs2
or x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc0f7119d # initialize rs1
li x20, 0x3d52b795 # initialize rs2
or x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x38b35c9f # initialize rs1
li x21, 0x41415b90 # initialize rs2
or x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x8105797f # initialize rs1
li x22, 0xe92505a2 # initialize rs2
or x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x930200ba # initialize rs1
li x23, 0x009ba456 # initialize rs2
or x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x0cfc220b # initialize rs1
li x24, 0x30e934f7 # initialize rs2
or x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x8423d514 # initialize rs1
li x25, 0x216616fd # initialize rs2
or x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe57ef4ee # initialize rs1
li x26, 0x0d7a1f46 # initialize rs2
or x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xeaacb458 # initialize rs1
li x27, 0x314a897c # initialize rs2
or x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x24f20fa9 # initialize rs1
li x28, 0x12085fcc # initialize rs2
or x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbed5932b # initialize rs1
li x29, 0x40eab1b3 # initialize rs2
or x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8d483e35 # initialize rs1
li x30, 0x60abb5de # initialize rs2
or x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x21201545 # initialize rs1
li x31, 0x3aeb2e61 # initialize rs2
or x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x24, x18 # perform first operation
or x8, x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x6, x23 # perform first operation
or x9, x29, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x31, x27 # perform first operation
or x23, x13, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x2, x11 # perform first operation
or x11, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x14, x25 # perform first operation
or x25, x21, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x27, x12 # perform first operation
or x7, x13, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x13, x24 # perform first operation
or x7, x2, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x10, x15 # perform first operation
or x8, x24, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x19, x3 # perform first operation
or x29, x13, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x15, x10 # perform first operation
or x15, x30, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x21, x1 # perform first operation
or x1, x14, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x28, x26 # perform first operation
or x13, x2, x23 # perform second (triggering) operation

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
