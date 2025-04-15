///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-addi.S
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
li x0, 0x90ecac29 # initialize rs1
addi x6, x0, -1545 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x1cf1ef82 # initialize rs1
addi x19, x1, 950 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4a7af0fe # initialize rs1
addi x20, x2, 1550 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2f3dd45c # initialize rs1
addi x10, x3, 203 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6e75f4cc # initialize rs1
addi x7, x4, -172 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x51af9fe2 # initialize rs1
addi x1, x5, -251 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3a248708 # initialize rs1
addi x27, x6, -1234 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x20fac0d2 # initialize rs1
addi x18, x7, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb2f42dec # initialize rs1
addi x29, x8, 756 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa96e622d # initialize rs1
addi x23, x9, -1944 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xcc87ebba # initialize rs1
addi x17, x10, -1977 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa42da1d8 # initialize rs1
addi x31, x11, 392 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8c86f957 # initialize rs1
addi x23, x12, 1172 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x31f2cdd5 # initialize rs1
addi x19, x13, 1126 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2db55913 # initialize rs1
addi x12, x14, -1185 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1a5201f9 # initialize rs1
addi x26, x15, 1634 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5fb5a6d2 # initialize rs1
addi x11, x16, -1386 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2467b08c # initialize rs1
addi x22, x17, -1767 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xf79564fb # initialize rs1
addi x27, x18, -1989 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xcd960187 # initialize rs1
addi x1, x19, 325 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf62351f9 # initialize rs1
addi x25, x20, -1032 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4c794215 # initialize rs1
addi x26, x21, 486 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xebcf1a22 # initialize rs1
addi x29, x22, -1634 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xafb512aa # initialize rs1
addi x3, x23, 594 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xbfb93d24 # initialize rs1
addi x28, x24, 1057 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb047d466 # initialize rs1
addi x10, x25, 667 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xca89db54 # initialize rs1
addi x17, x26, -812 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe67a00ed # initialize rs1
addi x11, x27, 1981 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7d1a0beb # initialize rs1
addi x1, x28, -1413 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x69bf336b # initialize rs1
addi x1, x29, 152 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x627a225d # initialize rs1
addi x14, x30, 1081 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x1adbabbf # initialize rs1
addi x29, x31, -1513 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 124)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x4f4f3287 # initialize rs1
addi x0, x20, -430 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xbaf6bb20 # initialize rs1
addi x1, x1, -598 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x5678fd44 # initialize rs1
addi x2, x29, 1984 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0x480d8251 # initialize rs1
addi x3, x25, 1429 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x870e2e91 # initialize rs1
addi x4, x14, -851 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x90e841df # initialize rs1
addi x5, x10, 1886 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xb5a7428a # initialize rs1
addi x6, x17, 1101 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0x4ee3c859 # initialize rs1
addi x7, x30, 294 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0x8af70b96 # initialize rs1
addi x8, x3, 162 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x3847dca1 # initialize rs1
addi x9, x22, -197 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xdc65dc5d # initialize rs1
addi x10, x10, -268 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x40581916 # initialize rs1
addi x11, x3, 1135 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x9bfd803b # initialize rs1
addi x12, x12, 209 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xc41404fb # initialize rs1
addi x13, x10, 833 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0xd4b179ea # initialize rs1
addi x14, x1, -952 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x6fcffa45 # initialize rs1
addi x15, x14, -1288 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0x7d1002a7 # initialize rs1
addi x16, x19, 1936 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x011de3e1 # initialize rs1
addi x17, x7, -970 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0xce92222a # initialize rs1
addi x18, x14, -1460 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0x81ef4bf0 # initialize rs1
addi x19, x2, -132 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0x603a7dcb # initialize rs1
addi x20, x30, 500 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x6c1fd397 # initialize rs1
addi x21, x12, -1636 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x1496af87 # initialize rs1
addi x22, x5, 1580 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0x60ac8f8b # initialize rs1
addi x23, x26, -1497 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x6aacec24 # initialize rs1
addi x24, x27, -572 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0xd58f056d # initialize rs1
addi x25, x16, 1963 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0x2ac4dfb7 # initialize rs1
addi x26, x17, 314 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0xdb3a4df2 # initialize rs1
addi x27, x17, 178 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x1771b5f7 # initialize rs1
addi x28, x20, -1883 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xf7ed6bcd # initialize rs1
addi x29, x29, -1224 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x0504d9cd # initialize rs1
addi x30, x6, -1264 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0x39dc9c46 # initialize rs1
addi x31, x2, -1645 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
addi x9, x20, -626 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x00000001 # initialize rs1
addi x27, x20, -1658 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x00000002 # initialize rs1
addi x15, x26, 81 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x80000000 # initialize rs1
addi x21, x27, 534 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x16, 0x80000001 # initialize rs1
addi x25, x16, 825 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
addi x1, x26, 1859 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0x7ffffffe # initialize rs1
addi x24, x14, 1074 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0xffffffff # initialize rs1
addi x24, x2, 514 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0xfffffffe # initialize rs1
addi x8, x20, 1453 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
addi x20, x12, 513 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
addi x25, x9, -650 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x7, 0x55555555 # initialize rs1
addi x1, x7, -734 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 300)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
addi x2, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 304)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000 # initialize rs1
addi x20, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 308)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000 # initialize rs1
addi x13, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000 # initialize rs1
addi x9, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 316)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
addi x2, x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000 # initialize rs1
addi x14, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 324)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000 # initialize rs1
addi x14, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000 # initialize rs1
addi x10, x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 332)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
addi x25, x31, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000 # initialize rs1
addi x29, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 340)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000 # initialize rs1
addi x5, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
addi x31, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 348)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000 # initialize rs1
addi x26, x12, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000 # initialize rs1
addi x28, x2, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 356)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000 # initialize rs1
addi x6, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 360)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000 # initialize rs1
addi x26, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 364)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000 # initialize rs1
addi x14, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000 # initialize rs1
addi x29, x24, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000 # initialize rs1
addi x21, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 376)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000 # initialize rs1
addi x13, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 380)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
addi x29, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
addi x3, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 388)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
addi x15, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cr_rs1_imm_corners
li x6, 0x00000001 # initialize rs1
addi x28, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 396)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001 # initialize rs1
addi x11, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cr_rs1_imm_corners
li x3, 0x00000001 # initialize rs1
addi x30, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 404)

