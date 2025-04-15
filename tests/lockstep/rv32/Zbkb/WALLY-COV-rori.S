///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-rori.S
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
li x0, 0x6adf7c1e # initialize rs1
rori x22, x0, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2694ab0f # initialize rs1
rori x24, x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x6cb8e602 # initialize rs1
rori x18, x2, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x695d3427 # initialize rs1
rori x5, x3, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xeb9a42eb # initialize rs1
rori x17, x4, 20 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc43b36ca # initialize rs1
rori x6, x5, 23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x13e4ae47 # initialize rs1
rori x9, x6, 1 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa8f10089 # initialize rs1
rori x11, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb756d657 # initialize rs1
rori x3, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x695f4971 # initialize rs1
rori x2, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x5571727a # initialize rs1
rori x21, x10, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb1c52749 # initialize rs1
rori x25, x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc0bf72da # initialize rs1
rori x23, x12, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfc37579a # initialize rs1
rori x8, x13, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x13b4d4f0 # initialize rs1
rori x16, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x425d03fa # initialize rs1
rori x6, x15, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1fa905e0 # initialize rs1
rori x15, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd60e68e7 # initialize rs1
rori x7, x17, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x484cae4f # initialize rs1
rori x12, x18, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x01c070fb # initialize rs1
rori x17, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x5a456539 # initialize rs1
rori x12, x20, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xa57a7c2c # initialize rs1
rori x11, x21, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x98592b85 # initialize rs1
rori x12, x22, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb0d28de6 # initialize rs1
rori x1, x23, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdeacb42c # initialize rs1
rori x11, x24, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcb321293 # initialize rs1
rori x14, x25, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4a5e3984 # initialize rs1
rori x24, x26, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x92d6e3a5 # initialize rs1
rori x31, x27, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x86b603ec # initialize rs1
rori x6, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcec18a2e # initialize rs1
rori x2, x29, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5c51ce43 # initialize rs1
rori x26, x30, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe7603c0b # initialize rs1
rori x6, x31, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x1dff7d03 # initialize rs1
rori x0, x17, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0xa77c2f7f # initialize rs1
rori x1, x27, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x659a3724 # initialize rs1
rori x2, x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x3812d5e0 # initialize rs1
rori x3, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x3dbd1991 # initialize rs1
rori x4, x3, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x5862694e # initialize rs1
rori x5, x29, 26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xde9689d4 # initialize rs1
rori x6, x15, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x6992d444 # initialize rs1
rori x7, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0x8120f11b # initialize rs1
rori x8, x16, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x1f49f6b2 # initialize rs1
rori x9, x23, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x20a8b8da # initialize rs1
rori x10, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0xdb856647 # initialize rs1
rori x11, x22, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xb3d4e280 # initialize rs1
rori x12, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0xc2c41658 # initialize rs1
rori x13, x26, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0a35f22e # initialize rs1
rori x14, x14, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0x0c58f27e # initialize rs1
rori x15, x26, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x1254415a # initialize rs1
rori x16, x14, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x26cded5a # initialize rs1
rori x17, x23, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0xaeb7053c # initialize rs1
rori x18, x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x6a9a25c3 # initialize rs1
rori x19, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x29, 0x47c94579 # initialize rs1
rori x20, x29, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xcebc1390 # initialize rs1
rori x21, x21, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0xd639c296 # initialize rs1
rori x22, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0xbd1c3cea # initialize rs1
rori x23, x31, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0xbabb620e # initialize rs1
rori x24, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x9a7e7894 # initialize rs1
rori x25, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x23, 0xafd3fcbd # initialize rs1
rori x26, x23, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x41e13f00 # initialize rs1
rori x27, x18, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x8e617256 # initialize rs1
rori x28, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0x270c4fbb # initialize rs1
rori x29, x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0x26376a71 # initialize rs1
rori x30, x27, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0x692e5e6f # initialize rs1
rori x31, x22, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x00000000 # initialize rs1
rori x28, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x00000001 # initialize rs1
rori x17, x23, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x00000002 # initialize rs1
rori x20, x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rs1
rori x12, x14, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x5, 0x80000001 # initialize rs1
rori x24, x5, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
rori x21, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
rori x18, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0xffffffff # initialize rs1
rori x18, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
rori x10, x19, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
rori x25, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x16, 0xaaaaaaaa # initialize rs1
rori x31, x16, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x13, 0x55555555 # initialize rs1
rori x6, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x30a74aa0 # initialize rs1
rori x0, x0, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5fdfcd08 # initialize rs1
rori x1, x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1f62c90c # initialize rs1
rori x2, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6bf2945d # initialize rs1
rori x3, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd4ac3633 # initialize rs1
rori x4, x4, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x03fcdeeb # initialize rs1
rori x5, x5, 4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe1e189a7 # initialize rs1
rori x6, x6, 24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x651410c9 # initialize rs1
rori x7, x7, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd79f0d50 # initialize rs1
rori x8, x8, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xcadd9e7d # initialize rs1
rori x9, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x74c2fbdb # initialize rs1
rori x10, x10, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbfcb74f7 # initialize rs1
rori x11, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7494d27c # initialize rs1
rori x12, x12, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9f2f68bd # initialize rs1
rori x13, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x99bf4b44 # initialize rs1
rori x14, x14, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x983dd409 # initialize rs1
rori x15, x15, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x325e02f3 # initialize rs1
rori x16, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb4eb739b # initialize rs1
rori x17, x17, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x49802825 # initialize rs1
rori x18, x18, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0e60642a # initialize rs1
rori x19, x19, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5b5a235f # initialize rs1
rori x20, x20, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8cae2861 # initialize rs1
rori x21, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc23e4d28 # initialize rs1
rori x22, x22, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x42bf3719 # initialize rs1
rori x23, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc0aafb10 # initialize rs1
rori x24, x24, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5621f0f7 # initialize rs1
rori x25, x25, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3ed8dd83 # initialize rs1
rori x26, x26, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xbb849d24 # initialize rs1
rori x27, x27, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xce0f14a9 # initialize rs1
rori x28, x28, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x7ab21670 # initialize rs1
rori x29, x29, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf35b2b31 # initialize rs1
rori x30, x30, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2cf1e8e4 # initialize rs1
rori x31, x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x28, 0x79f184dd # initialize rs1
rori x8, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_uimm (Test bit = 1)
li x11, 0x438de974 # initialize rs1
rori x23, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_uimm (Test bit = 2)
li x5, 0xef59086a # initialize rs1
rori x23, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_uimm (Test bit = 3)
li x17, 0x09afbbbd # initialize rs1
rori x14, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 444)

