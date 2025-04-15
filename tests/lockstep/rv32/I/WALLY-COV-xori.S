///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-xori.S
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
li x0, 0x7f5c9c35 # initialize rs1
xori x11, x0, -1721 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf51778ff # initialize rs1
xori x16, x1, 570 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5714cc59 # initialize rs1
xori x17, x2, 1049 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x69cf1f53 # initialize rs1
xori x17, x3, 1157 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaf3562a6 # initialize rs1
xori x31, x4, 169 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6579afbf # initialize rs1
xori x4, x5, -21 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x28176393 # initialize rs1
xori x3, x6, -1739 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa2f3732 # initialize rs1
xori x18, x7, 538 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbf991b29 # initialize rs1
xori x6, x8, -100 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x661cb8e0 # initialize rs1
xori x17, x9, -2030 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb5a75929 # initialize rs1
xori x30, x10, 1259 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x4f6f86f3 # initialize rs1
xori x14, x11, 808 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xac405a1a # initialize rs1
xori x23, x12, -2006 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc74ab742 # initialize rs1
xori x6, x13, 1988 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb9d33fe7 # initialize rs1
xori x20, x14, -2024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf62fb1d3 # initialize rs1
xori x1, x15, 1003 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe4569f7f # initialize rs1
xori x9, x16, 1603 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x56c120cc # initialize rs1
xori x7, x17, 911 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x724bed75 # initialize rs1
xori x7, x18, 1334 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x20c4435c # initialize rs1
xori x27, x19, 823 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc231eeac # initialize rs1
xori x1, x20, 1028 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x32f7ac5f # initialize rs1
xori x30, x21, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x1d73ab80 # initialize rs1
xori x31, x22, 670 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x86a42b47 # initialize rs1
xori x21, x23, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdce1f24d # initialize rs1
xori x8, x24, 1156 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x779e88fa # initialize rs1
xori x1, x25, -884 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb2c39f2e # initialize rs1
xori x27, x26, -1963 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x9062abcb # initialize rs1
xori x24, x27, 737 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4541806d # initialize rs1
xori x9, x28, 760 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3d94ae96 # initialize rs1
xori x24, x29, 789 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xceaa771a # initialize rs1
xori x13, x30, 1977 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb83c8305 # initialize rs1
xori x13, x31, 1051 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_rd (Test destination rd = x0)
li x1, 0x0c0de2b8 # initialize rs1
xori x0, x1, -1661 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0x700dd01e # initialize rs1
xori x1, x8, 1917 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x31, 0x8a0d0c6e # initialize rs1
xori x2, x31, -1286 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x9425eed7 # initialize rs1
xori x3, x7, -1472 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xe974472d # initialize rs1
xori x4, x12, 1322 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x35721fe0 # initialize rs1
xori x5, x30, -1273 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xe094cb2d # initialize rs1
xori x6, x27, 1039 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xc8986100 # initialize rs1
xori x7, x29, -653 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x7005432f # initialize rs1
xori x8, x26, -274 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0xa8f0496a # initialize rs1
xori x9, x23, -336 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0xfa9e4aad # initialize rs1
xori x10, x2, -239 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x8cb446b9 # initialize rs1
xori x11, x19, 1012 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0xcd8d7364 # initialize rs1
xori x12, x29, 303 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x42806431 # initialize rs1
xori x13, x13, -1768 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x88f4f2bf # initialize rs1
xori x14, x26, -1872 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x7a6e70f6 # initialize rs1
xori x15, x1, 1120 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0xe18a94b1 # initialize rs1
xori x16, x27, 1082 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0x1996e62b # initialize rs1
xori x17, x29, 990 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0x58c9f131 # initialize rs1
xori x18, x26, -401 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0xe523f90f # initialize rs1
xori x19, x1, -1213 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x8971873a # initialize rs1
xori x20, x1, 1283 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x086c2303 # initialize rs1
xori x21, x24, -1713 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x8768d697 # initialize rs1
xori x22, x22, -722 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x983f49f9 # initialize rs1
xori x23, x10, 199 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x12, 0x4785f132 # initialize rs1
xori x24, x12, 1661 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0xcc891868 # initialize rs1
xori x25, x18, -1624 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x751dbe67 # initialize rs1
xori x26, x20, 1760 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x26, 0xadc80dde # initialize rs1
xori x27, x26, -229 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0xc388457e # initialize rs1
xori x28, x20, 436 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x20, 0xcbe6d8be # initialize rs1
xori x29, x20, 936 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0xdd0207dc # initialize rs1
xori x30, x5, -182 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0xb8926915 # initialize rs1
xori x31, x22, 1253 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x00000000 # initialize rs1
xori x23, x11, -1963 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x00000001 # initialize rs1
xori x9, x15, 1827 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x00000002 # initialize rs1
xori x16, x9, 1856 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
xori x14, x10, 1980 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x80000001 # initialize rs1
xori x26, x8, 535 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
xori x11, x2, 1368 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
xori x6, x7, 1651 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0xffffffff # initialize rs1
xori x1, x22, 1774 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rs1
xori x12, x14, -1565 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
xori x6, x8, -1531 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x26, 0xaaaaaaaa # initialize rs1
xori x11, x26, 1519 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
xori x2, x27, 297 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 300)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
xori x1, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rs1
xori x28, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 308)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000 # initialize rs1
xori x10, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 312)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
xori x16, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 316)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000 # initialize rs1
xori x15, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 320)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000 # initialize rs1
xori x2, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 324)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rs1
xori x14, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000 # initialize rs1
xori x23, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 332)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000 # initialize rs1
xori x30, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rs1
xori x11, x13, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 340)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000 # initialize rs1
xori x20, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000 # initialize rs1
xori x21, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 348)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000 # initialize rs1
xori x22, x30, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000 # initialize rs1
xori x16, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 356)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
xori x10, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000 # initialize rs1
xori x1, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 364)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000 # initialize rs1
xori x10, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 368)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000 # initialize rs1
xori x20, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 372)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000 # initialize rs1
xori x31, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rs1
xori x11, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 380)