# Testcase cr_rs1_imm_corners
li x26, 0x00000001 # initialize rs1
addi x27, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 408)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
addi x25, x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 412)

# Testcase cr_rs1_imm_corners
li x31, 0x00000001 # initialize rs1
addi x18, x31, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 416)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
addi x9, x28, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 420)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rs1
addi x5, x14, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 424)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
addi x27, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 428)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
addi x21, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rs1
addi x28, x14, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 436)

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rs1
addi x26, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cr_rs1_imm_corners
li x3, 0x00000001 # initialize rs1
addi x2, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 444)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
addi x28, x21, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 448)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rs1
addi x26, x12, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 452)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
addi x6, x28, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cr_rs1_imm_corners
li x10, 0x00000001 # initialize rs1
addi x12, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 460)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
addi x12, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rs1
addi x24, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002 # initialize rs1
addi x31, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_imm_corners
li x21, 0x00000002 # initialize rs1
addi x12, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
addi x23, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_imm_corners
li x17, 0x00000002 # initialize rs1
addi x19, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 484)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
addi x15, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_imm_corners
li x9, 0x00000002 # initialize rs1
addi x11, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 492)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002 # initialize rs1
addi x8, x20, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
addi x27, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 500)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
addi x3, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002 # initialize rs1
addi x5, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 508)

# Testcase cr_rs1_imm_corners
li x20, 0x00000002 # initialize rs1
addi x16, x20, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 512)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002 # initialize rs1
addi x3, x24, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 516)

# Testcase cr_rs1_imm_corners
li x27, 0x00000002 # initialize rs1
addi x26, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002 # initialize rs1
addi x20, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 524)

# Testcase cr_rs1_imm_corners
li x28, 0x00000002 # initialize rs1
addi x5, x28, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
addi x11, x3, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 532)

# Testcase cr_rs1_imm_corners
li x1, 0x00000002 # initialize rs1
addi x29, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002 # initialize rs1
addi x28, x8, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 540)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rs1
addi x27, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cr_rs1_imm_corners
li x7, 0x80000000 # initialize rs1
addi x27, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 548)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000 # initialize rs1
addi x26, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000 # initialize rs1
addi x19, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
addi x6, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
addi x26, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 564)

# Testcase cr_rs1_imm_corners
li x22, 0x80000000 # initialize rs1
addi x19, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cr_rs1_imm_corners
li x16, 0x80000000 # initialize rs1
addi x1, x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 572)

# Testcase cr_rs1_imm_corners
li x21, 0x80000000 # initialize rs1
addi x24, x21, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000 # initialize rs1
addi x16, x9, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cr_rs1_imm_corners
li x6, 0x80000000 # initialize rs1
addi x25, x6, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000 # initialize rs1
addi x5, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 588)

