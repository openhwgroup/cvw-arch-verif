///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-zext.h.S
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
li x0, 0x7c3b05f2 # initialize rs1
zext.h x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x69a45e44 # initialize rs1
zext.h x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x28a7e73f # initialize rs1
zext.h x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5ac9dd45 # initialize rs1
zext.h x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2fcea843 # initialize rs1
zext.h x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8657a16b # initialize rs1
zext.h x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6895681f # initialize rs1
zext.h x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc6f258d0 # initialize rs1
zext.h x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe57b14bd # initialize rs1
zext.h x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0ad68e86 # initialize rs1
zext.h x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x26a00617 # initialize rs1
zext.h x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x627ae749 # initialize rs1
zext.h x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3ba5a102 # initialize rs1
zext.h x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5f196234 # initialize rs1
zext.h x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x94181413 # initialize rs1
zext.h x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x3f1d002d # initialize rs1
zext.h x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb52c755b # initialize rs1
zext.h x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd9848599 # initialize rs1
zext.h x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x3107a895 # initialize rs1
zext.h x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x579df327 # initialize rs1
zext.h x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcb2a09ff # initialize rs1
zext.h x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb9715ec7 # initialize rs1
zext.h x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x73f6ab09 # initialize rs1
zext.h x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x8107f488 # initialize rs1
zext.h x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x334525b2 # initialize rs1
zext.h x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf6493eb8 # initialize rs1
zext.h x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7d8d59c6 # initialize rs1
zext.h x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x908cbf2b # initialize rs1
zext.h x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9219a3d7 # initialize rs1
zext.h x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2d951f4d # initialize rs1
zext.h x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5bfff961 # initialize rs1
zext.h x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf31a7815 # initialize rs1
zext.h x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 124)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0xb36a18bc # initialize rs1
zext.h x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0xed9ade3b # initialize rs1
zext.h x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x1cc9794d # initialize rs1
zext.h x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0xc7a41dfc # initialize rs1
zext.h x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x8f07c5b1 # initialize rs1
zext.h x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xbfb3bef8 # initialize rs1
zext.h x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x92a8aa85 # initialize rs1
zext.h x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x002880f4 # initialize rs1
zext.h x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x18d5bcea # initialize rs1
zext.h x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x79f0570e # initialize rs1
zext.h x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x81291e6c # initialize rs1
zext.h x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0x7592ff20 # initialize rs1
zext.h x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x989a2cf8 # initialize rs1
zext.h x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0xd595e87b # initialize rs1
zext.h x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0xd5e74afc # initialize rs1
zext.h x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0x0a3dede7 # initialize rs1
zext.h x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xb3b04063 # initialize rs1
zext.h x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x5d7a1a80 # initialize rs1
zext.h x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x84c76455 # initialize rs1
zext.h x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0x9909d701 # initialize rs1
zext.h x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x02bf4d8b # initialize rs1
zext.h x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x18, 0xdc58322e # initialize rs1
zext.h x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0xc53ef4bd # initialize rs1
zext.h x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x4c62264c # initialize rs1
zext.h x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0x02a6b3d9 # initialize rs1
zext.h x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x31, 0x5ea919e9 # initialize rs1
zext.h x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0x735783ee # initialize rs1
zext.h x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x814a99ad # initialize rs1
zext.h x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0x235fff00 # initialize rs1
zext.h x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x14, 0xb2f1e880 # initialize rs1
zext.h x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0xa62d23d2 # initialize rs1
zext.h x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x1be6e2d4 # initialize rs1
zext.h x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x00000000 # initialize rs1
zext.h x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
zext.h x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x00000002 # initialize rs1
zext.h x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x24, 0x80000000 # initialize rs1
zext.h x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x80000001 # initialize rs1
zext.h x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x23, 0x7fffffff # initialize rs1
zext.h x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
zext.h x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0xffffffff # initialize rs1
zext.h x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
zext.h x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
zext.h x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x16, 0xaaaaaaaa # initialize rs1
zext.h x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x18, 0x55555555 # initialize rs1
zext.h x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x39b2a6aa # initialize rs1
zext.h x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x416f6054 # initialize rs1
zext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x05ed0663 # initialize rs1
zext.h x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x746b394b # initialize rs1
zext.h x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6c3af5ea # initialize rs1
zext.h x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x09dba1a4 # initialize rs1
zext.h x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x457cb368 # initialize rs1
zext.h x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4bbd6cf2 # initialize rs1
zext.h x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf1e18260 # initialize rs1
zext.h x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x6379bb66 # initialize rs1
zext.h x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd8ee785e # initialize rs1
zext.h x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0f69de6f # initialize rs1
zext.h x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8651e6ec # initialize rs1
zext.h x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x85d6caae # initialize rs1
zext.h x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9b3dca5c # initialize rs1
zext.h x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9b6a7a44 # initialize rs1
zext.h x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd8860bf7 # initialize rs1
zext.h x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x25485d45 # initialize rs1
zext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xed97577d # initialize rs1
zext.h x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3ed4e765 # initialize rs1
zext.h x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe70caca0 # initialize rs1
zext.h x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf5907fcd # initialize rs1
zext.h x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x321b6f51 # initialize rs1
zext.h x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdb6faa08 # initialize rs1
zext.h x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xeff3dc5f # initialize rs1
zext.h x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2a0d0d1b # initialize rs1
zext.h x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x88dcfe3f # initialize rs1
zext.h x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x72a9cdb0 # initialize rs1
zext.h x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa3a9b9e1 # initialize rs1
zext.h x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5c133dea # initialize rs1
zext.h x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9eed3cfe # initialize rs1
zext.h x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0a3848fe # initialize rs1
zext.h x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x17, x22 # perform first operation
zext.h x18, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x29, x2 # perform first operation
zext.h x22, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x25, x20 # perform first operation
zext.h x14, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x8, x26 # perform first operation
zext.h x11, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x21, x11 # perform first operation
zext.h x11, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x22, x28 # perform first operation
zext.h x1, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x1, x19 # perform first operation
zext.h x12, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x25, x27 # perform first operation
zext.h x26, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x30, x10 # perform first operation
zext.h x29, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x21, x30 # perform first operation
zext.h x21, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x31, x6 # perform first operation
zext.h x6, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x15, x28 # perform first operation
zext.h x27, x7 # perform second (triggering) operation

.EQU SIGSIZE,432


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