# Testcase cr_rs1_imm_corners
li x31, 0x00000001 # initialize rs1
xori x16, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cr_rs1_imm_corners
li x27, 0x00000001 # initialize rs1
xori x8, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cr_rs1_imm_corners
li x26, 0x00000001 # initialize rs1
xori x28, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cr_rs1_imm_corners
li x22, 0x00000001 # initialize rs1
xori x19, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 396)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
xori x13, x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
xori x9, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 404)

# Testcase cr_rs1_imm_corners
li x27, 0x00000001 # initialize rs1
xori x7, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cr_rs1_imm_corners
li x22, 0x00000001 # initialize rs1
xori x25, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 412)

# Testcase cr_rs1_imm_corners
li x11, 0x00000001 # initialize rs1
xori x23, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cr_rs1_imm_corners
li x29, 0x00000001 # initialize rs1
xori x22, x29, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 420)

# Testcase cr_rs1_imm_corners
li x17, 0x00000001 # initialize rs1
xori x10, x17, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
xori x22, x28, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 428)

# Testcase cr_rs1_imm_corners
li x31, 0x00000001 # initialize rs1
xori x26, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cr_rs1_imm_corners
li x6, 0x00000001 # initialize rs1
xori x11, x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cr_rs1_imm_corners
li x29, 0x00000001 # initialize rs1
xori x19, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cr_rs1_imm_corners
li x17, 0x00000001 # initialize rs1
xori x24, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
xori x11, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001 # initialize rs1
xori x28, x7, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 452)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001 # initialize rs1
xori x26, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_imm_corners
li x25, 0x00000001 # initialize rs1
xori x1, x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 460)

# Testcase cr_rs1_imm_corners
li x30, 0x00000002 # initialize rs1
xori x21, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 464)