# Testcase cp_uimm (Test bit = 4)
li x18, 0x078f6b70 # initialize rs1
rori x23, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cp_uimm (Test bit = 5)
li x30, 0x791246b4 # initialize rs1
rori x10, x30, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 452)

# Testcase cp_uimm (Test bit = 6)
li x19, 0x77993e4b # initialize rs1
rori x15, x19, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_uimm (Test bit = 7)
li x14, 0x9a2265d7 # initialize rs1
rori x6, x14, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 460)

# Testcase cp_uimm (Test bit = 8)
li x20, 0xe1a8b725 # initialize rs1
rori x5, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cp_uimm (Test bit = 9)
li x21, 0x131ec3a0 # initialize rs1
rori x15, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 468)

# Testcase cp_uimm (Test bit = 10)
li x5, 0xaff165c9 # initialize rs1
rori x10, x5, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_uimm (Test bit = 11)
li x3, 0x9c1dd822 # initialize rs1
rori x12, x3, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cp_uimm (Test bit = 12)
li x23, 0x9c54ee41 # initialize rs1
rori x7, x23, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cp_uimm (Test bit = 13)
li x30, 0xdd5b88a9 # initialize rs1
rori x12, x30, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 484)

# Testcase cp_uimm (Test bit = 14)
li x20, 0xf766be59 # initialize rs1
rori x6, x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cp_uimm (Test bit = 15)
li x11, 0x2f20fe67 # initialize rs1
rori x20, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 492)

# Testcase cp_uimm (Test bit = 16)
li x16, 0xb1fcfae3 # initialize rs1
rori x9, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_uimm (Test bit = 17)
li x1, 0x5ef60671 # initialize rs1
rori x15, x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 500)

# Testcase cp_uimm (Test bit = 18)
li x8, 0x00264013 # initialize rs1
rori x24, x8, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cp_uimm (Test bit = 19)
li x30, 0x079eeb05 # initialize rs1
rori x8, x30, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 508)

# Testcase cp_uimm (Test bit = 20)
li x5, 0x8a6adb89 # initialize rs1
rori x27, x5, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cp_uimm (Test bit = 21)
li x3, 0xbfd085e5 # initialize rs1
rori x2, x3, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 516)

# Testcase cp_uimm (Test bit = 22)
li x30, 0x847e7a43 # initialize rs1
rori x13, x30, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 520)

# Testcase cp_uimm (Test bit = 23)
li x21, 0xe3d16d05 # initialize rs1
rori x20, x21, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 524)

# Testcase cp_uimm (Test bit = 24)
li x17, 0xcc89a3f9 # initialize rs1
rori x30, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cp_uimm (Test bit = 25)
li x21, 0x74c5756c # initialize rs1
rori x29, x21, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 532)

# Testcase cp_uimm (Test bit = 26)
li x31, 0x0b1b9f41 # initialize rs1
rori x10, x31, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cp_uimm (Test bit = 27)
li x5, 0xd7be0e15 # initialize rs1
rori x7, x5, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 540)

# Testcase cp_uimm (Test bit = 28)
li x18, 0x9a46bfa3 # initialize rs1
rori x2, x18, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_uimm (Test bit = 29)
li x30, 0x2eb24e8c # initialize rs1
rori x26, x30, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 548)

# Testcase cp_uimm (Test bit = 30)
li x31, 0x5342a140 # initialize rs1
rori x6, x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 552)

# Testcase cp_uimm (Test bit = 31)
li x2, 0xb6789e6f # initialize rs1
rori x21, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x10, x21 # perform first operation
rori x17, x13, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x21, x10 # perform first operation
rori x15, x13, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x13, x16 # perform first operation
rori x8, x5, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x26, x11 # perform first operation
rori x11, x30, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x13, x30 # perform first operation
rori x13, x10, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x23, x7 # perform first operation
rori x5, x11, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x10, x23 # perform first operation
rori x14, x3, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x30, x21 # perform first operation
rori x16, x10, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x23, x12 # perform first operation
rori x21, x11, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x3, x19 # perform first operation
rori x3, x10, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x21, x25 # perform first operation
rori x25, x24, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x12, x8 # perform first operation
rori x23, x7, 19 # perform second (triggering) operation

.EQU SIGSIZE,560


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