# Testcase cr_rs1_imm_corners
li x5, 0x80000000 # initialize rs1
addi x27, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
addi x9, x30, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 596)

# Testcase cr_rs1_imm_corners
li x15, 0x80000000 # initialize rs1
addi x21, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 600)

# Testcase cr_rs1_imm_corners
li x20, 0x80000000 # initialize rs1
addi x12, x20, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 604)

# Testcase cr_rs1_imm_corners
li x18, 0x80000000 # initialize rs1
addi x27, x18, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 608)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
addi x31, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 612)

# Testcase cr_rs1_imm_corners
li x2, 0x80000000 # initialize rs1
addi x18, x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cr_rs1_imm_corners
li x1, 0x80000000 # initialize rs1
addi x23, x1, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 620)

# Testcase cr_rs1_imm_corners
li x7, 0x80000001 # initialize rs1
addi x24, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 624)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001 # initialize rs1
addi x3, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 628)

# Testcase cr_rs1_imm_corners
li x17, 0x80000001 # initialize rs1
addi x11, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
addi x5, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 636)

# Testcase cr_rs1_imm_corners
li x30, 0x80000001 # initialize rs1
addi x15, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_imm_corners
li x1, 0x80000001 # initialize rs1
addi x22, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
addi x10, x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
addi x16, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
addi x19, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_imm_corners
li x6, 0x80000001 # initialize rs1
addi x27, x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 660)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
addi x7, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 664)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
addi x3, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 668)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
addi x9, x12, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
addi x11, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 676)

# Testcase cr_rs1_imm_corners
li x23, 0x80000001 # initialize rs1
addi x7, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 680)

# Testcase cr_rs1_imm_corners
li x25, 0x80000001 # initialize rs1
addi x28, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 684)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001 # initialize rs1
addi x20, x9, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 688)

# Testcase cr_rs1_imm_corners
li x6, 0x80000001 # initialize rs1
addi x5, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 692)