# Testcase cr_rs1_imm_corners
li x21, 0x00000002 # initialize rs1
xori x8, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cr_rs1_imm_corners
li x19, 0x00000002 # initialize rs1
xori x8, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
xori x2, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 476)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
xori x24, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_imm_corners
li x19, 0x00000002 # initialize rs1
xori x9, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 484)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
xori x19, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_imm_corners
li x6, 0x00000002 # initialize rs1
xori x10, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 492)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rs1
xori x21, x13, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 496)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002 # initialize rs1
xori x7, x12, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002 # initialize rs1
xori x15, x10, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_imm_corners
li x18, 0x00000002 # initialize rs1
xori x13, x18, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 508)

# Testcase cr_rs1_imm_corners
li x21, 0x00000002 # initialize rs1
xori x15, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002 # initialize rs1
xori x25, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 516)

# Testcase cr_rs1_imm_corners
li x7, 0x00000002 # initialize rs1
xori x21, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
xori x15, x23, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 524)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
xori x12, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 528)

# Testcase cr_rs1_imm_corners
li x30, 0x00000002 # initialize rs1
xori x25, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 532)

# Testcase cr_rs1_imm_corners
li x14, 0x00000002 # initialize rs1
xori x31, x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_imm_corners
li x19, 0x00000002 # initialize rs1
xori x16, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 540)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rs1
xori x27, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cr_rs1_imm_corners
li x21, 0x80000000 # initialize rs1
xori x6, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 548)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rs1
xori x14, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
xori x2, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 556)

# Testcase cr_rs1_imm_corners
li x25, 0x80000000 # initialize rs1
xori x14, x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_imm_corners
li x21, 0x80000000 # initialize rs1
xori x9, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 564)

# Testcase cr_rs1_imm_corners
li x17, 0x80000000 # initialize rs1
xori x29, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 568)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000 # initialize rs1
xori x19, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 572)

# Testcase cr_rs1_imm_corners
li x27, 0x80000000 # initialize rs1
xori x20, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000 # initialize rs1
xori x21, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 580)

# Testcase cr_rs1_imm_corners
li x21, 0x80000000 # initialize rs1
xori x2, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000 # initialize rs1
xori x15, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 588)

# Testcase cr_rs1_imm_corners
li x26, 0x80000000 # initialize rs1
xori x18, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_imm_corners
li x6, 0x80000000 # initialize rs1
xori x8, x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 596)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
xori x23, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 600)

# Testcase cr_rs1_imm_corners
li x1, 0x80000000 # initialize rs1
xori x19, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 604)

# Testcase cr_rs1_imm_corners
li x7, 0x80000000 # initialize rs1
xori x22, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rs1
xori x28, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 612)

# Testcase cr_rs1_imm_corners
li x19, 0x80000000 # initialize rs1
xori x2, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rs1
xori x8, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 620)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
xori x25, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cr_rs1_imm_corners
li x2, 0x80000001 # initialize rs1
xori x28, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 628)

# Testcase cr_rs1_imm_corners
li x16, 0x80000001 # initialize rs1
xori x14, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
xori x6, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 636)

# Testcase cr_rs1_imm_corners
li x15, 0x80000001 # initialize rs1
xori x25, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
xori x15, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 644)

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rs1
xori x15, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cr_rs1_imm_corners
li x7, 0x80000001 # initialize rs1
xori x23, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 652)

# Testcase cr_rs1_imm_corners
li x27, 0x80000001 # initialize rs1
xori x19, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_imm_corners
li x16, 0x80000001 # initialize rs1
xori x9, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 660)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
xori x17, x18, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 664)

# Testcase cr_rs1_imm_corners
li x22, 0x80000001 # initialize rs1
xori x11, x22, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 668)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
xori x15, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
xori x24, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 676)

# Testcase cr_rs1_imm_corners
li x31, 0x80000001 # initialize rs1
xori x24, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001 # initialize rs1
xori x1, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 684)

# Testcase cr_rs1_imm_corners
li x24, 0x80000001 # initialize rs1
xori x28, x24, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001 # initialize rs1
xori x23, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 692)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
xori x8, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_imm_corners
li x18, 0x80000001 # initialize rs1
xori x11, x18, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 700)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffff # initialize rs1
xori x18, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 704)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffff # initialize rs1
xori x23, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 708)

