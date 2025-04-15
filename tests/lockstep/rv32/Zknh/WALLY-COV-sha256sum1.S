///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha256sum1.S
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
li x0, 0xaefbcc24 # initialize rs1
sha256sum1 x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xce4ad971 # initialize rs1
sha256sum1 x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb58582cd # initialize rs1
sha256sum1 x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc41c0684 # initialize rs1
sha256sum1 x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x663f0a2a # initialize rs1
sha256sum1 x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8a26e7cc # initialize rs1
sha256sum1 x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb7dada0b # initialize rs1
sha256sum1 x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x59293862 # initialize rs1
sha256sum1 x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x968034ed # initialize rs1
sha256sum1 x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x80d1ef03 # initialize rs1
sha256sum1 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x569d6315 # initialize rs1
sha256sum1 x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x9138f018 # initialize rs1
sha256sum1 x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6dc62f32 # initialize rs1
sha256sum1 x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xac55ff2d # initialize rs1
sha256sum1 x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0db01c38 # initialize rs1
sha256sum1 x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0e9ff120 # initialize rs1
sha256sum1 x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xbc62b69d # initialize rs1
sha256sum1 x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd508d21e # initialize rs1
sha256sum1 x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa910e7bf # initialize rs1
sha256sum1 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe4393482 # initialize rs1
sha256sum1 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xac09b111 # initialize rs1
sha256sum1 x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8361acc5 # initialize rs1
sha256sum1 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0845d4d1 # initialize rs1
sha256sum1 x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xdb357131 # initialize rs1
sha256sum1 x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe9ac0381 # initialize rs1
sha256sum1 x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6047e50d # initialize rs1
sha256sum1 x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfe567368 # initialize rs1
sha256sum1 x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x277bb7dc # initialize rs1
sha256sum1 x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe8924745 # initialize rs1
sha256sum1 x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe2a07c1b # initialize rs1
sha256sum1 x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1fbe09c4 # initialize rs1
sha256sum1 x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x15106393 # initialize rs1
sha256sum1 x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0xfef577c5 # initialize rs1
sha256sum1 x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x7c132047 # initialize rs1
sha256sum1 x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xcacc26b0 # initialize rs1
sha256sum1 x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0x7620eb95 # initialize rs1
sha256sum1 x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x875d492b # initialize rs1
sha256sum1 x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xc943211f # initialize rs1
sha256sum1 x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xc7112497 # initialize rs1
sha256sum1 x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xe181231e # initialize rs1
sha256sum1 x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x86f0b3d1 # initialize rs1
sha256sum1 x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x8ebb3447 # initialize rs1
sha256sum1 x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x202a6532 # initialize rs1
sha256sum1 x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x6501d73d # initialize rs1
sha256sum1 x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x797d3ed2 # initialize rs1
sha256sum1 x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x7883ab4c # initialize rs1
sha256sum1 x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x95cedfa2 # initialize rs1
sha256sum1 x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x1d81d953 # initialize rs1
sha256sum1 x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xc514750b # initialize rs1
sha256sum1 x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x6c40c252 # initialize rs1
sha256sum1 x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x6, 0x3d10a5d1 # initialize rs1
sha256sum1 x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x25, 0x4c9a55b2 # initialize rs1
sha256sum1 x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x2ba1e698 # initialize rs1
sha256sum1 x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x13, 0x7461fefa # initialize rs1
sha256sum1 x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x7af24b75 # initialize rs1
sha256sum1 x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0xdeb74e98 # initialize rs1
sha256sum1 x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0xa8ca45a1 # initialize rs1
sha256sum1 x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x8, 0xbe42f58e # initialize rs1
sha256sum1 x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0xb13dabf4 # initialize rs1
sha256sum1 x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0x7b608642 # initialize rs1
sha256sum1 x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0xa8125058 # initialize rs1
sha256sum1 x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x0238d5d2 # initialize rs1
sha256sum1 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0x820101a6 # initialize rs1
sha256sum1 x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0x4feb294d # initialize rs1
sha256sum1 x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x00000000 # initialize rs1
sha256sum1 x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x00000001 # initialize rs1
sha256sum1 x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x00000002 # initialize rs1
sha256sum1 x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
sha256sum1 x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0x80000001 # initialize rs1
sha256sum1 x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
sha256sum1 x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
sha256sum1 x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xffffffff # initialize rs1
sha256sum1 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0xfffffffe # initialize rs1
sha256sum1 x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x21, 0x5bbc8872 # initialize rs1
sha256sum1 x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
sha256sum1 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x55555555 # initialize rs1
sha256sum1 x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x36e26366 # initialize rs1
sha256sum1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xaca4bdef # initialize rs1
sha256sum1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6f307d91 # initialize rs1
sha256sum1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x335b0ccd # initialize rs1
sha256sum1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb04a1fde # initialize rs1
sha256sum1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb9a395e2 # initialize rs1
sha256sum1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc20b0c45 # initialize rs1
sha256sum1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8635ff6d # initialize rs1
sha256sum1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcc77a8f5 # initialize rs1
sha256sum1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x99827908 # initialize rs1
sha256sum1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xcfd3cdce # initialize rs1
sha256sum1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x66f42a48 # initialize rs1
sha256sum1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8f2930ea # initialize rs1
sha256sum1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x863f5146 # initialize rs1
sha256sum1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc49ac067 # initialize rs1
sha256sum1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x466f1091 # initialize rs1
sha256sum1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x35da0de1 # initialize rs1
sha256sum1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1930ecbe # initialize rs1
sha256sum1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xcc0a607b # initialize rs1
sha256sum1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc8a4860b # initialize rs1
sha256sum1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xba7ae206 # initialize rs1
sha256sum1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x12dbdcc9 # initialize rs1
sha256sum1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xdd45325d # initialize rs1
sha256sum1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xaa71d386 # initialize rs1
sha256sum1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe1eb8e35 # initialize rs1
sha256sum1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4741a82c # initialize rs1
sha256sum1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2b4fae84 # initialize rs1
sha256sum1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x58ec0ea6 # initialize rs1
sha256sum1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc66801d2 # initialize rs1
sha256sum1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdf3537fa # initialize rs1
sha256sum1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe20862d4 # initialize rs1
sha256sum1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc07f2f9c # initialize rs1
sha256sum1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x30 # perform first operation
sha256sum1 x13, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x25, x16 # perform first operation
sha256sum1 x8, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x11, x7 # perform first operation
sha256sum1 x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x1, x14 # perform first operation
sha256sum1 x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x10, x29 # perform first operation
sha256sum1 x10, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x18, x26 # perform first operation
sha256sum1 x18, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x30 # perform first operation
sha256sum1 x18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x16, x5 # perform first operation
sha256sum1 x3, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x21, x22 # perform first operation
sha256sum1 x2, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x10, x25 # perform first operation
sha256sum1 x10, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x22, x28 # perform first operation
sha256sum1 x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x12, x31 # perform first operation
sha256sum1 x19, x10 # perform second (triggering) operation

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