# Testcase cr_rs1_imm_corners
li x6, 0x80000001 # initialize rs1
addi x1, x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_imm_corners
li x20, 0x80000001 # initialize rs1
addi x26, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 700)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffff # initialize rs1
addi x27, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffff # initialize rs1
addi x13, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
addi x1, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 712)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffff # initialize rs1
addi x8, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff # initialize rs1
addi x29, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 720)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff # initialize rs1
addi x9, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff # initialize rs1
addi x8, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rs1
addi x3, x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 732)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
addi x19, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
addi x27, x17, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 740)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffff # initialize rs1
addi x22, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 744)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
addi x12, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 748)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffff # initialize rs1
addi x23, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
addi x2, x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 756)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffff # initialize rs1
addi x5, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffff # initialize rs1
addi x30, x5, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 764)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
addi x8, x6, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffff # initialize rs1
addi x31, x16, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 772)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffff # initialize rs1
addi x9, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffff # initialize rs1
addi x24, x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 780)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
addi x6, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
addi x17, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 788)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
addi x21, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 792)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffe # initialize rs1
addi x24, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 796)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffe # initialize rs1
addi x9, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
addi x31, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 804)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
addi x26, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe # initialize rs1
addi x23, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffe # initialize rs1
addi x2, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffe # initialize rs1
addi x24, x23, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 820)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe # initialize rs1
addi x15, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
addi x31, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 828)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffe # initialize rs1
addi x8, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
addi x20, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 836)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
addi x12, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 840)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffe # initialize rs1
addi x1, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 844)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffe # initialize rs1
addi x28, x8, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
addi x23, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 852)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
addi x23, x15, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffe # initialize rs1
addi x14, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 860)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
addi x20, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff # initialize rs1
addi x6, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 868)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffff # initialize rs1
addi x8, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffff # initialize rs1
addi x8, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 876)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffff # initialize rs1
addi x30, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
addi x11, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 884)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffff # initialize rs1
addi x24, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
addi x5, x21, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffff # initialize rs1
addi x28, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffff # initialize rs1
addi x10, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 900)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffff # initialize rs1
addi x23, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffff # initialize rs1
addi x12, x28, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 908)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
addi x26, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rs1
addi x2, x13, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 916)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffff # initialize rs1
addi x26, x5, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
addi x28, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 924)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
addi x31, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 928)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffff # initialize rs1
addi x14, x27, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 932)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rs1
addi x31, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffff # initialize rs1
addi x13, x1, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 940)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rs1
addi x26, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
addi x26, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 948)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffe # initialize rs1
addi x21, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffe # initialize rs1
addi x19, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 956)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffe # initialize rs1
addi x27, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffe # initialize rs1
addi x17, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 964)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffe # initialize rs1
addi x11, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffe # initialize rs1
addi x26, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 972)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
addi x6, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rs1
addi x29, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 980)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffe # initialize rs1
addi x14, x19, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 984)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffe # initialize rs1
addi x3, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 988)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
addi x15, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffe # initialize rs1
addi x25, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 996)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffe # initialize rs1
addi x6, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rs1
addi x17, x8, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1004)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
addi x23, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffe # initialize rs1
addi x11, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1012)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffe # initialize rs1
addi x10, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffe # initialize rs1
addi x8, x7, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1020)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
addi x27, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1024)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rs1
addi x12, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1028)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872 # initialize rs1
addi x3, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1032)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
addi x15, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1036)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc8872 # initialize rs1
addi x14, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc8872 # initialize rs1
addi x7, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1044)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc8872 # initialize rs1
addi x26, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872 # initialize rs1
addi x3, x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1052)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc8872 # initialize rs1
addi x18, x16, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872 # initialize rs1
addi x16, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1060)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rs1
addi x31, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872 # initialize rs1
addi x29, x13, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1068)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rs1
addi x24, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
addi x20, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1076)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc8872 # initialize rs1
addi x17, x1, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1080)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc8872 # initialize rs1
addi x20, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1084)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc8872 # initialize rs1
addi x14, x25, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872 # initialize rs1
addi x20, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1092)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc8872 # initialize rs1
addi x26, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc8872 # initialize rs1
addi x28, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1100)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
addi x12, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
addi x18, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1108)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
addi x5, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaa # initialize rs1
addi x30, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1116)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaa # initialize rs1
addi x12, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
addi x27, x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1124)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaa # initialize rs1
addi x18, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
addi x15, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1132)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
addi x1, x25, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaa # initialize rs1
addi x13, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1140)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rs1
addi x25, x8, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
addi x30, x11, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1148)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
addi x12, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1152)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
addi x20, x25, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1156)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaa # initialize rs1
addi x11, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1160)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
addi x5, x11, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1164)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
addi x12, x18, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1168)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rs1
addi x9, x10, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaa # initialize rs1
addi x28, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaa # initialize rs1
addi x27, x21, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1180)

# Testcase cr_rs1_imm_corners
li x8, 0x55555555 # initialize rs1
addi x27, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_imm_corners
li x2, 0x55555555 # initialize rs1
addi x22, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1188)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
addi x21, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1192)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555 # initialize rs1
addi x21, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1196)

# Testcase cr_rs1_imm_corners
li x8, 0x55555555 # initialize rs1
addi x5, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cr_rs1_imm_corners
li x5, 0x55555555 # initialize rs1
addi x15, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1204)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
addi x5, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_imm_corners
li x6, 0x55555555 # initialize rs1
addi x7, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cr_rs1_imm_corners
li x1, 0x55555555 # initialize rs1
addi x10, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555 # initialize rs1
addi x5, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1220)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rs1
addi x19, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1224)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
addi x22, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1228)

# Testcase cr_rs1_imm_corners
li x26, 0x55555555 # initialize rs1
addi x27, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
addi x20, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1236)

# Testcase cr_rs1_imm_corners
li x29, 0x55555555 # initialize rs1
addi x26, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1240)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
addi x3, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1244)