# Testcase cr_rs1_imm_corners
li x28, 0x7fffffff # initialize rs1
xori x27, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffff # initialize rs1
xori x5, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 716)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffff # initialize rs1
xori x18, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
xori x25, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffff # initialize rs1
xori x16, x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 728)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffff # initialize rs1
xori x19, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 732)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffff # initialize rs1
xori x12, x7, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffff # initialize rs1
xori x12, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 740)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffff # initialize rs1
xori x7, x27, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff # initialize rs1
xori x24, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 748)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
xori x12, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 752)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffff # initialize rs1
xori x31, x25, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 756)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffff # initialize rs1
xori x29, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
xori x25, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 764)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffff # initialize rs1
xori x7, x9, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 768)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
xori x28, x3, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 772)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffff # initialize rs1
xori x10, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffff # initialize rs1
xori x27, x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 780)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffe # initialize rs1
xori x29, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe # initialize rs1
xori x2, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 788)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffe # initialize rs1
xori x29, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe # initialize rs1
xori x23, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 796)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffe # initialize rs1
xori x27, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffe # initialize rs1
xori x26, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 804)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe # initialize rs1
xori x28, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe # initialize rs1
xori x8, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 812)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe # initialize rs1
xori x21, x7, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe # initialize rs1
xori x2, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 820)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffe # initialize rs1
xori x21, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 824)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffe # initialize rs1
xori x30, x16, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 828)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe # initialize rs1
xori x22, x3, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffe # initialize rs1
xori x19, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 836)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
xori x6, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe # initialize rs1
xori x15, x9, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 844)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe # initialize rs1
xori x3, x10, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffe # initialize rs1
xori x26, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 852)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
xori x7, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffe # initialize rs1
xori x18, x1, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 860)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
xori x11, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff # initialize rs1
xori x20, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 868)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffff # initialize rs1
xori x9, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 872)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffff # initialize rs1
xori x31, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 876)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
xori x11, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
xori x9, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 884)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff # initialize rs1
xori x7, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 888)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffff # initialize rs1
xori x22, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 892)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
xori x22, x30, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rs1
xori x28, x9, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 900)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffff # initialize rs1
xori x13, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 904)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff # initialize rs1
xori x30, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 908)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffff # initialize rs1
xori x5, x29, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 912)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffff # initialize rs1
xori x24, x7, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 916)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
xori x25, x26, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
xori x27, x21, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 924)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff # initialize rs1
xori x11, x10, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffff # initialize rs1
xori x5, x25, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 932)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffff # initialize rs1
xori x6, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
xori x15, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 940)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffe # initialize rs1
xori x14, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffe # initialize rs1
xori x25, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 948)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffe # initialize rs1
xori x26, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffe # initialize rs1
xori x21, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 956)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rs1
xori x5, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffe # initialize rs1
xori x6, x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 964)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffe # initialize rs1
xori x19, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffe # initialize rs1
xori x28, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 972)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffe # initialize rs1
xori x6, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffe # initialize rs1
xori x30, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 980)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
xori x25, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rs1
xori x11, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 988)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffe # initialize rs1
xori x2, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
xori x11, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 996)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
xori x8, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1000)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffe # initialize rs1
xori x15, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1004)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
xori x14, x24, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe # initialize rs1
xori x22, x26, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1012)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffe # initialize rs1
xori x8, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffe # initialize rs1
xori x31, x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1020)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc8872 # initialize rs1
xori x23, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872 # initialize rs1
xori x16, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1028)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
xori x23, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc8872 # initialize rs1
xori x3, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1036)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872 # initialize rs1
xori x7, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc8872 # initialize rs1
xori x18, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1044)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
xori x30, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc8872 # initialize rs1
xori x6, x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1052)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc8872 # initialize rs1
xori x17, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc8872 # initialize rs1
xori x31, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1060)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
xori x25, x29, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872 # initialize rs1
xori x17, x13, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1068)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc8872 # initialize rs1
xori x20, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc8872 # initialize rs1
xori x24, x1, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1076)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc8872 # initialize rs1
xori x11, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc8872 # initialize rs1
xori x6, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1084)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872 # initialize rs1
xori x14, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc8872 # initialize rs1
xori x16, x26, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1092)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872 # initialize rs1
xori x31, x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc8872 # initialize rs1
xori x20, x7, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1100)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
xori x5, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
xori x12, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1108)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rs1
xori x21, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
xori x2, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1116)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaa # initialize rs1
xori x12, x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rs1
xori x11, x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaa # initialize rs1
xori x2, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa # initialize rs1
xori x5, x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaa # initialize rs1
xori x27, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaa # initialize rs1
xori x9, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1140)

# Testcase cr_rs1_imm_corners
li x23, 0xaaaaaaaa # initialize rs1
xori x30, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaa # initialize rs1
xori x14, x20, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1148)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaa # initialize rs1
xori x16, x29, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rs1
xori x26, x13, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1156)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaa # initialize rs1
xori x26, x2, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaa # initialize rs1
xori x26, x27, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1164)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaa # initialize rs1
xori x12, x25, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1168)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaa # initialize rs1
xori x20, x17, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1172)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
xori x5, x31, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1176)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaa # initialize rs1
xori x28, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1180)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555 # initialize rs1
xori x7, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1184)

# Testcase cr_rs1_imm_corners
li x7, 0x55555555 # initialize rs1
xori x18, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1188)

# Testcase cr_rs1_imm_corners
li x19, 0x55555555 # initialize rs1
xori x6, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_imm_corners
li x11, 0x55555555 # initialize rs1
xori x20, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1196)

# Testcase cr_rs1_imm_corners
li x5, 0x55555555 # initialize rs1
xori x20, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_imm_corners
li x7, 0x55555555 # initialize rs1
xori x24, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1204)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
xori x7, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1208)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
xori x27, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1212)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555 # initialize rs1
xori x26, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_imm_corners
li x18, 0x55555555 # initialize rs1
xori x16, x18, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1220)

# Testcase cr_rs1_imm_corners
li x24, 0x55555555 # initialize rs1
xori x20, x24, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_imm_corners
li x31, 0x55555555 # initialize rs1
xori x5, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1228)

# Testcase cr_rs1_imm_corners
li x23, 0x55555555 # initialize rs1
xori x29, x23, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
xori x11, x25, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1236)

# Testcase cr_rs1_imm_corners
li x7, 0x55555555 # initialize rs1
xori x22, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_imm_corners
li x16, 0x55555555 # initialize rs1
xori x28, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1244)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rs1
xori x6, x15, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_imm_corners
li x3, 0x55555555 # initialize rs1
xori x2, x3, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1252)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
xori x16, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rs1
xori x2, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x2fe1bb94 # initialize rs1
xori x0, x0, 81 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9f2ad56f # initialize rs1
xori x1, x1, 1559 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2b8478d0 # initialize rs1
xori x2, x2, 1668 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xac57e129 # initialize rs1
xori x3, x3, 1563 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5ba85008 # initialize rs1
xori x4, x4, -346 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x507de1b0 # initialize rs1
xori x5, x5, 973 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9b1c9daa # initialize rs1
xori x6, x6, -670 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x25fd3dae # initialize rs1
xori x7, x7, -582 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x88bbf1be # initialize rs1
xori x8, x8, -1387 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf17233df # initialize rs1
xori x9, x9, 1457 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2a4730ef # initialize rs1
xori x10, x10, 1277 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x53e85abf # initialize rs1
xori x11, x11, -1192 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x61857ff8 # initialize rs1
xori x12, x12, -802 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x65978a6f # initialize rs1
xori x13, x13, -1370 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0856d785 # initialize rs1
xori x14, x14, -735 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2e4b4d9f # initialize rs1
xori x15, x15, -1522 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd00f743f # initialize rs1
xori x16, x16, -969 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xab65686a # initialize rs1
xori x17, x17, 1823 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xae6b156e # initialize rs1
xori x18, x18, 1180 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x44a0df03 # initialize rs1
xori x19, x19, 738 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x51aea9c4 # initialize rs1
xori x20, x20, 1461 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x680366db # initialize rs1
xori x21, x21, 655 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x873a285f # initialize rs1
xori x22, x22, 948 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4127e422 # initialize rs1
xori x23, x23, -1533 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0e0cb605 # initialize rs1
xori x24, x24, 409 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xeafd1ea6 # initialize rs1
xori x25, x25, 696 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8a1b44a9 # initialize rs1
xori x26, x26, 1282 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x05061ffa # initialize rs1
xori x27, x27, 726 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe56f5f28 # initialize rs1
xori x28, x28, -701 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa3c7af92 # initialize rs1
xori x29, x29, 1139 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x213f9fd8 # initialize rs1
xori x30, x30, -813 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc8cedb1b # initialize rs1
xori x31, x31, -1165 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1388)