# Testcase cr_rs1_imm_corners
li x23, 0x55555555 # initialize rs1
addi x3, x23, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_imm_corners
li x16, 0x55555555 # initialize rs1
addi x2, x16, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1252)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
addi x13, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
addi x27, x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xaca0964c # initialize rs1
addi x0, x0, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb58a1d9d # initialize rs1
addi x1, x1, -1390 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xce18c5b3 # initialize rs1
addi x2, x2, -677 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x06517846 # initialize rs1
addi x3, x3, -1330 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc9f8b4fa # initialize rs1
addi x4, x4, -1524 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc6206b37 # initialize rs1
addi x5, x5, -1237 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa4dc6462 # initialize rs1
addi x6, x6, 901 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7fc2dcda # initialize rs1
addi x7, x7, 1399 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x81b5f763 # initialize rs1
addi x8, x8, -537 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x52ee7de9 # initialize rs1
addi x9, x9, -1384 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8a68b9de # initialize rs1
addi x10, x10, 1979 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa8e3660e # initialize rs1
addi x11, x11, -160 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa5b5c7d6 # initialize rs1
addi x12, x12, 338 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x367cdd3b # initialize rs1
addi x13, x13, -415 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb47abde2 # initialize rs1
addi x14, x14, 1400 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe65ffd87 # initialize rs1
addi x15, x15, 178 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xde399021 # initialize rs1
addi x16, x16, -776 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9d098ce3 # initialize rs1
addi x17, x17, -1921 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb5c013d2 # initialize rs1
addi x18, x18, -1068 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf54296c0 # initialize rs1
addi x19, x19, -877 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd8fa9fc1 # initialize rs1
addi x20, x20, 1227 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf610b5a9 # initialize rs1
addi x21, x21, 1281 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf197b6f0 # initialize rs1
addi x22, x22, 1855 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9cecfa05 # initialize rs1
addi x23, x23, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x87728697 # initialize rs1
addi x24, x24, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x55e0f965 # initialize rs1
addi x25, x25, -1667 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9b5849bf # initialize rs1
addi x26, x26, -762 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x06a32716 # initialize rs1
addi x27, x27, 1555 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc92509b4 # initialize rs1
addi x28, x28, -555 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1514a9fa # initialize rs1
addi x29, x29, -1362 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5b1cdf0d # initialize rs1
addi x30, x30, 1580 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x76da6b32 # initialize rs1
addi x31, x31, -2026 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1388)

# Testcase cp_imm_corners
li x23, 0x64345ea3 # initialize rs1
addi x31, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1392)

# Testcase cp_imm_corners
li x21, 0xcab15077 # initialize rs1
addi x1, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1396)

# Testcase cp_imm_corners
li x17, 0xbbe226cc # initialize rs1
addi x28, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cp_imm_corners
li x16, 0xdb39363d # initialize rs1
addi x21, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1404)

# Testcase cp_imm_corners
li x21, 0x6433a268 # initialize rs1
addi x24, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cp_imm_corners
li x2, 0x15967bf0 # initialize rs1
addi x21, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1412)

# Testcase cp_imm_corners
li x6, 0x660e7524 # initialize rs1
addi x25, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1416)

# Testcase cp_imm_corners
li x8, 0x88e67302 # initialize rs1
addi x26, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1420)

# Testcase cp_imm_corners
li x17, 0x365ed6ae # initialize rs1
addi x29, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1424)

# Testcase cp_imm_corners
li x2, 0x30755d0c # initialize rs1
addi x6, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1428)

# Testcase cp_imm_corners
li x31, 0xf1467e0f # initialize rs1
addi x10, x31, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1432)

# Testcase cp_imm_corners
li x1, 0xe1ba26bd # initialize rs1
addi x3, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1436)

# Testcase cp_imm_corners
li x17, 0x2a47384a # initialize rs1
addi x31, x17, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cp_imm_corners
li x23, 0xdbd326b3 # initialize rs1
addi x3, x23, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1444)

# Testcase cp_imm_corners
li x6, 0x981a3503 # initialize rs1
addi x14, x6, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1448)

# Testcase cp_imm_corners
li x13, 0xa51c507e # initialize rs1
addi x1, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1452)

# Testcase cp_imm_corners
li x23, 0xf61256a1 # initialize rs1
addi x20, x23, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cp_imm_corners
li x18, 0x5e006aa3 # initialize rs1
addi x16, x18, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1460)

# Testcase cp_imm_corners
li x20, 0x9d9009dc # initialize rs1
addi x31, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cp_imm_corners
li x28, 0xa31f3a64 # initialize rs1
addi x8, x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1468)

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x3, x29 # perform first operation
addi x8, x13, -389 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x9, x6 # perform first operation
addi x16, x7, 865 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x29, x31 # perform first operation
addi x22, x8, -567 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x8, x17 # perform first operation
addi x8, x17, 1383 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x22, x18 # perform first operation
addi x18, x6, -1696 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x23, x13 # perform first operation
addi x17, x2, 1286 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x16, x14 # perform first operation
addi x28, x1, -1649 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x6, x10 # perform first operation
addi x29, x12, 581 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x20, x27 # perform first operation
addi x12, x16, -424 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x26, x22 # perform first operation
addi x26, x30, 765 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x16, x29 # perform first operation
addi x29, x27, -246 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x31, x25 # perform first operation
addi x17, x7, -1431 # perform second (triggering) operation

.EQU SIGSIZE,1472


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