# Testcase cp_imm_corners
li x1, 0xd8cc99c8 # initialize rs1
xori x8, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1392)

# Testcase cp_imm_corners
li x6, 0x3db66c54 # initialize rs1
xori x20, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1396)

# Testcase cp_imm_corners
li x20, 0x2a3e64ef # initialize rs1
xori x14, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cp_imm_corners
li x24, 0x55c787e0 # initialize rs1
xori x15, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1404)

# Testcase cp_imm_corners
li x2, 0x26c23181 # initialize rs1
xori x9, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cp_imm_corners
li x11, 0xb84d7ea9 # initialize rs1
xori x16, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1412)

# Testcase cp_imm_corners
li x25, 0x4df2f427 # initialize rs1
xori x20, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1416)

# Testcase cp_imm_corners
li x23, 0x040be198 # initialize rs1
xori x30, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1420)

# Testcase cp_imm_corners
li x19, 0x8ea5d8b1 # initialize rs1
xori x20, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cp_imm_corners
li x3, 0x3bd83b63 # initialize rs1
xori x10, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1428)

# Testcase cp_imm_corners
li x14, 0x48d70fee # initialize rs1
xori x23, x14, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1432)

# Testcase cp_imm_corners
li x29, 0xe809edbf # initialize rs1
xori x26, x29, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1436)

# Testcase cp_imm_corners
li x30, 0x65abaaee # initialize rs1
xori x9, x30, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cp_imm_corners
li x27, 0xaa70eb9c # initialize rs1
xori x24, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1444)

# Testcase cp_imm_corners
li x30, 0xae52d542 # initialize rs1
xori x24, x30, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cp_imm_corners
li x28, 0xf2f38775 # initialize rs1
xori x15, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1452)

# Testcase cp_imm_corners
li x3, 0xf952b940 # initialize rs1
xori x9, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cp_imm_corners
li x18, 0x73e57e5f # initialize rs1
xori x5, x18, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1460)

# Testcase cp_imm_corners
li x23, 0xb1fdb284 # initialize rs1
xori x14, x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1464)

# Testcase cp_imm_corners
li x28, 0xfd5d80ac # initialize rs1
xori x19, x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1468)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x19, x10 # perform first operation
xori x31, x14, -1692 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x18, x30 # perform first operation
xori x13, x26, -760 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x17, x7 # perform first operation
xori x9, x20, -447 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x25, x10 # perform first operation
xori x25, x21, -1316 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x5, x9 # perform first operation
xori x9, x24, -1532 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x22, x1 # perform first operation
xori x22, x19, 1802 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x31, x26 # perform first operation
xori x22, x2, -595 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x6, x17 # perform first operation
xori x3, x16, 1159 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x1, x19 # perform first operation
xori x16, x15, -1284 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x24, x7 # perform first operation
xori x24, x1, -1535 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x9, x17 # perform first operation
xori x17, x8, -412 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x21, x11 # perform first operation
xori x23, x28, -351 # perform second (triggering) operation

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
