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
// Tests from: WALLY-COV-clz.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x858cabe9 # initialize rs1
clz x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x90f52413 # initialize rs1
clz x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x749769e0 # initialize rs1
clz x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x901f491b # initialize rs1
clz x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x40237b03 # initialize rs1
clz x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcde1176d # initialize rs1
clz x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x98241973 # initialize rs1
clz x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x88f0eefa # initialize rs1
clz x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x5d64f66d # initialize rs1
clz x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2168b2b3 # initialize rs1
clz x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9beee8eb # initialize rs1
clz x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x047041de # initialize rs1
clz x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe2607677 # initialize rs1
clz x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x03df1104 # initialize rs1
clz x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xdc072be1 # initialize rs1
clz x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x14243288 # initialize rs1
clz x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb8947ce0 # initialize rs1
clz x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x592bd3fd # initialize rs1
clz x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5c73eb85 # initialize rs1
clz x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc19198ce # initialize rs1
clz x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x86da1ef1 # initialize rs1
clz x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2d742b21 # initialize rs1
clz x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd98c7dbe # initialize rs1
clz x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x062e6fa6 # initialize rs1
clz x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe3141d9f # initialize rs1
clz x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x4960bcb1 # initialize rs1
clz x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd8d5d5cf # initialize rs1
clz x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x78ec5891 # initialize rs1
clz x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x01bc2f12 # initialize rs1
clz x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc0b8883e # initialize rs1
clz x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x91643319 # initialize rs1
clz x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x48c1592d # initialize rs1
clz x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 124)

# Testcase cp_rd (Test destination rd = x0)
li x13, 0x747e95ac # initialize rs1
clz x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0xb665fc52 # initialize rs1
clz x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xb048b31d # initialize rs1
clz x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x3ce21804 # initialize rs1
clz x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x4fb483ec # initialize rs1
clz x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x134ebc1b # initialize rs1
clz x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x704e87f6 # initialize rs1
clz x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xaa94503d # initialize rs1
clz x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0xd73525f4 # initialize rs1
clz x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x667e99c0 # initialize rs1
clz x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0xd12db5e8 # initialize rs1
clz x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xa95b2513 # initialize rs1
clz x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x3bb80f38 # initialize rs1
clz x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0x76c9c037 # initialize rs1
clz x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x5f9b1a9a # initialize rs1
clz x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0xa3083615 # initialize rs1
clz x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0xf2559fea # initialize rs1
clz x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0xe379253a # initialize rs1
clz x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0xe2e4b450 # initialize rs1
clz x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0x9880584d # initialize rs1
clz x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0xffbaa480 # initialize rs1
clz x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0x359c316e # initialize rs1
clz x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0x8bd88926 # initialize rs1
clz x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0xfa0537d4 # initialize rs1
clz x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5f9526d1 # initialize rs1
clz x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0x40272e41 # initialize rs1
clz x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0x0ee1ba34 # initialize rs1
clz x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x31, 0x2a2557fe # initialize rs1
clz x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x7, 0x8b84ec38 # initialize rs1
clz x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd3a62e7c # initialize rs1
clz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0x6b057538 # initialize rs1
clz x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x29, 0xdb96befb # initialize rs1
clz x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x00000000 # initialize rs1
clz x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x00000001 # initialize rs1
clz x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x00000002 # initialize rs1
clz x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x17, 0x80000000 # initialize rs1
clz x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rs1
clz x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
clz x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
clz x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xffffffff # initialize rs1
clz x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
clz x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
clz x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0xaaaaaaaa # initialize rs1
clz x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x55555555 # initialize rs1
clz x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x135ff974 # initialize rs1
clz x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5f8f4e9a # initialize rs1
clz x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x864bfa2b # initialize rs1
clz x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5bcfafe1 # initialize rs1
clz x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5fbf36ff # initialize rs1
clz x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8877149a # initialize rs1
clz x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8019ada5 # initialize rs1
clz x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc14ac9ed # initialize rs1
clz x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8a427ed2 # initialize rs1
clz x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xbb5803c7 # initialize rs1
clz x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1105a66d # initialize rs1
clz x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdcdf47c9 # initialize rs1
clz x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfb0703e8 # initialize rs1
clz x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3710dd70 # initialize rs1
clz x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9ca4ccb9 # initialize rs1
clz x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x872916d4 # initialize rs1
clz x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x68b14fcb # initialize rs1
clz x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x40fea66f # initialize rs1
clz x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xfa412e70 # initialize rs1
clz x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7689dc4c # initialize rs1
clz x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5e5fa0cc # initialize rs1
clz x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2054a81f # initialize rs1
clz x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xae8ca09b # initialize rs1
clz x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2deed41f # initialize rs1
clz x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x39f4cbde # initialize rs1
clz x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x84e34fe1 # initialize rs1
clz x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x32887990 # initialize rs1
clz x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcb0172b8 # initialize rs1
clz x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4fcc8a5a # initialize rs1
clz x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd8d71288 # initialize rs1
clz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa03437f1 # initialize rs1
clz x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb10a0dee # initialize rs1
clz x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x25, x23 # perform first operation
clz x30, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x29, x15 # perform first operation
clz x11, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x5, x29 # perform first operation
clz x11, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x9, x19 # perform first operation
clz x9, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x11, x23 # perform first operation
clz x23, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x31, x25 # perform first operation
clz x31, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x14, x25 # perform first operation
clz x20, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x31, x19 # perform first operation
clz x18, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x26, x21 # perform first operation
clz x15, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x6, x19 # perform first operation
clz x6, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x14, x8 # perform first operation
clz x8, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x25, x24 # perform first operation
clz x26, x15 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-max.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x4551a99d # initialize rs1
li x8, 0x028886a6 # initialize rs2
max x11, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfd1bfdde # initialize rs1
li x27, 0xb9f22806 # initialize rs2
max x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x303cbeb7 # initialize rs1
li x8, 0x3a5df078 # initialize rs2
max x19, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xdf8ba5b4 # initialize rs1
li x20, 0xb637a70c # initialize rs2
max x25, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe4c79e51 # initialize rs1
li x3, 0x92e83e1a # initialize rs2
max x19, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6645f1e8 # initialize rs1
li x12, 0x37684217 # initialize rs2
max x30, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x157fcba2 # initialize rs1
li x12, 0xe42eee5b # initialize rs2
max x2, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7b838f3b # initialize rs1
li x30, 0xf7ab8025 # initialize rs2
max x1, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x22bb1cf6 # initialize rs1
li x15, 0xcb3fcfd4 # initialize rs2
max x1, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc8546d92 # initialize rs1
li x18, 0xb2937d52 # initialize rs2
max x3, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x69d49199 # initialize rs1
li x23, 0x73e55e59 # initialize rs2
max x13, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x81ad681c # initialize rs1
li x31, 0x116ce1c2 # initialize rs2
max x10, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x65ff7016 # initialize rs1
li x26, 0xf8c46175 # initialize rs2
max x1, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8a514088 # initialize rs1
li x14, 0x36ebabeb # initialize rs2
max x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9d425cfe # initialize rs1
li x8, 0xa2938350 # initialize rs2
max x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x86f40a54 # initialize rs1
li x13, 0x263e0bd9 # initialize rs2
max x23, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x13b2824b # initialize rs1
li x29, 0x3016998f # initialize rs2
max x18, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3816930d # initialize rs1
li x27, 0x0b4ca1e0 # initialize rs2
max x9, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb8712729 # initialize rs1
li x24, 0xfe7aa34e # initialize rs2
max x7, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x345444f4 # initialize rs1
li x2, 0xbdc571ca # initialize rs2
max x3, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4a2e4b75 # initialize rs1
li x31, 0xdf2808f0 # initialize rs2
max x28, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2cd35852 # initialize rs1
li x8, 0xed13f4df # initialize rs2
max x6, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x70d21f18 # initialize rs1
li x20, 0xdd16151d # initialize rs2
max x13, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2e0e0c62 # initialize rs1
li x29, 0xba6864f8 # initialize rs2
max x26, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x270af5f7 # initialize rs1
li x13, 0x0bb7d430 # initialize rs2
max x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x25250412 # initialize rs1
li x6, 0x1a237dd1 # initialize rs2
max x1, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa607c8eb # initialize rs1
li x17, 0x46a292ca # initialize rs2
max x22, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa1c1ca8f # initialize rs1
li x31, 0x075ea2c7 # initialize rs2
max x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x5bafb179 # initialize rs1
li x29, 0x25bbf151 # initialize rs2
max x11, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x886855d7 # initialize rs1
li x18, 0x72eedada # initialize rs2
max x21, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x214139f7 # initialize rs1
li x18, 0x753664a7 # initialize rs2
max x20, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbffc2ed0 # initialize rs1
li x30, 0x9a9ccc21 # initialize rs2
max x29, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x8ee79406 # initialize rs1
li x0, 0x6140b2a6 # initialize rs2
max x29, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x2bc4cb91 # initialize rs1
li x1, 0xd72d1b40 # initialize rs2
max x23, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x1a21f93f # initialize rs1
li x2, 0xdb79c343 # initialize rs2
max x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xa049e1ee # initialize rs1
li x3, 0x247d8e6f # initialize rs2
max x2, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x701c71ca # initialize rs1
li x4, 0x38dce57b # initialize rs2
max x12, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x28, 0x7f8cc3bf # initialize rs1
li x5, 0x1cc182f6 # initialize rs2
max x24, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x507cf7d7 # initialize rs1
li x6, 0x51c4401b # initialize rs2
max x9, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xc382db8f # initialize rs1
li x7, 0xf26891db # initialize rs2
max x8, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xf9cdacc4 # initialize rs1
li x8, 0x0687e219 # initialize rs2
max x17, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0xb75ff8a1 # initialize rs1
li x9, 0xc1dc9aad # initialize rs2
max x11, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x21, 0xdb912d2f # initialize rs1
li x10, 0xc6e616cf # initialize rs2
max x22, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x7e79ad78 # initialize rs1
li x11, 0xfa8ce927 # initialize rs2
max x16, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x658f8b9e # initialize rs1
li x12, 0x4d66cc89 # initialize rs2
max x23, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x470181bc # initialize rs1
li x13, 0x90599ae5 # initialize rs2
max x5, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0xe9ed93a9 # initialize rs1
li x14, 0x8bc1393a # initialize rs2
max x17, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xf78106e0 # initialize rs1
li x15, 0xe572a0e6 # initialize rs2
max x23, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0x2ac6a010 # initialize rs1
li x16, 0xa28cdb53 # initialize rs2
max x21, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x24eecaeb # initialize rs1
li x17, 0x211c9f7e # initialize rs2
max x16, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x855ddb9f # initialize rs1
li x18, 0xf2f33bdd # initialize rs2
max x12, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x0a9c829b # initialize rs1
li x19, 0x5e67b614 # initialize rs2
max x10, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x35fd3415 # initialize rs1
li x20, 0x53e4388c # initialize rs2
max x21, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0x597b45e7 # initialize rs1
li x21, 0x8d2be4bc # initialize rs2
max x28, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x26, 0x5559770f # initialize rs1
li x22, 0x93080a68 # initialize rs2
max x31, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x21068139 # initialize rs1
li x23, 0x6023c0c8 # initialize rs2
max x20, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0x83b00c14 # initialize rs1
li x24, 0x190ee00a # initialize rs2
max x15, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x22, 0x626de95d # initialize rs1
li x25, 0x81fe2480 # initialize rs2
max x28, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x064f7d2e # initialize rs1
li x26, 0x0ac73859 # initialize rs2
max x20, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x03a128c0 # initialize rs1
li x27, 0x5fc05552 # initialize rs2
max x17, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x24db9999 # initialize rs1
li x28, 0x603c73e1 # initialize rs2
max x22, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x59941db2 # initialize rs1
li x29, 0x52d9c950 # initialize rs2
max x17, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x3d0a340e # initialize rs1
li x30, 0x63373cff # initialize rs2
max x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x61886b3c # initialize rs1
li x31, 0xaec81d71 # initialize rs2
max x10, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 252)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x913185c8 # initialize rs1
li x12, 0x7916376e # initialize rs2
max x0, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x96dc70e1 # initialize rs1
li x8, 0x80606ce1 # initialize rs2
max x1, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x039ad28a # initialize rs1
li x24, 0x442568a4 # initialize rs2
max x2, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x91818553 # initialize rs1
li x24, 0x9424952b # initialize rs2
max x3, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x19fa55c5 # initialize rs1
li x24, 0x6aeed53c # initialize rs2
max x4, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x088e9fcc # initialize rs1
li x20, 0xd86f100f # initialize rs2
max x5, x11, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x7a8d0bc3 # initialize rs1
li x15, 0x00f8d6b5 # initialize rs2
max x6, x8, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x798baf0b # initialize rs1
li x25, 0x36cd89b3 # initialize rs2
max x7, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0x03e37b6a # initialize rs1
li x18, 0xc5b9c41d # initialize rs2
max x8, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x85537baa # initialize rs1
li x3, 0xea4d2177 # initialize rs2
max x9, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x17, 0x21edb57f # initialize rs1
li x16, 0x7f1f8249 # initialize rs2
max x10, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x1b9bedf9 # initialize rs1
li x12, 0x978662da # initialize rs2
max x11, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0xd73e31d8 # initialize rs1
li x14, 0x0cbb3d79 # initialize rs2
max x12, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x62b033b3 # initialize rs1
li x16, 0x352a500a # initialize rs2
max x13, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xb41785f9 # initialize rs1
li x31, 0xfddd2c02 # initialize rs2
max x14, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x9e8a30a8 # initialize rs1
li x11, 0x7797ab72 # initialize rs2
max x15, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0xef6d30d3 # initialize rs1
li x24, 0xcc2cc595 # initialize rs2
max x16, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0x82b6e4ab # initialize rs1
li x18, 0x8ba00a8d # initialize rs2
max x17, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x2a0d5104 # initialize rs1
li x15, 0xb345b89c # initialize rs2
max x18, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x06d70b8b # initialize rs1
li x11, 0xfae6fdb5 # initialize rs2
max x19, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x017b26e0 # initialize rs1
li x10, 0x9af6cc99 # initialize rs2
max x20, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0xfdd4eaa0 # initialize rs1
li x20, 0xfc052e82 # initialize rs2
max x21, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x3067aa70 # initialize rs1
li x26, 0x9aa958d5 # initialize rs2
max x22, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x8dbd88d2 # initialize rs1
li x22, 0x3e5daee2 # initialize rs2
max x23, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x51481417 # initialize rs1
li x17, 0x9ea89011 # initialize rs2
max x24, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x89302ce3 # initialize rs1
li x27, 0xa639c509 # initialize rs2
max x25, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0xb99b418b # initialize rs1
li x14, 0x33a63f53 # initialize rs2
max x26, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0xea189a09 # initialize rs1
li x30, 0x16448a9b # initialize rs2
max x27, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x82df6876 # initialize rs1
li x15, 0xff201364 # initialize rs2
max x28, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x5aa8e59f # initialize rs1
li x17, 0x3302d722 # initialize rs2
max x29, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0xfcd5e571 # initialize rs1
li x29, 0xe5e7af77 # initialize rs2
max x30, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x16, 0x7c6b63b9 # initialize rs1
li x11, 0xad66c374 # initialize rs2
max x31, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x00000000 # initialize rs1
li x5, 0xe139d1be # initialize rs2
max x19, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x00000001 # initialize rs1
li x21, 0x48d304f9 # initialize rs2
max x9, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
li x26, 0xadf7047a # initialize rs2
max x28, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x80000000 # initialize rs1
li x10, 0x8bc4645c # initialize rs2
max x23, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
li x5, 0xaae19bc9 # initialize rs2
max x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x17, 0xa27a02f0 # initialize rs2
max x7, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
li x5, 0xc896132a # initialize rs2
max x19, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
li x11, 0xa08c2944 # initialize rs2
max x28, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x29, 0x24b49de9 # initialize rs2
max x25, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x28, 0x5bbc8872 # initialize rs1
li x23, 0x3149c2cf # initialize rs2
max x26, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
li x27, 0xb034229e # initialize rs2
max x3, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x7, 0x55555555 # initialize rs1
li x12, 0x1a0f6ebd # initialize rs2
max x24, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xf3b182ff # initialize rs1
li x2, 0x00000000 # initialize rs2
max x25, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xb8948af5 # initialize rs1
li x25, 0x00000001 # initialize rs2
max x23, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0xf8a3a12d # initialize rs1
li x7, 0x00000002 # initialize rs2
max x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x24, 0x8f3f5f16 # initialize rs1
li x11, 0x80000000 # initialize rs2
max x17, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x19, 0x17d0b5ae # initialize rs1
li x21, 0x80000001 # initialize rs2
max x25, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x31, 0x6b055513 # initialize rs1
li x11, 0x7fffffff # initialize rs2
max x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x6, 0x38a5b380 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
max x1, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0x0e464073 # initialize rs1
li x28, 0xffffffff # initialize rs2
max x29, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x3f846203 # initialize rs1
li x18, 0xfffffffe # initialize rs2
max x31, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x28, 0x2729e78f # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
max x17, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x24, 0x47c2561b # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
max x16, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x6, 0xa75e674d # initialize rs1
li x26, 0x55555555 # initialize rs2
max x29, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
max x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x00000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
max x2, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x13, 0x00000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
max x10, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x00000000 # initialize rs1
li x10, 0x80000000 # initialize rs2
max x31, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x5, 0x00000000 # initialize rs1
li x25, 0x80000001 # initialize rs2
max x13, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
max x30, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x21, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
max x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x00000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
max x15, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x00000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
max x17, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x26, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
max x17, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x6, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
max x14, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x1, 0x00000000 # initialize rs1
li x27, 0x55555555 # initialize rs2
max x22, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x00000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
max x10, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x18, 0x00000001 # initialize rs1
li x14, 0x00000001 # initialize rs2
max x24, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x27, 0x00000001 # initialize rs1
li x14, 0x00000002 # initialize rs2
max x6, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x3, 0x00000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
max x8, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
max x9, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
max x25, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x1, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
max x20, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
max x27, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x00000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
max x5, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
max x19, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x23, 0x00000001 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
max x16, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x3, 0x00000001 # initialize rs1
li x15, 0x55555555 # initialize rs2
max x25, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
max x26, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x20, 0x00000002 # initialize rs1
li x15, 0x00000001 # initialize rs2
max x18, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x00000002 # initialize rs1
li x29, 0x00000002 # initialize rs2
max x28, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x14, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
max x16, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x24, 0x00000002 # initialize rs1
li x3, 0x80000001 # initialize rs2
max x10, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x00000002 # initialize rs1
li x19, 0x7fffffff # initialize rs2
max x24, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x26, 0x00000002 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
max x14, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x14, 0x00000002 # initialize rs1
li x15, 0xffffffff # initialize rs2
max x29, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x10, 0xfffffffe # initialize rs2
max x6, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x5, 0x00000002 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
max x7, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x29, 0x00000002 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
max x19, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x27, 0x00000002 # initialize rs1
li x13, 0x55555555 # initialize rs2
max x15, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
max x30, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x2, 0x80000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
max x29, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x19, 0x80000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
max x28, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x5, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
max x2, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x30, 0x80000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
max x21, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x29, 0x80000000 # initialize rs1
li x18, 0x7fffffff # initialize rs2
max x7, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x18, 0x80000000 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
max x17, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x2, 0x80000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
max x21, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
max x2, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x17, 0x80000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
max x6, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x1, 0x80000000 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
max x14, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x8, 0x80000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
max x22, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x20, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
max x14, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x30, 0x80000001 # initialize rs1
li x29, 0x00000001 # initialize rs2
max x21, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x31, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
max x5, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x80000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
max x12, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
max x7, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x5, 0x80000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
max x1, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x27, 0x80000001 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
max x17, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x19, 0x80000001 # initialize rs1
li x27, 0xffffffff # initialize rs2
max x31, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x31, 0x80000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
max x14, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x11, 0x80000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
max x9, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x28, 0x80000001 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
max x25, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x20, 0x55555555 # initialize rs2
max x2, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0x7fffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
max x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x21, 0x7fffffff # initialize rs1
li x14, 0x00000001 # initialize rs2
max x31, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x10, 0x7fffffff # initialize rs1
li x13, 0x00000002 # initialize rs2
max x1, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x2, 0x7fffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
max x10, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0x7fffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
max x2, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
max x24, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x22, 0x7fffffff # initialize rs1
li x9, 0x7ffffffe # initialize rs2
max x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x16, 0xffffffff # initialize rs2
max x28, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x17, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
max x14, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x1, 0x7fffffff # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
max x6, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x12, 0x7fffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
max x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x7fffffff # initialize rs1
li x25, 0x55555555 # initialize rs2
max x22, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
max x11, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x22, 0x7ffffffe # initialize rs1
li x24, 0x00000001 # initialize rs2
max x9, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x16, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
max x18, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x7, 0x7ffffffe # initialize rs1
li x6, 0x80000000 # initialize rs2
max x12, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x19, 0x7ffffffe # initialize rs1
li x9, 0x80000001 # initialize rs2
max x8, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x2, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
max x27, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
max x20, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
max x16, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
max x25, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x27, 0x7ffffffe # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
max x14, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x10, 0x7ffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
max x26, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x9, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
max x23, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x19, 0x00000000 # initialize rs2
max x29, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
max x28, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
max x6, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xffffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
max x30, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x14, 0xffffffff # initialize rs1
li x18, 0x80000001 # initialize rs2
max x29, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x23, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
max x18, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x7, 0xffffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
max x29, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
max x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x31, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
max x17, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x5, 0xffffffff # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
max x12, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x5, 0xffffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
max x12, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x1, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
max x25, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x23, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
max x28, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xfffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
max x18, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
max x23, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x30, 0xfffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
max x21, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x29, 0xfffffffe # initialize rs1
li x28, 0x80000001 # initialize rs2
max x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x12, 0xfffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
max x17, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x20, 0xfffffffe # initialize rs1
li x13, 0x7ffffffe # initialize rs2
max x26, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
max x27, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x24, 0xfffffffe # initialize rs2
max x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x12, 0xfffffffe # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
max x19, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x18, 0xfffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
max x7, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x25, 0x55555555 # initialize rs2
max x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x24, 0x5bbc8872 # initialize rs1
li x15, 0x00000000 # initialize rs2
max x22, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x5, 0x5bbc8872 # initialize rs1
li x29, 0x00000001 # initialize rs2
max x1, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x00000002 # initialize rs2
max x10, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x16, 0x5bbc8872 # initialize rs1
li x18, 0x80000000 # initialize rs2
max x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x28, 0x5bbc8872 # initialize rs1
li x27, 0x80000001 # initialize rs2
max x10, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x22, 0x5bbc8872 # initialize rs1
li x19, 0x7fffffff # initialize rs2
max x10, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x30, 0x5bbc8872 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
max x16, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x11, 0x5bbc8872 # initialize rs1
li x30, 0xffffffff # initialize rs2
max x23, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x12, 0x5bbc8872 # initialize rs1
li x16, 0xfffffffe # initialize rs2
max x30, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
max x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x21, 0x5bbc8872 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
max x5, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x28, 0x55555555 # initialize rs2
max x12, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaa # initialize rs1
li x23, 0x00000000 # initialize rs2
max x15, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x7, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
max x10, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x3, 0x00000002 # initialize rs2
max x31, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x5, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
max x29, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x18, 0xaaaaaaaa # initialize rs1
li x27, 0x80000001 # initialize rs2
max x12, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x22, 0x7fffffff # initialize rs2
max x26, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x24, 0x7ffffffe # initialize rs2
max x9, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaa # initialize rs1
li x13, 0xffffffff # initialize rs2
max x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x9, 0xfffffffe # initialize rs2
max x28, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x18, 0xaaaaaaaa # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
max x9, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
max x23, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x23, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
max x1, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x29, 0x55555555 # initialize rs1
li x7, 0x00000000 # initialize rs2
max x26, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x7, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
max x31, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x18, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
max x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x17, 0x80000000 # initialize rs2
max x28, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x22, 0x55555555 # initialize rs1
li x15, 0x80000001 # initialize rs2
max x18, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x13, 0x55555555 # initialize rs1
li x16, 0x7fffffff # initialize rs2
max x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x5, 0x55555555 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
max x23, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x25, 0x55555555 # initialize rs1
li x14, 0xffffffff # initialize rs2
max x29, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
max x9, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x27, 0x55555555 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
max x25, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x29, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
max x17, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x12, 0x55555555 # initialize rs2
max x14, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xfae906a7 # initialize rs1
li x0, 0xb39a7930 # initialize rs2
max x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x337d9d65 # initialize rs1
li x1, 0x818ae341 # initialize rs2
max x24, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xf450e71a # initialize rs1
li x2, 0x9bcdaf32 # initialize rs2
max x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x0aeef2d6 # initialize rs1
li x3, 0xbd7e824b # initialize rs2
max x16, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf8614a7e # initialize rs1
li x4, 0x056ea09f # initialize rs2
max x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4912ce87 # initialize rs1
li x5, 0xd1b61f0e # initialize rs2
max x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x09557e38 # initialize rs1
li x6, 0xe86aec5f # initialize rs2
max x16, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7bab1f36 # initialize rs1
li x7, 0xcc6e1683 # initialize rs2
max x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc8d85dde # initialize rs1
li x8, 0x461b5453 # initialize rs2
max x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xb387319a # initialize rs1
li x9, 0xca926952 # initialize rs2
max x19, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcf23d0da # initialize rs1
li x10, 0x1285f991 # initialize rs2
max x6, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xee2dd414 # initialize rs1
li x11, 0xa7925cc6 # initialize rs2
max x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x8628960a # initialize rs1
li x12, 0xca77ffe9 # initialize rs2
max x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb54e15be # initialize rs1
li x13, 0xe4be8c50 # initialize rs2
max x16, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5e525827 # initialize rs1
li x14, 0x615472a7 # initialize rs2
max x31, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x45184e8f # initialize rs1
li x15, 0x3350544e # initialize rs2
max x25, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x5a6a6243 # initialize rs1
li x16, 0x2e823a0d # initialize rs2
max x2, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe87188c7 # initialize rs1
li x17, 0x5db7baaf # initialize rs2
max x18, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3fa4628f # initialize rs1
li x18, 0xdda3cb8c # initialize rs2
max x20, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6b788a39 # initialize rs1
li x19, 0xda11272a # initialize rs2
max x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd66ca725 # initialize rs1
li x20, 0x25d07ecc # initialize rs2
max x7, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xdb6083b1 # initialize rs1
li x21, 0xcb6c2c99 # initialize rs2
max x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x57fb5f19 # initialize rs1
li x22, 0x2441b2d5 # initialize rs2
max x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x664f2f98 # initialize rs1
li x23, 0x0cac514b # initialize rs2
max x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x262941dc # initialize rs1
li x24, 0x017af7a8 # initialize rs2
max x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x7d01ef99 # initialize rs1
li x25, 0xce076362 # initialize rs2
max x28, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x06ee1f4a # initialize rs1
li x26, 0x2c161e30 # initialize rs2
max x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb9996375 # initialize rs1
li x27, 0x3d4f8e68 # initialize rs2
max x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe895d2dd # initialize rs1
li x28, 0xde8eca8b # initialize rs2
max x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x195893d7 # initialize rs1
li x29, 0x6730d144 # initialize rs2
max x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x16d48381 # initialize rs1
li x30, 0x91241760 # initialize rs2
max x27, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x27d2a68c # initialize rs1
li x31, 0x2c20cfad # initialize rs2
max x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb848b1fd # initialize rs1
li x8, 0x467b8712 # initialize rs2
max x0, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb826165f # initialize rs1
li x21, 0x8bb8979c # initialize rs2
max x1, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9553118d # initialize rs1
li x11, 0x2a7b9e76 # initialize rs2
max x2, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbf57204f # initialize rs1
li x13, 0x882374cf # initialize rs2
max x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5151da91 # initialize rs1
li x18, 0x510ce107 # initialize rs2
max x4, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc2869101 # initialize rs1
li x2, 0xd31a62bc # initialize rs2
max x5, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf3782394 # initialize rs1
li x17, 0xe359399e # initialize rs2
max x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0f813a32 # initialize rs1
li x1, 0xaa7bd665 # initialize rs2
max x7, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9415b88a # initialize rs1
li x6, 0x14410163 # initialize rs2
max x8, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x763e0b93 # initialize rs1
li x26, 0xe603cc58 # initialize rs2
max x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2990be31 # initialize rs1
li x7, 0x9ac21fd1 # initialize rs2
max x10, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf28905f3 # initialize rs1
li x29, 0x832eb73d # initialize rs2
max x11, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xacacc9d2 # initialize rs1
li x29, 0x9deed07d # initialize rs2
max x12, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xabad58af # initialize rs1
li x10, 0xbf9586dc # initialize rs2
max x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x40368242 # initialize rs1
li x10, 0x729bdfe6 # initialize rs2
max x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1c5dc00d # initialize rs1
li x10, 0x34eaf57e # initialize rs2
max x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8a6a7d75 # initialize rs1
li x17, 0xcc6f6bae # initialize rs2
max x16, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x741cb5fc # initialize rs1
li x25, 0xecee8801 # initialize rs2
max x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x09363181 # initialize rs1
li x25, 0xb27729a5 # initialize rs2
max x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa422e605 # initialize rs1
li x22, 0xfdf42897 # initialize rs2
max x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xaee09a53 # initialize rs1
li x27, 0x831ab531 # initialize rs2
max x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x04bc5484 # initialize rs1
li x31, 0x48b1615a # initialize rs2
max x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1be13547 # initialize rs1
li x17, 0xded9bf03 # initialize rs2
max x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc7287c57 # initialize rs1
li x7, 0x6c2596b0 # initialize rs2
max x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc8288582 # initialize rs1
li x26, 0x61848282 # initialize rs2
max x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf38cecdf # initialize rs1
li x9, 0xa3655213 # initialize rs2
max x25, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf44fa58a # initialize rs1
li x19, 0x475f4013 # initialize rs2
max x26, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6ced2d31 # initialize rs1
li x23, 0xa5109773 # initialize rs2
max x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe41219cf # initialize rs1
li x1, 0x65fc47f7 # initialize rs2
max x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1af8c576 # initialize rs1
li x9, 0xb9cbd053 # initialize rs2
max x29, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9aed0b45 # initialize rs1
li x17, 0xcef4e54a # initialize rs2
max x30, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x13a5636b # initialize rs1
li x28, 0x80639321 # initialize rs2
max x31, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0xe9c6a9e9 # initialize rs1
li x0, 0x27b1b7e8 # initialize rs2
max x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x8ace5544 # initialize rs1
li x1, 0x317e8998 # initialize rs2
max x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x81318950 # initialize rs1
li x2, 0x3f01f136 # initialize rs2
max x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x85fbe7b2 # initialize rs1
li x3, 0xbb19ea75 # initialize rs2
max x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0xc9ffb6dc # initialize rs1
li x4, 0x700e61b8 # initialize rs2
max x4, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xb1acef88 # initialize rs1
li x5, 0xad94a255 # initialize rs2
max x5, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x625ecfe9 # initialize rs1
li x6, 0xe97f4c34 # initialize rs2
max x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x4c26868a # initialize rs1
li x7, 0xfb9bf339 # initialize rs2
max x7, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0xe45c5349 # initialize rs1
li x8, 0x8e2ef26a # initialize rs2
max x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x5, 0x55327fd2 # initialize rs1
li x9, 0x01ac17e1 # initialize rs2
max x9, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0xa8f5d53f # initialize rs1
li x10, 0x063d7112 # initialize rs2
max x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0xe19d93c7 # initialize rs1
li x11, 0x60837093 # initialize rs2
max x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x14b854a0 # initialize rs1
li x12, 0x65b4d0ce # initialize rs2
max x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xf105da3f # initialize rs1
li x13, 0x91f9611d # initialize rs2
max x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x716f56ed # initialize rs1
li x14, 0x9dbfccc6 # initialize rs2
max x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x29, 0x0b5f675b # initialize rs1
li x15, 0xe77fdff4 # initialize rs2
max x15, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x86c85e54 # initialize rs1
li x16, 0x48b442fc # initialize rs2
max x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x8, 0x15d75133 # initialize rs1
li x17, 0x380f0757 # initialize rs2
max x17, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x27, 0xb94e0561 # initialize rs1
li x18, 0xf9c4165c # initialize rs2
max x18, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0xa8f9c813 # initialize rs1
li x19, 0x240f3e0f # initialize rs2
max x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x30, 0xa6a6d49c # initialize rs1
li x20, 0xd433d92e # initialize rs2
max x20, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xbc49756e # initialize rs1
li x21, 0x18a0ce59 # initialize rs2
max x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0x7f38165d # initialize rs1
li x22, 0xcb48c7ee # initialize rs2
max x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x35895a62 # initialize rs1
li x23, 0xfccb4cf9 # initialize rs2
max x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x10, 0x73c61715 # initialize rs1
li x24, 0x2dc53ac6 # initialize rs2
max x24, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x3, 0x6bf51bd0 # initialize rs1
li x25, 0x83bf5130 # initialize rs2
max x25, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x22, 0xbaf7f48f # initialize rs1
li x26, 0x26a8536b # initialize rs2
max x26, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xf70244fb # initialize rs1
li x27, 0x4ff690c6 # initialize rs2
max x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x18, 0xaf28e126 # initialize rs1
li x28, 0xc7535a19 # initialize rs2
max x28, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x11, 0x899c0816 # initialize rs1
li x29, 0x99901cf1 # initialize rs2
max x29, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0xd7eeba87 # initialize rs1
li x30, 0x6f0d8137 # initialize rs2
max x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0x648b6de7 # initialize rs1
li x31, 0xf645b25e # initialize rs2
max x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe3e0d62a # initialize rs1
li x0, 0xc13f7ec7 # initialize rs2
max x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd8c429d2 # initialize rs1
li x1, 0x4f55030f # initialize rs2
max x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3ec5c6de # initialize rs1
li x2, 0x0e1c290c # initialize rs2
max x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xee6ab0cd # initialize rs1
li x3, 0x799b591f # initialize rs2
max x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x957bb4e1 # initialize rs1
li x4, 0x47c9af5c # initialize rs2
max x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1c7ce5f0 # initialize rs1
li x5, 0x85ccba86 # initialize rs2
max x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9fad71c3 # initialize rs1
li x6, 0x08675fa4 # initialize rs2
max x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x88beb8f5 # initialize rs1
li x7, 0x2051b460 # initialize rs2
max x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x844118d2 # initialize rs1
li x8, 0x905a19da # initialize rs2
max x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x1ef44d34 # initialize rs1
li x9, 0x6fc0336f # initialize rs2
max x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x26a2468f # initialize rs1
li x10, 0xcecb31b9 # initialize rs2
max x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb08f2e35 # initialize rs1
li x11, 0x743c0e05 # initialize rs2
max x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x841c38c0 # initialize rs1
li x12, 0xd89829ef # initialize rs2
max x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd6a99325 # initialize rs1
li x13, 0xc63892f2 # initialize rs2
max x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbf1f92b3 # initialize rs1
li x14, 0x33e03ccf # initialize rs2
max x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x8357a715 # initialize rs1
li x15, 0xd1d474e9 # initialize rs2
max x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xf69723b2 # initialize rs1
li x16, 0xc907eb96 # initialize rs2
max x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xafcff5ac # initialize rs1
li x17, 0x1d760f00 # initialize rs2
max x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x15d48735 # initialize rs1
li x18, 0x6bcd9533 # initialize rs2
max x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x64e76a02 # initialize rs1
li x19, 0x68e18236 # initialize rs2
max x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x300f92be # initialize rs1
li x20, 0x1c7d60a9 # initialize rs2
max x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x9b1ac6fc # initialize rs1
li x21, 0x182f36dd # initialize rs2
max x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xfe9c5dc0 # initialize rs1
li x22, 0x2d9250cc # initialize rs2
max x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x9c28871c # initialize rs1
li x23, 0xaf348a66 # initialize rs2
max x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x83ea63e8 # initialize rs1
li x24, 0x9bc60a02 # initialize rs2
max x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x936ed009 # initialize rs1
li x25, 0x18c6dd55 # initialize rs2
max x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc717980a # initialize rs1
li x26, 0xfd7c28ec # initialize rs2
max x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb72f6a54 # initialize rs1
li x27, 0xf577e9cd # initialize rs2
max x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x280fcdb3 # initialize rs1
li x28, 0x695973af # initialize rs2
max x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7456d572 # initialize rs1
li x29, 0xb567fcdb # initialize rs2
max x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xdfc0cff7 # initialize rs1
li x30, 0xf6f81c0b # initialize rs2
max x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc9df2060 # initialize rs1
li x31, 0xa6bd2975 # initialize rs2
max x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x18, x20 # perform first operation
max x13, x2, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x29, x15 # perform first operation
max x17, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x29, x19 # perform first operation
max x2, x24, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x22, x25 # perform first operation
max x7, x26, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x19, x28 # perform first operation
max x13, x12, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x19, x17 # perform first operation
max x30, x13, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x19, x26 # perform first operation
max x14, x27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x18, x27 # perform first operation
max x24, x3, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x18, x24 # perform first operation
max x3, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x22, x13 # perform first operation
max x22, x8, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x27, x20 # perform first operation
max x20, x30, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x6, x20 # perform first operation
max x9, x30, x16 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sext.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd21cbcc8 # initialize rs1
sext.h x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x70edee20 # initialize rs1
sext.h x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x455306cb # initialize rs1
sext.h x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x98903eab # initialize rs1
sext.h x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88ffb6ed # initialize rs1
sext.h x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1acdbd73 # initialize rs1
sext.h x15, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x72e0474f # initialize rs1
sext.h x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x135307ed # initialize rs1
sext.h x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9184cf85 # initialize rs1
sext.h x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1be2fa1f # initialize rs1
sext.h x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0ebe0aef # initialize rs1
sext.h x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5f451df8 # initialize rs1
sext.h x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9d2303f6 # initialize rs1
sext.h x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x90637af4 # initialize rs1
sext.h x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x767e4f25 # initialize rs1
sext.h x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc33aebd9 # initialize rs1
sext.h x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1f940b53 # initialize rs1
sext.h x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x088a5b90 # initialize rs1
sext.h x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xca1c369e # initialize rs1
sext.h x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x609e0086 # initialize rs1
sext.h x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8311153f # initialize rs1
sext.h x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x950b405f # initialize rs1
sext.h x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x48ddcf5c # initialize rs1
sext.h x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbea0a5e2 # initialize rs1
sext.h x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdcb510ac # initialize rs1
sext.h x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x43b943a8 # initialize rs1
sext.h x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe2a851d3 # initialize rs1
sext.h x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf13b9fc3 # initialize rs1
sext.h x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3649c941 # initialize rs1
sext.h x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xff63737b # initialize rs1
sext.h x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x4191b4ed # initialize rs1
sext.h x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe93563e8 # initialize rs1
sext.h x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 124)

# Testcase cp_rd (Test destination rd = x0)
li x30, 0xa061c936 # initialize rs1
sext.h x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x92749fa2 # initialize rs1
sext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x354f1781 # initialize rs1
sext.h x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x6a04f0d0 # initialize rs1
sext.h x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x213872c6 # initialize rs1
sext.h x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xaa8837a6 # initialize rs1
sext.h x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xf08d9b64 # initialize rs1
sext.h x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x0e0f50c9 # initialize rs1
sext.h x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xb46ddb01 # initialize rs1
sext.h x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x837bbf2d # initialize rs1
sext.h x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x49b7399a # initialize rs1
sext.h x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x6f516547 # initialize rs1
sext.h x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x0db9a22c # initialize rs1
sext.h x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xb0014743 # initialize rs1
sext.h x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x1471620a # initialize rs1
sext.h x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x6b2353ef # initialize rs1
sext.h x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0xe81edbfc # initialize rs1
sext.h x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd91dfb3b # initialize rs1
sext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x50a8476b # initialize rs1
sext.h x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x1c87514c # initialize rs1
sext.h x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x5189579b # initialize rs1
sext.h x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0xfd19ef2f # initialize rs1
sext.h x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0xb3a4c198 # initialize rs1
sext.h x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x36f4d8bb # initialize rs1
sext.h x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x5ec7c60b # initialize rs1
sext.h x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x4f7e2a22 # initialize rs1
sext.h x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x74328f5e # initialize rs1
sext.h x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x628f3cba # initialize rs1
sext.h x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x6030b50e # initialize rs1
sext.h x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0xb8a9b4f0 # initialize rs1
sext.h x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x7287357b # initialize rs1
sext.h x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0xe1069bf9 # initialize rs1
sext.h x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x00000000 # initialize rs1
sext.h x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
sext.h x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x00000002 # initialize rs1
sext.h x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x28, 0x80000000 # initialize rs1
sext.h x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x18, 0x80000001 # initialize rs1
sext.h x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
sext.h x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
sext.h x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xffffffff # initialize rs1
sext.h x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
sext.h x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
sext.h x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
sext.h x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
sext.h x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9a3f5e53 # initialize rs1
sext.h x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1ccfc5b2 # initialize rs1
sext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2acb4444 # initialize rs1
sext.h x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x37732c17 # initialize rs1
sext.h x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9d49c197 # initialize rs1
sext.h x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x61db5bcd # initialize rs1
sext.h x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x66338c1d # initialize rs1
sext.h x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x47258ff7 # initialize rs1
sext.h x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd74c776b # initialize rs1
sext.h x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb78d6b41 # initialize rs1
sext.h x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x44f56415 # initialize rs1
sext.h x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xedf2dc89 # initialize rs1
sext.h x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf934420d # initialize rs1
sext.h x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc1381aa4 # initialize rs1
sext.h x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xac5882c6 # initialize rs1
sext.h x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1dc7017d # initialize rs1
sext.h x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0eaa1d28 # initialize rs1
sext.h x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb81f692e # initialize rs1
sext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf72014db # initialize rs1
sext.h x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf0b5161e # initialize rs1
sext.h x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9019778a # initialize rs1
sext.h x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xafa40516 # initialize rs1
sext.h x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6f841703 # initialize rs1
sext.h x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2972e415 # initialize rs1
sext.h x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8ee1b506 # initialize rs1
sext.h x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xcd53223f # initialize rs1
sext.h x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7e80ac26 # initialize rs1
sext.h x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf64fe99e # initialize rs1
sext.h x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7b4d688e # initialize rs1
sext.h x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1ffb271c # initialize rs1
sext.h x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x86d026a7 # initialize rs1
sext.h x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8844cd5c # initialize rs1
sext.h x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x5, x12 # perform first operation
sext.h x22, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x21, x15 # perform first operation
sext.h x7, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x18, x23 # perform first operation
sext.h x15, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x14, x20 # perform first operation
sext.h x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x19, x14 # perform first operation
sext.h x14, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x30, x13 # perform first operation
sext.h x30, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x31, x5 # perform first operation
sext.h x14, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x9, x12 # perform first operation
sext.h x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x5, x2 # perform first operation
sext.h x22, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x24, x17 # perform first operation
sext.h x24, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x30, x18 # perform first operation
sext.h x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x6, x8 # perform first operation
sext.h x14, x25 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-xnor.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x4e62ed27 # initialize rs1
li x3, 0x5c82f1cc # initialize rs2
xnor x1, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbda58480 # initialize rs1
li x31, 0x5054423b # initialize rs2
xnor x22, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x39150fd8 # initialize rs1
li x12, 0xf6dc876a # initialize rs2
xnor x8, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd54d62d7 # initialize rs1
li x6, 0xd80ab5fd # initialize rs2
xnor x12, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x02c0a162 # initialize rs1
li x16, 0x363fc73e # initialize rs2
xnor x6, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfc007494 # initialize rs1
li x11, 0xc344f2eb # initialize rs2
xnor x9, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe4b42fc # initialize rs1
li x31, 0x9dd70968 # initialize rs2
xnor x29, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6b84f15d # initialize rs1
li x15, 0xfa8446f1 # initialize rs2
xnor x3, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf0397234 # initialize rs1
li x5, 0xb44c42b6 # initialize rs2
xnor x22, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x7e0f6332 # initialize rs1
li x12, 0x5a4e2984 # initialize rs2
xnor x6, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x063971aa # initialize rs1
li x20, 0xc3406a99 # initialize rs2
xnor x3, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa8dc95e9 # initialize rs1
li x2, 0x95395d91 # initialize rs2
xnor x23, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9b9ce845 # initialize rs1
li x26, 0x9026c916 # initialize rs2
xnor x18, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbd090e58 # initialize rs1
li x25, 0x687b68de # initialize rs2
xnor x6, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe2041dc0 # initialize rs1
li x3, 0x7f9dbc16 # initialize rs2
xnor x15, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa35a6547 # initialize rs1
li x21, 0x9a801d0e # initialize rs2
xnor x29, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0779f613 # initialize rs1
li x9, 0xe4446442 # initialize rs2
xnor x8, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb00778b6 # initialize rs1
li x24, 0x9d1f446a # initialize rs2
xnor x3, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbb5b022b # initialize rs1
li x29, 0xfbc30433 # initialize rs2
xnor x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x172cdb41 # initialize rs1
li x2, 0xef75aa97 # initialize rs2
xnor x18, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb75c1cfd # initialize rs1
li x15, 0xfcd2693d # initialize rs2
xnor x12, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x25ddfa35 # initialize rs1
li x15, 0xc5f1dc95 # initialize rs2
xnor x3, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb870526f # initialize rs1
li x24, 0xf1d70d27 # initialize rs2
xnor x8, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x95714718 # initialize rs1
li x7, 0xdf630047 # initialize rs2
xnor x31, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2b48ae6b # initialize rs1
li x20, 0x476aa42d # initialize rs2
xnor x28, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0814a009 # initialize rs1
li x10, 0x8621d01b # initialize rs2
xnor x29, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2d395344 # initialize rs1
li x12, 0xcddba2bf # initialize rs2
xnor x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf1f5aeb8 # initialize rs1
li x2, 0x8fa45248 # initialize rs2
xnor x5, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc08e0f6b # initialize rs1
li x12, 0xbfd82613 # initialize rs2
xnor x13, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3a5a7e84 # initialize rs1
li x24, 0xbf778953 # initialize rs2
xnor x2, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe6502b5a # initialize rs1
li x8, 0xfd222327 # initialize rs2
xnor x26, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x11c7c8ea # initialize rs1
li x27, 0xac3576c8 # initialize rs2
xnor x6, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x10, 0x799e8247 # initialize rs1
li x0, 0x5805599f # initialize rs2
xnor x1, x10, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x26, 0xef0c8609 # initialize rs1
li x1, 0x033ba6c6 # initialize rs2
xnor x21, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xadd1322b # initialize rs1
li x2, 0x1b761941 # initialize rs2
xnor x28, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0xcea02f0f # initialize rs1
li x3, 0xf2f6c525 # initialize rs2
xnor x21, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0xe79bf8e7 # initialize rs1
li x4, 0x223f26ec # initialize rs2
xnor x31, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x9ba962a7 # initialize rs1
li x5, 0x83a899eb # initialize rs2
xnor x13, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xbcd61a8f # initialize rs1
li x6, 0x35416f4c # initialize rs2
xnor x25, x15, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xbb2f1e24 # initialize rs1
li x7, 0xbfdde02e # initialize rs2
xnor x30, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0xf378206f # initialize rs1
li x8, 0x7a67e593 # initialize rs2
xnor x14, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0x6c6d1bd1 # initialize rs1
li x9, 0x47d7738d # initialize rs2
xnor x20, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0xd6864b06 # initialize rs1
li x10, 0x7af9d7b6 # initialize rs2
xnor x6, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x26, 0x8c3a501d # initialize rs1
li x11, 0x1981632a # initialize rs2
xnor x30, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x14, 0x04d24ceb # initialize rs1
li x12, 0x5655f50c # initialize rs2
xnor x19, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x6fd9b87e # initialize rs1
li x13, 0x7ca847bd # initialize rs2
xnor x18, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xaa5dc8f5 # initialize rs1
li x14, 0x8ac0d585 # initialize rs2
xnor x12, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x1, 0xa76f21c7 # initialize rs1
li x15, 0xa362e219 # initialize rs2
xnor x12, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xad495b76 # initialize rs1
li x16, 0x2519eca9 # initialize rs2
xnor x9, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0x8f9de353 # initialize rs1
li x17, 0x71c1687f # initialize rs2
xnor x9, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x31, 0xff31cf92 # initialize rs1
li x18, 0x83f2cfb0 # initialize rs2
xnor x3, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xb6e6602b # initialize rs1
li x19, 0x772c7c84 # initialize rs2
xnor x25, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0xa0d8f7d6 # initialize rs1
li x20, 0x778842d9 # initialize rs2
xnor x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x5, 0x7a1949c9 # initialize rs1
li x21, 0xbe309260 # initialize rs2
xnor x22, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x1, 0xf402c51a # initialize rs1
li x22, 0x351a7d8d # initialize rs2
xnor x18, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x2, 0xaf6ca63f # initialize rs1
li x23, 0x7b421d34 # initialize rs2
xnor x22, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x12, 0x73479245 # initialize rs1
li x24, 0x772f798f # initialize rs2
xnor x23, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x1c4ed382 # initialize rs1
li x25, 0xe9288a89 # initialize rs2
xnor x14, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x3968826e # initialize rs1
li x26, 0xe8d60aa4 # initialize rs2
xnor x19, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x06556b23 # initialize rs1
li x27, 0xa9064162 # initialize rs2
xnor x25, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0xb45f4000 # initialize rs1
li x28, 0x1b6762a8 # initialize rs2
xnor x24, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xd497ea73 # initialize rs1
li x29, 0x476c66ed # initialize rs2
xnor x20, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x7, 0x9459d94e # initialize rs1
li x30, 0xc799d985 # initialize rs2
xnor x22, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x27cca63f # initialize rs1
li x31, 0xd17fdab4 # initialize rs2
xnor x19, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 252)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0x38e71339 # initialize rs1
li x23, 0x5952a4cb # initialize rs2
xnor x0, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x8b82b6e8 # initialize rs1
li x7, 0x9a1d6d93 # initialize rs2
xnor x1, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x947ff6aa # initialize rs1
li x9, 0xc00b799e # initialize rs2
xnor x2, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x683a3697 # initialize rs1
li x1, 0xf22e1ece # initialize rs2
xnor x3, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xbe201ba2 # initialize rs1
li x7, 0x771c7d0d # initialize rs2
xnor x4, x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x2ffeca7f # initialize rs1
li x22, 0x558a7f91 # initialize rs2
xnor x5, x1, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xbb09748f # initialize rs1
li x31, 0xa67fe767 # initialize rs2
xnor x6, x27, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x97506c63 # initialize rs1
li x22, 0x61470251 # initialize rs2
xnor x7, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xbe4addcf # initialize rs1
li x20, 0xefa9355f # initialize rs2
xnor x8, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xf0a79e30 # initialize rs1
li x11, 0x1eb3abe7 # initialize rs2
xnor x9, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x412b97f1 # initialize rs1
li x5, 0x7dc4f759 # initialize rs2
xnor x10, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0x4b872871 # initialize rs1
li x19, 0x6f8b3751 # initialize rs2
xnor x11, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xf620802f # initialize rs1
li x24, 0xcbf6c283 # initialize rs2
xnor x12, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x89da9a6f # initialize rs1
li x6, 0x4514799f # initialize rs2
xnor x13, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x49ed3b19 # initialize rs1
li x7, 0x234f430f # initialize rs2
xnor x14, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0xdaf7f5fb # initialize rs1
li x5, 0xecc924f0 # initialize rs2
xnor x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x70a45415 # initialize rs1
li x29, 0xea95fd01 # initialize rs2
xnor x16, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x3d209bda # initialize rs1
li x8, 0x8dbe6c6c # initialize rs2
xnor x17, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0xb7c49825 # initialize rs1
li x9, 0x621525fb # initialize rs2
xnor x18, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0x12e22db6 # initialize rs1
li x22, 0x3b2f697b # initialize rs2
xnor x19, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x636a3356 # initialize rs1
li x3, 0xcce3058c # initialize rs2
xnor x20, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0xcc78ab67 # initialize rs1
li x30, 0xfae12c2d # initialize rs2
xnor x21, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x13a7ee93 # initialize rs1
li x16, 0x10aa0133 # initialize rs2
xnor x22, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xe874d828 # initialize rs1
li x8, 0xa0db6592 # initialize rs2
xnor x23, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x9, 0xc15baf70 # initialize rs1
li x22, 0x55885ae7 # initialize rs2
xnor x24, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xa68a58d6 # initialize rs1
li x30, 0x55d7cf03 # initialize rs2
xnor x25, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xa1529bd1 # initialize rs1
li x17, 0x7705cc0d # initialize rs2
xnor x26, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x8aacf401 # initialize rs1
li x19, 0x60556ca1 # initialize rs2
xnor x27, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x97b1fc1f # initialize rs1
li x12, 0xd68a02e9 # initialize rs2
xnor x28, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x48bc8cf6 # initialize rs1
li x14, 0x4de18781 # initialize rs2
xnor x29, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x21, 0x09b2d105 # initialize rs1
li x13, 0xb19241a8 # initialize rs2
xnor x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x8df61ade # initialize rs1
li x29, 0x2c2f6071 # initialize rs2
xnor x31, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x00000000 # initialize rs1
li x24, 0x0e3ee785 # initialize rs2
xnor x17, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
li x31, 0x78ba6729 # initialize rs2
xnor x13, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x00000002 # initialize rs1
li x5, 0x2b55934d # initialize rs2
xnor x10, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x19, 0x10d2f671 # initialize rs2
xnor x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x6, 0x8a90101c # initialize rs2
xnor x23, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff # initialize rs1
li x8, 0xd5ee122e # initialize rs2
xnor x2, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x2, 0x7ffffffe # initialize rs1
li x11, 0x7111125b # initialize rs2
xnor x26, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x24, 0x4dbcf215 # initialize rs2
xnor x11, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x26, 0x30fe3e8d # initialize rs2
xnor x24, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x6, 0xcdd9f332 # initialize rs2
xnor x1, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x14, 0x14285ffa # initialize rs2
xnor x28, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x8, 0xce638e37 # initialize rs2
xnor x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0xbb7f35c8 # initialize rs1
li x13, 0x00000000 # initialize rs2
xnor x26, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x730d9401 # initialize rs1
li x19, 0x00000001 # initialize rs2
xnor x30, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x38bd453f # initialize rs1
li x15, 0x00000002 # initialize rs2
xnor x6, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x978a4007 # initialize rs1
li x18, 0x80000000 # initialize rs2
xnor x22, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x1903013e # initialize rs1
li x7, 0x80000001 # initialize rs2
xnor x29, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x21, 0x3500b4cc # initialize rs1
li x20, 0x7fffffff # initialize rs2
xnor x22, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x9, 0x734ad1b7 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xnor x26, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x8a35cf66 # initialize rs1
li x22, 0xffffffff # initialize rs2
xnor x7, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xd2446660 # initialize rs1
li x20, 0xfffffffe # initialize rs2
xnor x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xd81f2b31 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
xnor x31, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0x15f435b9 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
xnor x8, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0x135f8bcc # initialize rs1
li x10, 0x55555555 # initialize rs2
xnor x16, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x00000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
xnor x15, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x2, 0x00000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
xnor x21, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x1, 0x00000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
xnor x20, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x23, 0x00000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
xnor x3, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x10, 0x00000000 # initialize rs1
li x3, 0x80000001 # initialize rs2
xnor x12, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x8, 0x00000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xnor x22, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x6, 0x00000000 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
xnor x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x29, 0x00000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
xnor x1, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x27, 0xfffffffe # initialize rs2
xnor x6, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
xnor x31, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x00000000 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
xnor x15, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x20, 0x00000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
xnor x16, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
xnor x23, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x3, 0x00000001 # initialize rs1
li x28, 0x00000001 # initialize rs2
xnor x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
xnor x10, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x22, 0x00000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
xnor x7, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x5, 0x00000001 # initialize rs1
li x18, 0x80000001 # initialize rs2
xnor x16, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x29, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
xnor x19, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
xnor x28, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
xnor x9, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x00000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
xnor x23, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x16, 0x00000001 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
xnor x19, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0x00000001 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
xnor x23, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x11, 0x00000001 # initialize rs1
li x27, 0x55555555 # initialize rs2
xnor x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x00000002 # initialize rs1
li x29, 0x00000000 # initialize rs2
xnor x20, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x00000002 # initialize rs1
li x16, 0x00000001 # initialize rs2
xnor x9, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
xnor x29, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
xnor x12, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x5, 0x00000002 # initialize rs1
li x10, 0x80000001 # initialize rs2
xnor x6, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x1, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
xnor x2, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
xnor x2, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x5, 0x00000002 # initialize rs1
li x21, 0xffffffff # initialize rs2
xnor x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x21, 0x00000002 # initialize rs1
li x30, 0xfffffffe # initialize rs2
xnor x15, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x25, 0x00000002 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
xnor x19, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xnor x6, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
xnor x20, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x9, 0x80000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
xnor x7, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x18, 0x80000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
xnor x22, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x15, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
xnor x20, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x15, 0x80000000 # initialize rs2
xnor x5, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x22, 0x80000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
xnor x8, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x23, 0x80000000 # initialize rs1
li x11, 0x7fffffff # initialize rs2
xnor x7, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
xnor x9, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
xnor x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x28, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
xnor x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x26, 0x80000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
xnor x12, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x7, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
xnor x5, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
xnor x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x3, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
xnor x26, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x31, 0x80000001 # initialize rs1
li x13, 0x00000001 # initialize rs2
xnor x29, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
xnor x8, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x15, 0x80000001 # initialize rs1
li x19, 0x80000000 # initialize rs2
xnor x22, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
xnor x30, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x7, 0x80000001 # initialize rs1
li x21, 0x7fffffff # initialize rs2
xnor x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x6, 0x80000001 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
xnor x5, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x21, 0x80000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
xnor x27, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x29, 0x80000001 # initialize rs1
li x24, 0xfffffffe # initialize rs2
xnor x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x17, 0x80000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
xnor x15, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x80000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
xnor x30, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x30, 0x55555555 # initialize rs2
xnor x21, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x28, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
xnor x19, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x16, 0x7fffffff # initialize rs1
li x29, 0x00000001 # initialize rs2
xnor x13, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x28, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
xnor x8, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x30, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
xnor x3, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x20, 0x7fffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
xnor x21, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x24, 0x7fffffff # initialize rs2
xnor x3, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x9, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
xnor x16, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
xnor x26, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
xnor x17, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x27, 0x7fffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
xnor x31, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x7, 0x7fffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
xnor x24, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x17, 0x7fffffff # initialize rs1
li x3, 0x55555555 # initialize rs2
xnor x1, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x26, 0x7ffffffe # initialize rs1
li x6, 0x00000000 # initialize rs2
xnor x30, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x1, 0x7ffffffe # initialize rs1
li x20, 0x00000001 # initialize rs2
xnor x7, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x26, 0x7ffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
xnor x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x28, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
xnor x15, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x29, 0x7ffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
xnor x6, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x26, 0x7fffffff # initialize rs2
xnor x12, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x14, 0x7ffffffe # initialize rs2
xnor x30, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
xnor x29, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
xnor x30, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
xnor x16, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x10, 0x7ffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
xnor x21, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x18, 0x7ffffffe # initialize rs1
li x17, 0x55555555 # initialize rs2
xnor x15, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
xnor x25, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x17, 0x00000001 # initialize rs2
xnor x31, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
xnor x1, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
xnor x9, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x21, 0xffffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
xnor x28, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x5, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
xnor x25, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x27, 0xffffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
xnor x21, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x2, 0xffffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
xnor x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0xffffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
xnor x6, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x16, 0xffffffff # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
xnor x3, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x29, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
xnor x30, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x3, 0xffffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
xnor x10, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xfffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
xnor x28, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0xfffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
xnor x29, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0xfffffffe # initialize rs1
li x28, 0x00000002 # initialize rs2
xnor x8, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x27, 0xfffffffe # initialize rs1
li x31, 0x80000000 # initialize rs2
xnor x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
xnor x15, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x25, 0xfffffffe # initialize rs1
li x22, 0x7fffffff # initialize rs2
xnor x14, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x17, 0xfffffffe # initialize rs1
li x3, 0x7ffffffe # initialize rs2
xnor x1, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x13, 0xfffffffe # initialize rs1
li x22, 0xffffffff # initialize rs2
xnor x14, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
xnor x2, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x2, 0xfffffffe # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
xnor x8, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x1, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
xnor x18, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x13, 0xfffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
xnor x8, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x15, 0x5bbc8872 # initialize rs1
li x11, 0x00000000 # initialize rs2
xnor x9, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x1, 0x5bbc8872 # initialize rs1
li x8, 0x00000001 # initialize rs2
xnor x6, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x16, 0x5bbc8872 # initialize rs1
li x14, 0x00000002 # initialize rs2
xnor x29, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x10, 0x5bbc8872 # initialize rs1
li x23, 0x80000000 # initialize rs2
xnor x9, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x30, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
xnor x27, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x8, 0x5bbc8872 # initialize rs1
li x30, 0x7fffffff # initialize rs2
xnor x15, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
xnor x19, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x9, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
xnor x26, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x28, 0xfffffffe # initialize rs2
xnor x8, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
xnor x7, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x30, 0x5bbc8872 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
xnor x9, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x18, 0x5bbc8872 # initialize rs1
li x23, 0x55555555 # initialize rs2
xnor x30, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x6, 0xaaaaaaaa # initialize rs1
li x16, 0x00000000 # initialize rs2
xnor x17, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
xnor x29, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x13, 0xaaaaaaaa # initialize rs1
li x6, 0x00000002 # initialize rs2
xnor x21, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x8, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
xnor x21, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
xnor x2, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x24, 0xaaaaaaaa # initialize rs1
li x14, 0x7fffffff # initialize rs2
xnor x1, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x5, 0xaaaaaaaa # initialize rs1
li x22, 0x7ffffffe # initialize rs2
xnor x3, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaa # initialize rs1
li x19, 0xffffffff # initialize rs2
xnor x22, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
xnor x5, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x24, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
xnor x18, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
xnor x3, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
xnor x27, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x14, 0x00000000 # initialize rs2
xnor x3, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x15, 0x55555555 # initialize rs1
li x5, 0x00000001 # initialize rs2
xnor x25, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x55555555 # initialize rs1
li x12, 0x00000002 # initialize rs2
xnor x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x31, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
xnor x14, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x5, 0x55555555 # initialize rs1
li x20, 0x80000001 # initialize rs2
xnor x23, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x12, 0x55555555 # initialize rs1
li x7, 0x7fffffff # initialize rs2
xnor x19, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x5, 0x55555555 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
xnor x9, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x3, 0x55555555 # initialize rs1
li x7, 0xffffffff # initialize rs2
xnor x1, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x55555555 # initialize rs1
li x13, 0xfffffffe # initialize rs2
xnor x3, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x26, 0x55555555 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
xnor x31, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x15, 0x55555555 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
xnor x5, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x31, 0x55555555 # initialize rs2
xnor x23, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x857ff315 # initialize rs1
li x0, 0x59b18549 # initialize rs2
xnor x5, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x0f5d77d9 # initialize rs1
li x1, 0x8e84a4e4 # initialize rs2
xnor x27, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x38b4868d # initialize rs1
li x2, 0x88335237 # initialize rs2
xnor x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc4ceabfd # initialize rs1
li x3, 0xe5937e85 # initialize rs2
xnor x8, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0bfaf7ad # initialize rs1
li x4, 0x434dcb0e # initialize rs2
xnor x21, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e1ffecd # initialize rs1
li x5, 0x643a0695 # initialize rs2
xnor x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc006fff8 # initialize rs1
li x6, 0x46ed4aa4 # initialize rs2
xnor x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x46194f6a # initialize rs1
li x7, 0x319f2020 # initialize rs2
xnor x18, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x1b3f5663 # initialize rs1
li x8, 0x2891c86e # initialize rs2
xnor x19, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x26f9dc62 # initialize rs1
li x9, 0xdb5304c0 # initialize rs2
xnor x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6fd5516f # initialize rs1
li x10, 0xf9305ad7 # initialize rs2
xnor x6, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xab0103d0 # initialize rs1
li x11, 0xa63e257a # initialize rs2
xnor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdff0cebb # initialize rs1
li x12, 0x6aabfb0f # initialize rs2
xnor x23, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xbbe438d6 # initialize rs1
li x13, 0x62d772fc # initialize rs2
xnor x25, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9f7547b1 # initialize rs1
li x14, 0xc8986b6f # initialize rs2
xnor x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc4b71cc2 # initialize rs1
li x15, 0xf309c068 # initialize rs2
xnor x7, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x81e83520 # initialize rs1
li x16, 0xa4f11333 # initialize rs2
xnor x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe69b08f2 # initialize rs1
li x17, 0xe1f7d694 # initialize rs2
xnor x27, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xbc1f2261 # initialize rs1
li x18, 0xaf14adea # initialize rs2
xnor x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x2ffe7bdf # initialize rs1
li x19, 0x3e584653 # initialize rs2
xnor x15, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x25fe4097 # initialize rs1
li x20, 0x84e9cd73 # initialize rs2
xnor x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7a86d2a6 # initialize rs1
li x21, 0xa2de88af # initialize rs2
xnor x11, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd8d7f1ae # initialize rs1
li x22, 0x16f0108d # initialize rs2
xnor x28, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8e3ca52c # initialize rs1
li x23, 0xf627b307 # initialize rs2
xnor x9, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb59cd70e # initialize rs1
li x24, 0x816c491e # initialize rs2
xnor x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xacf3b5dc # initialize rs1
li x25, 0x55f685c8 # initialize rs2
xnor x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x79e1776e # initialize rs1
li x26, 0x6aa2154b # initialize rs2
xnor x13, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x18c21acc # initialize rs1
li x27, 0x8a11cee1 # initialize rs2
xnor x31, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa312f5fe # initialize rs1
li x28, 0x3205ad94 # initialize rs2
xnor x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x16ed7281 # initialize rs1
li x29, 0x52c34875 # initialize rs2
xnor x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x0688b7a2 # initialize rs1
li x30, 0x0b1212e4 # initialize rs2
xnor x12, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x82eb41a4 # initialize rs1
li x31, 0x166b8498 # initialize rs2
xnor x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xbf015bbe # initialize rs1
li x17, 0xe8a9ac98 # initialize rs2
xnor x0, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9249e102 # initialize rs1
li x9, 0xc9dbaff2 # initialize rs2
xnor x1, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x25ca70f7 # initialize rs1
li x1, 0xc5c3e02f # initialize rs2
xnor x2, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6345eb7a # initialize rs1
li x23, 0x77d20c07 # initialize rs2
xnor x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf655c6e3 # initialize rs1
li x7, 0xcdbb947e # initialize rs2
xnor x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0de35e19 # initialize rs1
li x8, 0x7c8d440b # initialize rs2
xnor x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4e0a7767 # initialize rs1
li x9, 0x5e960bcb # initialize rs2
xnor x6, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc8c5ca3b # initialize rs1
li x29, 0x2324440a # initialize rs2
xnor x7, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4ae79aa4 # initialize rs1
li x3, 0xfa91eeee # initialize rs2
xnor x8, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2c009a7e # initialize rs1
li x29, 0xf4a6de8f # initialize rs2
xnor x9, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x73ad9b27 # initialize rs1
li x27, 0xc3200a65 # initialize rs2
xnor x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe83ab011 # initialize rs1
li x6, 0xe992907d # initialize rs2
xnor x11, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x33326ed2 # initialize rs1
li x26, 0xf564a322 # initialize rs2
xnor x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbc99da83 # initialize rs1
li x25, 0xe70d21b5 # initialize rs2
xnor x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3a071a08 # initialize rs1
li x25, 0xefc9b601 # initialize rs2
xnor x14, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x370ba636 # initialize rs1
li x12, 0x1ea6c290 # initialize rs2
xnor x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8b1bdc34 # initialize rs1
li x31, 0x4094e44c # initialize rs2
xnor x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x84e651d3 # initialize rs1
li x2, 0x39bc364f # initialize rs2
xnor x17, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x411f1419 # initialize rs1
li x18, 0xadd83701 # initialize rs2
xnor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2af1d747 # initialize rs1
li x23, 0xef402cbc # initialize rs2
xnor x19, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x60e21edc # initialize rs1
li x25, 0x3914735d # initialize rs2
xnor x20, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x83e459af # initialize rs1
li x21, 0x43b23a6a # initialize rs2
xnor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1158664e # initialize rs1
li x15, 0x8aa7dd7c # initialize rs2
xnor x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x68671d55 # initialize rs1
li x10, 0x321bd6c8 # initialize rs2
xnor x23, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x32249209 # initialize rs1
li x18, 0x5d59d6fd # initialize rs2
xnor x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5a1778aa # initialize rs1
li x28, 0xf8745583 # initialize rs2
xnor x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1da4307d # initialize rs1
li x1, 0xcd952e7d # initialize rs2
xnor x26, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x308620ff # initialize rs1
li x25, 0x1ee485c6 # initialize rs2
xnor x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5cff21ff # initialize rs1
li x13, 0x0e6e0492 # initialize rs2
xnor x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf177fc73 # initialize rs1
li x1, 0x8c6f6e25 # initialize rs2
xnor x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xae1c2b8c # initialize rs1
li x19, 0xb331ede4 # initialize rs2
xnor x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x327064c2 # initialize rs1
li x10, 0x04e19b8e # initialize rs2
xnor x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0xcd54cb7a # initialize rs1
li x0, 0x94f34ba2 # initialize rs2
xnor x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x2, 0x6daf4ae7 # initialize rs1
li x1, 0x11015dcf # initialize rs2
xnor x1, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x31, 0xee7816f1 # initialize rs1
li x2, 0x28f7cf39 # initialize rs2
xnor x2, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x24, 0x4d86ab48 # initialize rs1
li x3, 0x41de4fa0 # initialize rs2
xnor x3, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x68bffc9a # initialize rs1
li x4, 0x453f0523 # initialize rs2
xnor x4, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x2b54978a # initialize rs1
li x5, 0x7224305b # initialize rs2
xnor x5, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x05e993b1 # initialize rs1
li x6, 0x24d0d539 # initialize rs2
xnor x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x124e16ae # initialize rs1
li x7, 0xabc769f6 # initialize rs2
xnor x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x1, 0x607ac1ce # initialize rs1
li x8, 0x857ccd0f # initialize rs2
xnor x8, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x5, 0x013f550a # initialize rs1
li x9, 0x6f2f524b # initialize rs2
xnor x9, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xb75a8e94 # initialize rs1
li x10, 0xcf00a798 # initialize rs2
xnor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x9, 0xf8fe5208 # initialize rs1
li x11, 0xcef106f4 # initialize rs2
xnor x11, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x11, 0xaa6dee14 # initialize rs1
li x12, 0x6872687e # initialize rs2
xnor x12, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0xa7a13cac # initialize rs1
li x13, 0xd2477910 # initialize rs2
xnor x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x26, 0xcec8b73e # initialize rs1
li x14, 0xfb528118 # initialize rs2
xnor x14, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x20, 0x856c3d78 # initialize rs1
li x15, 0xcf689f50 # initialize rs2
xnor x15, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x30, 0xae9148ee # initialize rs1
li x16, 0x162d5687 # initialize rs2
xnor x16, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x12, 0xb22a164c # initialize rs1
li x17, 0x9daa4897 # initialize rs2
xnor x17, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0xa80461d7 # initialize rs1
li x18, 0x38dac5f3 # initialize rs2
xnor x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x7, 0x49b8a062 # initialize rs1
li x19, 0x6c29e260 # initialize rs2
xnor x19, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x16, 0x2fe9a75a # initialize rs1
li x20, 0xf435c236 # initialize rs2
xnor x20, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x880e266b # initialize rs1
li x21, 0xe32afcc6 # initialize rs2
xnor x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x117dd246 # initialize rs1
li x22, 0x9b3f03fa # initialize rs2
xnor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x22, 0x05af1784 # initialize rs1
li x23, 0x71727a08 # initialize rs2
xnor x23, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x14, 0x6b66b20c # initialize rs1
li x24, 0xf23996bc # initialize rs2
xnor x24, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x16, 0xffe8f628 # initialize rs1
li x25, 0x8d2f0a36 # initialize rs2
xnor x25, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0xbe1ceb86 # initialize rs1
li x26, 0x60f5bf07 # initialize rs2
xnor x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x13, 0xa55bea8d # initialize rs1
li x27, 0x56f92ec2 # initialize rs2
xnor x27, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x8, 0x01e6f2df # initialize rs1
li x28, 0x38ca13f9 # initialize rs2
xnor x28, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0xc47a3721 # initialize rs1
li x29, 0x31cf05cb # initialize rs2
xnor x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x0b17d6ce # initialize rs1
li x30, 0xc29d35c6 # initialize rs2
xnor x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x27, 0x4f3c7848 # initialize rs1
li x31, 0xa88fcfcd # initialize rs2
xnor x31, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x3da29ac5 # initialize rs1
li x0, 0x710d0a30 # initialize rs2
xnor x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6b29ab97 # initialize rs1
li x1, 0x331fb4a2 # initialize rs2
xnor x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3a76fdfb # initialize rs1
li x2, 0x4dea9930 # initialize rs2
xnor x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x7ede5ae2 # initialize rs1
li x3, 0xfc55a990 # initialize rs2
xnor x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd0d19dd6 # initialize rs1
li x4, 0xa72e1168 # initialize rs2
xnor x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfe784979 # initialize rs1
li x5, 0x9a8d047b # initialize rs2
xnor x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa3fecd93 # initialize rs1
li x6, 0x8b1745fc # initialize rs2
xnor x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9e4f9a0 # initialize rs1
li x7, 0xb7f58049 # initialize rs2
xnor x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xf967a25a # initialize rs1
li x8, 0x45cf4f67 # initialize rs2
xnor x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x019475da # initialize rs1
li x9, 0x822b6824 # initialize rs2
xnor x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6202c4d3 # initialize rs1
li x10, 0x50064cf4 # initialize rs2
xnor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xbd053472 # initialize rs1
li x11, 0x26a15de2 # initialize rs2
xnor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x52cbfd19 # initialize rs1
li x12, 0xd67138e4 # initialize rs2
xnor x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x9de3b393 # initialize rs1
li x13, 0x09c4c2a0 # initialize rs2
xnor x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xce857efb # initialize rs1
li x14, 0x22196d35 # initialize rs2
xnor x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x5f1cc690 # initialize rs1
li x15, 0x06ff96fe # initialize rs2
xnor x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8cd4cafe # initialize rs1
li x16, 0x2631f583 # initialize rs2
xnor x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7954205c # initialize rs1
li x17, 0x698da2fa # initialize rs2
xnor x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x31e261c6 # initialize rs1
li x18, 0x98562939 # initialize rs2
xnor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa76e92ef # initialize rs1
li x19, 0xa3b40a7d # initialize rs2
xnor x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf71d2e5d # initialize rs1
li x20, 0x2be9bcb1 # initialize rs2
xnor x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xae515859 # initialize rs1
li x21, 0x25f3d5cf # initialize rs2
xnor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x81170abd # initialize rs1
li x22, 0xa6149493 # initialize rs2
xnor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd8e13c54 # initialize rs1
li x23, 0xcbbd4827 # initialize rs2
xnor x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe1bf8c15 # initialize rs1
li x24, 0x511515eb # initialize rs2
xnor x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa5a12513 # initialize rs1
li x25, 0x981e26e5 # initialize rs2
xnor x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x5a924b2b # initialize rs1
li x26, 0x29d5973a # initialize rs2
xnor x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb3557fd8 # initialize rs1
li x27, 0xddf818f0 # initialize rs2
xnor x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc56c5ac4 # initialize rs1
li x28, 0x2e5742bc # initialize rs2
xnor x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x06333fca # initialize rs1
li x29, 0x4b0e3ef6 # initialize rs2
xnor x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x4f63f7b6 # initialize rs1
li x30, 0x9d74615a # initialize rs2
xnor x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xcb5479f0 # initialize rs1
li x31, 0xe2467dbf # initialize rs2
xnor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x18 # perform first operation
xnor x30, x9, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x24, x9 # perform first operation
xnor x12, x19, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x17, x6 # perform first operation
xnor x2, x5, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x25, x16 # perform first operation
xnor x16, x3, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x3, x30 # perform first operation
xnor x3, x13, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x9, x26 # perform first operation
xnor x9, x22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x15, x10 # perform first operation
xnor x12, x21, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x28, x15 # perform first operation
xnor x24, x14, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x17, x19 # perform first operation
xnor x14, x26, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x1, x27 # perform first operation
xnor x1, x6, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x9, x24 # perform first operation
xnor x24, x21, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x21, x23 # perform first operation
xnor x30, x29, x31 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-cpop.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd38ca53e # initialize rs1
cpop x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x41a586c2 # initialize rs1
cpop x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa08bdfca # initialize rs1
cpop x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8b594ef6 # initialize rs1
cpop x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x398f5b53 # initialize rs1
cpop x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xccdc58c8 # initialize rs1
cpop x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x49bfa276 # initialize rs1
cpop x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb666ca75 # initialize rs1
cpop x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2e2f3df0 # initialize rs1
cpop x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x39df68f9 # initialize rs1
cpop x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x1085cd1d # initialize rs1
cpop x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xae562ae2 # initialize rs1
cpop x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1ea18046 # initialize rs1
cpop x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x6e0940b4 # initialize rs1
cpop x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0acfcfd6 # initialize rs1
cpop x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa6545513 # initialize rs1
cpop x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x2dd53f61 # initialize rs1
cpop x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3a36d9b9 # initialize rs1
cpop x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xaa51e06b # initialize rs1
cpop x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x95d4017c # initialize rs1
cpop x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x29654593 # initialize rs1
cpop x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe19c1c56 # initialize rs1
cpop x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd660a578 # initialize rs1
cpop x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa3607abb # initialize rs1
cpop x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x69480a9e # initialize rs1
cpop x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x75c2fb72 # initialize rs1
cpop x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x758308f3 # initialize rs1
cpop x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0024e836 # initialize rs1
cpop x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x06c30c5a # initialize rs1
cpop x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x68f41432 # initialize rs1
cpop x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa4549a52 # initialize rs1
cpop x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xae998a4a # initialize rs1
cpop x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xe28ee28c # initialize rs1
cpop x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xc7f381d5 # initialize rs1
cpop x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xf44a5ce2 # initialize rs1
cpop x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0xf42c333e # initialize rs1
cpop x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x8aced10a # initialize rs1
cpop x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xc76373b8 # initialize rs1
cpop x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xf1b677d8 # initialize rs1
cpop x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x5161611e # initialize rs1
cpop x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0xe64d027f # initialize rs1
cpop x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x9716beaa # initialize rs1
cpop x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xee4af9de # initialize rs1
cpop x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x28cdf31b # initialize rs1
cpop x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x70d36f9b # initialize rs1
cpop x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0xafe31678 # initialize rs1
cpop x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0x3dd08f81 # initialize rs1
cpop x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0xb7770bb6 # initialize rs1
cpop x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0x018d5506 # initialize rs1
cpop x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5169c7b3 # initialize rs1
cpop x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x6395117d # initialize rs1
cpop x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x1e49d716 # initialize rs1
cpop x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x48c93dd8 # initialize rs1
cpop x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x5, 0x416928bf # initialize rs1
cpop x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x9a1cffd9 # initialize rs1
cpop x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x4749c721 # initialize rs1
cpop x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0xd7ac9f20 # initialize rs1
cpop x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x7bc793fc # initialize rs1
cpop x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x59be9b73 # initialize rs1
cpop x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xc9eb71c6 # initialize rs1
cpop x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x21, 0x7c454440 # initialize rs1
cpop x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x9e1dd940 # initialize rs1
cpop x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xdf14a6d2 # initialize rs1
cpop x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x9af05ea7 # initialize rs1
cpop x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
cpop x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x00000001 # initialize rs1
cpop x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
cpop x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x23, 0x80000000 # initialize rs1
cpop x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x16, 0x80000001 # initialize rs1
cpop x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x3, 0x7fffffff # initialize rs1
cpop x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
cpop x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
cpop x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
cpop x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
cpop x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
cpop x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
cpop x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8bf50351 # initialize rs1
cpop x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x18e6c295 # initialize rs1
cpop x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4bea50cc # initialize rs1
cpop x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x65c18b09 # initialize rs1
cpop x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x86a3cec1 # initialize rs1
cpop x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe87a8423 # initialize rs1
cpop x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd918a36b # initialize rs1
cpop x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x425e2ea5 # initialize rs1
cpop x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa871d894 # initialize rs1
cpop x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa4b73e55 # initialize rs1
cpop x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xadfae92f # initialize rs1
cpop x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xffa2f97c # initialize rs1
cpop x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x57308b0b # initialize rs1
cpop x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfe776ed9 # initialize rs1
cpop x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xef14d30f # initialize rs1
cpop x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfc588edd # initialize rs1
cpop x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1691e232 # initialize rs1
cpop x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7baacbf4 # initialize rs1
cpop x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2ee890eb # initialize rs1
cpop x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbbf86c2a # initialize rs1
cpop x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x25fe6c1d # initialize rs1
cpop x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd0988a66 # initialize rs1
cpop x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5b7d375a # initialize rs1
cpop x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0e8d4e18 # initialize rs1
cpop x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5c8729d3 # initialize rs1
cpop x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x23552057 # initialize rs1
cpop x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x018c01c1 # initialize rs1
cpop x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0df04581 # initialize rs1
cpop x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xde7cecb0 # initialize rs1
cpop x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x536e5531 # initialize rs1
cpop x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x414f0506 # initialize rs1
cpop x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7625b63f # initialize rs1
cpop x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x29, x13 # perform first operation
cpop x24, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x24, x9 # perform first operation
cpop x23, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x3, x29 # perform first operation
cpop x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x9, x31 # perform first operation
cpop x9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x8, x28 # perform first operation
cpop x19, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x9, x16 # perform first operation
cpop x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x14, x12 # perform first operation
cpop x28, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x29, x1 # perform first operation
cpop x20, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x17, x3 # perform first operation
cpop x12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x2, x27 # perform first operation
cpop x2, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x18, x29 # perform first operation
cpop x29, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x21, x6 # perform first operation
cpop x19, x3 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-rol.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x3d81421c # initialize rs1
li x5, 0x766fc36d # initialize rs2
rol x25, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb82e7449 # initialize rs1
li x17, 0x833a5356 # initialize rs2
rol x11, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcc79bcb1 # initialize rs1
li x7, 0xe7f01eed # initialize rs2
rol x5, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x7b4149f4 # initialize rs1
li x23, 0x9a07808d # initialize rs2
rol x11, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5a981371 # initialize rs1
li x2, 0xeff607c1 # initialize rs2
rol x22, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x88fa4b72 # initialize rs1
li x28, 0x73b14a31 # initialize rs2
rol x2, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcae94555 # initialize rs1
li x4, 0x19d584ad # initialize rs2
rol x30, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaafd7b16 # initialize rs1
li x1, 0x1305c0ca # initialize rs2
rol x12, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1360354a # initialize rs1
li x26, 0x23fa6351 # initialize rs2
rol x7, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0a99e421 # initialize rs1
li x25, 0x063cf873 # initialize rs2
rol x7, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x105faab3 # initialize rs1
li x17, 0xb7c59510 # initialize rs2
rol x25, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x36a1f832 # initialize rs1
li x3, 0x60cdce55 # initialize rs2
rol x25, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x2199e779 # initialize rs1
li x8, 0x42a56bbd # initialize rs2
rol x24, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5263f810 # initialize rs1
li x9, 0xab6d5c7f # initialize rs2
rol x6, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb6a1f5fb # initialize rs1
li x21, 0xd9bbc3d2 # initialize rs2
rol x12, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc8385378 # initialize rs1
li x8, 0x30e9c1e3 # initialize rs2
rol x18, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd047dedc # initialize rs1
li x24, 0xff6e1d99 # initialize rs2
rol x7, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x73dec392 # initialize rs1
li x14, 0xcc1556d3 # initialize rs2
rol x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xafca9dc0 # initialize rs1
li x30, 0xb0fc743d # initialize rs2
rol x9, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xfaaf58bf # initialize rs1
li x16, 0x94e4ab82 # initialize rs2
rol x30, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3e899d40 # initialize rs1
li x1, 0xfd945757 # initialize rs2
rol x25, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x86630d89 # initialize rs1
li x28, 0xfd380e95 # initialize rs2
rol x15, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc91572f6 # initialize rs1
li x26, 0xa045172d # initialize rs2
rol x16, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xeb2cb4c4 # initialize rs1
li x7, 0x28f2b6de # initialize rs2
rol x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x77c17c3a # initialize rs1
li x15, 0xaf2cd310 # initialize rs2
rol x28, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x728d0056 # initialize rs1
li x8, 0xcbf8c5b8 # initialize rs2
rol x14, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb05b2f89 # initialize rs1
li x15, 0xab89df5e # initialize rs2
rol x30, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3cbcd519 # initialize rs1
li x17, 0xa991ddad # initialize rs2
rol x10, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3c039cb9 # initialize rs1
li x5, 0xf4b06a72 # initialize rs2
rol x23, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xea407c73 # initialize rs1
li x28, 0xe429745e # initialize rs2
rol x8, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5440b11b # initialize rs1
li x24, 0x9b42f4f9 # initialize rs2
rol x5, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x904df8ba # initialize rs1
li x11, 0x75046414 # initialize rs2
rol x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x85991955 # initialize rs1
li x0, 0xc21fdb62 # initialize rs2
rol x22, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x27, 0x5a29a208 # initialize rs1
li x1, 0xba13cd92 # initialize rs2
rol x29, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x26a068e9 # initialize rs1
li x2, 0x8f196ca7 # initialize rs2
rol x27, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0xd335c2ca # initialize rs1
li x3, 0x7c2c3227 # initialize rs2
rol x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x6fd219db # initialize rs1
li x4, 0xe7a77d57 # initialize rs2
rol x22, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x5bf642bc # initialize rs1
li x5, 0xd37e54b4 # initialize rs2
rol x17, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xbdffba21 # initialize rs1
li x6, 0xea81e7eb # initialize rs2
rol x1, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x9a8ead5b # initialize rs1
li x7, 0x61c3bd60 # initialize rs2
rol x10, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x26e82857 # initialize rs1
li x8, 0xba2818c5 # initialize rs2
rol x17, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x00865562 # initialize rs1
li x9, 0x923ae8b1 # initialize rs2
rol x27, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x46ee678a # initialize rs1
li x10, 0x361a1ed2 # initialize rs2
rol x20, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0x9b3dd69a # initialize rs1
li x11, 0xba83f04d # initialize rs2
rol x13, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0x1b06cf6f # initialize rs1
li x12, 0xfac22094 # initialize rs2
rol x8, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x9a37a101 # initialize rs1
li x13, 0x64645dad # initialize rs2
rol x28, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0x83b13e2d # initialize rs1
li x14, 0x7f683b8d # initialize rs2
rol x6, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xdbd1b79f # initialize rs1
li x15, 0x25ad675f # initialize rs2
rol x30, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xfbe9b589 # initialize rs1
li x16, 0xb54d5b80 # initialize rs2
rol x3, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0xf4051e21 # initialize rs1
li x17, 0x9fea269f # initialize rs2
rol x13, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x275da8ba # initialize rs1
li x18, 0x6baeb8de # initialize rs2
rol x20, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x23, 0x2b70bee0 # initialize rs1
li x19, 0x6d03fa54 # initialize rs2
rol x28, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x2, 0x1a3710f0 # initialize rs1
li x20, 0x263f740b # initialize rs2
rol x30, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0xe0b0a0a7 # initialize rs1
li x21, 0x0d382c0c # initialize rs2
rol x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x850b9fd8 # initialize rs1
li x22, 0xd6133945 # initialize rs2
rol x28, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x49c43367 # initialize rs1
li x23, 0x2f0c31ce # initialize rs2
rol x20, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xde932702 # initialize rs1
li x24, 0x8416f24d # initialize rs2
rol x5, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x263f9726 # initialize rs1
li x25, 0x674d8c00 # initialize rs2
rol x5, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x18391b21 # initialize rs1
li x26, 0xe2c6e61d # initialize rs2
rol x19, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x7551af40 # initialize rs1
li x27, 0x26f41b87 # initialize rs2
rol x2, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0xbf2c0d0e # initialize rs1
li x28, 0x1dc4bae4 # initialize rs2
rol x21, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x62f38530 # initialize rs1
li x29, 0xcde46bb7 # initialize rs2
rol x11, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x53800981 # initialize rs1
li x30, 0xcbca0164 # initialize rs2
rol x17, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x16e54d76 # initialize rs1
li x31, 0x9d91f89f # initialize rs2
rol x20, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xbefb3d54 # initialize rs1
li x7, 0x5fe715f1 # initialize rs2
rol x0, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x20789bfc # initialize rs1
li x13, 0x48690a9a # initialize rs2
rol x1, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x597e2991 # initialize rs1
li x2, 0xef04048e # initialize rs2
rol x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0xb8af3f5a # initialize rs1
li x13, 0x132f8eb1 # initialize rs2
rol x3, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x76a44fd1 # initialize rs1
li x23, 0xd0ade9e7 # initialize rs2
rol x4, x19, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x238643f1 # initialize rs1
li x13, 0x786e1c3b # initialize rs2
rol x5, x11, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x49d28022 # initialize rs1
li x29, 0xd87297a1 # initialize rs2
rol x6, x27, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x92e7a45b # initialize rs1
li x19, 0xe57e6f85 # initialize rs2
rol x7, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x50bd11f1 # initialize rs1
li x16, 0xeedc7f95 # initialize rs2
rol x8, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x9b4b326e # initialize rs1
li x26, 0x5433cb34 # initialize rs2
rol x9, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x44001d1e # initialize rs1
li x13, 0x29a1b792 # initialize rs2
rol x10, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x29, 0xd6cd46f9 # initialize rs1
li x9, 0xad7e02c6 # initialize rs2
rol x11, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x56c244d7 # initialize rs1
li x3, 0x8b16853f # initialize rs2
rol x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0xf46965f6 # initialize rs1
li x26, 0x082c11b8 # initialize rs2
rol x13, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0x4f3cea2e # initialize rs1
li x9, 0xe20c4c80 # initialize rs2
rol x14, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x37a013e3 # initialize rs1
li x16, 0x9cd1f7dd # initialize rs2
rol x15, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0x9ff8d2ca # initialize rs1
li x13, 0xfc194f5e # initialize rs2
rol x16, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0xc92bd8f2 # initialize rs1
li x14, 0x94022cd5 # initialize rs2
rol x17, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x8b97abc5 # initialize rs1
li x22, 0xe5e9cc15 # initialize rs2
rol x18, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xe5d06425 # initialize rs1
li x21, 0x35b5e0d1 # initialize rs2
rol x19, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x394f6f79 # initialize rs1
li x27, 0x0458e43b # initialize rs2
rol x20, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0xa52f1ba6 # initialize rs1
li x7, 0x41fe110a # initialize rs2
rol x21, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x3ed141a2 # initialize rs1
li x10, 0x44e9c372 # initialize rs2
rol x22, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x9a52c044 # initialize rs1
li x31, 0x2a99eee0 # initialize rs2
rol x23, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x04610aa0 # initialize rs1
li x26, 0x3b219ef3 # initialize rs2
rol x24, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x9fa9ba93 # initialize rs1
li x7, 0x4c159f65 # initialize rs2
rol x25, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xd504ad3c # initialize rs1
li x22, 0xb975ca21 # initialize rs2
rol x26, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0xb6ae2e4d # initialize rs1
li x10, 0xf1690a02 # initialize rs2
rol x27, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0xfbbc0e6e # initialize rs1
li x22, 0xd78617f1 # initialize rs2
rol x28, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0xb94b068e # initialize rs1
li x6, 0x9b4bd733 # initialize rs2
rol x29, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x12fc38ac # initialize rs1
li x18, 0x5543ed63 # initialize rs2
rol x30, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x3269ff8a # initialize rs1
li x14, 0x78f07da3 # initialize rs2
rol x31, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x00000000 # initialize rs1
li x30, 0xf4c90957 # initialize rs2
rol x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x00000001 # initialize rs1
li x25, 0x9831d468 # initialize rs2
rol x28, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rs1
li x11, 0xceaab037 # initialize rs2
rol x29, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
li x27, 0x08d0dcca # initialize rs2
rol x26, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x7, 0x80000001 # initialize rs1
li x21, 0xfce07f3d # initialize rs2
rol x14, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x8, 0xe775c20c # initialize rs2
rol x26, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0x7ffffffe # initialize rs1
li x30, 0x3cbd7166 # initialize rs2
rol x6, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x26, 0x86e30287 # initialize rs2
rol x10, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x26, 0xbe3a7de8 # initialize rs2
rol x9, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x22, 0xb10d91be # initialize rs2
rol x23, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x13, 0x7d9377b2 # initialize rs2
rol x1, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
li x29, 0xb9698ef8 # initialize rs2
rol x28, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xf53f568b # initialize rs1
li x25, 0x00000000 # initialize rs2
rol x24, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0x42aff286 # initialize rs1
li x6, 0x00000001 # initialize rs2
rol x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x0a900b69 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x31, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0xba40705a # initialize rs1
li x29, 0x80000000 # initialize rs2
rol x28, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x2, 0x3f88cdca # initialize rs1
li x5, 0x80000001 # initialize rs2
rol x20, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x27, 0x5d0d5b28 # initialize rs1
li x7, 0x7fffffff # initialize rs2
rol x5, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x551d9e22 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
rol x17, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0x3419c8c4 # initialize rs1
li x8, 0xffffffff # initialize rs2
rol x7, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xade3af5d # initialize rs1
li x3, 0xfffffffe # initialize rs2
rol x28, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x25, 0xbe02b71f # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
rol x2, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x23, 0xb4afb4f7 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
rol x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0x8a4a3a7f # initialize rs1
li x13, 0x55555555 # initialize rs2
rol x28, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x20, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
rol x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x00000000 # initialize rs1
li x6, 0x00000001 # initialize rs2
rol x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x13, 0x00000000 # initialize rs1
li x21, 0x00000002 # initialize rs2
rol x19, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x6, 0x00000000 # initialize rs1
li x12, 0x80000000 # initialize rs2
rol x1, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x00000000 # initialize rs1
li x2, 0x80000001 # initialize rs2
rol x12, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x30, 0x00000000 # initialize rs1
li x2, 0x7fffffff # initialize rs2
rol x12, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x27, 0x00000000 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rol x18, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x00000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
rol x20, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x13, 0x00000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
rol x29, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x3, 0x00000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
rol x28, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x19, 0x00000000 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
rol x20, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x15, 0x00000000 # initialize rs1
li x19, 0x55555555 # initialize rs2
rol x31, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
rol x24, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x00000001 # initialize rs1
li x5, 0x00000001 # initialize rs2
rol x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0x00000001 # initialize rs1
li x17, 0x00000002 # initialize rs2
rol x25, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x1, 0x00000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
rol x17, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x10, 0x00000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
rol x11, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x00000001 # initialize rs1
li x25, 0x7fffffff # initialize rs2
rol x24, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x11, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
rol x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x24, 0x00000001 # initialize rs1
li x5, 0xffffffff # initialize rs2
rol x11, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x00000001 # initialize rs1
li x12, 0xfffffffe # initialize rs2
rol x27, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x17, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
rol x31, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
rol x22, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x29, 0x00000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
rol x5, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
rol x1, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x00000002 # initialize rs1
li x19, 0x00000001 # initialize rs2
rol x22, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x16, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x17, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x3, 0x00000002 # initialize rs1
li x24, 0x80000000 # initialize rs2
rol x2, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x23, 0x00000002 # initialize rs1
li x6, 0x80000001 # initialize rs2
rol x18, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x29, 0x00000002 # initialize rs1
li x31, 0x7fffffff # initialize rs2
rol x13, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x23, 0x00000002 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
rol x15, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x1, 0x00000002 # initialize rs1
li x23, 0xffffffff # initialize rs2
rol x2, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x27, 0x00000002 # initialize rs1
li x6, 0xfffffffe # initialize rs2
rol x9, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x29, 0x00000002 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
rol x6, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x1, 0x00000002 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
rol x11, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x16, 0x00000002 # initialize rs1
li x10, 0x55555555 # initialize rs2
rol x24, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x1, 0x80000000 # initialize rs1
li x13, 0x00000000 # initialize rs2
rol x24, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x80000000 # initialize rs1
li x8, 0x00000001 # initialize rs2
rol x5, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x14, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x15, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
rol x9, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x5, 0x80000000 # initialize rs1
li x29, 0x80000001 # initialize rs2
rol x12, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x11, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
rol x18, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
rol x22, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
rol x18, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x22, 0x80000000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
rol x12, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x29, 0x80000000 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
rol x14, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x28, 0x80000000 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
rol x1, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x17, 0x80000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
rol x24, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
rol x12, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x15, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
rol x16, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x25, 0x80000001 # initialize rs1
li x20, 0x00000002 # initialize rs2
rol x13, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
rol x27, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x24, 0x80000001 # initialize rs1
li x22, 0x80000001 # initialize rs2
rol x9, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x80000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
rol x20, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x17, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
rol x8, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x12, 0x80000001 # initialize rs1
li x14, 0xffffffff # initialize rs2
rol x26, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x31, 0x80000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
rol x13, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x28, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
rol x17, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0x80000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
rol x21, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x80000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
rol x28, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x13, 0x7fffffff # initialize rs1
li x11, 0x00000000 # initialize rs2
rol x12, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x30, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
rol x23, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x8, 0x7fffffff # initialize rs1
li x20, 0x00000002 # initialize rs2
rol x3, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x8, 0x7fffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
rol x3, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x28, 0x80000001 # initialize rs2
rol x17, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
rol x22, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x20, 0x7fffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
rol x30, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x15, 0x7fffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
rol x14, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x14, 0x7fffffff # initialize rs1
li x29, 0xfffffffe # initialize rs2
rol x1, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x18, 0x7fffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
rol x14, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x16, 0x7fffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
rol x15, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x24, 0x7fffffff # initialize rs1
li x20, 0x55555555 # initialize rs2
rol x18, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x18, 0x7ffffffe # initialize rs1
li x11, 0x00000000 # initialize rs2
rol x26, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x16, 0x7ffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
rol x26, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x7ffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
rol x12, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x10, 0x7ffffffe # initialize rs1
li x29, 0x80000000 # initialize rs2
rol x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
rol x1, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x28, 0x7ffffffe # initialize rs1
li x6, 0x7fffffff # initialize rs2
rol x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
rol x17, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x30, 0x7ffffffe # initialize rs1
li x19, 0xffffffff # initialize rs2
rol x29, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
rol x26, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x14, 0x7ffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
rol x6, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x20, 0x7ffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
rol x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x7, 0x7ffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
rol x31, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0xffffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
rol x6, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
rol x26, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0xffffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
rol x12, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x24, 0xffffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
rol x7, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x25, 0xffffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
rol x6, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
rol x24, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x13, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
rol x8, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
rol x29, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0xffffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
rol x10, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x22, 0xffffffff # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
rol x13, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x24, 0xffffffff # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rol x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x8, 0x55555555 # initialize rs2
rol x16, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x1, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
rol x29, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0xfffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
rol x31, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xfffffffe # initialize rs1
li x5, 0x00000002 # initialize rs2
rol x26, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x17, 0xfffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
rol x3, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x24, 0xfffffffe # initialize rs1
li x13, 0x80000001 # initialize rs2
rol x16, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x23, 0xfffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
rol x14, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
rol x1, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0xfffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
rol x14, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
rol x1, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x29, 0xfffffffe # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
rol x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
rol x15, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x1, 0xfffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
rol x28, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x30, 0x5bbc8872 # initialize rs1
li x9, 0x00000000 # initialize rs2
rol x2, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x18, 0x5bbc8872 # initialize rs1
li x31, 0x00000001 # initialize rs2
rol x21, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x29, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
rol x15, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x14, 0x5bbc8872 # initialize rs1
li x6, 0x80000000 # initialize rs2
rol x25, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x21, 0x5bbc8872 # initialize rs1
li x23, 0x80000001 # initialize rs2
rol x18, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x23, 0x5bbc8872 # initialize rs1
li x31, 0x7fffffff # initialize rs2
rol x26, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rol x7, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x16, 0x5bbc8872 # initialize rs1
li x27, 0xffffffff # initialize rs2
rol x13, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x18, 0xfffffffe # initialize rs2
rol x14, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
rol x6, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x17, 0x5bbc8872 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
rol x19, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x12, 0x5bbc8872 # initialize rs1
li x29, 0x55555555 # initialize rs2
rol x2, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x13, 0xaaaaaaaa # initialize rs1
li x29, 0x00000000 # initialize rs2
rol x24, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaa # initialize rs1
li x12, 0x00000001 # initialize rs2
rol x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaa # initialize rs1
li x18, 0x00000002 # initialize rs2
rol x25, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x30, 0xaaaaaaaa # initialize rs1
li x15, 0x80000000 # initialize rs2
rol x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x7, 0xaaaaaaaa # initialize rs1
li x31, 0x80000001 # initialize rs2
rol x25, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x28, 0xaaaaaaaa # initialize rs1
li x6, 0x7fffffff # initialize rs2
rol x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x26, 0x7ffffffe # initialize rs2
rol x10, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x1, 0xffffffff # initialize rs2
rol x9, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x22, 0xaaaaaaaa # initialize rs1
li x25, 0xfffffffe # initialize rs2
rol x11, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x12, 0xaaaaaaaa # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
rol x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
rol x7, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x7, 0xaaaaaaaa # initialize rs1
li x19, 0x55555555 # initialize rs2
rol x27, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x5, 0x00000000 # initialize rs2
rol x6, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x10, 0x55555555 # initialize rs1
li x14, 0x00000001 # initialize rs2
rol x9, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x3, 0x00000002 # initialize rs2
rol x18, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x55555555 # initialize rs1
li x25, 0x80000000 # initialize rs2
rol x21, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x25, 0x55555555 # initialize rs1
li x27, 0x80000001 # initialize rs2
rol x6, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x21, 0x55555555 # initialize rs1
li x16, 0x7fffffff # initialize rs2
rol x10, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
rol x27, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x31, 0x55555555 # initialize rs1
li x2, 0xffffffff # initialize rs2
rol x25, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x27, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
rol x17, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x15, 0x55555555 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
rol x29, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0x55555555 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
rol x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x23, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
rol x15, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x2f420339 # initialize rs1
li x0, 0xc7f672ad # initialize rs2
rol x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa55a85a6 # initialize rs1
li x1, 0x55ab893d # initialize rs2
rol x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xb589501f # initialize rs1
li x2, 0xc2fa90a9 # initialize rs2
rol x31, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x98629c45 # initialize rs1
li x3, 0x73ada092 # initialize rs2
rol x26, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xeca8a2e7 # initialize rs1
li x4, 0x9c2e071c # initialize rs2
rol x2, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x07aa9a0b # initialize rs1
li x5, 0x94c7710d # initialize rs2
rol x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe44fb82e # initialize rs1
li x6, 0xe22470cf # initialize rs2
rol x2, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa3b1e127 # initialize rs1
li x7, 0xc778b3b8 # initialize rs2
rol x14, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x96e007b9 # initialize rs1
li x8, 0x2739469c # initialize rs2
rol x7, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe45df1dd # initialize rs1
li x9, 0xec7a75e7 # initialize rs2
rol x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd502e801 # initialize rs1
li x10, 0xd1845b66 # initialize rs2
rol x30, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x9c0f3162 # initialize rs1
li x11, 0x40544aa5 # initialize rs2
rol x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5f9bcb92 # initialize rs1
li x12, 0x4422d5fc # initialize rs2
rol x13, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xedff9992 # initialize rs1
li x13, 0x197fe28d # initialize rs2
rol x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xef9ceda8 # initialize rs1
li x14, 0xc3151d58 # initialize rs2
rol x29, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6058c967 # initialize rs1
li x15, 0x565939ef # initialize rs2
rol x21, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc4bc2e70 # initialize rs1
li x16, 0x73853f29 # initialize rs2
rol x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xaf44f68e # initialize rs1
li x17, 0x6579a7cb # initialize rs2
rol x14, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1916d296 # initialize rs1
li x18, 0xf936aae3 # initialize rs2
rol x16, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xecb32dee # initialize rs1
li x19, 0x88e10b9e # initialize rs2
rol x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe70bd9d1 # initialize rs1
li x20, 0x1ac9a78f # initialize rs2
rol x15, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe21c03cc # initialize rs1
li x21, 0x59d66a8f # initialize rs2
rol x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x253e6b78 # initialize rs1
li x22, 0x901f69af # initialize rs2
rol x2, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2d34f666 # initialize rs1
li x23, 0x290cc8be # initialize rs2
rol x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x284b07fb # initialize rs1
li x24, 0x23f54496 # initialize rs2
rol x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x1ca0db9a # initialize rs1
li x25, 0xf0caa93f # initialize rs2
rol x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd7750f2b # initialize rs1
li x26, 0xbb4a4fa8 # initialize rs2
rol x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xeb68ece2 # initialize rs1
li x27, 0x0e0bae84 # initialize rs2
rol x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcacb7544 # initialize rs1
li x28, 0x217b09a3 # initialize rs2
rol x24, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x66d0325a # initialize rs1
li x29, 0xdee991ab # initialize rs2
rol x7, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x10cd9633 # initialize rs1
li x30, 0x51f97ca6 # initialize rs2
rol x2, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xbd3323c7 # initialize rs1
li x31, 0x83490be7 # initialize rs2
rol x7, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xde53ae2f # initialize rs1
li x25, 0x333ecb8e # initialize rs2
rol x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb945b2cc # initialize rs1
li x1, 0x00512bbb # initialize rs2
rol x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9de6746e # initialize rs1
li x18, 0x6b8a3374 # initialize rs2
rol x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x65b04276 # initialize rs1
li x23, 0x4f8ceecc # initialize rs2
rol x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6c9da76f # initialize rs1
li x20, 0x522c7d18 # initialize rs2
rol x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe8448fb6 # initialize rs1
li x12, 0x92a50dd7 # initialize rs2
rol x5, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb7520917 # initialize rs1
li x24, 0xe4fd38c2 # initialize rs2
rol x6, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6152b0cd # initialize rs1
li x2, 0xf17872e6 # initialize rs2
rol x7, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8854dec0 # initialize rs1
li x23, 0xb50d435f # initialize rs2
rol x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd5dd0725 # initialize rs1
li x23, 0x1c1ec28a # initialize rs2
rol x9, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd779f5ae # initialize rs1
li x17, 0xb3e185c1 # initialize rs2
rol x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2d53d8fc # initialize rs1
li x13, 0x24ae8990 # initialize rs2
rol x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x79f902fc # initialize rs1
li x27, 0x184b3e3c # initialize rs2
rol x12, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9d8f3656 # initialize rs1
li x9, 0x2b3ee7e6 # initialize rs2
rol x13, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5650a603 # initialize rs1
li x15, 0xd7bb9394 # initialize rs2
rol x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x90f66cca # initialize rs1
li x11, 0x2e02fa7a # initialize rs2
rol x15, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8cb961ee # initialize rs1
li x5, 0xe3e0c9f5 # initialize rs2
rol x16, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xddec4a6d # initialize rs1
li x9, 0x9ea168e3 # initialize rs2
rol x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe5dbce2a # initialize rs1
li x28, 0x758940e6 # initialize rs2
rol x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb420ce27 # initialize rs1
li x1, 0x9ed77ca2 # initialize rs2
rol x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x448fcbfb # initialize rs1
li x22, 0x4607da3f # initialize rs2
rol x20, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x547a1fc9 # initialize rs1
li x15, 0xf27cc3e8 # initialize rs2
rol x21, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xef61a5ff # initialize rs1
li x10, 0x7e86bebe # initialize rs2
rol x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfa3bf159 # initialize rs1
li x15, 0x823eb129 # initialize rs2
rol x23, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x80e59e8e # initialize rs1
li x1, 0x1c3843d0 # initialize rs2
rol x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaac77223 # initialize rs1
li x22, 0xbaebb9a3 # initialize rs2
rol x25, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0b0b8e48 # initialize rs1
li x1, 0xa370333d # initialize rs2
rol x26, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x046de793 # initialize rs1
li x30, 0xcc6b635e # initialize rs2
rol x27, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x36c1b069 # initialize rs1
li x28, 0x3bbac340 # initialize rs2
rol x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe391ebb3 # initialize rs1
li x14, 0xfa9ad254 # initialize rs2
rol x29, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9d877397 # initialize rs1
li x16, 0xfdce04c2 # initialize rs2
rol x30, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3c5631ea # initialize rs1
li x10, 0x449d9350 # initialize rs2
rol x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0x9935abb9 # initialize rs1
li x0, 0x48189ea4 # initialize rs2
rol x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0xb2476137 # initialize rs1
li x1, 0x0c575c64 # initialize rs2
rol x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x18, 0x4d0e8693 # initialize rs1
li x2, 0xbecf0b96 # initialize rs2
rol x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0xf54aec76 # initialize rs1
li x3, 0x92c322c1 # initialize rs2
rol x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xc76df9a0 # initialize rs1
li x4, 0x5eae8d98 # initialize rs2
rol x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xace7ef46 # initialize rs1
li x5, 0x3e4988c8 # initialize rs2
rol x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x19, 0x09f01a9d # initialize rs1
li x6, 0x757c5298 # initialize rs2
rol x6, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xf02124a0 # initialize rs1
li x7, 0xc4b09e61 # initialize rs2
rol x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x23, 0xa0353df2 # initialize rs1
li x8, 0x1bf9809e # initialize rs2
rol x8, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0x3e6ac4e1 # initialize rs1
li x9, 0x314b2020 # initialize rs2
rol x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x27, 0xdb9e0650 # initialize rs1
li x10, 0xa4284f87 # initialize rs2
rol x10, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x80ebf599 # initialize rs1
li x11, 0xa5981b5f # initialize rs2
rol x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0xf6cdc293 # initialize rs1
li x12, 0x36a4a4eb # initialize rs2
rol x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0xe0fffa3d # initialize rs1
li x13, 0xe5fe8022 # initialize rs2
rol x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x15, 0xdf519bd6 # initialize rs1
li x14, 0x3ed15c75 # initialize rs2
rol x14, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x25, 0xea737251 # initialize rs1
li x15, 0xa54df0f9 # initialize rs2
rol x15, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x30, 0xe8af02d7 # initialize rs1
li x16, 0x09666724 # initialize rs2
rol x16, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0x42a46a8e # initialize rs1
li x17, 0x62282b63 # initialize rs2
rol x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0x2e490df6 # initialize rs1
li x18, 0x989b495e # initialize rs2
rol x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xde3e147f # initialize rs1
li x19, 0x8e28c258 # initialize rs2
rol x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0x5de13682 # initialize rs1
li x20, 0xa5bce1e5 # initialize rs2
rol x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0xd879b3a9 # initialize rs1
li x21, 0xb78b7540 # initialize rs2
rol x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x18, 0xd0de147c # initialize rs1
li x22, 0xa0a98a05 # initialize rs2
rol x22, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0xad180c9a # initialize rs1
li x23, 0x10d11912 # initialize rs2
rol x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x30, 0x5679b0b9 # initialize rs1
li x24, 0x4b6bd3da # initialize rs2
rol x24, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0xd8c7e7ed # initialize rs1
li x25, 0xde3dac3e # initialize rs2
rol x25, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x52ded8bc # initialize rs1
li x26, 0xacb4977d # initialize rs2
rol x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xf13ef817 # initialize rs1
li x27, 0x543eaa67 # initialize rs2
rol x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x30, 0xd5f02836 # initialize rs1
li x28, 0x0a2020c4 # initialize rs2
rol x28, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x27, 0xcc8757a0 # initialize rs1
li x29, 0x94d00b95 # initialize rs2
rol x29, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x27, 0xfa556860 # initialize rs1
li x30, 0x6bf3eb3f # initialize rs2
rol x30, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x3, 0xf9784338 # initialize rs1
li x31, 0x295a946e # initialize rs2
rol x31, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xf45e2efb # initialize rs1
li x0, 0x4734f08f # initialize rs2
rol x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc1cb523c # initialize rs1
li x1, 0xa3567e31 # initialize rs2
rol x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x660d6d38 # initialize rs1
li x2, 0x4f698920 # initialize rs2
rol x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa3d421b3 # initialize rs1
li x3, 0xf4f8ef45 # initialize rs2
rol x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x90a2c1f3 # initialize rs1
li x4, 0x549c9d49 # initialize rs2
rol x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x82d5c28e # initialize rs1
li x5, 0x68eca56d # initialize rs2
rol x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3d3f306a # initialize rs1
li x6, 0xc27d374f # initialize rs2
rol x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4678e0e2 # initialize rs1
li x7, 0x6a400efa # initialize rs2
rol x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcb6bcfa9 # initialize rs1
li x8, 0x9f33c64d # initialize rs2
rol x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xbf027a30 # initialize rs1
li x9, 0xd0cb2148 # initialize rs2
rol x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x442cb3f4 # initialize rs1
li x10, 0x4034dce3 # initialize rs2
rol x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xde3756ea # initialize rs1
li x11, 0xc6ddc2b9 # initialize rs2
rol x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc2206f4b # initialize rs1
li x12, 0x6c2b09a8 # initialize rs2
rol x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x02dbe486 # initialize rs1
li x13, 0x22c5ed23 # initialize rs2
rol x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xcda6be68 # initialize rs1
li x14, 0x321a1089 # initialize rs2
rol x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3a6a8b2e # initialize rs1
li x15, 0xf2438c42 # initialize rs2
rol x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0c5c78cc # initialize rs1
li x16, 0xd241e24a # initialize rs2
rol x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xcde11240 # initialize rs1
li x17, 0x4511182c # initialize rs2
rol x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x04f8bb17 # initialize rs1
li x18, 0xfafddb02 # initialize rs2
rol x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdafdecbf # initialize rs1
li x19, 0xb3d0060e # initialize rs2
rol x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf536da97 # initialize rs1
li x20, 0xd3a93689 # initialize rs2
rol x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x761558d1 # initialize rs1
li x21, 0x82a940f1 # initialize rs2
rol x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xd8b12d4a # initialize rs1
li x22, 0xc8e388cc # initialize rs2
rol x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7e6bb37f # initialize rs1
li x23, 0xd96186f8 # initialize rs2
rol x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x860a3ad7 # initialize rs1
li x24, 0x41ca69ed # initialize rs2
rol x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xffe5d253 # initialize rs1
li x25, 0xd2f5d783 # initialize rs2
rol x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc924a422 # initialize rs1
li x26, 0x3f2fa41e # initialize rs2
rol x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2162c990 # initialize rs1
li x27, 0x3b20fc39 # initialize rs2
rol x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xff3bccd0 # initialize rs1
li x28, 0x72c494b2 # initialize rs2
rol x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8d1ba292 # initialize rs1
li x29, 0x28e27f60 # initialize rs2
rol x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd4018a1c # initialize rs1
li x30, 0xf56620eb # initialize rs2
rol x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1d0748cf # initialize rs1
li x31, 0x80e89d6b # initialize rs2
rol x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x2 # perform first operation
rol x29, x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x24, x8 # perform first operation
rol x6, x15, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x20, x16 # perform first operation
rol x10, x6, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x9, x19 # perform first operation
rol x19, x10, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x7, x9 # perform first operation
rol x15, x10, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x3, x16 # perform first operation
rol x10, x7, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x18, x12 # perform first operation
rol x3, x5, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x17, x13 # perform first operation
rol x6, x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x12, x19 # perform first operation
rol x29, x21, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x30, x29 # perform first operation
rol x30, x20, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x11, x29 # perform first operation
rol x29, x15, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x26, x5 # perform first operation
rol x15, x14, x3 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-ror.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd2876daf # initialize rs1
li x24, 0x1b5f62c0 # initialize rs2
ror x14, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa0cb7b48 # initialize rs1
li x16, 0x2b1fec7b # initialize rs2
ror x14, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf66ce77c # initialize rs1
li x1, 0x616d7389 # initialize rs2
ror x15, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd9d83ed2 # initialize rs1
li x21, 0xaf66a7f7 # initialize rs2
ror x8, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1e7097d # initialize rs1
li x3, 0xf34656b7 # initialize rs2
ror x6, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc6b21414 # initialize rs1
li x23, 0x311087de # initialize rs2
ror x19, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5eecf1dc # initialize rs1
li x21, 0x5537e6ca # initialize rs2
ror x3, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xea9529c7 # initialize rs1
li x9, 0x4cdb3948 # initialize rs2
ror x12, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x4f26febd # initialize rs1
li x16, 0xb2f25c4b # initialize rs2
ror x28, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2a59f43c # initialize rs1
li x20, 0xd6d6908c # initialize rs2
ror x6, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb53836e0 # initialize rs1
li x17, 0xd2b1ad7a # initialize rs2
ror x27, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5e310ae3 # initialize rs1
li x17, 0xb510e3c0 # initialize rs2
ror x31, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x09ce7d18 # initialize rs1
li x24, 0x2fe7ad4f # initialize rs2
ror x22, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x89b492a7 # initialize rs1
li x31, 0x309bf4b6 # initialize rs2
ror x22, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x60a8dece # initialize rs1
li x16, 0x513bb37f # initialize rs2
ror x7, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc586be56 # initialize rs1
li x19, 0x2737838d # initialize rs2
ror x17, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0d196ba4 # initialize rs1
li x7, 0xa6ab3778 # initialize rs2
ror x10, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x88a66daf # initialize rs1
li x10, 0x2c16bda0 # initialize rs2
ror x3, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x64dc6b10 # initialize rs1
li x21, 0xfcd22acf # initialize rs2
ror x1, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x480692b8 # initialize rs1
li x21, 0x90662dbf # initialize rs2
ror x10, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd5862539 # initialize rs1
li x25, 0x4d2b0ff3 # initialize rs2
ror x3, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf566f8ff # initialize rs1
li x6, 0x438ce9e7 # initialize rs2
ror x16, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5440fc18 # initialize rs1
li x18, 0xbfb3b8fb # initialize rs2
ror x9, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbff77f13 # initialize rs1
li x5, 0x3e24c8a9 # initialize rs2
ror x27, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2e815a15 # initialize rs1
li x31, 0x4f5b63ba # initialize rs2
ror x17, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9c634132 # initialize rs1
li x24, 0xd5c721c0 # initialize rs2
ror x14, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9c24de15 # initialize rs1
li x21, 0x6d063c1d # initialize rs2
ror x9, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0d15d61e # initialize rs1
li x19, 0x0910867e # initialize rs2
ror x8, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf38c69ec # initialize rs1
li x10, 0x0577494d # initialize rs2
ror x14, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x4b7b6f91 # initialize rs1
li x7, 0x48550564 # initialize rs2
ror x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xaeb0b722 # initialize rs1
li x17, 0xe16b70eb # initialize rs2
ror x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x10d2cc51 # initialize rs1
li x29, 0x739554cb # initialize rs2
ror x24, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x3a2a2c4b # initialize rs1
li x0, 0x7d17be56 # initialize rs2
ror x3, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x15, 0x2acfe943 # initialize rs1
li x1, 0x7db219d9 # initialize rs2
ror x11, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0xfeed7025 # initialize rs1
li x2, 0xb2b82754 # initialize rs2
ror x27, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0xacc02c95 # initialize rs1
li x3, 0x55c486d2 # initialize rs2
ror x30, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0xad88db71 # initialize rs1
li x4, 0xa9593aa4 # initialize rs2
ror x16, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xc7011466 # initialize rs1
li x5, 0x7c033076 # initialize rs2
ror x2, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0xdb178b73 # initialize rs1
li x6, 0xae8e4f49 # initialize rs2
ror x24, x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x05649e52 # initialize rs1
li x7, 0x36ae5380 # initialize rs2
ror x15, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0x69b65d0a # initialize rs1
li x8, 0xeec7a090 # initialize rs2
ror x12, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0xc3ddcd28 # initialize rs1
li x9, 0x930fa7ea # initialize rs2
ror x13, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0xe5305a8d # initialize rs1
li x10, 0xc8bf1e9b # initialize rs2
ror x13, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0xcc507aae # initialize rs1
li x11, 0x819855e2 # initialize rs2
ror x31, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x22, 0x750c58cb # initialize rs1
li x12, 0x13ba42c9 # initialize rs2
ror x24, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x94db0eb7 # initialize rs1
li x13, 0x3e67941c # initialize rs2
ror x5, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0xaef50104 # initialize rs1
li x14, 0x0df9292e # initialize rs2
ror x19, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0xeb33c71d # initialize rs1
li x15, 0xa7348c98 # initialize rs2
ror x3, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0x96e939de # initialize rs1
li x16, 0x56a58f90 # initialize rs2
ror x1, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0x747d6d97 # initialize rs1
li x17, 0x4c5c58aa # initialize rs2
ror x14, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0x3b312879 # initialize rs1
li x18, 0xc6804294 # initialize rs2
ror x3, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0x022ffe1d # initialize rs1
li x19, 0x05084528 # initialize rs2
ror x9, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x29, 0x036b74a4 # initialize rs1
li x20, 0xbcd4f668 # initialize rs2
ror x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0x998c28b5 # initialize rs1
li x21, 0xa7d543c0 # initialize rs2
ror x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0x5770401e # initialize rs1
li x22, 0xf0fb87b3 # initialize rs2
ror x9, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x24, 0xff1261f0 # initialize rs1
li x23, 0xa2cfbeb4 # initialize rs2
ror x12, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0xf661e8fe # initialize rs1
li x24, 0x1b1b9fd1 # initialize rs2
ror x20, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0x7b57f3e3 # initialize rs1
li x25, 0x7769e69f # initialize rs2
ror x28, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xb5cd3c21 # initialize rs1
li x26, 0x581e1018 # initialize rs2
ror x19, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x270bb2c1 # initialize rs1
li x27, 0x4255a0fa # initialize rs2
ror x22, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x51b24b07 # initialize rs1
li x28, 0x2eed049f # initialize rs2
ror x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x25, 0xf21f6cc7 # initialize rs1
li x29, 0xd5b3e906 # initialize rs2
ror x24, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x5, 0xccc50841 # initialize rs1
li x30, 0xbf817301 # initialize rs2
ror x31, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x5, 0xa0120ba6 # initialize rs1
li x31, 0x8f0cf238 # initialize rs2
ror x29, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 252)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x315e4dee # initialize rs1
li x23, 0x21ef89ed # initialize rs2
ror x0, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x5929d75b # initialize rs1
li x1, 0xb06c72f6 # initialize rs2
ror x1, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x22, 0x0088aab8 # initialize rs1
li x16, 0xa537ce3f # initialize rs2
ror x2, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x0c33a44e # initialize rs1
li x12, 0x96ec89db # initialize rs2
ror x3, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x6c0da8d9 # initialize rs1
li x9, 0xc094871c # initialize rs2
ror x4, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x2648b340 # initialize rs1
li x12, 0xafb56b2e # initialize rs2
ror x5, x30, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x04961454 # initialize rs1
li x1, 0x73efd838 # initialize rs2
ror x6, x31, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xc9c860a3 # initialize rs1
li x31, 0x2207b8b9 # initialize rs2
ror x7, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1c49c3f6 # initialize rs1
li x18, 0xbf0ac9e5 # initialize rs2
ror x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x7eab9250 # initialize rs1
li x26, 0x2b7dd865 # initialize rs2
ror x9, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0xd94adcee # initialize rs1
li x2, 0xc1675876 # initialize rs2
ror x10, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x3745d572 # initialize rs1
li x16, 0xc3851df5 # initialize rs2
ror x11, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0x9375fac0 # initialize rs1
li x31, 0x92c4f786 # initialize rs2
ror x12, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3f93548c # initialize rs1
li x10, 0xb83e74f3 # initialize rs2
ror x13, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x90b2874a # initialize rs1
li x31, 0xf6684a60 # initialize rs2
ror x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x957ecde4 # initialize rs1
li x25, 0xeb875d65 # initialize rs2
ror x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x26, 0xabc3d145 # initialize rs1
li x29, 0x4cda4fcc # initialize rs2
ror x16, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xdc03b177 # initialize rs1
li x22, 0x38be9010 # initialize rs2
ror x17, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x9c10e022 # initialize rs1
li x17, 0xbfb1c0e2 # initialize rs2
ror x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x24, 0x17d5651b # initialize rs1
li x31, 0x8c2f7adc # initialize rs2
ror x19, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x7e3362e8 # initialize rs1
li x5, 0x036b02a0 # initialize rs2
ror x20, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xe0aa94e3 # initialize rs1
li x5, 0x6944f628 # initialize rs2
ror x21, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x2bb8b150 # initialize rs1
li x23, 0x2f1ac682 # initialize rs2
ror x22, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x51d66c1f # initialize rs1
li x29, 0x955645d3 # initialize rs2
ror x23, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0xdb95c762 # initialize rs1
li x9, 0xcea8c293 # initialize rs2
ror x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x194bd469 # initialize rs1
li x18, 0x591ba06e # initialize rs2
ror x25, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x729a5e0c # initialize rs1
li x21, 0xdd64fd23 # initialize rs2
ror x26, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x0f106760 # initialize rs1
li x30, 0xd1783bac # initialize rs2
ror x27, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x3996c023 # initialize rs1
li x31, 0x684ab4df # initialize rs2
ror x28, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xc90d50e3 # initialize rs1
li x30, 0xf74b559e # initialize rs2
ror x29, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x04f6f62e # initialize rs1
li x19, 0x6cd44ff5 # initialize rs2
ror x30, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xa301451f # initialize rs1
li x8, 0xc078a3b5 # initialize rs2
ror x31, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
li x5, 0x1fad95de # initialize rs2
ror x25, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x00000001 # initialize rs1
li x24, 0xf0cdd394 # initialize rs2
ror x8, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x00000002 # initialize rs1
li x18, 0x45cb938a # initialize rs2
ror x16, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x7, 0x7f5c28a3 # initialize rs2
ror x22, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x29, 0x80000001 # initialize rs1
li x9, 0x212f532f # initialize rs2
ror x20, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x9, 0x23b6dc9b # initialize rs2
ror x10, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x3, 0x1977cb2f # initialize rs2
ror x6, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x29, 0x922b9428 # initialize rs2
ror x24, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x27, 0x71f243b5 # initialize rs2
ror x9, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x22, 0xcbd4368e # initialize rs2
ror x1, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
li x18, 0x355566f2 # initialize rs2
ror x26, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555 # initialize rs1
li x3, 0x5161029c # initialize rs2
ror x24, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x16, 0xea9dfcdf # initialize rs1
li x19, 0x00000000 # initialize rs2
ror x25, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x14151b19 # initialize rs1
li x7, 0x00000001 # initialize rs2
ror x23, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0xc779d988 # initialize rs1
li x3, 0x00000002 # initialize rs2
ror x10, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x24, 0x6929f305 # initialize rs1
li x26, 0x80000000 # initialize rs2
ror x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0x17055465 # initialize rs1
li x7, 0x80000001 # initialize rs2
ror x26, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x19, 0xbcfb3b1e # initialize rs1
li x8, 0x7fffffff # initialize rs2
ror x31, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0x5441ba42 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
ror x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xfe376115 # initialize rs1
li x28, 0xffffffff # initialize rs2
ror x10, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xed68b1e3 # initialize rs1
li x16, 0xfffffffe # initialize rs2
ror x14, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x2, 0xa9c26970 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
ror x8, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0x24fc6373 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
ror x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0x2c8cddb5 # initialize rs1
li x17, 0x55555555 # initialize rs2
ror x29, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x21, 0x00000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
ror x5, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x00000000 # initialize rs1
li x9, 0x00000001 # initialize rs2
ror x27, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x17, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
ror x15, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x8, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
ror x5, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x31, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
ror x24, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x13, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
ror x26, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
ror x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
ror x23, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
ror x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x8, 0x00000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
ror x7, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x1, 0x00000000 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
ror x21, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x2, 0x00000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
ror x17, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x00000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
ror x30, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x6, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
ror x18, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x00000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
ror x23, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x16, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
ror x12, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x00000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
ror x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x5, 0x00000001 # initialize rs1
li x27, 0x7fffffff # initialize rs2
ror x23, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x18, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
ror x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
ror x19, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
ror x19, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x2, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
ror x11, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0x00000001 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
ror x6, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x11, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
ror x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x00000002 # initialize rs1
li x9, 0x00000000 # initialize rs2
ror x2, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x00000002 # initialize rs1
li x17, 0x00000001 # initialize rs2
ror x19, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x00000002 # initialize rs1
li x15, 0x00000002 # initialize rs2
ror x9, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x1, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
ror x9, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
ror x14, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x31, 0x7fffffff # initialize rs2
ror x13, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
ror x18, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
ror x5, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
ror x2, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
ror x14, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x6, 0x00000002 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
ror x23, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x30, 0x00000002 # initialize rs1
li x8, 0x55555555 # initialize rs2
ror x1, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x6, 0x80000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
ror x15, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x11, 0x80000000 # initialize rs1
li x5, 0x00000001 # initialize rs2
ror x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x11, 0x00000002 # initialize rs2
ror x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x27, 0x80000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
ror x10, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x11, 0x80000000 # initialize rs1
li x1, 0x80000001 # initialize rs2
ror x31, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
ror x21, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x27, 0x80000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
ror x13, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x23, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
ror x6, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x9, 0x80000000 # initialize rs1
li x22, 0xfffffffe # initialize rs2
ror x14, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x10, 0x80000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
ror x13, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x10, 0x80000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
ror x27, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x20, 0x80000000 # initialize rs1
li x24, 0x55555555 # initialize rs2
ror x18, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x13, 0x80000001 # initialize rs1
li x11, 0x00000000 # initialize rs2
ror x30, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x28, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
ror x8, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x80000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
ror x15, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x28, 0x80000001 # initialize rs1
li x10, 0x80000000 # initialize rs2
ror x27, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
ror x7, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x20, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
ror x19, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x10, 0x80000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
ror x17, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x6, 0x80000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
ror x7, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0x80000001 # initialize rs1
li x1, 0xfffffffe # initialize rs2
ror x21, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x11, 0x80000001 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
ror x8, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x29, 0x80000001 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
ror x20, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x12, 0x80000001 # initialize rs1
li x8, 0x55555555 # initialize rs2
ror x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x31, 0x7fffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
ror x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x24, 0x7fffffff # initialize rs1
li x2, 0x00000001 # initialize rs2
ror x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x3, 0x7fffffff # initialize rs1
li x9, 0x00000002 # initialize rs2
ror x11, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x6, 0x7fffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
ror x28, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x18, 0x7fffffff # initialize rs1
li x1, 0x80000001 # initialize rs2
ror x15, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x15, 0x7fffffff # initialize rs2
ror x9, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x24, 0x7fffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
ror x11, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x28, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
ror x14, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x7, 0x7fffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
ror x29, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
ror x28, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x30, 0x7fffffff # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
ror x24, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
ror x12, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x14, 0x7ffffffe # initialize rs1
li x29, 0x00000000 # initialize rs2
ror x24, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x7, 0x7ffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
ror x17, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x11, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
ror x20, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x20, 0x7ffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
ror x28, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x9, 0x7ffffffe # initialize rs1
li x7, 0x80000001 # initialize rs2
ror x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x8, 0x7ffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
ror x13, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x25, 0x7ffffffe # initialize rs2
ror x17, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x26, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
ror x7, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x24, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
ror x1, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x2, 0x7ffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
ror x18, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0x7ffffffe # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
ror x11, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x27, 0x7ffffffe # initialize rs1
li x3, 0x55555555 # initialize rs2
ror x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0xffffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
ror x24, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0xffffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
ror x14, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x24, 0x00000002 # initialize rs2
ror x19, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x2, 0xffffffff # initialize rs1
li x16, 0x80000000 # initialize rs2
ror x28, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
ror x30, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x26, 0x7fffffff # initialize rs2
ror x22, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x6, 0xffffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
ror x8, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x31, 0xffffffff # initialize rs2
ror x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xffffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
ror x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x17, 0xffffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
ror x30, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x6, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
ror x17, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x12, 0xffffffff # initialize rs1
li x10, 0x55555555 # initialize rs2
ror x30, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xfffffffe # initialize rs1
li x18, 0x00000000 # initialize rs2
ror x12, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
ror x10, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0xfffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
ror x18, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x17, 0xfffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
ror x27, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x16, 0xfffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
ror x24, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe # initialize rs1
li x1, 0x7fffffff # initialize rs2
ror x28, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xfffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
ror x25, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
ror x21, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
ror x26, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x31, 0xfffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
ror x10, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x13, 0xfffffffe # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
ror x24, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x27, 0xfffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
ror x10, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x16, 0x5bbc8872 # initialize rs1
li x20, 0x00000000 # initialize rs2
ror x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x25, 0x5bbc8872 # initialize rs1
li x19, 0x00000001 # initialize rs2
ror x31, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x6, 0x5bbc8872 # initialize rs1
li x17, 0x00000002 # initialize rs2
ror x8, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x25, 0x5bbc8872 # initialize rs1
li x28, 0x80000000 # initialize rs2
ror x11, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x25, 0x5bbc8872 # initialize rs1
li x2, 0x80000001 # initialize rs2
ror x11, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x9, 0x5bbc8872 # initialize rs1
li x7, 0x7fffffff # initialize rs2
ror x16, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x23, 0x5bbc8872 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
ror x17, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x20, 0x5bbc8872 # initialize rs1
li x11, 0xffffffff # initialize rs2
ror x3, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x18, 0x5bbc8872 # initialize rs1
li x1, 0xfffffffe # initialize rs2
ror x31, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
ror x26, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x27, 0x5bbc8872 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
ror x8, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x24, 0x5bbc8872 # initialize rs1
li x28, 0x55555555 # initialize rs2
ror x25, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x11, 0xaaaaaaaa # initialize rs1
li x17, 0x00000000 # initialize rs2
ror x9, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x6, 0xaaaaaaaa # initialize rs1
li x25, 0x00000001 # initialize rs2
ror x13, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaa # initialize rs1
li x12, 0x00000002 # initialize rs2
ror x1, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x5, 0xaaaaaaaa # initialize rs1
li x24, 0x80000000 # initialize rs2
ror x19, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x19, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
ror x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
ror x1, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0xaaaaaaaa # initialize rs1
li x12, 0x7ffffffe # initialize rs2
ror x31, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x15, 0xaaaaaaaa # initialize rs1
li x2, 0xffffffff # initialize rs2
ror x14, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
ror x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x7, 0xaaaaaaaa # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
ror x28, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x30, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
ror x29, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x21, 0xaaaaaaaa # initialize rs1
li x6, 0x55555555 # initialize rs2
ror x24, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x11, 0x00000000 # initialize rs2
ror x8, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x8, 0x55555555 # initialize rs1
li x13, 0x00000001 # initialize rs2
ror x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x23, 0x55555555 # initialize rs1
li x15, 0x00000002 # initialize rs2
ror x24, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x5, 0x55555555 # initialize rs1
li x15, 0x80000000 # initialize rs2
ror x19, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x13, 0x55555555 # initialize rs1
li x17, 0x80000001 # initialize rs2
ror x24, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x3, 0x55555555 # initialize rs1
li x25, 0x7fffffff # initialize rs2
ror x6, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x23, 0x55555555 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
ror x20, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x28, 0x55555555 # initialize rs1
li x14, 0xffffffff # initialize rs2
ror x6, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x1, 0x55555555 # initialize rs1
li x21, 0xfffffffe # initialize rs2
ror x6, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x13, 0x55555555 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
ror x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
ror x6, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
ror x11, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x32ba6c17 # initialize rs1
li x0, 0x482d9ca7 # initialize rs2
ror x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x513268b2 # initialize rs1
li x1, 0xdf5ae525 # initialize rs2
ror x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc95d76f8 # initialize rs1
li x2, 0xc2452b9e # initialize rs2
ror x10, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x34e08a93 # initialize rs1
li x3, 0x55e19922 # initialize rs2
ror x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x73fbea17 # initialize rs1
li x4, 0xae3aff8e # initialize rs2
ror x26, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1ee32749 # initialize rs1
li x5, 0x2a1d348d # initialize rs2
ror x14, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6adf35a8 # initialize rs1
li x6, 0xf0895e9c # initialize rs2
ror x7, x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0x46149e2e # initialize rs1
li x7, 0xdacdcaef # initialize rs2
ror x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2ffe0cd2 # initialize rs1
li x8, 0xe237b875 # initialize rs2
ror x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x21203f50 # initialize rs1
li x9, 0xd66d50f1 # initialize rs2
ror x27, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3b59cba6 # initialize rs1
li x10, 0x8fe8d652 # initialize rs2
ror x5, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xb86b33a6 # initialize rs1
li x11, 0xffc6b9d6 # initialize rs2
ror x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4f0ede51 # initialize rs1
li x12, 0x8328fb95 # initialize rs2
ror x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd51160a0 # initialize rs1
li x13, 0xbc464b6e # initialize rs2
ror x31, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x4b97797a # initialize rs1
li x14, 0xf571d846 # initialize rs2
ror x9, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf1ebef19 # initialize rs1
li x15, 0xa6aca91b # initialize rs2
ror x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x2dcd62e8 # initialize rs1
li x16, 0x67afff4a # initialize rs2
ror x22, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x479b18fa # initialize rs1
li x17, 0x075cb6bf # initialize rs2
ror x12, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xdbe360dd # initialize rs1
li x18, 0x3350a40d # initialize rs2
ror x25, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6c711488 # initialize rs1
li x19, 0x7bbd4207 # initialize rs2
ror x14, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0c076d89 # initialize rs1
li x20, 0xbb06308a # initialize rs2
ror x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x4f5c1707 # initialize rs1
li x21, 0x11c75c38 # initialize rs2
ror x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd8023d13 # initialize rs1
li x22, 0x1a1c090b # initialize rs2
ror x6, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xc8cdea3e # initialize rs1
li x23, 0x0b996e4c # initialize rs2
ror x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xcf0d5a4a # initialize rs1
li x24, 0x60b1814b # initialize rs2
ror x29, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xa367454b # initialize rs1
li x25, 0x699dcd15 # initialize rs2
ror x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x3dadde1f # initialize rs1
li x26, 0xcfb55997 # initialize rs2
ror x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x7a055473 # initialize rs1
li x27, 0xe70d26b7 # initialize rs2
ror x1, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa8af1826 # initialize rs1
li x28, 0x5631a2bb # initialize rs2
ror x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x9ec5783f # initialize rs1
li x29, 0x990fb27b # initialize rs2
ror x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc9d01bef # initialize rs1
li x30, 0x96de2a6a # initialize rs2
ror x23, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa5023929 # initialize rs1
li x31, 0xc1849e97 # initialize rs2
ror x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0370f81b # initialize rs1
li x16, 0x9be26f98 # initialize rs2
ror x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf5328525 # initialize rs1
li x6, 0x927463e5 # initialize rs2
ror x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7ef13db2 # initialize rs1
li x23, 0xbc16f8bc # initialize rs2
ror x2, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x41f131c8 # initialize rs1
li x20, 0x5142e113 # initialize rs2
ror x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x76d5e926 # initialize rs1
li x20, 0xe677f6f2 # initialize rs2
ror x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4361084b # initialize rs1
li x13, 0x9bd50f46 # initialize rs2
ror x5, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8fb29f40 # initialize rs1
li x18, 0x099f6887 # initialize rs2
ror x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcc36b777 # initialize rs1
li x27, 0x27bf5ff3 # initialize rs2
ror x7, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1b911482 # initialize rs1
li x9, 0xec09291a # initialize rs2
ror x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x83b815c0 # initialize rs1
li x18, 0x8b30f66f # initialize rs2
ror x9, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6375e5ce # initialize rs1
li x23, 0x95e9aa40 # initialize rs2
ror x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x55eaebb9 # initialize rs1
li x9, 0xa8960229 # initialize rs2
ror x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4152576c # initialize rs1
li x19, 0xa87f4f1e # initialize rs2
ror x12, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe9e46aea # initialize rs1
li x27, 0xc01415b6 # initialize rs2
ror x13, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x65e0191b # initialize rs1
li x31, 0x0c0f89e1 # initialize rs2
ror x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7915de98 # initialize rs1
li x14, 0xfdd83c56 # initialize rs2
ror x15, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4f1fb616 # initialize rs1
li x24, 0x5e4f3e78 # initialize rs2
ror x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x86afb9a0 # initialize rs1
li x10, 0x2fb505e8 # initialize rs2
ror x17, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x314eb09f # initialize rs1
li x28, 0xfb019ec9 # initialize rs2
ror x18, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd34431e1 # initialize rs1
li x18, 0x6708f412 # initialize rs2
ror x19, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa809826b # initialize rs1
li x15, 0x19ea2299 # initialize rs2
ror x20, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x20718e59 # initialize rs1
li x12, 0xfd552a13 # initialize rs2
ror x21, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbe1c468e # initialize rs1
li x19, 0x7e94b4c9 # initialize rs2
ror x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9c4e6f90 # initialize rs1
li x7, 0x75f4bc4e # initialize rs2
ror x23, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd55ecec7 # initialize rs1
li x10, 0xc472215f # initialize rs2
ror x24, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x6cb8269e # initialize rs1
li x31, 0xc216d61b # initialize rs2
ror x25, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc2af05f3 # initialize rs1
li x5, 0x898ffa80 # initialize rs2
ror x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2d12efd6 # initialize rs1
li x9, 0x54f5f552 # initialize rs2
ror x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x43e301e6 # initialize rs1
li x11, 0xec399176 # initialize rs2
ror x28, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc5b92fc1 # initialize rs1
li x15, 0xd75e301c # initialize rs2
ror x29, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5421a183 # initialize rs1
li x7, 0xeb5f47ba # initialize rs2
ror x30, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3f3416df # initialize rs1
li x12, 0xf33c5580 # initialize rs2
ror x31, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x9, 0x8d33d99f # initialize rs1
li x0, 0x4f50d471 # initialize rs2
ror x0, x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x2, 0x8565b59e # initialize rs1
li x1, 0x21bc495b # initialize rs2
ror x1, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0x9a57f8db # initialize rs1
li x2, 0x3b07e614 # initialize rs2
ror x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0xdb6fa92a # initialize rs1
li x3, 0x6030f9ff # initialize rs2
ror x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0xc90bc9bc # initialize rs1
li x4, 0x4cf6e0e0 # initialize rs2
ror x4, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xb6787313 # initialize rs1
li x5, 0xfce59ded # initialize rs2
ror x5, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x7e9f26fa # initialize rs1
li x6, 0xd1614a86 # initialize rs2
ror x6, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x5c8437b4 # initialize rs1
li x7, 0x35e3ce89 # initialize rs2
ror x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x856b0c33 # initialize rs1
li x8, 0x472ed954 # initialize rs2
ror x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x6, 0x81911a1c # initialize rs1
li x9, 0xed857d65 # initialize rs2
ror x9, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x578efa60 # initialize rs1
li x10, 0x6f980f0e # initialize rs2
ror x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x17, 0xcee37443 # initialize rs1
li x11, 0x9b77c1f8 # initialize rs2
ror x11, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x2, 0x48449d9a # initialize rs1
li x12, 0x3ce5b619 # initialize rs2
ror x12, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x24, 0xf64dd514 # initialize rs1
li x13, 0x24f86d61 # initialize rs2
ror x13, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x10, 0x7be7f8f0 # initialize rs1
li x14, 0x06490729 # initialize rs2
ror x14, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0xfd352c49 # initialize rs1
li x15, 0x47d86002 # initialize rs2
ror x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x35c9d957 # initialize rs1
li x16, 0x199ffef1 # initialize rs2
ror x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0x06a5c9d6 # initialize rs1
li x17, 0x7b410436 # initialize rs2
ror x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0x2f12b69e # initialize rs1
li x18, 0x805cfa72 # initialize rs2
ror x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x10, 0x05a5d18e # initialize rs1
li x19, 0x353292da # initialize rs2
ror x19, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x7, 0x38c53c55 # initialize rs1
li x20, 0xc9aa648f # initialize rs2
ror x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x20, 0x128d9bdf # initialize rs1
li x21, 0xcb3119af # initialize rs2
ror x21, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0x5df0256f # initialize rs1
li x22, 0xa6317222 # initialize rs2
ror x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x2, 0x748b7887 # initialize rs1
li x23, 0xf3c5691d # initialize rs2
ror x23, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x21, 0xf37c96ac # initialize rs1
li x24, 0x31424fe6 # initialize rs2
ror x24, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0xef099ec6 # initialize rs1
li x25, 0x5eb3b409 # initialize rs2
ror x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x029c5595 # initialize rs1
li x26, 0xd3be3fb3 # initialize rs2
ror x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x7, 0x51faa3d9 # initialize rs1
li x27, 0xdfc8cc2a # initialize rs2
ror x27, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x1, 0x61a0deed # initialize rs1
li x28, 0xac6709d3 # initialize rs2
ror x28, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x31, 0x0d3acdf5 # initialize rs1
li x29, 0x2af5cfd9 # initialize rs2
ror x29, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x41d35b3c # initialize rs1
li x30, 0xea363a92 # initialize rs2
ror x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0x193a2dbf # initialize rs1
li x31, 0xf1774151 # initialize rs2
ror x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x43f5ad5e # initialize rs1
li x0, 0xaddb6949 # initialize rs2
ror x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x794d8195 # initialize rs1
li x1, 0xbc988bd2 # initialize rs2
ror x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x33a050fc # initialize rs1
li x2, 0x503d0de0 # initialize rs2
ror x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd368a99f # initialize rs1
li x3, 0x2cebbf45 # initialize rs2
ror x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdd743174 # initialize rs1
li x4, 0xf5b24309 # initialize rs2
ror x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e9e06e5 # initialize rs1
li x5, 0x1e700ad1 # initialize rs2
ror x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9a299dd0 # initialize rs1
li x6, 0xac0adbdb # initialize rs2
ror x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7ec85563 # initialize rs1
li x7, 0xca09eb1a # initialize rs2
ror x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x359db45e # initialize rs1
li x8, 0x5b466ab5 # initialize rs2
ror x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xcf5e61f1 # initialize rs1
li x9, 0x3cf63f49 # initialize rs2
ror x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x70850df4 # initialize rs1
li x10, 0xf654a02b # initialize rs2
ror x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xdbf81d56 # initialize rs1
li x11, 0xae6c9954 # initialize rs2
ror x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x542a632b # initialize rs1
li x12, 0xe5a19db9 # initialize rs2
ror x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa94b4da9 # initialize rs1
li x13, 0x456ef553 # initialize rs2
ror x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xfd17285f # initialize rs1
li x14, 0x96fd8df0 # initialize rs2
ror x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc456a511 # initialize rs1
li x15, 0x937e0a95 # initialize rs2
ror x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xaa6361ec # initialize rs1
li x16, 0xde8fdc9c # initialize rs2
ror x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x15990b54 # initialize rs1
li x17, 0x7ee9deec # initialize rs2
ror x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xabbfd1be # initialize rs1
li x18, 0x8cff72ce # initialize rs2
ror x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x74b35c5f # initialize rs1
li x19, 0x796073ed # initialize rs2
ror x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe3d17905 # initialize rs1
li x20, 0x0a17fa5e # initialize rs2
ror x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xedfe74e8 # initialize rs1
li x21, 0xbae2fe88 # initialize rs2
ror x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x788da863 # initialize rs1
li x22, 0x85c4352b # initialize rs2
ror x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x53715d47 # initialize rs1
li x23, 0x0eb637c0 # initialize rs2
ror x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbb0f0973 # initialize rs1
li x24, 0x8924e762 # initialize rs2
ror x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xee57fd3c # initialize rs1
li x25, 0x9a5a26bf # initialize rs2
ror x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x520c76b5 # initialize rs1
li x26, 0xd58d14c6 # initialize rs2
ror x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xbfa7be71 # initialize rs1
li x27, 0x5233e52d # initialize rs2
ror x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xcf9f361f # initialize rs1
li x28, 0xd70aa695 # initialize rs2
ror x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5486fb90 # initialize rs1
li x29, 0xfc3c5aaa # initialize rs2
ror x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf970b986 # initialize rs1
li x30, 0x25ffa599 # initialize rs2
ror x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xee362d65 # initialize rs1
li x31, 0xbc8edb95 # initialize rs2
ror x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x16, x28 # perform first operation
ror x24, x30, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x30, x18 # perform first operation
ror x24, x11, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x24, x25 # perform first operation
ror x13, x28, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x18, x22 # perform first operation
ror x6, x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x6, x14 # perform first operation
ror x14, x2, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x31, x14 # perform first operation
ror x31, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x31, x16 # perform first operation
ror x20, x19, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x18, x20 # perform first operation
ror x25, x8, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x1, x7 # perform first operation
ror x23, x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x21, x30 # perform first operation
ror x21, x27, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x1, x24 # perform first operation
ror x24, x17, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x23, x9 # perform first operation
ror x19, x16, x1 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sext.b.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x73a23249 # initialize rs1
sext.b x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3e4cda9e # initialize rs1
sext.b x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd1509ab # initialize rs1
sext.b x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3b68bf73 # initialize rs1
sext.b x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xef23bdde # initialize rs1
sext.b x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x04f73eba # initialize rs1
sext.b x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xab328ff5 # initialize rs1
sext.b x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3a52756e # initialize rs1
sext.b x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x353f00ef # initialize rs1
sext.b x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x51dabc8d # initialize rs1
sext.b x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc7e7efeb # initialize rs1
sext.b x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2cf90e64 # initialize rs1
sext.b x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1ab8360e # initialize rs1
sext.b x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa41386b5 # initialize rs1
sext.b x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x21a7514a # initialize rs1
sext.b x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1b0d5b95 # initialize rs1
sext.b x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3e0bd2e9 # initialize rs1
sext.b x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe3d0ad97 # initialize rs1
sext.b x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x56f83767 # initialize rs1
sext.b x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd61e8c7d # initialize rs1
sext.b x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe9d73562 # initialize rs1
sext.b x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x187ec651 # initialize rs1
sext.b x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb2e3a910 # initialize rs1
sext.b x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x8bdbf2b9 # initialize rs1
sext.b x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x261ee9cf # initialize rs1
sext.b x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc5f1c144 # initialize rs1
sext.b x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x779741bd # initialize rs1
sext.b x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5bae51d6 # initialize rs1
sext.b x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6527e039 # initialize rs1
sext.b x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x079435d3 # initialize rs1
sext.b x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb47f84cb # initialize rs1
sext.b x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5e7a69df # initialize rs1
sext.b x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 124)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0xd2db03e5 # initialize rs1
sext.b x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa2fd9faa # initialize rs1
sext.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe8a8ef8e # initialize rs1
sext.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0xeffe4999 # initialize rs1
sext.b x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0xe223dc7e # initialize rs1
sext.b x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x10184b27 # initialize rs1
sext.b x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x0b89ec54 # initialize rs1
sext.b x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xb87ddeb8 # initialize rs1
sext.b x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xf124e410 # initialize rs1
sext.b x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x51d08650 # initialize rs1
sext.b x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x25531506 # initialize rs1
sext.b x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0xde76e043 # initialize rs1
sext.b x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x1b42ff8c # initialize rs1
sext.b x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0xccda8c1d # initialize rs1
sext.b x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x94129162 # initialize rs1
sext.b x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0xba33b887 # initialize rs1
sext.b x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x7458de3d # initialize rs1
sext.b x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x7e621a75 # initialize rs1
sext.b x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x2c367542 # initialize rs1
sext.b x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0xbff3a6a1 # initialize rs1
sext.b x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0x0c14d441 # initialize rs1
sext.b x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x0d955ed0 # initialize rs1
sext.b x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x51791e6e # initialize rs1
sext.b x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xb10e8506 # initialize rs1
sext.b x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x350c2bea # initialize rs1
sext.b x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x22be8f97 # initialize rs1
sext.b x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xf35fd26d # initialize rs1
sext.b x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0xd271939c # initialize rs1
sext.b x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0xf045138b # initialize rs1
sext.b x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xd90cc4a1 # initialize rs1
sext.b x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xac6e3aeb # initialize rs1
sext.b x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0x812e330d # initialize rs1
sext.b x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x00000000 # initialize rs1
sext.b x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
sext.b x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
sext.b x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x80000000 # initialize rs1
sext.b x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x80000001 # initialize rs1
sext.b x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
sext.b x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
sext.b x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
sext.b x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
sext.b x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x17, 0x5bbc8872 # initialize rs1
sext.b x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
sext.b x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555 # initialize rs1
sext.b x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa363ad18 # initialize rs1
sext.b x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6c4fba2e # initialize rs1
sext.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6de4c1b5 # initialize rs1
sext.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7a98b5ae # initialize rs1
sext.b x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2478cafe # initialize rs1
sext.b x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x96223e28 # initialize rs1
sext.b x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x03e2c48b # initialize rs1
sext.b x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xbc0b1d3a # initialize rs1
sext.b x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfb013cfe # initialize rs1
sext.b x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x96d43476 # initialize rs1
sext.b x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x537b27ba # initialize rs1
sext.b x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1c5d5ec3 # initialize rs1
sext.b x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3d6f71f6 # initialize rs1
sext.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5a290a68 # initialize rs1
sext.b x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9edfd5b8 # initialize rs1
sext.b x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0f439c23 # initialize rs1
sext.b x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd6d13b6c # initialize rs1
sext.b x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xed44445f # initialize rs1
sext.b x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7c767657 # initialize rs1
sext.b x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3c221a57 # initialize rs1
sext.b x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe6e30418 # initialize rs1
sext.b x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb841bcb4 # initialize rs1
sext.b x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x475baf7f # initialize rs1
sext.b x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x74affe8d # initialize rs1
sext.b x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x4532053e # initialize rs1
sext.b x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x64e786ab # initialize rs1
sext.b x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9558ca9d # initialize rs1
sext.b x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe0c65d2e # initialize rs1
sext.b x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x754cf02c # initialize rs1
sext.b x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xacf7308a # initialize rs1
sext.b x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa8a6ffc1 # initialize rs1
sext.b x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7746477e # initialize rs1
sext.b x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x17, x8 # perform first operation
sext.b x12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x13, x14 # perform first operation
sext.b x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x6, x7 # perform first operation
sext.b x2, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x28, x5 # perform first operation
sext.b x13, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x25, x27 # perform first operation
sext.b x13, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x2, x11 # perform first operation
sext.b x5, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x25, x21 # perform first operation
sext.b x17, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x7, x29 # perform first operation
sext.b x5, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x1, x3 # perform first operation
sext.b x21, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x3, x18 # perform first operation
sext.b x3, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x21, x29 # perform first operation
sext.b x29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x11, x5 # perform first operation
sext.b x19, x27 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-zext.h.S
// ******************


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

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-rori.S
// ******************


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

#.EQU SIGSIZE,560


// ******************
// Tests from: WALLY-COV-rev8.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x585893bb # initialize rs1
rev8 x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfc7e64c8 # initialize rs1
rev8 x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xab605e64 # initialize rs1
rev8 x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb279f2d3 # initialize rs1
rev8 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2118d8e3 # initialize rs1
rev8 x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x31a5aeca # initialize rs1
rev8 x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x984da619 # initialize rs1
rev8 x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x03457489 # initialize rs1
rev8 x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x42c3e1c4 # initialize rs1
rev8 x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x57e4929a # initialize rs1
rev8 x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xeeb6f070 # initialize rs1
rev8 x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc0cf1013 # initialize rs1
rev8 x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x72957d3d # initialize rs1
rev8 x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xacc7a061 # initialize rs1
rev8 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x786cdb2a # initialize rs1
rev8 x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x69024472 # initialize rs1
rev8 x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7419b8a0 # initialize rs1
rev8 x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb7255683 # initialize rs1
rev8 x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x92709f00 # initialize rs1
rev8 x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe1ff7bdb # initialize rs1
rev8 x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4dfe1f95 # initialize rs1
rev8 x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf3da119a # initialize rs1
rev8 x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc4183a72 # initialize rs1
rev8 x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd417352c # initialize rs1
rev8 x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x82164485 # initialize rs1
rev8 x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x78bf2d0e # initialize rs1
rev8 x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2f891f0f # initialize rs1
rev8 x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x78a0036d # initialize rs1
rev8 x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x989d8ebb # initialize rs1
rev8 x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf375b9b8 # initialize rs1
rev8 x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x2137f460 # initialize rs1
rev8 x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xab41c1f5 # initialize rs1
rev8 x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 124)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0x25746840 # initialize rs1
rev8 x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0x8da9254d # initialize rs1
rev8 x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x95ef563c # initialize rs1
rev8 x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x151cbd43 # initialize rs1
rev8 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xd871e966 # initialize rs1
rev8 x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x1b9c7dd6 # initialize rs1
rev8 x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x7bd579ca # initialize rs1
rev8 x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x73652f33 # initialize rs1
rev8 x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0x2a2249d3 # initialize rs1
rev8 x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x53e567d1 # initialize rs1
rev8 x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0xcb0516a9 # initialize rs1
rev8 x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x5bbf20c6 # initialize rs1
rev8 x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xe0746894 # initialize rs1
rev8 x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0xc8e72747 # initialize rs1
rev8 x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0xa3fafa36 # initialize rs1
rev8 x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xa5a64f0e # initialize rs1
rev8 x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0xb8a8460b # initialize rs1
rev8 x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x3fcef15c # initialize rs1
rev8 x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0xd83f2df8 # initialize rs1
rev8 x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x53732abd # initialize rs1
rev8 x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x0da54e68 # initialize rs1
rev8 x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0x75e4abec # initialize rs1
rev8 x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x1896b933 # initialize rs1
rev8 x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0xb524a7d7 # initialize rs1
rev8 x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x7a19c217 # initialize rs1
rev8 x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x629324db # initialize rs1
rev8 x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x88452d22 # initialize rs1
rev8 x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xd0c50470 # initialize rs1
rev8 x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x91ad6675 # initialize rs1
rev8 x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0xc875655d # initialize rs1
rev8 x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0x97acf361 # initialize rs1
rev8 x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x2a31155c # initialize rs1
rev8 x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
rev8 x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x00000001 # initialize rs1
rev8 x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
rev8 x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x15, 0x80000000 # initialize rs1
rev8 x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x3, 0x80000001 # initialize rs1
rev8 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
rev8 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
rev8 x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0xffffffff # initialize rs1
rev8 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x7, 0xfffffffe # initialize rs1
rev8 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
rev8 x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
rev8 x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
rev8 x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xab830935 # initialize rs1
rev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc0e45790 # initialize rs1
rev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x15547bef # initialize rs1
rev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x79f68e17 # initialize rs1
rev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe2245f4c # initialize rs1
rev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe53e67d8 # initialize rs1
rev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4fc3346c # initialize rs1
rev8 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x75ff8e2d # initialize rs1
rev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x73d5fcc3 # initialize rs1
rev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0f7c9e83 # initialize rs1
rev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9d554f27 # initialize rs1
rev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5a06e0a0 # initialize rs1
rev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfb955f57 # initialize rs1
rev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd872cab0 # initialize rs1
rev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xeb128b7d # initialize rs1
rev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x893b70a4 # initialize rs1
rev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x49329474 # initialize rs1
rev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9d40cc70 # initialize rs1
rev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6c8e0602 # initialize rs1
rev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8552b20f # initialize rs1
rev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x98012c87 # initialize rs1
rev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xebaa060d # initialize rs1
rev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6f2da04e # initialize rs1
rev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xce614517 # initialize rs1
rev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc777c2bb # initialize rs1
rev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x22d29352 # initialize rs1
rev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x64cc1d6b # initialize rs1
rev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8d584d8e # initialize rs1
rev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfe8298dd # initialize rs1
rev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc1548464 # initialize rs1
rev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6020907f # initialize rs1
rev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x04487bc1 # initialize rs1
rev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x29, x6 # perform first operation
rev8 x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x20, x2 # perform first operation
rev8 x14, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x20, x26 # perform first operation
rev8 x19, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x23, x12 # perform first operation
rev8 x12, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x3, x13 # perform first operation
rev8 x13, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x24, x19 # perform first operation
rev8 x24, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x10, x18 # perform first operation
rev8 x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x15, x2 # perform first operation
rev8 x11, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x19, x9 # perform first operation
rev8 x10, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x21, x7 # perform first operation
rev8 x21, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x24, x1 # perform first operation
rev8 x1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x25, x14 # perform first operation
rev8 x17, x19 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-orc.b.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xd99236f3 # initialize rs1
orc.b x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb7fbec0e # initialize rs1
orc.b x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x146ee233 # initialize rs1
orc.b x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2fd0f93e # initialize rs1
orc.b x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5dbe50a1 # initialize rs1
orc.b x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb8ac1db9 # initialize rs1
orc.b x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8e763e0a # initialize rs1
orc.b x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf6f367f8 # initialize rs1
orc.b x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xcfd3e520 # initialize rs1
orc.b x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe37ed915 # initialize rs1
orc.b x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x349e685d # initialize rs1
orc.b x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x108dbe1e # initialize rs1
orc.b x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x95368b6d # initialize rs1
orc.b x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7ef38271 # initialize rs1
orc.b x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe643ec91 # initialize rs1
orc.b x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7e73042e # initialize rs1
orc.b x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x054fada6 # initialize rs1
orc.b x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x013da0de # initialize rs1
orc.b x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x74f69df6 # initialize rs1
orc.b x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa814951b # initialize rs1
orc.b x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x585549d0 # initialize rs1
orc.b x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0774239e # initialize rs1
orc.b x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xda94b19f # initialize rs1
orc.b x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe6f60f39 # initialize rs1
orc.b x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4daa3da3 # initialize rs1
orc.b x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xbf237c7d # initialize rs1
orc.b x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x44c73a5e # initialize rs1
orc.b x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5b34b863 # initialize rs1
orc.b x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf50d3783 # initialize rs1
orc.b x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x802a02a4 # initialize rs1
orc.b x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xccc17200 # initialize rs1
orc.b x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x90630e7f # initialize rs1
orc.b x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0x9f64af0c # initialize rs1
orc.b x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0x2160fe96 # initialize rs1
orc.b x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x5f2e21df # initialize rs1
orc.b x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x8b3a271f # initialize rs1
orc.b x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x966587b2 # initialize rs1
orc.b x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x5c68d985 # initialize rs1
orc.b x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x89d8faf9 # initialize rs1
orc.b x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xcd31cc8c # initialize rs1
orc.b x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xf32824a2 # initialize rs1
orc.b x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x301c505e # initialize rs1
orc.b x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x2b505c6f # initialize rs1
orc.b x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0xb1e22f83 # initialize rs1
orc.b x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x77f04841 # initialize rs1
orc.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x49fd637c # initialize rs1
orc.b x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0xd94bb236 # initialize rs1
orc.b x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xf4c2641b # initialize rs1
orc.b x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x9899b156 # initialize rs1
orc.b x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x189d491c # initialize rs1
orc.b x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x69b476a5 # initialize rs1
orc.b x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x2baec52b # initialize rs1
orc.b x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x568a2d75 # initialize rs1
orc.b x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x1c0fbe25 # initialize rs1
orc.b x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0xa22a322f # initialize rs1
orc.b x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x7a88b743 # initialize rs1
orc.b x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x22, 0xcfd8cc9b # initialize rs1
orc.b x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xb16f901c # initialize rs1
orc.b x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0x66485198 # initialize rs1
orc.b x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0x25689bb0 # initialize rs1
orc.b x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xdb1b0293 # initialize rs1
orc.b x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x294a958d # initialize rs1
orc.b x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xaa31e88a # initialize rs1
orc.b x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0xd19f6960 # initialize rs1
orc.b x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
orc.b x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x00000001 # initialize rs1
orc.b x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x00000002 # initialize rs1
orc.b x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
orc.b x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
orc.b x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
orc.b x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
orc.b x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xffffffff # initialize rs1
orc.b x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
orc.b x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
orc.b x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
orc.b x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
orc.b x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa50b66f4 # initialize rs1
orc.b x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x595a2226 # initialize rs1
orc.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf266a7e2 # initialize rs1
orc.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x00ee1267 # initialize rs1
orc.b x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64d5f4c0 # initialize rs1
orc.b x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf860c56 # initialize rs1
orc.b x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7515343e # initialize rs1
orc.b x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xef35a5f6 # initialize rs1
orc.b x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x43f965e5 # initialize rs1
orc.b x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4e0d3a53 # initialize rs1
orc.b x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0fbda4c0 # initialize rs1
orc.b x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x046f9c2a # initialize rs1
orc.b x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x403f1e21 # initialize rs1
orc.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x669c8695 # initialize rs1
orc.b x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5c423335 # initialize rs1
orc.b x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd0c85770 # initialize rs1
orc.b x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1aa18eb3 # initialize rs1
orc.b x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x861ef781 # initialize rs1
orc.b x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x01648df4 # initialize rs1
orc.b x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xff46bb5c # initialize rs1
orc.b x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8791b426 # initialize rs1
orc.b x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xebe23978 # initialize rs1
orc.b x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x09c08bc9 # initialize rs1
orc.b x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2fc6f20d # initialize rs1
orc.b x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd5fd4153 # initialize rs1
orc.b x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x182538a3 # initialize rs1
orc.b x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x03d8be1c # initialize rs1
orc.b x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8065da47 # initialize rs1
orc.b x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x94fb3725 # initialize rs1
orc.b x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xed71dd4a # initialize rs1
orc.b x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7f573a35 # initialize rs1
orc.b x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4a351d09 # initialize rs1
orc.b x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x20, x22 # perform first operation
orc.b x6, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x10, x13 # perform first operation
orc.b x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x1, x30 # perform first operation
orc.b x11, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x21, x16 # perform first operation
orc.b x18, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x26, x31 # perform first operation
orc.b x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x7, x15 # perform first operation
orc.b x7, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x23, x19 # perform first operation
orc.b x15, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x18 # perform first operation
orc.b x3, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x1 # perform first operation
orc.b x18, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x21, x23 # perform first operation
orc.b x21, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x3, x6 # perform first operation
orc.b x6, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x16, x10 # perform first operation
orc.b x26, x21 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-maxu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x420eeb01 # initialize rs1
li x2, 0x0d97b740 # initialize rs2
maxu x26, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x925155dc # initialize rs1
li x28, 0x3f58e611 # initialize rs2
maxu x5, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1cb20718 # initialize rs1
li x10, 0x2e7fcf6b # initialize rs2
maxu x6, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2237950d # initialize rs1
li x23, 0xda2ccb91 # initialize rs2
maxu x17, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2ebe0b2a # initialize rs1
li x6, 0x2b80b9ab # initialize rs2
maxu x10, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x659228be # initialize rs1
li x13, 0x1f9fb484 # initialize rs2
maxu x8, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x78f0e155 # initialize rs1
li x12, 0x48d55517 # initialize rs2
maxu x14, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x498e4b07 # initialize rs1
li x3, 0x5e8a5b82 # initialize rs2
maxu x31, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xcd09268c # initialize rs1
li x31, 0xe9995615 # initialize rs2
maxu x23, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc0cbb4af # initialize rs1
li x2, 0x5466d28f # initialize rs2
maxu x31, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd3bd81a2 # initialize rs1
li x13, 0x7267d386 # initialize rs2
maxu x27, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1387fba2 # initialize rs1
li x24, 0x64c0d2f2 # initialize rs2
maxu x25, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbc3301e4 # initialize rs1
li x15, 0xd21d1dbb # initialize rs2
maxu x18, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x75da6c28 # initialize rs1
li x5, 0x497c6eb5 # initialize rs2
maxu x28, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9767f31b # initialize rs1
li x12, 0xaa378f2e # initialize rs2
maxu x23, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x677ca0b0 # initialize rs1
li x19, 0x3e8ac2a6 # initialize rs2
maxu x28, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9aa47bdd # initialize rs1
li x23, 0xe7ee45a2 # initialize rs2
maxu x21, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xac386775 # initialize rs1
li x9, 0xd41d52f1 # initialize rs2
maxu x27, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x313db3a5 # initialize rs1
li x25, 0xe2912115 # initialize rs2
maxu x2, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x868e03de # initialize rs1
li x3, 0xbd3066d3 # initialize rs2
maxu x30, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcb55a0e7 # initialize rs1
li x21, 0x7214a036 # initialize rs2
maxu x6, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4d605012 # initialize rs1
li x2, 0xbc0a27fa # initialize rs2
maxu x27, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xafc2f7bd # initialize rs1
li x8, 0x9bfd21f6 # initialize rs2
maxu x31, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x98d23c20 # initialize rs1
li x30, 0xd348604a # initialize rs2
maxu x7, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x03e2334b # initialize rs1
li x16, 0xbf756035 # initialize rs2
maxu x14, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5c359972 # initialize rs1
li x7, 0x2c314ee0 # initialize rs2
maxu x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6f2be84a # initialize rs1
li x25, 0xbd17febb # initialize rs2
maxu x27, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xb152b191 # initialize rs1
li x30, 0x65a7ef36 # initialize rs2
maxu x25, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x52f25ec4 # initialize rs1
li x15, 0x70214a11 # initialize rs2
maxu x13, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcac851be # initialize rs1
li x13, 0xa378b519 # initialize rs2
maxu x22, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x65d575a6 # initialize rs1
li x16, 0x0eea911a # initialize rs2
maxu x29, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x928188e8 # initialize rs1
li x10, 0xf5b4d2f0 # initialize rs2
maxu x16, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x30, 0xb1d4a115 # initialize rs1
li x0, 0x98d057d4 # initialize rs2
maxu x16, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x1c51fe83 # initialize rs1
li x1, 0x207642bb # initialize rs2
maxu x21, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x10, 0xdf9ff14c # initialize rs1
li x2, 0x926a6ced # initialize rs2
maxu x5, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x989e9be1 # initialize rs1
li x3, 0x45541ecf # initialize rs2
maxu x16, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xd0ea70f1 # initialize rs1
li x4, 0x9aa3b24b # initialize rs2
maxu x21, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x2, 0x1330f5ee # initialize rs1
li x5, 0xd6d5912f # initialize rs2
maxu x23, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x2cfeb674 # initialize rs1
li x6, 0x505e3097 # initialize rs2
maxu x11, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0xb4cdab34 # initialize rs1
li x7, 0x6fc6ae7c # initialize rs2
maxu x26, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0xc7fbd912 # initialize rs1
li x8, 0xb9c43a03 # initialize rs2
maxu x22, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x7d4de502 # initialize rs1
li x9, 0x03513193 # initialize rs2
maxu x7, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x8ce33986 # initialize rs1
li x10, 0x26ef2170 # initialize rs2
maxu x29, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x448b6718 # initialize rs1
li x11, 0x4dfbe5b8 # initialize rs2
maxu x15, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0xce4d48f3 # initialize rs1
li x12, 0x36c7473f # initialize rs2
maxu x16, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x0d120580 # initialize rs1
li x13, 0xd799a11b # initialize rs2
maxu x27, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0xd6e2d87a # initialize rs1
li x14, 0x39954483 # initialize rs2
maxu x29, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0xa2a96e82 # initialize rs1
li x15, 0xe1d3f12a # initialize rs2
maxu x25, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x9, 0x235d9197 # initialize rs1
li x16, 0x08dd2bdb # initialize rs2
maxu x19, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x22, 0x6b5f4ff1 # initialize rs1
li x17, 0x6c94c1f7 # initialize rs2
maxu x19, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0xaba70c37 # initialize rs1
li x18, 0xcd009852 # initialize rs2
maxu x6, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0xad2124f7 # initialize rs1
li x19, 0x77cd9388 # initialize rs2
maxu x3, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x25892de6 # initialize rs1
li x20, 0x3e9e3f3d # initialize rs2
maxu x29, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x04aed906 # initialize rs1
li x21, 0x364e4eb5 # initialize rs2
maxu x3, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0x7b711c66 # initialize rs1
li x22, 0xbeecc96a # initialize rs2
maxu x19, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0xd3b4a330 # initialize rs1
li x23, 0x5c98c7a4 # initialize rs2
maxu x15, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x9, 0x85d36df8 # initialize rs1
li x24, 0xbddbd0ae # initialize rs2
maxu x6, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x0234be34 # initialize rs1
li x25, 0x490be30b # initialize rs2
maxu x30, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x7d9fe1ac # initialize rs1
li x26, 0x0398e3e1 # initialize rs2
maxu x20, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x9f5a3b71 # initialize rs1
li x27, 0xf7d0bf7e # initialize rs2
maxu x26, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xc98b8490 # initialize rs1
li x28, 0x2e1251c7 # initialize rs2
maxu x16, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0xc87e8977 # initialize rs1
li x29, 0x18b594fa # initialize rs2
maxu x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0xb62b052a # initialize rs1
li x30, 0x95962060 # initialize rs2
maxu x24, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x9f3bed47 # initialize rs1
li x31, 0xf757f2c2 # initialize rs2
maxu x1, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xbb256c56 # initialize rs1
li x27, 0x1cf85577 # initialize rs2
maxu x0, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x9dd7061a # initialize rs1
li x2, 0xa10a8a91 # initialize rs2
maxu x1, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x31, 0x5ebcc16e # initialize rs1
li x26, 0xe1778710 # initialize rs2
maxu x2, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0xdac8f22b # initialize rs1
li x7, 0xa151c305 # initialize rs2
maxu x3, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x8039d224 # initialize rs1
li x20, 0x546e5e28 # initialize rs2
maxu x4, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0xcf8dac65 # initialize rs1
li x28, 0x88af71bf # initialize rs2
maxu x5, x19, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x3679780e # initialize rs1
li x19, 0x0327f2f2 # initialize rs2
maxu x6, x3, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xb7dc40f7 # initialize rs1
li x15, 0x3f81775f # initialize rs2
maxu x7, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0x9242e509 # initialize rs1
li x19, 0xd74d3258 # initialize rs2
maxu x8, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x97fa7c7d # initialize rs1
li x3, 0x4bb58e37 # initialize rs2
maxu x9, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0x5b8f4930 # initialize rs1
li x1, 0xef1b2f40 # initialize rs2
maxu x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x27, 0xa862e252 # initialize rs1
li x31, 0x5f6d5cbb # initialize rs2
maxu x11, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xc4ac1a2d # initialize rs1
li x10, 0x75bbf463 # initialize rs2
maxu x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x0591f95f # initialize rs1
li x6, 0x87e2be73 # initialize rs2
maxu x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0xb8ecc51a # initialize rs1
li x14, 0x995c0b23 # initialize rs2
maxu x14, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0xab01c452 # initialize rs1
li x7, 0xc1905439 # initialize rs2
maxu x15, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x96157750 # initialize rs1
li x12, 0x5daddbcd # initialize rs2
maxu x16, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0x7680cfb7 # initialize rs1
li x24, 0xa70c4103 # initialize rs2
maxu x17, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x5da40258 # initialize rs1
li x24, 0xe7234c10 # initialize rs2
maxu x18, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0x269777ec # initialize rs1
li x7, 0x9d12b346 # initialize rs2
maxu x19, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0x8c68a74d # initialize rs1
li x31, 0xc3927cc5 # initialize rs2
maxu x20, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x858be567 # initialize rs1
li x30, 0xba221f0d # initialize rs2
maxu x21, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x9fa17abc # initialize rs1
li x21, 0xebfa1d8e # initialize rs2
maxu x22, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x13c6e9dd # initialize rs1
li x7, 0xf777cf54 # initialize rs2
maxu x23, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0xf939fd3a # initialize rs1
li x6, 0x26b1d150 # initialize rs2
maxu x24, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xd1401f61 # initialize rs1
li x29, 0xd1539fb2 # initialize rs2
maxu x25, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0xf7572829 # initialize rs1
li x8, 0x3d13dbb6 # initialize rs2
maxu x26, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xfd7fcee3 # initialize rs1
li x1, 0x6ddc90eb # initialize rs2
maxu x27, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0x69465702 # initialize rs1
li x20, 0x3b15462b # initialize rs2
maxu x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x5d418d8f # initialize rs1
li x28, 0x73f548f2 # initialize rs2
maxu x29, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x299aa4dd # initialize rs1
li x13, 0x361fdde8 # initialize rs2
maxu x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0xfe8c3c11 # initialize rs1
li x3, 0x921c1ae3 # initialize rs2
maxu x31, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x00000000 # initialize rs1
li x17, 0x11c80d8f # initialize rs2
maxu x21, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
li x10, 0x25c1759a # initialize rs2
maxu x24, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x00000002 # initialize rs1
li x6, 0xc91d439c # initialize rs2
maxu x21, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x25, 0x80000000 # initialize rs1
li x1, 0xeb74a42d # initialize rs2
maxu x31, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x80000001 # initialize rs1
li x11, 0xe711e0b2 # initialize rs2
maxu x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x7fffffff # initialize rs1
li x11, 0xcd43f67f # initialize rs2
maxu x24, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
li x7, 0x3ad82397 # initialize rs2
maxu x21, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x27, 0xffffffff # initialize rs1
li x16, 0xfb683c5e # initialize rs2
maxu x2, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0xfffffffe # initialize rs1
li x25, 0xb9aeb02a # initialize rs2
maxu x20, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x30, 0xc4cd3e3b # initialize rs2
maxu x5, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x22, 0xaaaaaaaa # initialize rs1
li x5, 0x26a7e5d7 # initialize rs2
maxu x14, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x1, 0x98569bea # initialize rs2
maxu x11, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x6cf3b9a4 # initialize rs1
li x2, 0x00000000 # initialize rs2
maxu x23, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0xb5d7acba # initialize rs1
li x5, 0x00000001 # initialize rs2
maxu x23, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x5ecb79f5 # initialize rs1
li x12, 0x00000002 # initialize rs2
maxu x8, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0x8d68e9d2 # initialize rs1
li x11, 0x80000000 # initialize rs2
maxu x16, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0x7aa46a87 # initialize rs1
li x10, 0x80000001 # initialize rs2
maxu x11, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0x17a0acb0 # initialize rs1
li x27, 0x7fffffff # initialize rs2
maxu x28, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0x155550be # initialize rs1
li x22, 0x7ffffffe # initialize rs2
maxu x13, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xcd39eaf0 # initialize rs1
li x30, 0xffffffff # initialize rs2
maxu x15, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0xd5072640 # initialize rs1
li x12, 0xfffffffe # initialize rs2
maxu x11, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0x692466c4 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
maxu x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x2, 0x601ca47f # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
maxu x5, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0x648b84da # initialize rs1
li x7, 0x55555555 # initialize rs2
maxu x9, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x00000000 # initialize rs1
li x25, 0x00000000 # initialize rs2
maxu x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
maxu x16, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x3, 0x00000002 # initialize rs2
maxu x7, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x21, 0x00000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
maxu x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x18, 0x00000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
maxu x1, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
maxu x30, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
maxu x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x23, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
maxu x14, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x00000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
maxu x13, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x13, 0x00000000 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
maxu x3, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x8, 0x00000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
maxu x24, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x8, 0x00000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
maxu x18, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x00000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
maxu x10, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
maxu x6, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x00000001 # initialize rs1
li x15, 0x00000002 # initialize rs2
maxu x30, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0x00000001 # initialize rs1
li x7, 0x80000000 # initialize rs2
maxu x12, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x26, 0x00000001 # initialize rs1
li x14, 0x80000001 # initialize rs2
maxu x9, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x11, 0x00000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
maxu x19, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
maxu x31, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x00000001 # initialize rs1
li x28, 0xffffffff # initialize rs2
maxu x12, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
maxu x2, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
maxu x16, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x18, 0x00000001 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
maxu x8, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x21, 0x00000001 # initialize rs1
li x29, 0x55555555 # initialize rs2
maxu x3, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x6, 0x00000000 # initialize rs2
maxu x8, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x00000002 # initialize rs1
li x15, 0x00000001 # initialize rs2
maxu x20, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x00000002 # initialize rs1
li x1, 0x00000002 # initialize rs2
maxu x28, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x21, 0x80000000 # initialize rs2
maxu x9, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x6, 0x00000002 # initialize rs1
li x9, 0x80000001 # initialize rs2
maxu x25, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x17, 0x00000002 # initialize rs1
li x26, 0x7fffffff # initialize rs2
maxu x6, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x8, 0x00000002 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
maxu x27, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
maxu x22, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x00000002 # initialize rs1
li x19, 0xfffffffe # initialize rs2
maxu x11, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x15, 0x00000002 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
maxu x1, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x16, 0x00000002 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
maxu x2, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x29, 0x00000002 # initialize rs1
li x15, 0x55555555 # initialize rs2
maxu x6, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x16, 0x80000000 # initialize rs1
li x11, 0x00000000 # initialize rs2
maxu x30, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x80000000 # initialize rs1
li x17, 0x00000001 # initialize rs2
maxu x30, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x19, 0x80000000 # initialize rs1
li x26, 0x00000002 # initialize rs2
maxu x27, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x80000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
maxu x22, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
maxu x18, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x11, 0x80000000 # initialize rs1
li x8, 0x7fffffff # initialize rs2
maxu x3, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x21, 0x80000000 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
maxu x17, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
maxu x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x8, 0x80000000 # initialize rs1
li x30, 0xfffffffe # initialize rs2
maxu x17, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x6, 0x80000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
maxu x30, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x80000000 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
maxu x6, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x9, 0x80000000 # initialize rs1
li x12, 0x55555555 # initialize rs2
maxu x24, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x12, 0x80000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
maxu x16, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x12, 0x80000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
maxu x8, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x22, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
maxu x21, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x12, 0x80000001 # initialize rs1
li x5, 0x80000000 # initialize rs2
maxu x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
maxu x3, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x20, 0x80000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
maxu x31, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x5, 0x80000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
maxu x18, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x3, 0x80000001 # initialize rs1
li x19, 0xffffffff # initialize rs2
maxu x16, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x12, 0x80000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
maxu x26, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x8, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
maxu x16, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x11, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
maxu x22, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x7, 0x55555555 # initialize rs2
maxu x23, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0x7fffffff # initialize rs1
li x18, 0x00000000 # initialize rs2
maxu x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x27, 0x7fffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
maxu x13, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x7, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
maxu x14, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x6, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
maxu x29, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x25, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
maxu x3, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
maxu x7, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x20, 0x7fffffff # initialize rs1
li x29, 0x7ffffffe # initialize rs2
maxu x28, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x13, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
maxu x23, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x16, 0x7fffffff # initialize rs1
li x25, 0xfffffffe # initialize rs2
maxu x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x12, 0x7fffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
maxu x13, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x19, 0x7fffffff # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
maxu x31, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x23, 0x7fffffff # initialize rs1
li x28, 0x55555555 # initialize rs2
maxu x31, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x5, 0x7ffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
maxu x28, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x7ffffffe # initialize rs1
li x25, 0x00000001 # initialize rs2
maxu x13, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x5, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
maxu x9, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
maxu x26, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x31, 0x80000001 # initialize rs2
maxu x8, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x25, 0x7ffffffe # initialize rs1
li x21, 0x7fffffff # initialize rs2
maxu x31, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x26, 0x7ffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
maxu x8, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffe # initialize rs1
li x3, 0xffffffff # initialize rs2
maxu x14, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffe # initialize rs1
li x18, 0xfffffffe # initialize rs2
maxu x11, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x17, 0x7ffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
maxu x29, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x15, 0x7ffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
maxu x20, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x8, 0x55555555 # initialize rs2
maxu x1, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x18, 0xffffffff # initialize rs1
li x30, 0x00000000 # initialize rs2
maxu x6, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x13, 0xffffffff # initialize rs1
li x11, 0x00000001 # initialize rs2
maxu x23, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x15, 0xffffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
maxu x6, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x18, 0xffffffff # initialize rs1
li x1, 0x80000000 # initialize rs2
maxu x9, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
maxu x5, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x22, 0xffffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
maxu x14, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x25, 0xffffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
maxu x23, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
maxu x13, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x22, 0xfffffffe # initialize rs2
maxu x29, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x21, 0xffffffff # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
maxu x14, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x31, 0xffffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
maxu x11, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0xffffffff # initialize rs1
li x23, 0x55555555 # initialize rs2
maxu x20, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x28, 0xfffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
maxu x23, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x6, 0xfffffffe # initialize rs1
li x30, 0x00000001 # initialize rs2
maxu x13, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x16, 0xfffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
maxu x10, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x22, 0xfffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
maxu x16, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
maxu x5, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x12, 0xfffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
maxu x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x23, 0x7ffffffe # initialize rs2
maxu x24, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0xfffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
maxu x7, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x24, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
maxu x3, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x25, 0xfffffffe # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
maxu x13, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
maxu x15, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x14, 0xfffffffe # initialize rs1
li x7, 0x55555555 # initialize rs2
maxu x13, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x1, 0x5bbc8872 # initialize rs1
li x29, 0x00000000 # initialize rs2
maxu x28, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x23, 0x5bbc8872 # initialize rs1
li x11, 0x00000001 # initialize rs2
maxu x13, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x13, 0x5bbc8872 # initialize rs1
li x8, 0x00000002 # initialize rs2
maxu x24, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x80000000 # initialize rs2
maxu x2, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x12, 0x5bbc8872 # initialize rs1
li x15, 0x80000001 # initialize rs2
maxu x8, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872 # initialize rs1
li x29, 0x7fffffff # initialize rs2
maxu x5, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
maxu x26, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x13, 0x5bbc8872 # initialize rs1
li x24, 0xffffffff # initialize rs2
maxu x5, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x23, 0x5bbc8872 # initialize rs1
li x25, 0xfffffffe # initialize rs2
maxu x27, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x29, 0x5bbc8872 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
maxu x7, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
maxu x10, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x7, 0x5bbc8872 # initialize rs1
li x19, 0x55555555 # initialize rs2
maxu x22, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaa # initialize rs1
li x9, 0x00000000 # initialize rs2
maxu x19, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaa # initialize rs1
li x13, 0x00000001 # initialize rs2
maxu x21, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaa # initialize rs1
li x7, 0x00000002 # initialize rs2
maxu x12, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
maxu x12, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x17, 0xaaaaaaaa # initialize rs1
li x14, 0x80000001 # initialize rs2
maxu x18, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
maxu x9, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x14, 0xaaaaaaaa # initialize rs1
li x17, 0x7ffffffe # initialize rs2
maxu x6, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x17, 0xffffffff # initialize rs2
maxu x11, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
maxu x10, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x23, 0xaaaaaaaa # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
maxu x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x18, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
maxu x7, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x1, 0xaaaaaaaa # initialize rs1
li x13, 0x55555555 # initialize rs2
maxu x29, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x17, 0x55555555 # initialize rs1
li x11, 0x00000000 # initialize rs2
maxu x21, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x11, 0x55555555 # initialize rs1
li x27, 0x00000001 # initialize rs2
maxu x8, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x16, 0x55555555 # initialize rs1
li x18, 0x00000002 # initialize rs2
maxu x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x10, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
maxu x13, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x9, 0x80000001 # initialize rs2
maxu x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x22, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
maxu x5, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x6, 0x55555555 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
maxu x10, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x1, 0x55555555 # initialize rs1
li x16, 0xffffffff # initialize rs2
maxu x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x3, 0x55555555 # initialize rs1
li x10, 0xfffffffe # initialize rs2
maxu x11, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x26, 0x55555555 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
maxu x19, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x25, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
maxu x30, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x8, 0x55555555 # initialize rs1
li x25, 0x55555555 # initialize rs2
maxu x7, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5cf739a1 # initialize rs1
li x0, 0x24e45657 # initialize rs2
maxu x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x82435d84 # initialize rs1
li x1, 0x9b798d85 # initialize rs2
maxu x21, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x53b2bfa6 # initialize rs1
li x2, 0x677964ca # initialize rs2
maxu x9, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x772a598e # initialize rs1
li x3, 0xf492ad85 # initialize rs2
maxu x15, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47aa2079 # initialize rs1
li x4, 0x4eb2dc44 # initialize rs2
maxu x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2b915612 # initialize rs1
li x5, 0x7535a606 # initialize rs2
maxu x17, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x00d8c5bf # initialize rs1
li x6, 0xcdb08de9 # initialize rs2
maxu x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x12cc6253 # initialize rs1
li x7, 0xa3eee671 # initialize rs2
maxu x21, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x03d4c5c8 # initialize rs1
li x8, 0xb3f27027 # initialize rs2
maxu x31, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2eaa1168 # initialize rs1
li x9, 0xcf588a4e # initialize rs2
maxu x21, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x2ae188bc # initialize rs1
li x10, 0x4199e371 # initialize rs2
maxu x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x711b0d87 # initialize rs1
li x11, 0x5c26ebe3 # initialize rs2
maxu x14, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x1f525bd8 # initialize rs1
li x12, 0x493011c8 # initialize rs2
maxu x10, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x47d671a6 # initialize rs1
li x13, 0x17c3f8f9 # initialize rs2
maxu x19, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x094da211 # initialize rs1
li x14, 0x76334637 # initialize rs2
maxu x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0a6c0e97 # initialize rs1
li x15, 0x22434990 # initialize rs2
maxu x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdfc2243b # initialize rs1
li x16, 0x50916b99 # initialize rs2
maxu x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xd800c4ad # initialize rs1
li x17, 0xd9d5b196 # initialize rs2
maxu x6, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa624005a # initialize rs1
li x18, 0xa07b7eb6 # initialize rs2
maxu x14, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x15f94d6e # initialize rs1
li x19, 0x0327c1d5 # initialize rs2
maxu x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa452ab75 # initialize rs1
li x20, 0xc7abdc4d # initialize rs2
maxu x7, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x863ac1ad # initialize rs1
li x21, 0xac2bad94 # initialize rs2
maxu x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd3d56bb3 # initialize rs1
li x22, 0xec9b71e2 # initialize rs2
maxu x13, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x273f682c # initialize rs1
li x23, 0xfff49e79 # initialize rs2
maxu x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x87a37fa9 # initialize rs1
li x24, 0xd0a0a1b8 # initialize rs2
maxu x5, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x25573607 # initialize rs1
li x25, 0x28610e63 # initialize rs2
maxu x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x93fca601 # initialize rs1
li x26, 0xca015260 # initialize rs2
maxu x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xae13eaee # initialize rs1
li x27, 0x5e2a0052 # initialize rs2
maxu x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x771ee3cf # initialize rs1
li x28, 0xd531b2be # initialize rs2
maxu x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x39f51e2c # initialize rs1
li x29, 0x3cb3bd91 # initialize rs2
maxu x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4874a65e # initialize rs1
li x30, 0xb5862803 # initialize rs2
maxu x25, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaaffc8b1 # initialize rs1
li x31, 0x17d0f063 # initialize rs2
maxu x24, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb687f618 # initialize rs1
li x30, 0xca0ae989 # initialize rs2
maxu x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x516f457b # initialize rs1
li x5, 0xa79be218 # initialize rs2
maxu x1, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x58872781 # initialize rs1
li x12, 0x96ed6b98 # initialize rs2
maxu x2, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6dd5a420 # initialize rs1
li x16, 0x3a666cef # initialize rs2
maxu x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd13c7ce0 # initialize rs1
li x7, 0x4122b6d1 # initialize rs2
maxu x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6da1e68e # initialize rs1
li x12, 0x753680e4 # initialize rs2
maxu x5, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x95ab761e # initialize rs1
li x16, 0x8651f422 # initialize rs2
maxu x6, x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x28c71882 # initialize rs1
li x15, 0xd809d500 # initialize rs2
maxu x7, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd05563f8 # initialize rs1
li x9, 0xcc1c5616 # initialize rs2
maxu x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8c3507b1 # initialize rs1
li x17, 0xd5d63cac # initialize rs2
maxu x9, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x61b83ee6 # initialize rs1
li x10, 0xd60ec1f5 # initialize rs2
maxu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2d00548b # initialize rs1
li x12, 0xc7e27935 # initialize rs2
maxu x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc08c663b # initialize rs1
li x31, 0x84f00bea # initialize rs2
maxu x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2772548f # initialize rs1
li x16, 0xbdacf332 # initialize rs2
maxu x13, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x853ae38c # initialize rs1
li x12, 0xa9a794c6 # initialize rs2
maxu x14, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6d38923e # initialize rs1
li x25, 0x157540ea # initialize rs2
maxu x15, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x44060230 # initialize rs1
li x28, 0x07ee7d4e # initialize rs2
maxu x16, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6f6ed70e # initialize rs1
li x22, 0xf8a0b631 # initialize rs2
maxu x17, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1206ebd7 # initialize rs1
li x15, 0xf3c8250c # initialize rs2
maxu x18, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6f95e858 # initialize rs1
li x26, 0x0d58c496 # initialize rs2
maxu x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf9e86eb5 # initialize rs1
li x31, 0x387771f8 # initialize rs2
maxu x20, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4443909f # initialize rs1
li x2, 0xe414839f # initialize rs2
maxu x21, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xab051628 # initialize rs1
li x7, 0xf06bad19 # initialize rs2
maxu x22, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x91f54158 # initialize rs1
li x6, 0x4e33cdcb # initialize rs2
maxu x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xbc65e6ed # initialize rs1
li x31, 0x0a53c6f3 # initialize rs2
maxu x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x25b382ed # initialize rs1
li x24, 0x959fc189 # initialize rs2
maxu x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x86d19fd6 # initialize rs1
li x24, 0x70de2053 # initialize rs2
maxu x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1bcf1f9d # initialize rs1
li x25, 0xa4a9a3e7 # initialize rs2
maxu x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x064c338a # initialize rs1
li x31, 0x2c62135f # initialize rs2
maxu x28, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf15b208f # initialize rs1
li x8, 0x114656ba # initialize rs2
maxu x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xbbad6235 # initialize rs1
li x11, 0x9144c0d7 # initialize rs2
maxu x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x966bf72f # initialize rs1
li x16, 0x5ea2b54d # initialize rs2
maxu x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x16, 0x0dd1e20e # initialize rs1
li x0, 0x7992223d # initialize rs2
maxu x0, x16, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0xcb73caed # initialize rs1
li x1, 0x94f05ebd # initialize rs2
maxu x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0xb1eba911 # initialize rs1
li x2, 0x87c47d74 # initialize rs2
maxu x2, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xdb5f3df1 # initialize rs1
li x3, 0x36f9b44e # initialize rs2
maxu x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x2d321e7c # initialize rs1
li x4, 0x7082e079 # initialize rs2
maxu x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x52f4c75f # initialize rs1
li x5, 0x0c8450a2 # initialize rs2
maxu x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xcd0a7d36 # initialize rs1
li x6, 0x2a061678 # initialize rs2
maxu x6, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xbc818d5f # initialize rs1
li x7, 0xcb562275 # initialize rs2
maxu x7, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0x14371a9a # initialize rs1
li x8, 0x58baf722 # initialize rs2
maxu x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x11, 0xb05bdeef # initialize rs1
li x9, 0x99fe78ed # initialize rs2
maxu x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0xf2d1ccb6 # initialize rs1
li x10, 0x4a66a8ae # initialize rs2
maxu x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x13, 0x1b58f946 # initialize rs1
li x11, 0x7bf90924 # initialize rs2
maxu x11, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0x4deabf50 # initialize rs1
li x12, 0x01093c72 # initialize rs2
maxu x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0x7c60f9aa # initialize rs1
li x13, 0xb06edabf # initialize rs2
maxu x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0x99eade9b # initialize rs1
li x14, 0x4a55dcf2 # initialize rs2
maxu x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x7, 0x6c593076 # initialize rs1
li x15, 0xfc614541 # initialize rs2
maxu x15, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0x1c34badb # initialize rs1
li x16, 0x02599a7d # initialize rs2
maxu x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x7, 0x106c4811 # initialize rs1
li x17, 0x308606f8 # initialize rs2
maxu x17, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x10, 0xd0653e29 # initialize rs1
li x18, 0x40f85eb0 # initialize rs2
maxu x18, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0x89939a99 # initialize rs1
li x19, 0x525e6078 # initialize rs2
maxu x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x28, 0x2df483a2 # initialize rs1
li x20, 0x6f4e5cbf # initialize rs2
maxu x20, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x19, 0xc19e8959 # initialize rs1
li x21, 0x91fd5a8d # initialize rs2
maxu x21, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x3, 0x4a17b0bb # initialize rs1
li x22, 0x9e5fa337 # initialize rs2
maxu x22, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x14, 0xd3e90fd2 # initialize rs1
li x23, 0xb477b783 # initialize rs2
maxu x23, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x17, 0x00dbab83 # initialize rs1
li x24, 0x2e792029 # initialize rs2
maxu x24, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0x1155c3b9 # initialize rs1
li x25, 0x6bfd3490 # initialize rs2
maxu x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x3847d5fb # initialize rs1
li x26, 0xf4b40a7b # initialize rs2
maxu x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0xd38d0036 # initialize rs1
li x27, 0x15041fbc # initialize rs2
maxu x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x16, 0x977b36f3 # initialize rs1
li x28, 0x16c1036a # initialize rs2
maxu x28, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x22, 0x79736868 # initialize rs1
li x29, 0x230e2a0a # initialize rs2
maxu x29, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0x136fa74e # initialize rs1
li x30, 0x40d996a9 # initialize rs2
maxu x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x12, 0x3db25dad # initialize rs1
li x31, 0x0c9b1d5a # initialize rs2
maxu x31, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xca9e51b2 # initialize rs1
li x0, 0xb1584b36 # initialize rs2
maxu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x812b71b9 # initialize rs1
li x1, 0x5fce95c5 # initialize rs2
maxu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4ff1957a # initialize rs1
li x2, 0xfb22fcac # initialize rs2
maxu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x08d37994 # initialize rs1
li x3, 0xf2e972a3 # initialize rs2
maxu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8b80539d # initialize rs1
li x4, 0xd2dd7b1f # initialize rs2
maxu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9a366b10 # initialize rs1
li x5, 0x2fc786f9 # initialize rs2
maxu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x30231758 # initialize rs1
li x6, 0xaa11f984 # initialize rs2
maxu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa413200 # initialize rs1
li x7, 0xbe94545f # initialize rs2
maxu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa288f80b # initialize rs1
li x8, 0xa8464237 # initialize rs2
maxu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa49b4363 # initialize rs1
li x9, 0x2ee99d89 # initialize rs2
maxu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3648e151 # initialize rs1
li x10, 0x98436fd8 # initialize rs2
maxu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1c91d889 # initialize rs1
li x11, 0x7a91130b # initialize rs2
maxu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x6386c529 # initialize rs1
li x12, 0x873d154c # initialize rs2
maxu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x8b2d64b4 # initialize rs1
li x13, 0xd0e8c86c # initialize rs2
maxu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbad4ed21 # initialize rs1
li x14, 0x625f9a83 # initialize rs2
maxu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xdfd92b84 # initialize rs1
li x15, 0xbf94d5c9 # initialize rs2
maxu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3b622ee7 # initialize rs1
li x16, 0xaa9a226f # initialize rs2
maxu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc6ed85f3 # initialize rs1
li x17, 0x50ae254d # initialize rs2
maxu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x8ea91ca5 # initialize rs1
li x18, 0x72943e2e # initialize rs2
maxu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x41805932 # initialize rs1
li x19, 0x257604f7 # initialize rs2
maxu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6b349e0b # initialize rs1
li x20, 0xe90e9413 # initialize rs2
maxu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x938b3062 # initialize rs1
li x21, 0x1ffcce87 # initialize rs2
maxu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xbeeb3187 # initialize rs1
li x22, 0x357dd05e # initialize rs2
maxu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe5db0641 # initialize rs1
li x23, 0x7d30252a # initialize rs2
maxu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x08e4d3f2 # initialize rs1
li x24, 0x8e35d160 # initialize rs2
maxu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1be6342a # initialize rs1
li x25, 0x74e1d0b0 # initialize rs2
maxu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x28cf9df7 # initialize rs1
li x26, 0x1c0952f5 # initialize rs2
maxu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc1df008a # initialize rs1
li x27, 0x48277621 # initialize rs2
maxu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x07182628 # initialize rs1
li x28, 0x8854e684 # initialize rs2
maxu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x2dec8442 # initialize rs1
li x29, 0x7a6d1a83 # initialize rs2
maxu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x88060107 # initialize rs1
li x30, 0x57c783f5 # initialize rs2
maxu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x43b96e44 # initialize rs1
li x31, 0x9908ea4a # initialize rs2
maxu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x9, x28 # perform first operation
maxu x26, x1, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x13, x12 # perform first operation
maxu x19, x15, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x7, x21 # perform first operation
maxu x8, x29, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x28, x3 # perform first operation
maxu x28, x22, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x27, x22 # perform first operation
maxu x22, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x20, x29 # perform first operation
maxu x20, x16, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x12, x11 # perform first operation
maxu x7, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x6, x16 # perform first operation
maxu x9, x25, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x23, x2 # perform first operation
maxu x14, x25, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x25, x9 # perform first operation
maxu x25, x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x5, x13 # perform first operation
maxu x13, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x25, x15 # perform first operation
maxu x26, x28, x12 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-minu.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x7cf3649e # initialize rs1
li x7, 0xdcf433ce # initialize rs2
minu x8, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd7024beb # initialize rs1
li x13, 0x71e31a4d # initialize rs2
minu x31, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x05a0a06d # initialize rs1
li x27, 0x0ad2a036 # initialize rs2
minu x15, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x72bf8406 # initialize rs1
li x15, 0x6bcfeec4 # initialize rs2
minu x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe5648dd7 # initialize rs1
li x1, 0x693faa43 # initialize rs2
minu x24, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x319dd211 # initialize rs1
li x6, 0xa824f878 # initialize rs2
minu x18, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x8423ac76 # initialize rs1
li x8, 0xadb9b1ae # initialize rs2
minu x2, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb07f1c0e # initialize rs1
li x1, 0xd63f95a3 # initialize rs2
minu x30, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3f61ea56 # initialize rs1
li x7, 0x02343cad # initialize rs2
minu x1, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xde811a3d # initialize rs1
li x22, 0x4fd40b6a # initialize rs2
minu x11, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa53846f8 # initialize rs1
li x16, 0x9f254443 # initialize rs2
minu x21, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf2418c82 # initialize rs1
li x17, 0xaf7256ef # initialize rs2
minu x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0d9a90a5 # initialize rs1
li x8, 0xe894a70b # initialize rs2
minu x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4bf07a04 # initialize rs1
li x14, 0x2bcbff33 # initialize rs2
minu x1, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x794efe3b # initialize rs1
li x3, 0xe5c9e9e7 # initialize rs2
minu x16, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe7b7a131 # initialize rs1
li x7, 0xf95c1bcc # initialize rs2
minu x29, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x567cdc8c # initialize rs1
li x2, 0x90aacbc9 # initialize rs2
minu x7, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3453e8a3 # initialize rs1
li x6, 0x4ec0ec39 # initialize rs2
minu x15, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfa79eafe # initialize rs1
li x12, 0xad418cb7 # initialize rs2
minu x20, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7c58e3e4 # initialize rs1
li x1, 0x5ffb367a # initialize rs2
minu x13, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc51fcb65 # initialize rs1
li x19, 0x9c5eebc4 # initialize rs2
minu x31, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6e586339 # initialize rs1
li x16, 0x25f17cdb # initialize rs2
minu x15, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0178249f # initialize rs1
li x13, 0x05e1f9a6 # initialize rs2
minu x28, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xda3af429 # initialize rs1
li x6, 0x98d27439 # initialize rs2
minu x12, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0bb969db # initialize rs1
li x13, 0x3e9d096b # initialize rs2
minu x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x56f0413a # initialize rs1
li x24, 0xf90400ad # initialize rs2
minu x31, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x194330bc # initialize rs1
li x21, 0xe2c742e7 # initialize rs2
minu x1, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x62d5b7ae # initialize rs1
li x3, 0x841ba987 # initialize rs2
minu x30, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe74a0988 # initialize rs1
li x5, 0xec31c7ee # initialize rs2
minu x20, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd3a7634d # initialize rs1
li x3, 0x48ed5b2d # initialize rs2
minu x12, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x6734bf1f # initialize rs1
li x15, 0xe486d51d # initialize rs2
minu x1, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7568d040 # initialize rs1
li x20, 0xfeb1d42b # initialize rs2
minu x8, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x50f3ef05 # initialize rs1
li x0, 0x8ea6fa88 # initialize rs2
minu x7, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0x2c435bc4 # initialize rs1
li x1, 0xc5f29817 # initialize rs2
minu x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0x02a5edcc # initialize rs1
li x2, 0xe5769239 # initialize rs2
minu x22, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x7940e17a # initialize rs1
li x3, 0x4832f3b5 # initialize rs2
minu x1, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x172a91e9 # initialize rs1
li x4, 0xf8bf30dc # initialize rs2
minu x13, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x62db29ac # initialize rs1
li x5, 0x1fd50fd4 # initialize rs2
minu x28, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xd326d116 # initialize rs1
li x6, 0xa49ea273 # initialize rs2
minu x13, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x3ce0311a # initialize rs1
li x7, 0xbc69c83f # initialize rs2
minu x1, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x18, 0xf058fa39 # initialize rs1
li x8, 0x68e714d2 # initialize rs2
minu x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xaee6ca5c # initialize rs1
li x9, 0xccca7fd9 # initialize rs2
minu x24, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x5a71f139 # initialize rs1
li x10, 0x51d018dd # initialize rs2
minu x19, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x1753a1e2 # initialize rs1
li x11, 0x9221268a # initialize rs2
minu x19, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x46cad833 # initialize rs1
li x12, 0x715c3e27 # initialize rs2
minu x6, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x55b79f54 # initialize rs1
li x13, 0xf9ac0682 # initialize rs2
minu x21, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0xc6547399 # initialize rs1
li x14, 0x72d0ccab # initialize rs2
minu x19, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0x5d9f3db3 # initialize rs1
li x15, 0xad27ee14 # initialize rs2
minu x30, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xffe6fd10 # initialize rs1
li x16, 0xd3a16618 # initialize rs2
minu x10, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xa1f1c0dc # initialize rs1
li x17, 0xb33160b5 # initialize rs2
minu x19, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x458ed2a0 # initialize rs1
li x18, 0xc3e69433 # initialize rs2
minu x1, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x8718463d # initialize rs1
li x19, 0x5de05b89 # initialize rs2
minu x3, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0xbbe46604 # initialize rs1
li x20, 0x88403ebf # initialize rs2
minu x23, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x44ce6fad # initialize rs1
li x21, 0x1e06427c # initialize rs2
minu x9, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x00144675 # initialize rs1
li x22, 0xe796cf04 # initialize rs2
minu x13, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0xf88512a7 # initialize rs1
li x23, 0xd25d5fa7 # initialize rs2
minu x25, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xbb26fe70 # initialize rs1
li x24, 0x2367c231 # initialize rs2
minu x12, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0xdc0313c9 # initialize rs1
li x25, 0x7696cb22 # initialize rs2
minu x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0x18ad1147 # initialize rs1
li x26, 0xfe862c9d # initialize rs2
minu x29, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0x0ad514d6 # initialize rs1
li x27, 0x65451b03 # initialize rs2
minu x11, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x10, 0xf3bd3886 # initialize rs1
li x28, 0x70a02dc5 # initialize rs2
minu x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x9, 0xa44d3a45 # initialize rs1
li x29, 0x328580aa # initialize rs2
minu x28, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0x2e5104f4 # initialize rs1
li x30, 0xaecf9a91 # initialize rs2
minu x29, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x73f43f74 # initialize rs1
li x31, 0x75d774ea # initialize rs2
minu x26, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 252)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x6a40ba6f # initialize rs1
li x28, 0xfa6c5ab8 # initialize rs2
minu x0, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0x76437e70 # initialize rs1
li x11, 0xc4408dbf # initialize rs2
minu x1, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x0a6c0b4d # initialize rs1
li x3, 0x5c030657 # initialize rs2
minu x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xf89773c9 # initialize rs1
li x22, 0x4a927bea # initialize rs2
minu x3, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x58c05d17 # initialize rs1
li x30, 0x41f29c22 # initialize rs2
minu x4, x3, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x1769cf51 # initialize rs1
li x15, 0xf0b2d53c # initialize rs2
minu x5, x9, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x3fbcf502 # initialize rs1
li x18, 0x5d681101 # initialize rs2
minu x6, x5, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x9744b019 # initialize rs1
li x6, 0x7cb9c9ad # initialize rs2
minu x7, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xe4c00fd3 # initialize rs1
li x2, 0x633a0b0b # initialize rs2
minu x8, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0xd8c978aa # initialize rs1
li x8, 0x47c96cce # initialize rs2
minu x9, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x7e1d2bce # initialize rs1
li x18, 0x746a66c8 # initialize rs2
minu x10, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0xf4407de3 # initialize rs1
li x12, 0xeea3b2b9 # initialize rs2
minu x11, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x38842077 # initialize rs1
li x2, 0x904fa278 # initialize rs2
minu x12, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x11eb457a # initialize rs1
li x28, 0x05c974b1 # initialize rs2
minu x13, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0xf1da27de # initialize rs1
li x27, 0x1c738310 # initialize rs2
minu x14, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x6ae4f00d # initialize rs1
li x30, 0x5940f991 # initialize rs2
minu x15, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0xc8ceea88 # initialize rs1
li x13, 0xac5d88de # initialize rs2
minu x16, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x931f5dc4 # initialize rs1
li x8, 0x1b8af9ac # initialize rs2
minu x17, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0x33d42e3f # initialize rs1
li x1, 0x9758fbee # initialize rs2
minu x18, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x48c6a34b # initialize rs1
li x23, 0x509c8517 # initialize rs2
minu x19, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x66af54a6 # initialize rs1
li x21, 0xbd2f2286 # initialize rs2
minu x20, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0xfc97ca9f # initialize rs1
li x13, 0x5e848caf # initialize rs2
minu x21, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x4e9588af # initialize rs1
li x28, 0x26044240 # initialize rs2
minu x22, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0xf8950697 # initialize rs1
li x17, 0xa541ad68 # initialize rs2
minu x23, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0x5c129d9c # initialize rs1
li x8, 0xaccb3a76 # initialize rs2
minu x24, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x7b4d3bb1 # initialize rs1
li x18, 0x71f9ff76 # initialize rs2
minu x25, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x493e4abd # initialize rs1
li x27, 0x69aeec00 # initialize rs2
minu x26, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0x770dcfc1 # initialize rs1
li x14, 0x7af38f16 # initialize rs2
minu x27, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0x0091d44b # initialize rs1
li x20, 0xf0cada86 # initialize rs2
minu x28, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0xbd2e9577 # initialize rs1
li x22, 0x6f89ecd4 # initialize rs2
minu x29, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x133c3c43 # initialize rs1
li x25, 0xca6cf7ac # initialize rs2
minu x30, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x9d5df05e # initialize rs1
li x30, 0xb536c30e # initialize rs2
minu x31, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x00000000 # initialize rs1
li x7, 0x5309c12d # initialize rs2
minu x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
li x9, 0x6f2bd650 # initialize rs2
minu x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002 # initialize rs1
li x29, 0xdc587ffe # initialize rs2
minu x16, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x27, 0xf1988d3a # initialize rs2
minu x18, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x20, 0x12d9c6c0 # initialize rs2
minu x21, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7fffffff # initialize rs1
li x26, 0x027d57d6 # initialize rs2
minu x31, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
li x9, 0x6e332f2f # initialize rs2
minu x1, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x1, 0x66b10556 # initialize rs2
minu x29, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rs1
li x12, 0xcfd277f8 # initialize rs2
minu x23, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x21, 0xd46e0509 # initialize rs2
minu x24, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x9, 0x1ec9c48b # initialize rs2
minu x7, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x3, 0x55555555 # initialize rs1
li x6, 0x8cba14ed # initialize rs2
minu x17, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xf6dcf436 # initialize rs1
li x25, 0x00000000 # initialize rs2
minu x27, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x6c36d030 # initialize rs1
li x30, 0x00000001 # initialize rs2
minu x29, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x5d03e16e # initialize rs1
li x2, 0x00000002 # initialize rs2
minu x29, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0x5f09c376 # initialize rs1
li x19, 0x80000000 # initialize rs2
minu x29, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x5, 0xd08056d4 # initialize rs1
li x20, 0x80000001 # initialize rs2
minu x26, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x17, 0x3368957a # initialize rs1
li x9, 0x7fffffff # initialize rs2
minu x16, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0x547c78ea # initialize rs1
li x20, 0x7ffffffe # initialize rs2
minu x17, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0xac12fa3c # initialize rs1
li x11, 0xffffffff # initialize rs2
minu x14, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0xe79347b1 # initialize rs1
li x20, 0xfffffffe # initialize rs2
minu x13, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xd2246ad5 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
minu x25, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0x12b13cc6 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
minu x25, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x30, 0x983a6d85 # initialize rs1
li x19, 0x55555555 # initialize rs2
minu x9, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
minu x30, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x26, 0x00000000 # initialize rs1
li x30, 0x00000001 # initialize rs2
minu x3, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x00000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
minu x21, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x29, 0x80000000 # initialize rs2
minu x26, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x16, 0x00000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
minu x8, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x22, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
minu x8, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x8, 0x00000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
minu x30, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x00000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
minu x29, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x22, 0x00000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
minu x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x6, 0x00000000 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
minu x10, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x00000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
minu x14, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
minu x26, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x00000001 # initialize rs1
li x21, 0x00000000 # initialize rs2
minu x19, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x00000001 # initialize rs1
li x8, 0x00000001 # initialize rs2
minu x23, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0x00000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
minu x31, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x11, 0x00000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
minu x16, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x28, 0x00000001 # initialize rs1
li x26, 0x80000001 # initialize rs2
minu x5, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x2, 0x00000001 # initialize rs1
li x26, 0x7fffffff # initialize rs2
minu x31, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x31, 0x00000001 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
minu x22, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x00000001 # initialize rs1
li x30, 0xffffffff # initialize rs2
minu x21, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x1, 0x00000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
minu x14, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x19, 0x00000001 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
minu x8, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x16, 0x00000001 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
minu x8, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001 # initialize rs1
li x14, 0x55555555 # initialize rs2
minu x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x00000002 # initialize rs1
li x24, 0x00000000 # initialize rs2
minu x30, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
minu x19, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x00000002 # initialize rs1
li x10, 0x00000002 # initialize rs2
minu x7, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x9, 0x80000000 # initialize rs2
minu x8, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x29, 0x00000002 # initialize rs1
li x26, 0x80000001 # initialize rs2
minu x14, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x22, 0x00000002 # initialize rs1
li x9, 0x7fffffff # initialize rs2
minu x12, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x20, 0x00000002 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
minu x14, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x00000002 # initialize rs1
li x22, 0xffffffff # initialize rs2
minu x9, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x11, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
minu x30, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x27, 0x00000002 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
minu x1, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x7, 0x00000002 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
minu x20, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x31, 0x55555555 # initialize rs2
minu x2, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
minu x14, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x8, 0x80000000 # initialize rs1
li x17, 0x00000001 # initialize rs2
minu x27, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x25, 0x80000000 # initialize rs1
li x23, 0x00000002 # initialize rs2
minu x18, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x24, 0x80000000 # initialize rs1
li x27, 0x80000000 # initialize rs2
minu x6, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x22, 0x80000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
minu x10, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x28, 0x80000000 # initialize rs1
li x7, 0x7fffffff # initialize rs2
minu x22, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x18, 0x80000000 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
minu x7, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x13, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
minu x14, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x17, 0x80000000 # initialize rs1
li x8, 0xfffffffe # initialize rs2
minu x20, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x31, 0x80000000 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
minu x20, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
minu x13, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x11, 0x80000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
minu x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
minu x2, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x13, 0x80000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
minu x11, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x7, 0x80000001 # initialize rs1
li x8, 0x00000002 # initialize rs2
minu x31, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
minu x23, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x6, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
minu x25, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x12, 0x80000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
minu x9, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x14, 0x80000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
minu x9, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x28, 0x80000001 # initialize rs1
li x1, 0xffffffff # initialize rs2
minu x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
minu x3, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x22, 0x80000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
minu x26, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
minu x6, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x5, 0x80000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
minu x31, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x18, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
minu x8, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff # initialize rs1
li x9, 0x00000001 # initialize rs2
minu x28, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x21, 0x7fffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
minu x3, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
minu x13, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x14, 0x7fffffff # initialize rs1
li x24, 0x80000001 # initialize rs2
minu x23, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
minu x5, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x23, 0x7fffffff # initialize rs1
li x21, 0x7ffffffe # initialize rs2
minu x9, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x7, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
minu x22, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0x7fffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
minu x30, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x23, 0x7fffffff # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
minu x14, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x22, 0x7fffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
minu x21, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x22, 0x55555555 # initialize rs2
minu x3, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x19, 0x7ffffffe # initialize rs1
li x8, 0x00000000 # initialize rs2
minu x1, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
minu x27, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x16, 0x7ffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
minu x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x17, 0x7ffffffe # initialize rs1
li x3, 0x80000000 # initialize rs2
minu x19, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x22, 0x7ffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
minu x14, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x29, 0x7ffffffe # initialize rs1
li x18, 0x7fffffff # initialize rs2
minu x13, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x21, 0x7ffffffe # initialize rs2
minu x9, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
minu x31, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x18, 0x7ffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
minu x9, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x14, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
minu x29, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
minu x30, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0x7ffffffe # initialize rs1
li x28, 0x55555555 # initialize rs2
minu x6, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0xffffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
minu x21, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
minu x10, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x28, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
minu x1, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x10, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
minu x16, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x19, 0xffffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
minu x29, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
minu x21, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x22, 0xffffffff # initialize rs1
li x2, 0x7ffffffe # initialize rs2
minu x21, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x25, 0xffffffff # initialize rs2
minu x26, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
minu x14, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x7, 0xffffffff # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
minu x3, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x26, 0xffffffff # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
minu x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x15, 0xffffffff # initialize rs1
li x9, 0x55555555 # initialize rs2
minu x13, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x22, 0xfffffffe # initialize rs1
li x16, 0x00000000 # initialize rs2
minu x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0xfffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
minu x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
minu x31, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x27, 0xfffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
minu x15, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x5, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
minu x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x31, 0xfffffffe # initialize rs1
li x16, 0x7fffffff # initialize rs2
minu x6, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x22, 0xfffffffe # initialize rs1
li x2, 0x7ffffffe # initialize rs2
minu x23, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
minu x5, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
minu x13, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x12, 0xfffffffe # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
minu x24, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x26, 0xfffffffe # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
minu x12, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x12, 0xfffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
minu x29, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x2, 0x5bbc8872 # initialize rs1
li x8, 0x00000000 # initialize rs2
minu x20, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x27, 0x5bbc8872 # initialize rs1
li x7, 0x00000001 # initialize rs2
minu x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x29, 0x00000002 # initialize rs2
minu x7, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x24, 0x5bbc8872 # initialize rs1
li x26, 0x80000000 # initialize rs2
minu x7, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x26, 0x5bbc8872 # initialize rs1
li x19, 0x80000001 # initialize rs2
minu x8, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x20, 0x5bbc8872 # initialize rs1
li x14, 0x7fffffff # initialize rs2
minu x12, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x15, 0x5bbc8872 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
minu x8, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x29, 0x5bbc8872 # initialize rs1
li x12, 0xffffffff # initialize rs2
minu x31, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x24, 0x5bbc8872 # initialize rs1
li x17, 0xfffffffe # initialize rs2
minu x5, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x8, 0x5bbc8872 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
minu x23, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x8, 0x5bbc8872 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
minu x26, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x26, 0x5bbc8872 # initialize rs1
li x5, 0x55555555 # initialize rs2
minu x16, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
minu x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaa # initialize rs1
li x25, 0x00000001 # initialize rs2
minu x23, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x10, 0xaaaaaaaa # initialize rs1
li x12, 0x00000002 # initialize rs2
minu x19, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x20, 0xaaaaaaaa # initialize rs1
li x7, 0x80000000 # initialize rs2
minu x13, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x17, 0x80000001 # initialize rs2
minu x24, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x16, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
minu x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x15, 0xaaaaaaaa # initialize rs1
li x13, 0x7ffffffe # initialize rs2
minu x14, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x20, 0xffffffff # initialize rs2
minu x10, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x25, 0xaaaaaaaa # initialize rs1
li x5, 0xfffffffe # initialize rs2
minu x23, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
minu x31, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
minu x15, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x7, 0xaaaaaaaa # initialize rs1
li x15, 0x55555555 # initialize rs2
minu x17, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x28, 0x55555555 # initialize rs1
li x21, 0x00000000 # initialize rs2
minu x22, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x1, 0x55555555 # initialize rs1
li x13, 0x00000001 # initialize rs2
minu x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x5, 0x55555555 # initialize rs1
li x1, 0x00000002 # initialize rs2
minu x20, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x17, 0x55555555 # initialize rs1
li x29, 0x80000000 # initialize rs2
minu x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x11, 0x55555555 # initialize rs1
li x5, 0x80000001 # initialize rs2
minu x10, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x10, 0x55555555 # initialize rs1
li x5, 0x7fffffff # initialize rs2
minu x2, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x8, 0x55555555 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
minu x9, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x6, 0xffffffff # initialize rs2
minu x7, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x2, 0x55555555 # initialize rs1
li x17, 0xfffffffe # initialize rs2
minu x6, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
minu x3, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x17, 0x55555555 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
minu x15, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x19, 0x55555555 # initialize rs1
li x8, 0x55555555 # initialize rs2
minu x9, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb9a70e1a # initialize rs1
li x0, 0x16c51832 # initialize rs2
minu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x5fa8a954 # initialize rs1
li x1, 0xdedea16b # initialize rs2
minu x3, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xde36f478 # initialize rs1
li x2, 0xdfac2e62 # initialize rs2
minu x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd75ff009 # initialize rs1
li x3, 0x1c136be7 # initialize rs2
minu x10, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x84437f7e # initialize rs1
li x4, 0xa534f9c2 # initialize rs2
minu x24, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x681150e8 # initialize rs1
li x5, 0x1ffb7a16 # initialize rs2
minu x6, x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x6, 0x868a31ad # initialize rs1
li x6, 0xebf0c150 # initialize rs2
minu x5, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7eb77688 # initialize rs1
li x7, 0x607c4171 # initialize rs2
minu x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6f58e1b6 # initialize rs1
li x8, 0x3203ec56 # initialize rs2
minu x2, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x40cb1dfb # initialize rs1
li x9, 0xb50e4b57 # initialize rs2
minu x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd7940905 # initialize rs1
li x10, 0xd5b41b09 # initialize rs2
minu x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x88a75441 # initialize rs1
li x11, 0x3f5cdd06 # initialize rs2
minu x17, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb2c79799 # initialize rs1
li x12, 0xb4fc32b8 # initialize rs2
minu x26, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8e260f49 # initialize rs1
li x13, 0x6be71d17 # initialize rs2
minu x27, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2fe1b7cf # initialize rs1
li x14, 0x596321b5 # initialize rs2
minu x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb91cb5cd # initialize rs1
li x15, 0x70e659d1 # initialize rs2
minu x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6f41d91d # initialize rs1
li x16, 0xf38252f8 # initialize rs2
minu x11, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xb8703a88 # initialize rs1
li x17, 0x153e2a86 # initialize rs2
minu x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x05bcf817 # initialize rs1
li x18, 0x14049e0b # initialize rs2
minu x29, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0c804f81 # initialize rs1
li x19, 0x8b9b576d # initialize rs2
minu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3c4494f4 # initialize rs1
li x20, 0x4c852c28 # initialize rs2
minu x31, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7fafa3ff # initialize rs1
li x21, 0x6d22088e # initialize rs2
minu x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x28b05b54 # initialize rs1
li x22, 0x65ee9adc # initialize rs2
minu x8, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1eaf3914 # initialize rs1
li x23, 0xb6379ffa # initialize rs2
minu x11, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x606fc437 # initialize rs1
li x24, 0xcdcb0cef # initialize rs2
minu x10, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xad38188b # initialize rs1
li x25, 0x358e7121 # initialize rs2
minu x16, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf6081cc6 # initialize rs1
li x26, 0xe4b325d3 # initialize rs2
minu x22, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x59d37c84 # initialize rs1
li x27, 0x6962cab5 # initialize rs2
minu x2, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xd7c06346 # initialize rs1
li x28, 0xe92cea85 # initialize rs2
minu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3187179e # initialize rs1
li x29, 0x93e3c165 # initialize rs2
minu x20, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbe018e67 # initialize rs1
li x30, 0xe9be653f # initialize rs2
minu x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x10e107d8 # initialize rs1
li x31, 0xe8449c3c # initialize rs2
minu x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xec2c573a # initialize rs1
li x19, 0x64365ca4 # initialize rs2
minu x0, x0, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6ac4e0ec # initialize rs1
li x1, 0x9d2e6f47 # initialize rs2
minu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x05eb5633 # initialize rs1
li x5, 0xfbc42bb0 # initialize rs2
minu x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe180de23 # initialize rs1
li x31, 0x877a094e # initialize rs2
minu x3, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x62f3003e # initialize rs1
li x6, 0x85d80f10 # initialize rs2
minu x4, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf19e3ac7 # initialize rs1
li x10, 0x4f062532 # initialize rs2
minu x5, x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x46fecf17 # initialize rs1
li x8, 0xd54689f1 # initialize rs2
minu x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9db88fd # initialize rs1
li x13, 0x648bbd81 # initialize rs2
minu x7, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc5525a41 # initialize rs1
li x19, 0x3e93eb49 # initialize rs2
minu x8, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa0465f55 # initialize rs1
li x1, 0xc72c0833 # initialize rs2
minu x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x21b7fcef # initialize rs1
li x26, 0x8ffb6596 # initialize rs2
minu x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xea2dc558 # initialize rs1
li x14, 0xf7e935c0 # initialize rs2
minu x11, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x81779117 # initialize rs1
li x25, 0xd0daa520 # initialize rs2
minu x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4aafb7e3 # initialize rs1
li x14, 0x410d9752 # initialize rs2
minu x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x559d0c09 # initialize rs1
li x11, 0xdf162244 # initialize rs2
minu x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x94f93934 # initialize rs1
li x13, 0xa381f3d9 # initialize rs2
minu x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x95a77da3 # initialize rs1
li x14, 0xc0fe8362 # initialize rs2
minu x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc1dd014e # initialize rs1
li x17, 0xe30aa7bf # initialize rs2
minu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x00863ef4 # initialize rs1
li x11, 0xdcaa82da # initialize rs2
minu x18, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0d8e8b78 # initialize rs1
li x5, 0x89f51477 # initialize rs2
minu x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf003339c # initialize rs1
li x19, 0xb5a248a5 # initialize rs2
minu x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x57d3438b # initialize rs1
li x22, 0x1b8a8e53 # initialize rs2
minu x21, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe8af3504 # initialize rs1
li x23, 0x3420b697 # initialize rs2
minu x22, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8b0b608c # initialize rs1
li x31, 0x63f5d5ec # initialize rs2
minu x23, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0d6fdbc0 # initialize rs1
li x7, 0xc3e43aab # initialize rs2
minu x24, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc79c5165 # initialize rs1
li x24, 0x67b0b6b8 # initialize rs2
minu x25, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2f64c8a3 # initialize rs1
li x6, 0x46ac7ef8 # initialize rs2
minu x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcbe23961 # initialize rs1
li x23, 0xf2b232db # initialize rs2
minu x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x29b96726 # initialize rs1
li x19, 0xb0718787 # initialize rs2
minu x28, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa231617b # initialize rs1
li x13, 0x94877693 # initialize rs2
minu x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x396fcf37 # initialize rs1
li x11, 0x5036ea2e # initialize rs2
minu x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x122a2dac # initialize rs1
li x2, 0x7df8a4a1 # initialize rs2
minu x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xe01fdc66 # initialize rs1
li x0, 0x745ba74d # initialize rs2
minu x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x20, 0x8881038a # initialize rs1
li x1, 0x3846c1d0 # initialize rs2
minu x1, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x19, 0x079608f7 # initialize rs1
li x2, 0x16819e76 # initialize rs2
minu x2, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0x2cc56735 # initialize rs1
li x3, 0xd54965c6 # initialize rs2
minu x3, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x98ecae1c # initialize rs1
li x4, 0xd27118c1 # initialize rs2
minu x4, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0xf3dec8a7 # initialize rs1
li x5, 0xbc7f88eb # initialize rs2
minu x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x21ace93a # initialize rs1
li x6, 0xe9862c27 # initialize rs2
minu x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x9bcc6caa # initialize rs1
li x7, 0x4f50303e # initialize rs2
minu x7, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0xf00cf09c # initialize rs1
li x8, 0xa6b70dfa # initialize rs2
minu x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x14, 0xee679ed9 # initialize rs1
li x9, 0x54500a7a # initialize rs2
minu x9, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x30, 0x67a8915d # initialize rs1
li x10, 0xd4d8e2f5 # initialize rs2
minu x10, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x21, 0xef408246 # initialize rs1
li x11, 0xd5519fcc # initialize rs2
minu x11, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x27, 0x5cc0329f # initialize rs1
li x12, 0x85e54a9c # initialize rs2
minu x12, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x7, 0x400e719e # initialize rs1
li x13, 0x5b633fe5 # initialize rs2
minu x13, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0x98054c69 # initialize rs1
li x14, 0x80145dec # initialize rs2
minu x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0x78f73015 # initialize rs1
li x15, 0x647b6577 # initialize rs2
minu x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x21, 0x34805690 # initialize rs1
li x16, 0xa6b4b0a6 # initialize rs2
minu x16, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x24, 0x67b8caaf # initialize rs1
li x17, 0x32ad85af # initialize rs2
minu x17, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x2, 0x1cfe7c0f # initialize rs1
li x18, 0x9a407500 # initialize rs2
minu x18, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0xd0b88b80 # initialize rs1
li x19, 0x56ba5ec1 # initialize rs2
minu x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0x774a09c3 # initialize rs1
li x20, 0xccad3200 # initialize rs2
minu x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x1, 0x4bfaf11a # initialize rs1
li x21, 0xa7ba7b09 # initialize rs2
minu x21, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0xc7c40c43 # initialize rs1
li x22, 0x8c2feed3 # initialize rs2
minu x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0xd7867a48 # initialize rs1
li x23, 0x8fa0b348 # initialize rs2
minu x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x19, 0xdc4324f8 # initialize rs1
li x24, 0x15622c17 # initialize rs2
minu x24, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0x48dffde3 # initialize rs1
li x25, 0x89160dbd # initialize rs2
minu x25, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x542cb1d5 # initialize rs1
li x26, 0x4e9de7af # initialize rs2
minu x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x30, 0xf2c26fb6 # initialize rs1
li x27, 0xc9d5543e # initialize rs2
minu x27, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x9, 0x286892e4 # initialize rs1
li x28, 0x4f65ab64 # initialize rs2
minu x28, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0xf33ac45c # initialize rs1
li x29, 0x4a5a10bf # initialize rs2
minu x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0x27cc4aac # initialize rs1
li x30, 0x04d477a7 # initialize rs2
minu x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0xe37c41e7 # initialize rs1
li x31, 0xb9c257cf # initialize rs2
minu x31, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x8f56f590 # initialize rs1
li x0, 0xd44a5b71 # initialize rs2
minu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x523fb99c # initialize rs1
li x1, 0xed5695d8 # initialize rs2
minu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x041a30a1 # initialize rs1
li x2, 0x95e01781 # initialize rs2
minu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xc1339b76 # initialize rs1
li x3, 0x11e786e0 # initialize rs2
minu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x13b65bea # initialize rs1
li x4, 0x9847d49d # initialize rs2
minu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfce78a6f # initialize rs1
li x5, 0xd53e0d59 # initialize rs2
minu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9c8ae956 # initialize rs1
li x6, 0x4d642a2f # initialize rs2
minu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x265ed38a # initialize rs1
li x7, 0x9be798fa # initialize rs2
minu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xac2cf1ac # initialize rs1
li x8, 0xcbd6d6b4 # initialize rs2
minu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x8049cc24 # initialize rs1
li x9, 0xcc83b19a # initialize rs2
minu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4f7b9739 # initialize rs1
li x10, 0x978fa241 # initialize rs2
minu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x340b2c3c # initialize rs1
li x11, 0x661b75b9 # initialize rs2
minu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x52a531ec # initialize rs1
li x12, 0xfefb50c3 # initialize rs2
minu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3250bd61 # initialize rs1
li x13, 0xa2bba15f # initialize rs2
minu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xabd51dcd # initialize rs1
li x14, 0xa67e4373 # initialize rs2
minu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc2867faf # initialize rs1
li x15, 0xeb3c5127 # initialize rs2
minu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x142427e6 # initialize rs1
li x16, 0xbacb15b0 # initialize rs2
minu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8247437f # initialize rs1
li x17, 0x99fd2fef # initialize rs2
minu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xbf269aff # initialize rs1
li x18, 0xf84c414e # initialize rs2
minu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc555ebe2 # initialize rs1
li x19, 0x439b4279 # initialize rs2
minu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xcdff5de7 # initialize rs1
li x20, 0xe1a0a396 # initialize rs2
minu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x120ed722 # initialize rs1
li x21, 0x009877b1 # initialize rs2
minu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9b365779 # initialize rs1
li x22, 0x4fd9ed7e # initialize rs2
minu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xac0ac176 # initialize rs1
li x23, 0x3ed9a044 # initialize rs2
minu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x3d4b92f5 # initialize rs1
li x24, 0x4510a95c # initialize rs2
minu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x60d27cb7 # initialize rs1
li x25, 0xb6060373 # initialize rs2
minu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x277edaa8 # initialize rs1
li x26, 0xc7d88cad # initialize rs2
minu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x03851472 # initialize rs1
li x27, 0x52119209 # initialize rs2
minu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4a765d56 # initialize rs1
li x28, 0x76466a1f # initialize rs2
minu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf0070623 # initialize rs1
li x29, 0x9aeb0b12 # initialize rs2
minu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xe8a075d8 # initialize rs1
li x30, 0x85d9d94a # initialize rs2
minu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x2aa650bb # initialize rs1
li x31, 0xc75df0e8 # initialize rs2
minu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x26, x21 # perform first operation
minu x13, x2, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x19, x10 # perform first operation
minu x15, x29, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x17, x8 # perform first operation
minu x11, x13, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x24, x19 # perform first operation
minu x29, x21, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x17, x13 # perform first operation
minu x5, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x2, x29 # perform first operation
minu x11, x28, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x27, x23 # perform first operation
minu x17, x24, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x30, x22 # perform first operation
minu x27, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x31, x23 # perform first operation
minu x9, x29, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x3, x25 # perform first operation
minu x3, x28, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x14, x12 # perform first operation
minu x12, x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x21, x19 # perform first operation
minu x7, x27, x13 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-ctz.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xbb4e1287 # initialize rs1
ctz x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf2b29b0a # initialize rs1
ctz x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb0b398c4 # initialize rs1
ctz x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x54758662 # initialize rs1
ctz x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfdc3b5a0 # initialize rs1
ctz x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1558a3dc # initialize rs1
ctz x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa7c3892c # initialize rs1
ctz x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x94b4ed27 # initialize rs1
ctz x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbc2bd3fc # initialize rs1
ctz x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8b351c13 # initialize rs1
ctz x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8a27d52f # initialize rs1
ctz x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb755cca8 # initialize rs1
ctz x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x26fb9674 # initialize rs1
ctz x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3ddfef17 # initialize rs1
ctz x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2d7cb7cd # initialize rs1
ctz x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa88fc625 # initialize rs1
ctz x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x04dccec3 # initialize rs1
ctz x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xae7fe0a1 # initialize rs1
ctz x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7a852e84 # initialize rs1
ctz x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x6b12f69a # initialize rs1
ctz x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8ce22b58 # initialize rs1
ctz x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x23df5912 # initialize rs1
ctz x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x59467031 # initialize rs1
ctz x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2b26a630 # initialize rs1
ctz x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7e741fef # initialize rs1
ctz x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa4422141 # initialize rs1
ctz x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xed52ba21 # initialize rs1
ctz x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x437b8632 # initialize rs1
ctz x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb28280e4 # initialize rs1
ctz x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2fe1ed95 # initialize rs1
ctz x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa6f457d8 # initialize rs1
ctz x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0cb5478c # initialize rs1
ctz x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 124)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0xc61682f9 # initialize rs1
ctz x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0x2be876ab # initialize rs1
ctz x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x5, 0x868bc4be # initialize rs1
ctz x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0xd74ca9b2 # initialize rs1
ctz x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xeaf65085 # initialize rs1
ctz x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x2f7a8d4f # initialize rs1
ctz x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x26f13c63 # initialize rs1
ctz x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x2607bd77 # initialize rs1
ctz x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x9d036ffd # initialize rs1
ctz x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x88170be2 # initialize rs1
ctz x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x6, 0x71c02329 # initialize rs1
ctz x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x663d7030 # initialize rs1
ctz x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xe57c4470 # initialize rs1
ctz x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xdf1ce524 # initialize rs1
ctz x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xbad9cb93 # initialize rs1
ctz x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x8083398a # initialize rs1
ctz x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0xf878c8c2 # initialize rs1
ctz x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0xe241f1f2 # initialize rs1
ctz x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0xacb0b2cb # initialize rs1
ctz x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x1834adbf # initialize rs1
ctz x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x87af5fb0 # initialize rs1
ctz x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0xec37088d # initialize rs1
ctz x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x767ce9e6 # initialize rs1
ctz x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x4afd6971 # initialize rs1
ctz x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0x7443fd5c # initialize rs1
ctz x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x22, 0x084c8b2a # initialize rs1
ctz x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x08c4033d # initialize rs1
ctz x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0xed37c7e7 # initialize rs1
ctz x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xabdbcf0c # initialize rs1
ctz x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0xb2a3b886 # initialize rs1
ctz x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x2, 0xbd14659a # initialize rs1
ctz x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x0ebda2b7 # initialize rs1
ctz x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x00000000 # initialize rs1
ctz x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
ctz x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x00000002 # initialize rs1
ctz x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x80000000 # initialize rs1
ctz x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0x80000001 # initialize rs1
ctz x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
ctz x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
ctz x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
ctz x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
ctz x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
ctz x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
ctz x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x55555555 # initialize rs1
ctz x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc24bf2a7 # initialize rs1
ctz x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x26acb555 # initialize rs1
ctz x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa91463b6 # initialize rs1
ctz x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd52cde2a # initialize rs1
ctz x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3b231de2 # initialize rs1
ctz x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcd680635 # initialize rs1
ctz x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9f54a9b3 # initialize rs1
ctz x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa464c93 # initialize rs1
ctz x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4fb68ed3 # initialize rs1
ctz x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x51d7c296 # initialize rs1
ctz x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe6526d14 # initialize rs1
ctz x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb869d59c # initialize rs1
ctz x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x40511cf1 # initialize rs1
ctz x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x13e0247e # initialize rs1
ctz x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbe7fcd97 # initialize rs1
ctz x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7d9ce090 # initialize rs1
ctz x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x469dc435 # initialize rs1
ctz x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9cc24cda # initialize rs1
ctz x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xea904c58 # initialize rs1
ctz x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf776664a # initialize rs1
ctz x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe8cedcfb # initialize rs1
ctz x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf67231e0 # initialize rs1
ctz x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc50e36a8 # initialize rs1
ctz x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x455faec4 # initialize rs1
ctz x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd6db25f7 # initialize rs1
ctz x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3242d5e6 # initialize rs1
ctz x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4d3d11b5 # initialize rs1
ctz x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4602853d # initialize rs1
ctz x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x741e8fe6 # initialize rs1
ctz x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xea99c98f # initialize rs1
ctz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x818af38b # initialize rs1
ctz x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa5f6c670 # initialize rs1
ctz x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x30 # perform first operation
ctz x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x6, x17 # perform first operation
ctz x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x26 # perform first operation
ctz x11, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x10, x9 # perform first operation
ctz x5, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x7, x21 # perform first operation
ctz x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x30, x10 # perform first operation
ctz x10, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x9, x23 # perform first operation
ctz x5, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x1, x25 # perform first operation
ctz x15, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x2, x30 # perform first operation
ctz x31, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x15, x26 # perform first operation
ctz x15, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x29, x6 # perform first operation
ctz x6, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x13, x9 # perform first operation
ctz x20, x11 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-min.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x20ac6909 # initialize rs1
li x29, 0xe137f346 # initialize rs2
min x8, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc2f2f1c1 # initialize rs1
li x22, 0x4a8b5315 # initialize rs2
min x16, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x04264b73 # initialize rs1
li x3, 0xa6db8122 # initialize rs2
min x1, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd07da235 # initialize rs1
li x24, 0xcbbfc365 # initialize rs2
min x10, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe1fa31da # initialize rs1
li x24, 0x87931d23 # initialize rs2
min x18, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc7de24de # initialize rs1
li x27, 0x65d1a753 # initialize rs2
min x29, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc7d996ca # initialize rs1
li x26, 0x11a35d6f # initialize rs2
min x31, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbc5d712c # initialize rs1
li x20, 0x821563ac # initialize rs2
min x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x08b94336 # initialize rs1
li x18, 0x15be1421 # initialize rs2
min x24, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xaf4438db # initialize rs1
li x25, 0xa96c8b49 # initialize rs2
min x31, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6497ea2a # initialize rs1
li x8, 0x90bda890 # initialize rs2
min x12, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc780168a # initialize rs1
li x17, 0xed8bfa26 # initialize rs2
min x22, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6c90ea8a # initialize rs1
li x28, 0x5d6225f0 # initialize rs2
min x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb8f8dd44 # initialize rs1
li x29, 0xafb7f412 # initialize rs2
min x19, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe961d247 # initialize rs1
li x18, 0x97021533 # initialize rs2
min x29, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1e98724e # initialize rs1
li x26, 0x577e4198 # initialize rs2
min x22, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdfdc61f2 # initialize rs1
li x27, 0x54129001 # initialize rs2
min x19, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3638a064 # initialize rs1
li x20, 0x4478b69d # initialize rs2
min x26, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x03265a3d # initialize rs1
li x27, 0x88348964 # initialize rs2
min x13, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4a6e6454 # initialize rs1
li x28, 0x76360035 # initialize rs2
min x3, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6a1942be # initialize rs1
li x22, 0x57abe053 # initialize rs2
min x11, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2e786703 # initialize rs1
li x3, 0xea84d00e # initialize rs2
min x29, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x278653e1 # initialize rs1
li x30, 0x380bd08f # initialize rs2
min x14, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x71605c25 # initialize rs1
li x22, 0x6bde0dd8 # initialize rs2
min x11, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xaabae2dc # initialize rs1
li x9, 0x3c9d0a64 # initialize rs2
min x28, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc84713ba # initialize rs1
li x13, 0x641b9eab # initialize rs2
min x31, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa2f2be00 # initialize rs1
li x11, 0x4732bb47 # initialize rs2
min x15, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd302d97c # initialize rs1
li x19, 0x549ca34b # initialize rs2
min x29, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3c8a2982 # initialize rs1
li x15, 0x03293d74 # initialize rs2
min x13, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x20cfdb3a # initialize rs1
li x8, 0x9fd373fe # initialize rs2
min x27, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x458c2ac3 # initialize rs1
li x7, 0xbc57accd # initialize rs2
min x14, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x06698bb8 # initialize rs1
li x23, 0x7bfeba73 # initialize rs2
min x1, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0x5cf0c1f9 # initialize rs1
li x0, 0x70f3ac4a # initialize rs2
min x2, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0xbeafa608 # initialize rs1
li x1, 0x79797d17 # initialize rs2
min x12, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0xf4117ae7 # initialize rs1
li x2, 0xbe4a942b # initialize rs2
min x29, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0xbb29b2c9 # initialize rs1
li x3, 0x34c184e3 # initialize rs2
min x11, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x2da1b417 # initialize rs1
li x4, 0xde9aa8b2 # initialize rs2
min x21, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0x6049125b # initialize rs1
li x5, 0xce2476ad # initialize rs2
min x10, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x88c7cdb5 # initialize rs1
li x6, 0xeab05a9c # initialize rs2
min x10, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x683e8560 # initialize rs1
li x7, 0x7ce6a021 # initialize rs2
min x8, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0x715a13e2 # initialize rs1
li x8, 0x665c18eb # initialize rs2
min x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0x91ad005d # initialize rs1
li x9, 0xa0a3606b # initialize rs2
min x17, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0x6a63c895 # initialize rs1
li x10, 0xab5d08f7 # initialize rs2
min x29, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x47d82555 # initialize rs1
li x11, 0x4eeefca7 # initialize rs2
min x23, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x2cbd7490 # initialize rs1
li x12, 0x56a6d365 # initialize rs2
min x6, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x17, 0x5d8fb848 # initialize rs1
li x13, 0x4681894e # initialize rs2
min x27, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0xceb4f719 # initialize rs1
li x14, 0x1a83ba22 # initialize rs2
min x20, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0x2de9cded # initialize rs1
li x15, 0xf066c4bc # initialize rs2
min x1, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0x5d679169 # initialize rs1
li x16, 0x54632763 # initialize rs2
min x9, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x3a3f4b75 # initialize rs1
li x17, 0xb3864284 # initialize rs2
min x2, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x5b32cf03 # initialize rs1
li x18, 0xa68e252f # initialize rs2
min x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x23, 0x83240b87 # initialize rs1
li x19, 0xa6b1965e # initialize rs2
min x11, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x990f9b06 # initialize rs1
li x20, 0xa1a56e97 # initialize rs2
min x3, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x247bb9d4 # initialize rs1
li x21, 0x5e8ae9af # initialize rs2
min x16, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x20f10231 # initialize rs1
li x22, 0x043b7abd # initialize rs2
min x11, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0x6623aa60 # initialize rs1
li x23, 0x92c4f993 # initialize rs2
min x12, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x185fa368 # initialize rs1
li x24, 0x69b9921c # initialize rs2
min x23, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0x1d1e76c0 # initialize rs1
li x25, 0x71bbd309 # initialize rs2
min x16, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0xde9f3e8e # initialize rs1
li x26, 0x99d362b8 # initialize rs2
min x28, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x11, 0x007f6314 # initialize rs1
li x27, 0x3e87e1f7 # initialize rs2
min x21, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0x84b4ca41 # initialize rs1
li x28, 0x42ef39b4 # initialize rs2
min x30, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x12, 0x08928f95 # initialize rs1
li x29, 0x4e70d3a2 # initialize rs2
min x5, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x31, 0x869d8ef2 # initialize rs1
li x30, 0x0a299e27 # initialize rs2
min x14, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0xfca8e678 # initialize rs1
li x31, 0xaa520705 # initialize rs2
min x12, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cp_rd (Test destination rd = x0)
li x2, 0x8325dae0 # initialize rs1
li x11, 0xc3e2842d # initialize rs2
min x0, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x5a85b1a9 # initialize rs1
li x11, 0x6cd99c8d # initialize rs2
min x1, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x909f3c2f # initialize rs1
li x25, 0x9dd2be43 # initialize rs2
min x2, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x119d4120 # initialize rs1
li x21, 0x2b9994fd # initialize rs2
min x3, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x0c37f14a # initialize rs1
li x18, 0xc6740532 # initialize rs2
min x4, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x04ff760b # initialize rs1
li x18, 0x28f2c407 # initialize rs2
min x5, x22, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xc47b83bc # initialize rs1
li x8, 0xb92ba0f2 # initialize rs2
min x6, x13, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x075fb3ed # initialize rs1
li x10, 0x7fb0689c # initialize rs2
min x7, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0xb10e5434 # initialize rs1
li x3, 0x21d00b14 # initialize rs2
min x8, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x6876af35 # initialize rs1
li x12, 0x2a6881e1 # initialize rs2
min x9, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x56618f55 # initialize rs1
li x13, 0x74aaa7b4 # initialize rs2
min x10, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0xf9dff1b1 # initialize rs1
li x27, 0xb1f229ca # initialize rs2
min x11, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xb299270a # initialize rs1
li x29, 0x766d3942 # initialize rs2
min x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0xb19b4a52 # initialize rs1
li x12, 0x5ca62f1f # initialize rs2
min x13, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xcb6dfa1e # initialize rs1
li x25, 0xbf447308 # initialize rs2
min x14, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x4bd3263b # initialize rs1
li x12, 0x1520cd84 # initialize rs2
min x15, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x21, 0x03757999 # initialize rs1
li x27, 0xd36671b2 # initialize rs2
min x16, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x54b5b1a6 # initialize rs1
li x17, 0x6816da13 # initialize rs2
min x17, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x620d212d # initialize rs1
li x10, 0xa4f24ac0 # initialize rs2
min x18, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0xee66ddd4 # initialize rs1
li x22, 0xfb13c11b # initialize rs2
min x19, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x25c43161 # initialize rs1
li x7, 0x6bbb1b19 # initialize rs2
min x20, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x1ecca8ad # initialize rs1
li x18, 0x4eac73a1 # initialize rs2
min x21, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0xce4279b9 # initialize rs1
li x15, 0x1e547d75 # initialize rs2
min x22, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x29, 0x2178596d # initialize rs1
li x28, 0x0806ee4e # initialize rs2
min x23, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x52c5cbfb # initialize rs1
li x13, 0x19e8a1ba # initialize rs2
min x24, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x988a4fe4 # initialize rs1
li x20, 0xe6c263df # initialize rs2
min x25, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x5045cff7 # initialize rs1
li x8, 0x3839e155 # initialize rs2
min x26, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x302f478d # initialize rs1
li x14, 0x3505f9c3 # initialize rs2
min x27, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x200388a8 # initialize rs1
li x29, 0x778b4672 # initialize rs2
min x28, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x85787714 # initialize rs1
li x22, 0xb67492c1 # initialize rs2
min x29, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x1a96b865 # initialize rs1
li x26, 0xb5cbbc56 # initialize rs2
min x30, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x2b839680 # initialize rs1
li x27, 0x20895b39 # initialize rs2
min x31, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x00000000 # initialize rs1
li x8, 0x7e940ee5 # initialize rs2
min x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x00000001 # initialize rs1
li x27, 0x5bc3c41d # initialize rs2
min x24, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x00000002 # initialize rs1
li x19, 0x6c82729f # initialize rs2
min x12, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x25, 0x80000000 # initialize rs1
li x23, 0x530553c6 # initialize rs2
min x11, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x10, 0x80000001 # initialize rs1
li x3, 0x843b8016 # initialize rs2
min x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x30, 0x7fffffff # initialize rs1
li x1, 0x275c7f80 # initialize rs2
min x21, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x5, 0xcbf11977 # initialize rs2
min x15, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
li x29, 0x9acb1833 # initialize rs2
min x28, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x7, 0xfffffffe # initialize rs1
li x17, 0x86adca06 # initialize rs2
min x11, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
li x22, 0x3b93acdb # initialize rs2
min x30, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
li x5, 0x37f90299 # initialize rs2
min x12, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x55555555 # initialize rs1
li x1, 0x5ab0b19f # initialize rs2
min x15, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x8a1ca662 # initialize rs1
li x2, 0x00000000 # initialize rs2
min x30, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0x93a69b9c # initialize rs1
li x5, 0x00000001 # initialize rs2
min x12, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x8f9600f1 # initialize rs1
li x26, 0x00000002 # initialize rs2
min x14, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0x1f054e2e # initialize rs1
li x28, 0x80000000 # initialize rs2
min x6, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x578f3d9e # initialize rs1
li x22, 0x80000001 # initialize rs2
min x18, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0x2dbee42f # initialize rs1
li x15, 0x7fffffff # initialize rs2
min x13, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0xe420ee75 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
min x14, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x82ac5d49 # initialize rs1
li x12, 0xffffffff # initialize rs2
min x18, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x2ff3a075 # initialize rs1
li x11, 0xfffffffe # initialize rs2
min x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x29, 0x681288cc # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
min x22, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x51f5d85e # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
min x17, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x3, 0xf5467540 # initialize rs1
li x22, 0x55555555 # initialize rs2
min x23, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
min x17, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x21, 0x00000000 # initialize rs1
li x3, 0x00000001 # initialize rs2
min x14, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
min x11, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x2, 0x00000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
min x12, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x8, 0x00000000 # initialize rs1
li x15, 0x80000001 # initialize rs2
min x22, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x21, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
min x12, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x19, 0x00000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
min x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x22, 0x00000000 # initialize rs1
li x20, 0xffffffff # initialize rs2
min x16, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x2, 0x00000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
min x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x24, 0x00000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
min x30, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x13, 0x00000000 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
min x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
min x23, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
min x24, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x26, 0x00000001 # initialize rs1
li x21, 0x00000001 # initialize rs2
min x1, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x00000001 # initialize rs1
li x13, 0x00000002 # initialize rs2
min x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x17, 0x00000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
min x1, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x30, 0x00000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
min x9, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x27, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
min x12, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x2, 0x00000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
min x27, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x00000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
min x11, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x00000001 # initialize rs1
li x26, 0xfffffffe # initialize rs2
min x13, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x8, 0x00000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
min x6, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x13, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
min x15, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x31, 0x00000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
min x27, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
min x13, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x00000002 # initialize rs1
li x17, 0x00000001 # initialize rs2
min x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x24, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
min x6, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x18, 0x00000002 # initialize rs1
li x31, 0x80000000 # initialize rs2
min x19, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x27, 0x00000002 # initialize rs1
li x28, 0x80000001 # initialize rs2
min x13, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x22, 0x7fffffff # initialize rs2
min x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x16, 0x00000002 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
min x25, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x14, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
min x22, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
min x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x27, 0x00000002 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
min x9, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x1, 0x00000002 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
min x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x00000002 # initialize rs1
li x24, 0x55555555 # initialize rs2
min x10, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x80000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
min x5, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x80000000 # initialize rs1
li x10, 0x00000001 # initialize rs2
min x21, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x23, 0x80000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
min x16, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x31, 0x80000000 # initialize rs1
li x20, 0x80000000 # initialize rs2
min x14, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
min x10, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x5, 0x80000000 # initialize rs1
li x23, 0x7fffffff # initialize rs2
min x13, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x22, 0x80000000 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
min x9, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x8, 0x80000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
min x30, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x21, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
min x10, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x30, 0x80000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
min x14, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x19, 0x80000000 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
min x20, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x22, 0x80000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
min x1, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
min x28, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x23, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
min x11, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
min x24, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
min x8, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x25, 0x80000001 # initialize rs2
min x21, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x13, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
min x29, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x28, 0x80000001 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
min x19, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x9, 0x80000001 # initialize rs1
li x3, 0xffffffff # initialize rs2
min x1, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x14, 0x80000001 # initialize rs1
li x23, 0xfffffffe # initialize rs2
min x17, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
min x13, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0x80000001 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
min x3, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
min x21, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x7fffffff # initialize rs1
li x14, 0x00000000 # initialize rs2
min x18, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x25, 0x7fffffff # initialize rs1
li x6, 0x00000001 # initialize rs2
min x7, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x1, 0x00000002 # initialize rs2
min x18, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x30, 0x7fffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
min x13, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x21, 0x7fffffff # initialize rs1
li x27, 0x80000001 # initialize rs2
min x20, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x2, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
min x29, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x29, 0x7fffffff # initialize rs1
li x20, 0x7ffffffe # initialize rs2
min x18, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x17, 0x7fffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
min x19, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x16, 0x7fffffff # initialize rs1
li x26, 0xfffffffe # initialize rs2
min x20, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x28, 0x7fffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
min x16, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
min x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x7, 0x7fffffff # initialize rs1
li x2, 0x55555555 # initialize rs2
min x1, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x13, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
min x2, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x31, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
min x14, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x20, 0x7ffffffe # initialize rs1
li x18, 0x00000002 # initialize rs2
min x2, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
min x17, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x3, 0x7ffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
min x13, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x13, 0x7ffffffe # initialize rs1
li x8, 0x7fffffff # initialize rs2
min x6, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
min x31, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
min x15, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x15, 0x7ffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
min x16, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x24, 0x7ffffffe # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
min x21, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x14, 0x7ffffffe # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
min x11, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
min x22, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0xffffffff # initialize rs1
li x16, 0x00000000 # initialize rs2
min x20, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
min x15, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x18, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
min x6, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x27, 0xffffffff # initialize rs1
li x5, 0x80000000 # initialize rs2
min x15, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0xffffffff # initialize rs1
li x30, 0x80000001 # initialize rs2
min x8, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x13, 0xffffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
min x28, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x1, 0xffffffff # initialize rs1
li x6, 0x7ffffffe # initialize rs2
min x25, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x30, 0xffffffff # initialize rs2
min x31, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x15, 0xffffffff # initialize rs1
li x28, 0xfffffffe # initialize rs2
min x5, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x30, 0xffffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
min x10, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x17, 0xffffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
min x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x2, 0xffffffff # initialize rs1
li x24, 0x55555555 # initialize rs2
min x28, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0xfffffffe # initialize rs1
li x30, 0x00000000 # initialize rs2
min x22, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0xfffffffe # initialize rs1
li x21, 0x00000001 # initialize rs2
min x16, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x27, 0xfffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
min x13, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x5, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
min x18, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
min x27, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
min x6, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x21, 0xfffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
min x8, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0xfffffffe # initialize rs1
li x31, 0xffffffff # initialize rs2
min x1, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffe # initialize rs1
li x2, 0xfffffffe # initialize rs2
min x13, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x19, 0xfffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
min x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x14, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
min x15, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x16, 0xfffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
min x22, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x25, 0x5bbc8872 # initialize rs1
li x28, 0x00000000 # initialize rs2
min x10, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x31, 0x00000001 # initialize rs2
min x3, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x1, 0x5bbc8872 # initialize rs1
li x17, 0x00000002 # initialize rs2
min x13, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x7, 0x5bbc8872 # initialize rs1
li x31, 0x80000000 # initialize rs2
min x25, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x5, 0x5bbc8872 # initialize rs1
li x17, 0x80000001 # initialize rs2
min x2, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x19, 0x5bbc8872 # initialize rs1
li x25, 0x7fffffff # initialize rs2
min x26, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x26, 0x5bbc8872 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
min x28, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x16, 0x5bbc8872 # initialize rs1
li x6, 0xffffffff # initialize rs2
min x1, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x31, 0x5bbc8872 # initialize rs1
li x24, 0xfffffffe # initialize rs2
min x16, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
min x20, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x8, 0x5bbc8872 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
min x9, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x28, 0x5bbc8872 # initialize rs1
li x19, 0x55555555 # initialize rs2
min x13, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaa # initialize rs1
li x9, 0x00000000 # initialize rs2
min x22, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x16, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
min x23, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x31, 0xaaaaaaaa # initialize rs1
li x5, 0x00000002 # initialize rs2
min x8, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x26, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
min x19, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x9, 0xaaaaaaaa # initialize rs1
li x27, 0x80000001 # initialize rs2
min x20, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x26, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
min x19, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x8, 0xaaaaaaaa # initialize rs1
li x21, 0x7ffffffe # initialize rs2
min x9, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaa # initialize rs1
li x31, 0xffffffff # initialize rs2
min x5, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x10, 0xfffffffe # initialize rs2
min x23, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
min x9, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
min x11, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x25, 0xaaaaaaaa # initialize rs1
li x5, 0x55555555 # initialize rs2
min x3, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
min x3, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x16, 0x00000001 # initialize rs2
min x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
min x9, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x30, 0x55555555 # initialize rs1
li x11, 0x80000000 # initialize rs2
min x28, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x23, 0x55555555 # initialize rs1
li x14, 0x80000001 # initialize rs2
min x29, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x1, 0x55555555 # initialize rs1
li x25, 0x7fffffff # initialize rs2
min x14, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x16, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
min x1, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x16, 0xffffffff # initialize rs2
min x21, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x7, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
min x18, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x14, 0x55555555 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
min x5, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x24, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
min x22, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x9, 0x55555555 # initialize rs2
min x11, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x899b680c # initialize rs1
li x0, 0x37deb585 # initialize rs2
min x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xfddd7236 # initialize rs1
li x1, 0x9b0fdae1 # initialize rs2
min x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x94c648bb # initialize rs1
li x2, 0x3a3a8ae5 # initialize rs2
min x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x754dcfc7 # initialize rs1
li x3, 0x6724bad5 # initialize rs2
min x27, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfe26d1bb # initialize rs1
li x4, 0xb3915a1d # initialize rs2
min x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x07ef3857 # initialize rs1
li x5, 0x23c841e4 # initialize rs2
min x15, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x71e90f3c # initialize rs1
li x6, 0xfec5023d # initialize rs2
min x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x69bb8b00 # initialize rs1
li x7, 0x30d77ba8 # initialize rs2
min x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2be50212 # initialize rs1
li x8, 0xccba03f7 # initialize rs2
min x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xc0b963cb # initialize rs1
li x9, 0xe05dde3b # initialize rs2
min x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa914acd0 # initialize rs1
li x10, 0x7942fd06 # initialize rs2
min x29, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xe7e23e67 # initialize rs1
li x11, 0x7125bc41 # initialize rs2
min x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xbf4eac62 # initialize rs1
li x12, 0xd85fef10 # initialize rs2
min x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x34c32eab # initialize rs1
li x13, 0x0d75518a # initialize rs2
min x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1145a04a # initialize rs1
li x14, 0x3334eea9 # initialize rs2
min x23, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x82b38909 # initialize rs1
li x15, 0xd03d7738 # initialize rs2
min x31, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6bef9a8a # initialize rs1
li x16, 0x7297c523 # initialize rs2
min x12, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x420dd92d # initialize rs1
li x17, 0xa231f794 # initialize rs2
min x14, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6e4b4f97 # initialize rs1
li x18, 0x1a07bbe6 # initialize rs2
min x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xcb780a2b # initialize rs1
li x19, 0xcbda3ef4 # initialize rs2
min x3, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x12a05587 # initialize rs1
li x20, 0xcaede6c7 # initialize rs2
min x21, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x01c468b2 # initialize rs1
li x21, 0xe59be2a4 # initialize rs2
min x12, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xdd7a2ead # initialize rs1
li x22, 0xf9eb9814 # initialize rs2
min x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8a705727 # initialize rs1
li x23, 0x72041000 # initialize rs2
min x10, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x73b1ec80 # initialize rs1
li x24, 0x4483d517 # initialize rs2
min x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xc58b53cc # initialize rs1
li x25, 0x06a699a1 # initialize rs2
min x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9982f546 # initialize rs1
li x26, 0x87186273 # initialize rs2
min x10, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0c49d309 # initialize rs1
li x27, 0x9ac237cd # initialize rs2
min x2, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x79913fa7 # initialize rs1
li x28, 0x444234a7 # initialize rs2
min x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb9ea144f # initialize rs1
li x29, 0xc5fd81d8 # initialize rs2
min x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xce577888 # initialize rs1
li x30, 0xd2c62229 # initialize rs2
min x31, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaa1475b0 # initialize rs1
li x31, 0xa6410ca4 # initialize rs2
min x25, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x21b989c9 # initialize rs1
li x12, 0x8e27abf9 # initialize rs2
min x0, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7e39c1dd # initialize rs1
li x1, 0xe4bc44d3 # initialize rs2
min x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x452e8d5b # initialize rs1
li x22, 0xc1e0de78 # initialize rs2
min x2, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xba345c8c # initialize rs1
li x23, 0x4d177128 # initialize rs2
min x3, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8afd0a7f # initialize rs1
li x19, 0x140de685 # initialize rs2
min x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbe72593b # initialize rs1
li x11, 0x1c627e74 # initialize rs2
min x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x715c29b0 # initialize rs1
li x3, 0xb5683cb4 # initialize rs2
min x6, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3c72b279 # initialize rs1
li x25, 0xaf42fb41 # initialize rs2
min x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x70be8123 # initialize rs1
li x5, 0x7fc0d84d # initialize rs2
min x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9998fe5a # initialize rs1
li x21, 0xba60177e # initialize rs2
min x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbf804e53 # initialize rs1
li x10, 0x84b25f32 # initialize rs2
min x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8e336c0d # initialize rs1
li x12, 0x71b96852 # initialize rs2
min x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x42568af3 # initialize rs1
li x1, 0x5de9019f # initialize rs2
min x12, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x59ae00b1 # initialize rs1
li x20, 0xfcb80029 # initialize rs2
min x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb56dc089 # initialize rs1
li x18, 0xc359756c # initialize rs2
min x14, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2544569e # initialize rs1
li x15, 0x35dd8dba # initialize rs2
min x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x60c1c3ee # initialize rs1
li x24, 0xa4af51f4 # initialize rs2
min x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6696a3fa # initialize rs1
li x29, 0x2da62017 # initialize rs2
min x17, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdc2e0405 # initialize rs1
li x30, 0x241d2924 # initialize rs2
min x18, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x614a8e40 # initialize rs1
li x8, 0xdac990ab # initialize rs2
min x19, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa4c5a0ea # initialize rs1
li x8, 0xc95b9057 # initialize rs2
min x20, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x90f49af5 # initialize rs1
li x7, 0xe2ebd5af # initialize rs2
min x21, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5b81ef80 # initialize rs1
li x27, 0x29e33143 # initialize rs2
min x22, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x401cf747 # initialize rs1
li x1, 0x18a366e2 # initialize rs2
min x23, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xff2d8155 # initialize rs1
li x1, 0x3c9d0ece # initialize rs2
min x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9f2d136e # initialize rs1
li x14, 0x0827eccb # initialize rs2
min x25, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9aaa7402 # initialize rs1
li x9, 0x11af36a6 # initialize rs2
min x26, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd25e3838 # initialize rs1
li x29, 0x1ed18ea4 # initialize rs2
min x27, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x303c701e # initialize rs1
li x25, 0x769e5bfb # initialize rs2
min x28, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0db9f851 # initialize rs1
li x20, 0xc95be988 # initialize rs2
min x29, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x136a749f # initialize rs1
li x7, 0x02d17be8 # initialize rs2
min x30, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x527b3af6 # initialize rs1
li x14, 0xa1f10767 # initialize rs2
min x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x1, 0x5714c60b # initialize rs1
li x0, 0x648a9f4c # initialize rs2
min x0, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0xef4fc7cb # initialize rs1
li x1, 0x4ea84eaa # initialize rs2
min x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0xd4fa9bfc # initialize rs1
li x2, 0x54ca80bd # initialize rs2
min x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0xdb41f675 # initialize rs1
li x3, 0xf303fe88 # initialize rs2
min x3, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0xaf7644e5 # initialize rs1
li x4, 0xcbe40ef0 # initialize rs2
min x4, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x983547d7 # initialize rs1
li x5, 0x4dec3a00 # initialize rs2
min x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x3563b844 # initialize rs1
li x6, 0x8293df10 # initialize rs2
min x6, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x0cb86237 # initialize rs1
li x7, 0xa98ef7cc # initialize rs2
min x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x16, 0xbc7530a0 # initialize rs1
li x8, 0x86feba40 # initialize rs2
min x8, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x15, 0x15338358 # initialize rs1
li x9, 0x4277c572 # initialize rs2
min x9, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x16, 0x97f446f7 # initialize rs1
li x10, 0xeb313025 # initialize rs2
min x10, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x1, 0xdda15c9f # initialize rs1
li x11, 0x7ddb62bc # initialize rs2
min x11, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x2c1684a8 # initialize rs1
li x12, 0xf3645a1d # initialize rs2
min x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0xa489882f # initialize rs1
li x13, 0x4f59536a # initialize rs2
min x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x9, 0x04a2ce3d # initialize rs1
li x14, 0xe1d2b5ac # initialize rs2
min x14, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0x0f4b2350 # initialize rs1
li x15, 0x29f7bb51 # initialize rs2
min x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x31, 0xf6bdeab7 # initialize rs1
li x16, 0x7df4c786 # initialize rs2
min x16, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0xcfb472b3 # initialize rs1
li x17, 0xe52e4eaa # initialize rs2
min x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x30, 0xcfe204b8 # initialize rs1
li x18, 0xb2932e3e # initialize rs2
min x18, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x3, 0xc2ab37ba # initialize rs1
li x19, 0x19b85816 # initialize rs2
min x19, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0xa5980d18 # initialize rs1
li x20, 0x35156466 # initialize rs2
min x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x14, 0x5bb1a63b # initialize rs1
li x21, 0x69bfebdd # initialize rs2
min x21, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0xbb5e38c0 # initialize rs1
li x22, 0x0f393eec # initialize rs2
min x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xd9aad065 # initialize rs1
li x23, 0xe0d79219 # initialize rs2
min x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0xb1d800af # initialize rs1
li x24, 0xea8d93ae # initialize rs2
min x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x337554f6 # initialize rs1
li x25, 0x31851b92 # initialize rs2
min x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x41701b79 # initialize rs1
li x26, 0xb56e6998 # initialize rs2
min x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x13, 0x90e53dbd # initialize rs1
li x27, 0x7fe7935e # initialize rs2
min x27, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x24, 0x26206dce # initialize rs1
li x28, 0xcc0c8ee9 # initialize rs2
min x28, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0xea9f66b8 # initialize rs1
li x29, 0x875eb669 # initialize rs2
min x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x2a7496ea # initialize rs1
li x30, 0x085549bb # initialize rs2
min x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x10, 0x160e37cd # initialize rs1
li x31, 0xf761fd37 # initialize rs2
min x31, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7c00985 # initialize rs1
li x0, 0x2e2f9573 # initialize rs2
min x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcae18239 # initialize rs1
li x1, 0x05d4ad4b # initialize rs2
min x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe68029f2 # initialize rs1
li x2, 0x77687ac8 # initialize rs2
min x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb26472b3 # initialize rs1
li x3, 0x9cbd27c0 # initialize rs2
min x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9a3093d0 # initialize rs1
li x4, 0xefc78032 # initialize rs2
min x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd000a16 # initialize rs1
li x5, 0x3c550dd8 # initialize rs2
min x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe30a855c # initialize rs1
li x6, 0x5769c758 # initialize rs2
min x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x30c8e544 # initialize rs1
li x7, 0xd321615a # initialize rs2
min x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe0b5903b # initialize rs1
li x8, 0x431a86fc # initialize rs2
min x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9c863bf3 # initialize rs1
li x9, 0x7227bf1a # initialize rs2
min x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6db7f7cc # initialize rs1
li x10, 0x1cf8eb49 # initialize rs2
min x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x87d336ee # initialize rs1
li x11, 0xa202846f # initialize rs2
min x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4a7417c5 # initialize rs1
li x12, 0xc21c61dd # initialize rs2
min x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd93a7502 # initialize rs1
li x13, 0x121dbbef # initialize rs2
min x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x497114ac # initialize rs1
li x14, 0x51e51f3b # initialize rs2
min x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7abf731d # initialize rs1
li x15, 0x2c3fa8cb # initialize rs2
min x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x94f29a5b # initialize rs1
li x16, 0x4851367d # initialize rs2
min x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc8325a74 # initialize rs1
li x17, 0x7cd138d1 # initialize rs2
min x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x5fea628f # initialize rs1
li x18, 0x24525880 # initialize rs2
min x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x59ff2f75 # initialize rs1
li x19, 0x88cfd33e # initialize rs2
min x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xd58b5654 # initialize rs1
li x20, 0x3633b8d3 # initialize rs2
min x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x51060ea5 # initialize rs1
li x21, 0xee03efb2 # initialize rs2
min x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x5bb7336e # initialize rs1
li x22, 0x47a6e501 # initialize rs2
min x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcc3f8d83 # initialize rs1
li x23, 0xf57efd5d # initialize rs2
min x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa54f2ba9 # initialize rs1
li x24, 0x30d1a022 # initialize rs2
min x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5143fb06 # initialize rs1
li x25, 0xe397e0be # initialize rs2
min x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xcb6d8790 # initialize rs1
li x26, 0x95018b69 # initialize rs2
min x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x81749d6b # initialize rs1
li x27, 0x32152dcb # initialize rs2
min x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc57e36df # initialize rs1
li x28, 0x300e7294 # initialize rs2
min x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd38711ea # initialize rs1
li x29, 0xe8d86324 # initialize rs2
min x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x53bd4d88 # initialize rs1
li x30, 0x8a5c0bfd # initialize rs2
min x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1b2a0209 # initialize rs1
li x31, 0x7e02c20b # initialize rs2
min x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x2, x17 # perform first operation
min x15, x8, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x6, x8 # perform first operation
min x19, x13, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x11, x15 # perform first operation
min x8, x16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x3, x16 # perform first operation
min x16, x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x15, x5 # perform first operation
min x30, x15, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x9, x2 # perform first operation
min x15, x21, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x25, x19 # perform first operation
min x10, x1, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x28, x2 # perform first operation
min x21, x15, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x10, x9 # perform first operation
min x18, x12, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x8, x19 # perform first operation
min x8, x12, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x24, x15 # perform first operation
min x15, x2, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x8, x6 # perform first operation
min x27, x7, x16 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-andn.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xc8470438 # initialize rs1
li x25, 0x45b45a08 # initialize rs2
andn x6, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x55ea8b05 # initialize rs1
li x2, 0x8332efca # initialize rs2
andn x20, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x9cb5a19d # initialize rs1
li x21, 0x35216405 # initialize rs2
andn x5, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x481416b4 # initialize rs1
li x25, 0x70d52c60 # initialize rs2
andn x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9a1b1085 # initialize rs1
li x11, 0x2454172b # initialize rs2
andn x31, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xada486f8 # initialize rs1
li x3, 0x7fcc1628 # initialize rs2
andn x16, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x29549b75 # initialize rs1
li x21, 0xb0fc8a51 # initialize rs2
andn x28, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6a82f9b6 # initialize rs1
li x2, 0x27332b18 # initialize rs2
andn x11, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb9e296b1 # initialize rs1
li x7, 0x398ab823 # initialize rs2
andn x29, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x7eb3496c # initialize rs1
li x27, 0xad8aed7b # initialize rs2
andn x25, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x21b2c765 # initialize rs1
li x21, 0x68a8e30b # initialize rs2
andn x28, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd580f0f2 # initialize rs1
li x6, 0xf8037dab # initialize rs2
andn x1, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf2d4b8c8 # initialize rs1
li x7, 0xa94b7818 # initialize rs2
andn x22, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xc160529f # initialize rs1
li x10, 0xab2a697a # initialize rs2
andn x24, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe71a2bc1 # initialize rs1
li x23, 0xca046bb9 # initialize rs2
andn x18, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0d6252f2 # initialize rs1
li x18, 0x19419512 # initialize rs2
andn x16, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb6081e3f # initialize rs1
li x13, 0x703e5892 # initialize rs2
andn x29, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x4a4cd147 # initialize rs1
li x20, 0xff134d34 # initialize rs2
andn x11, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x01ef40a3 # initialize rs1
li x16, 0x6f6f7349 # initialize rs2
andn x17, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x5cf2bf6d # initialize rs1
li x20, 0xabf5e818 # initialize rs2
andn x6, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xda83aa29 # initialize rs1
li x28, 0x4ea48ec8 # initialize rs2
andn x17, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd2cd414e # initialize rs1
li x15, 0x3901840a # initialize rs2
andn x29, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2daf4451 # initialize rs1
li x1, 0x15c6641a # initialize rs2
andn x18, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xcfa027f5 # initialize rs1
li x11, 0xa08f785d # initialize rs2
andn x28, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xfe8f7720 # initialize rs1
li x15, 0x8758a0ba # initialize rs2
andn x16, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1ffdc298 # initialize rs1
li x9, 0x39bb9459 # initialize rs2
andn x5, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x367e4d21 # initialize rs1
li x19, 0xd518b68e # initialize rs2
andn x20, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3d81ca36 # initialize rs1
li x13, 0x06aa97d5 # initialize rs2
andn x30, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2828f5e4 # initialize rs1
li x6, 0x84cc13f0 # initialize rs2
andn x3, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x057ac83a # initialize rs1
li x12, 0xd5d21883 # initialize rs2
andn x21, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x16affa42 # initialize rs1
li x26, 0x17bc7902 # initialize rs2
andn x10, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xa2abd3bd # initialize rs1
li x25, 0xbe24c4c1 # initialize rs2
andn x12, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0x66135d02 # initialize rs1
li x0, 0x7bc8c0b0 # initialize rs2
andn x16, x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xf6558190 # initialize rs1
li x1, 0xed7a109f # initialize rs2
andn x14, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x421fab58 # initialize rs1
li x2, 0xe798492a # initialize rs2
andn x20, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0x1e9b8b09 # initialize rs1
li x3, 0xf8f441be # initialize rs2
andn x6, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x61db1d82 # initialize rs1
li x4, 0x3d7be4b5 # initialize rs2
andn x31, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x3397a9a6 # initialize rs1
li x5, 0xf812d6e9 # initialize rs2
andn x25, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xae33e084 # initialize rs1
li x6, 0x4bbc155b # initialize rs2
andn x11, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x09bc7fa2 # initialize rs1
li x7, 0x7a5fc6f0 # initialize rs2
andn x2, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0x5dcf0494 # initialize rs1
li x8, 0x99d249ad # initialize rs2
andn x22, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0xf8068744 # initialize rs1
li x9, 0x17d1756d # initialize rs2
andn x23, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0xa6ef22b3 # initialize rs1
li x10, 0xd53ca71a # initialize rs2
andn x22, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0x4baf8b8c # initialize rs1
li x11, 0xc5d0f966 # initialize rs2
andn x7, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x84bd7a11 # initialize rs1
li x12, 0x43cb5c81 # initialize rs2
andn x9, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x132c161b # initialize rs1
li x13, 0xc0b99ed4 # initialize rs2
andn x2, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x8258e9e9 # initialize rs1
li x14, 0xaa95559f # initialize rs2
andn x24, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x5851c93a # initialize rs1
li x15, 0xb450e32c # initialize rs2
andn x6, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0x05191c43 # initialize rs1
li x16, 0xd82d2fdd # initialize rs2
andn x24, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x15, 0x94734328 # initialize rs1
li x17, 0x59973719 # initialize rs2
andn x29, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0x7ed8c867 # initialize rs1
li x18, 0x2d8d8a65 # initialize rs2
andn x3, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x10, 0x8697b894 # initialize rs1
li x19, 0x7219812e # initialize rs2
andn x31, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x30, 0xc7155417 # initialize rs1
li x20, 0x08b3842f # initialize rs2
andn x31, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0xd607b861 # initialize rs1
li x21, 0xc5d52772 # initialize rs2
andn x5, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x7597fb51 # initialize rs1
li x22, 0x0fdc94bc # initialize rs2
andn x13, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x61482766 # initialize rs1
li x23, 0xd54bfb7a # initialize rs2
andn x30, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x26, 0xbe9ba9ec # initialize rs1
li x24, 0xba5f98a2 # initialize rs2
andn x15, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0x8ccd8f39 # initialize rs1
li x25, 0x1776f3cd # initialize rs2
andn x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x3, 0x72f26686 # initialize rs1
li x26, 0xb63cd9fb # initialize rs2
andn x27, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x602785db # initialize rs1
li x27, 0x90de80bb # initialize rs2
andn x15, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x25, 0xc4966d2f # initialize rs1
li x28, 0x874bdbeb # initialize rs2
andn x31, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x1, 0xc1d8fa8e # initialize rs1
li x29, 0x6a907f40 # initialize rs2
andn x7, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x15, 0xd14fa891 # initialize rs1
li x30, 0x302790f7 # initialize rs2
andn x22, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x29, 0x984ba4e2 # initialize rs1
li x31, 0x2659f026 # initialize rs2
andn x20, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xa8d152d2 # initialize rs1
li x29, 0x07b3e234 # initialize rs2
andn x0, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x02ad4ddf # initialize rs1
li x25, 0x130fbd30 # initialize rs2
andn x1, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x4cebe53f # initialize rs1
li x29, 0x9efd002d # initialize rs2
andn x2, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0xafe358d5 # initialize rs1
li x13, 0xe31092c7 # initialize rs2
andn x3, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xc4c6654f # initialize rs1
li x28, 0xf6f6f81a # initialize rs2
andn x4, x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xd525002f # initialize rs1
li x23, 0x3f3232af # initialize rs2
andn x5, x18, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x08db53f3 # initialize rs1
li x5, 0x8e8d01af # initialize rs2
andn x6, x1, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x4f1ef08c # initialize rs1
li x14, 0xfb08eaa9 # initialize rs2
andn x7, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0xd875a8be # initialize rs1
li x27, 0x2d4f968d # initialize rs2
andn x8, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xf22ca44d # initialize rs1
li x30, 0x1aa5c0d6 # initialize rs2
andn x9, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0xdf02caf6 # initialize rs1
li x5, 0xdedb219b # initialize rs2
andn x10, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x0c997715 # initialize rs1
li x9, 0xe29af5f6 # initialize rs2
andn x11, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x207e17c7 # initialize rs1
li x31, 0x89e216a6 # initialize rs2
andn x12, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x4e6bfd2f # initialize rs1
li x26, 0x9e7c7719 # initialize rs2
andn x13, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0x387144b8 # initialize rs1
li x18, 0xbe7d3270 # initialize rs2
andn x14, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x8ed43e36 # initialize rs1
li x29, 0x131d446d # initialize rs2
andn x15, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xbd08aa59 # initialize rs1
li x2, 0x8da4a317 # initialize rs2
andn x16, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xbd4fd449 # initialize rs1
li x14, 0xfcd2baa4 # initialize rs2
andn x17, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0x80bf4ba1 # initialize rs1
li x12, 0xfc014107 # initialize rs2
andn x18, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0x08c3cef3 # initialize rs1
li x22, 0x1974a33d # initialize rs2
andn x19, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x9ef05447 # initialize rs1
li x14, 0xac94e6cb # initialize rs2
andn x20, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x42df7a4b # initialize rs1
li x10, 0x6353db39 # initialize rs2
andn x21, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x28, 0xd31c0379 # initialize rs1
li x11, 0xe3732608 # initialize rs2
andn x22, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0x17dab98d # initialize rs1
li x23, 0x3cc7132f # initialize rs2
andn x23, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0xca6cb7a7 # initialize rs1
li x1, 0xd7dd2b9b # initialize rs2
andn x24, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0x5a302a5e # initialize rs1
li x13, 0x5c38dca2 # initialize rs2
andn x25, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x286be0b2 # initialize rs1
li x6, 0x764a2d03 # initialize rs2
andn x26, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0xa990420d # initialize rs1
li x5, 0x27c9cada # initialize rs2
andn x27, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0xb9f6d24a # initialize rs1
li x28, 0x34cdddd3 # initialize rs2
andn x28, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0xc8714e1b # initialize rs1
li x6, 0x9a78b14e # initialize rs2
andn x29, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xd15d9085 # initialize rs1
li x26, 0x3b9cf627 # initialize rs2
andn x30, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0xa6254479 # initialize rs1
li x27, 0x44abac7e # initialize rs2
andn x31, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x00000000 # initialize rs1
li x1, 0xa1811909 # initialize rs2
andn x18, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x00000001 # initialize rs1
li x3, 0x2fd8f4b1 # initialize rs2
andn x14, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
li x2, 0x301dafdc # initialize rs2
andn x27, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
li x12, 0x3bb81448 # initialize rs2
andn x23, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x3, 0x80000001 # initialize rs1
li x9, 0x83fc0183 # initialize rs2
andn x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
li x27, 0x1537dd85 # initialize rs2
andn x15, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x17, 0x7ffffffe # initialize rs1
li x5, 0x4187450f # initialize rs2
andn x28, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x31, 0xffffffff # initialize rs1
li x30, 0x9f460f05 # initialize rs2
andn x7, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
li x5, 0x3cc5e8ea # initialize rs2
andn x7, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x11, 0x738437b1 # initialize rs2
andn x17, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
li x1, 0x28a0d102 # initialize rs2
andn x17, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x29, 0xf13cacdb # initialize rs2
andn x23, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0xcdbb75cd # initialize rs1
li x28, 0x00000000 # initialize rs2
andn x3, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0x7bb3848b # initialize rs1
li x12, 0x00000001 # initialize rs2
andn x28, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0xe8874065 # initialize rs1
li x19, 0x00000002 # initialize rs2
andn x22, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0x7d5f301f # initialize rs1
li x15, 0x80000000 # initialize rs2
andn x3, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0xb6c7c924 # initialize rs1
li x20, 0x80000001 # initialize rs2
andn x9, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0x7ecace16 # initialize rs1
li x8, 0x7fffffff # initialize rs2
andn x1, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x30, 0x61e2a181 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
andn x3, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x0832d681 # initialize rs1
li x16, 0xffffffff # initialize rs2
andn x5, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x08f632af # initialize rs1
li x28, 0xfffffffe # initialize rs2
andn x13, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x25, 0xf3f7d617 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
andn x31, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x12, 0x1154d090 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
andn x5, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x15, 0x966c2ad2 # initialize rs1
li x9, 0x55555555 # initialize rs2
andn x14, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x00000000 # initialize rs1
li x13, 0x00000000 # initialize rs2
andn x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x00000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
andn x11, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x00000000 # initialize rs1
li x20, 0x00000002 # initialize rs2
andn x13, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x6, 0x00000000 # initialize rs1
li x23, 0x80000000 # initialize rs2
andn x27, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x19, 0x00000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
andn x8, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x24, 0x00000000 # initialize rs1
li x25, 0x7fffffff # initialize rs2
andn x18, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x7, 0x00000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
andn x19, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x3, 0x00000000 # initialize rs1
li x21, 0xffffffff # initialize rs2
andn x13, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x15, 0x00000000 # initialize rs1
li x18, 0xfffffffe # initialize rs2
andn x8, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x10, 0x00000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
andn x5, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x25, 0x00000000 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
andn x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x31, 0x00000000 # initialize rs1
li x2, 0x55555555 # initialize rs2
andn x14, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x00000001 # initialize rs1
li x2, 0x00000000 # initialize rs2
andn x15, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x11, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
andn x19, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
andn x5, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0x00000001 # initialize rs1
li x1, 0x80000000 # initialize rs2
andn x21, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x23, 0x00000001 # initialize rs1
li x13, 0x80000001 # initialize rs2
andn x17, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x30, 0x00000001 # initialize rs1
li x29, 0x7fffffff # initialize rs2
andn x22, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x15, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
andn x12, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
andn x14, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x24, 0x00000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
andn x13, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x27, 0x00000001 # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
andn x19, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x9, 0x00000001 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
andn x19, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x24, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
andn x12, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x00000002 # initialize rs1
li x16, 0x00000000 # initialize rs2
andn x30, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x8, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
andn x2, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x00000002 # initialize rs1
li x13, 0x00000002 # initialize rs2
andn x10, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x8, 0x00000002 # initialize rs1
li x18, 0x80000000 # initialize rs2
andn x25, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x3, 0x00000002 # initialize rs1
li x20, 0x80000001 # initialize rs2
andn x25, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x22, 0x00000002 # initialize rs1
li x3, 0x7fffffff # initialize rs2
andn x24, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x7, 0x00000002 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
andn x30, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x29, 0x00000002 # initialize rs1
li x2, 0xffffffff # initialize rs2
andn x28, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x19, 0x00000002 # initialize rs1
li x20, 0xfffffffe # initialize rs2
andn x25, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x17, 0x00000002 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
andn x24, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x31, 0x00000002 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
andn x19, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x5, 0x00000002 # initialize rs1
li x26, 0x55555555 # initialize rs2
andn x12, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
andn x22, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x3, 0x80000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
andn x30, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x17, 0x80000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
andn x28, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
andn x29, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x27, 0x80000000 # initialize rs1
li x8, 0x80000001 # initialize rs2
andn x3, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x23, 0x80000000 # initialize rs1
li x19, 0x7fffffff # initialize rs2
andn x29, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x13, 0x80000000 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
andn x8, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x20, 0x80000000 # initialize rs1
li x18, 0xffffffff # initialize rs2
andn x10, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x5, 0x80000000 # initialize rs1
li x6, 0xfffffffe # initialize rs2
andn x11, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x19, 0x80000000 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
andn x30, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x22, 0x80000000 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
andn x19, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x18, 0x80000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
andn x10, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x24, 0x80000001 # initialize rs1
li x16, 0x00000000 # initialize rs2
andn x28, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
andn x27, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x21, 0x80000001 # initialize rs1
li x19, 0x00000002 # initialize rs2
andn x31, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x24, 0x80000000 # initialize rs2
andn x27, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
andn x2, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x31, 0x80000001 # initialize rs1
li x14, 0x7fffffff # initialize rs2
andn x27, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x27, 0x80000001 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
andn x26, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x26, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
andn x21, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x17, 0xfffffffe # initialize rs2
andn x8, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x22, 0x80000001 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
andn x20, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x17, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
andn x30, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x19, 0x80000001 # initialize rs1
li x10, 0x55555555 # initialize rs2
andn x15, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x14, 0x7fffffff # initialize rs1
li x9, 0x00000000 # initialize rs2
andn x30, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x19, 0x7fffffff # initialize rs1
li x31, 0x00000001 # initialize rs2
andn x18, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0x7fffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
andn x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
andn x10, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x22, 0x7fffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
andn x15, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x7, 0x7fffffff # initialize rs2
andn x8, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x28, 0x7ffffffe # initialize rs2
andn x21, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x27, 0x7fffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
andn x18, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
andn x15, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x7, 0x7fffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
andn x2, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x28, 0x7fffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
andn x15, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x1, 0x7fffffff # initialize rs1
li x17, 0x55555555 # initialize rs2
andn x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x5, 0x7ffffffe # initialize rs1
li x27, 0x00000000 # initialize rs2
andn x25, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x29, 0x7ffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
andn x18, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x10, 0x7ffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
andn x15, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x15, 0x80000000 # initialize rs2
andn x26, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x17, 0x7ffffffe # initialize rs1
li x9, 0x80000001 # initialize rs2
andn x21, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x9, 0x7fffffff # initialize rs2
andn x21, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
andn x15, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x19, 0x7ffffffe # initialize rs1
li x8, 0xffffffff # initialize rs2
andn x2, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffe # initialize rs1
li x29, 0xfffffffe # initialize rs2
andn x6, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x7, 0x7ffffffe # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
andn x12, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x7ffffffe # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
andn x24, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x7, 0x7ffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
andn x5, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0xffffffff # initialize rs1
li x19, 0x00000000 # initialize rs2
andn x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0xffffffff # initialize rs1
li x25, 0x00000001 # initialize rs2
andn x7, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0xffffffff # initialize rs1
li x30, 0x00000002 # initialize rs2
andn x18, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0xffffffff # initialize rs1
li x2, 0x80000000 # initialize rs2
andn x7, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x11, 0xffffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
andn x1, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x16, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
andn x29, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x1, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
andn x19, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x31, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
andn x8, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xffffffff # initialize rs1
li x2, 0xfffffffe # initialize rs2
andn x27, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x30, 0xffffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
andn x23, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x30, 0xffffffff # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
andn x24, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x7, 0xffffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
andn x10, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x17, 0xfffffffe # initialize rs1
li x16, 0x00000000 # initialize rs2
andn x11, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x3, 0xfffffffe # initialize rs1
li x18, 0x00000001 # initialize rs2
andn x27, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
andn x10, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x24, 0xfffffffe # initialize rs1
li x12, 0x80000000 # initialize rs2
andn x28, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0xfffffffe # initialize rs1
li x21, 0x80000001 # initialize rs2
andn x7, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x13, 0xfffffffe # initialize rs1
li x24, 0x7fffffff # initialize rs2
andn x12, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x29, 0xfffffffe # initialize rs1
li x24, 0x7ffffffe # initialize rs2
andn x5, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
andn x6, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
andn x17, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x16, 0xfffffffe # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
andn x1, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x24, 0xfffffffe # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
andn x9, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x23, 0xfffffffe # initialize rs1
li x29, 0x55555555 # initialize rs2
andn x7, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x13, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
andn x11, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x27, 0x5bbc8872 # initialize rs1
li x11, 0x00000001 # initialize rs2
andn x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x5, 0x5bbc8872 # initialize rs1
li x27, 0x00000002 # initialize rs2
andn x15, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x11, 0x5bbc8872 # initialize rs1
li x20, 0x80000000 # initialize rs2
andn x31, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x11, 0x5bbc8872 # initialize rs1
li x6, 0x80000001 # initialize rs2
andn x19, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x13, 0x5bbc8872 # initialize rs1
li x17, 0x7fffffff # initialize rs2
andn x31, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x27, 0x5bbc8872 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
andn x12, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x28, 0x5bbc8872 # initialize rs1
li x8, 0xffffffff # initialize rs2
andn x12, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x20, 0xfffffffe # initialize rs2
andn x27, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x24, 0x5bbc8872 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
andn x30, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x21, 0x5bbc8872 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
andn x22, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x26, 0x5bbc8872 # initialize rs1
li x5, 0x55555555 # initialize rs2
andn x25, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
andn x9, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x19, 0xaaaaaaaa # initialize rs1
li x18, 0x00000001 # initialize rs2
andn x16, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x9, 0xaaaaaaaa # initialize rs1
li x25, 0x00000002 # initialize rs2
andn x11, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x30, 0xaaaaaaaa # initialize rs1
li x12, 0x80000000 # initialize rs2
andn x7, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x24, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
andn x9, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x3, 0x7fffffff # initialize rs2
andn x5, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x28, 0xaaaaaaaa # initialize rs1
li x11, 0x7ffffffe # initialize rs2
andn x24, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x3, 0xffffffff # initialize rs2
andn x28, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaa # initialize rs1
li x28, 0xfffffffe # initialize rs2
andn x14, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x20, 0xaaaaaaaa # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
andn x5, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
andn x16, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x27, 0xaaaaaaaa # initialize rs1
li x28, 0x55555555 # initialize rs2
andn x16, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x21, 0x55555555 # initialize rs1
li x29, 0x00000000 # initialize rs2
andn x16, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x26, 0x55555555 # initialize rs1
li x18, 0x00000001 # initialize rs2
andn x20, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x1, 0x55555555 # initialize rs1
li x2, 0x00000002 # initialize rs2
andn x10, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x10, 0x55555555 # initialize rs1
li x8, 0x80000000 # initialize rs2
andn x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x24, 0x55555555 # initialize rs1
li x13, 0x80000001 # initialize rs2
andn x3, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x27, 0x55555555 # initialize rs1
li x14, 0x7fffffff # initialize rs2
andn x9, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x6, 0x55555555 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
andn x31, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x29, 0x55555555 # initialize rs1
li x9, 0xffffffff # initialize rs2
andn x30, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x5, 0x55555555 # initialize rs1
li x12, 0xfffffffe # initialize rs2
andn x9, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x23, 0x55555555 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
andn x20, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x29, 0x55555555 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
andn x13, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x16, 0x55555555 # initialize rs1
li x2, 0x55555555 # initialize rs2
andn x15, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x02fea0a1 # initialize rs1
li x0, 0xb96a597d # initialize rs2
andn x23, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x55ef5398 # initialize rs1
li x1, 0xf58cc116 # initialize rs2
andn x9, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xcc276882 # initialize rs1
li x2, 0x2ad0e691 # initialize rs2
andn x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xab493246 # initialize rs1
li x3, 0x39648951 # initialize rs2
andn x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x92b24d2c # initialize rs1
li x4, 0x8a8c14c9 # initialize rs2
andn x29, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7e59b847 # initialize rs1
li x5, 0x57ea8e6f # initialize rs2
andn x17, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x33e0d962 # initialize rs1
li x6, 0x0e5091ea # initialize rs2
andn x8, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe8dd2e5f # initialize rs1
li x7, 0x1f3c6df3 # initialize rs2
andn x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa34968aa # initialize rs1
li x8, 0x99960e6e # initialize rs2
andn x9, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x08b5d307 # initialize rs1
li x9, 0x9c788e85 # initialize rs2
andn x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcc0e13ad # initialize rs1
li x10, 0x2542107c # initialize rs2
andn x23, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa28851dc # initialize rs1
li x11, 0x37b16cc3 # initialize rs2
andn x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x1aebbe18 # initialize rs1
li x12, 0x1bea41d5 # initialize rs2
andn x26, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfc5b8198 # initialize rs1
li x13, 0xacdce869 # initialize rs2
andn x15, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x32814ae4 # initialize rs1
li x14, 0xa667fe46 # initialize rs2
andn x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa3e8383a # initialize rs1
li x15, 0xcc7220a1 # initialize rs2
andn x29, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xabde1d82 # initialize rs1
li x16, 0x23b4397c # initialize rs2
andn x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf3f3a9a3 # initialize rs1
li x17, 0xec213545 # initialize rs2
andn x21, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0042c9cb # initialize rs1
li x18, 0x719714ce # initialize rs2
andn x28, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xdb7c1b71 # initialize rs1
li x19, 0x03edd382 # initialize rs2
andn x14, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0364db3f # initialize rs1
li x20, 0x4a60f39b # initialize rs2
andn x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc85de3a9 # initialize rs1
li x21, 0x3866616f # initialize rs2
andn x1, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x44a6dd97 # initialize rs1
li x22, 0xfb1234f0 # initialize rs2
andn x7, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xae3e0187 # initialize rs1
li x23, 0x8d542cd5 # initialize rs2
andn x17, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4a34fa84 # initialize rs1
li x24, 0x39537177 # initialize rs2
andn x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x49a04a58 # initialize rs1
li x25, 0x053c4524 # initialize rs2
andn x21, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1048942c # initialize rs1
li x26, 0x83a725d6 # initialize rs2
andn x16, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xe6610990 # initialize rs1
li x27, 0x26114259 # initialize rs2
andn x16, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x6199e77c # initialize rs1
li x28, 0xf891a14d # initialize rs2
andn x27, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x32871ac4 # initialize rs1
li x29, 0x0f3b72f9 # initialize rs2
andn x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x17c48d8a # initialize rs1
li x30, 0x70f2d00d # initialize rs2
andn x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x02a937fb # initialize rs1
li x31, 0xae1fced9 # initialize rs2
andn x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xaf7b190e # initialize rs1
li x30, 0xab4bece9 # initialize rs2
andn x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x90b45dcb # initialize rs1
li x3, 0x04994bbe # initialize rs2
andn x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbd958257 # initialize rs1
li x30, 0x526bda05 # initialize rs2
andn x2, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x84c454a2 # initialize rs1
li x28, 0xf08c4407 # initialize rs2
andn x3, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x08b2314e # initialize rs1
li x31, 0xb7c8b7ab # initialize rs2
andn x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6d4c10b2 # initialize rs1
li x18, 0x56218018 # initialize rs2
andn x5, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc305df96 # initialize rs1
li x18, 0x576a2e92 # initialize rs2
andn x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc98a5902 # initialize rs1
li x5, 0x0202a2b1 # initialize rs2
andn x7, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6e690554 # initialize rs1
li x14, 0x9f3e6115 # initialize rs2
andn x8, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1332cf0c # initialize rs1
li x5, 0xc63f654f # initialize rs2
andn x9, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xa3000c76 # initialize rs1
li x8, 0xbe1f6cf4 # initialize rs2
andn x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe21b5b2f # initialize rs1
li x12, 0x0f3c5313 # initialize rs2
andn x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x889f396c # initialize rs1
li x30, 0x809ce69a # initialize rs2
andn x12, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf111075b # initialize rs1
li x14, 0xe494920f # initialize rs2
andn x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x32470651 # initialize rs1
li x24, 0xcb44dd8d # initialize rs2
andn x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x309273a9 # initialize rs1
li x12, 0xc18f5b78 # initialize rs2
andn x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x08ad584c # initialize rs1
li x7, 0x368f53b7 # initialize rs2
andn x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x777c5e21 # initialize rs1
li x26, 0xdc75193e # initialize rs2
andn x17, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x24c7d152 # initialize rs1
li x23, 0x88304ab6 # initialize rs2
andn x18, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x255e57bf # initialize rs1
li x9, 0xcc0ee521 # initialize rs2
andn x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x374c364e # initialize rs1
li x27, 0x149fa2e1 # initialize rs2
andn x20, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x69c60fe7 # initialize rs1
li x1, 0x340c6065 # initialize rs2
andn x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3a076372 # initialize rs1
li x25, 0x123dfa72 # initialize rs2
andn x22, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x492380d9 # initialize rs1
li x17, 0xd2b3da44 # initialize rs2
andn x23, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x72c8b915 # initialize rs1
li x27, 0x568cfcfb # initialize rs2
andn x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x912db25c # initialize rs1
li x18, 0x59d79709 # initialize rs2
andn x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0cc1d820 # initialize rs1
li x28, 0xa552c89b # initialize rs2
andn x26, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x04c5115e # initialize rs1
li x21, 0x7f80ec33 # initialize rs2
andn x27, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcfd8d097 # initialize rs1
li x29, 0x9fc60e78 # initialize rs2
andn x28, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x56f7dc4d # initialize rs1
li x11, 0x31ba53b6 # initialize rs2
andn x29, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x01a8fc77 # initialize rs1
li x28, 0x59b739ec # initialize rs2
andn x30, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x75e72d34 # initialize rs1
li x8, 0x13ffb02a # initialize rs2
andn x31, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x6, 0x3bd70899 # initialize rs1
li x0, 0x61bbb4ca # initialize rs2
andn x0, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x10, 0x12ab7f24 # initialize rs1
li x1, 0xaeb14fc1 # initialize rs2
andn x1, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x12, 0xb1d27069 # initialize rs1
li x2, 0xc934ed2e # initialize rs2
andn x2, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x10, 0xb1a78462 # initialize rs1
li x3, 0x6048e3b2 # initialize rs2
andn x3, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x0e0aee7f # initialize rs1
li x4, 0xe98c337c # initialize rs2
andn x4, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x82356a46 # initialize rs1
li x5, 0x2ccf154a # initialize rs2
andn x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x8bf7ec5c # initialize rs1
li x6, 0x66c1a64f # initialize rs2
andn x6, x30, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xd03ae1e6 # initialize rs1
li x7, 0x66f20a00 # initialize rs2
andn x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0xf18c7a6b # initialize rs1
li x8, 0x0e7bde41 # initialize rs2
andn x8, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x1, 0xfb16027a # initialize rs1
li x9, 0xa6b8df59 # initialize rs2
andn x9, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x11, 0x814dcb8b # initialize rs1
li x10, 0x1271ed89 # initialize rs2
andn x10, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x18, 0xef0feb61 # initialize rs1
li x11, 0xd4313976 # initialize rs2
andn x11, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x2c54c0d1 # initialize rs1
li x12, 0x0c4af816 # initialize rs2
andn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x18, 0x195bb31e # initialize rs1
li x13, 0x73fe91e7 # initialize rs2
andn x13, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0x5a3f31a8 # initialize rs1
li x14, 0xf272108f # initialize rs2
andn x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x17, 0x5220083e # initialize rs1
li x15, 0x445f179c # initialize rs2
andn x15, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0x1c6c74f2 # initialize rs1
li x16, 0xad36610a # initialize rs2
andn x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x6, 0x36efb0f1 # initialize rs1
li x17, 0x49f5c029 # initialize rs2
andn x17, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x26, 0xcebadd80 # initialize rs1
li x18, 0x9b50137a # initialize rs2
andn x18, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x22, 0xee8786db # initialize rs1
li x19, 0xa8f48293 # initialize rs2
andn x19, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0xe57c7a6e # initialize rs1
li x20, 0x4c31fdae # initialize rs2
andn x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x38c51878 # initialize rs1
li x21, 0xb9c4eb50 # initialize rs2
andn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x9, 0xd5bef81e # initialize rs1
li x22, 0x10ccb686 # initialize rs2
andn x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x24, 0x71ced8fa # initialize rs1
li x23, 0x602c6fa9 # initialize rs2
andn x23, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x8185e229 # initialize rs1
li x24, 0xfbf6d9f1 # initialize rs2
andn x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0xa9a32d21 # initialize rs1
li x25, 0x79321b23 # initialize rs2
andn x25, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0xdca108e8 # initialize rs1
li x26, 0x2b0571dd # initialize rs2
andn x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0x22e3d540 # initialize rs1
li x27, 0x1aaee145 # initialize rs2
andn x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x14, 0xbb875fd4 # initialize rs1
li x28, 0xac50817b # initialize rs2
andn x28, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x805be907 # initialize rs1
li x29, 0x3ff2e764 # initialize rs2
andn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x31, 0xb08b9c8f # initialize rs1
li x30, 0x2080c051 # initialize rs2
andn x30, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x14, 0x1b697ce1 # initialize rs1
li x31, 0xa7f49f35 # initialize rs2
andn x31, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xb5a5eeb5 # initialize rs1
li x0, 0x3d55e3ed # initialize rs2
andn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x1372c851 # initialize rs1
li x1, 0x33de5ce7 # initialize rs2
andn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xc4765aa4 # initialize rs1
li x2, 0x567d55c3 # initialize rs2
andn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x33da8b53 # initialize rs1
li x3, 0x1d85cce7 # initialize rs2
andn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3947391d # initialize rs1
li x4, 0x3d9900f0 # initialize rs2
andn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0bc114fb # initialize rs1
li x5, 0x06778e6c # initialize rs2
andn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6ecaa097 # initialize rs1
li x6, 0x9ddb86e3 # initialize rs2
andn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2cb0372e # initialize rs1
li x7, 0x56150482 # initialize rs2
andn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6b098da8 # initialize rs1
li x8, 0xe155cfb6 # initialize rs2
andn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x10d54f55 # initialize rs1
li x9, 0xb634d8bd # initialize rs2
andn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9cff643e # initialize rs1
li x10, 0xc00a819e # initialize rs2
andn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe671c0d8 # initialize rs1
li x11, 0xf67c840c # initialize rs2
andn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd3798f97 # initialize rs1
li x12, 0x73d88c08 # initialize rs2
andn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe6758b74 # initialize rs1
li x13, 0x122308a0 # initialize rs2
andn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x780466aa # initialize rs1
li x14, 0x4ce768f4 # initialize rs2
andn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3c5bb44d # initialize rs1
li x15, 0x9e0363e1 # initialize rs2
andn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x9f18fe70 # initialize rs1
li x16, 0x7705413f # initialize rs2
andn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xe9244b73 # initialize rs1
li x17, 0x3c53da90 # initialize rs2
andn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2c5e08f3 # initialize rs1
li x18, 0x4ba70e2a # initialize rs2
andn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7907dde3 # initialize rs1
li x19, 0x3b9a4736 # initialize rs2
andn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x4fbab57f # initialize rs1
li x20, 0xa3868c91 # initialize rs2
andn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xb49cceda # initialize rs1
li x21, 0x50ee9d09 # initialize rs2
andn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa97e7c6c # initialize rs1
li x22, 0x19de4a86 # initialize rs2
andn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc0658683 # initialize rs1
li x23, 0x44ff8ff8 # initialize rs2
andn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xef4685e1 # initialize rs1
li x24, 0x3fec4054 # initialize rs2
andn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x25ec6ea3 # initialize rs1
li x25, 0x657dd226 # initialize rs2
andn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd987940d # initialize rs1
li x26, 0x19ea3262 # initialize rs2
andn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x9bb04ba8 # initialize rs1
li x27, 0xb293cd20 # initialize rs2
andn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x65ec834e # initialize rs1
li x28, 0xa814e86e # initialize rs2
andn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xa6742e98 # initialize rs1
li x29, 0x9e18e3bb # initialize rs2
andn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xf70c1026 # initialize rs1
li x30, 0xb65ef60c # initialize rs2
andn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1937e201 # initialize rs1
li x31, 0x98ce11b9 # initialize rs2
andn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x5, x31 # perform first operation
andn x14, x16, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x27, x18 # perform first operation
andn x28, x6, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x11, x22 # perform first operation
andn x25, x14, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x21, x3 # perform first operation
andn x10, x9, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x23, x2 # perform first operation
andn x23, x9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x8, x16 # perform first operation
andn x8, x5, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x31, x10 # perform first operation
andn x21, x26, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x14, x12 # perform first operation
andn x15, x23, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x28, x21 # perform first operation
andn x7, x26, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x14, x1 # perform first operation
andn x14, x9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x28, x24 # perform first operation
andn x24, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x24, x28 # perform first operation
andn x3, x10, x12 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-orn.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x35d68583 # initialize rs1
li x15, 0x9fbd3b8f # initialize rs2
orn x1, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x62b0cbd8 # initialize rs1
li x15, 0xea550508 # initialize rs2
orn x22, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xac64f405 # initialize rs1
li x6, 0x191ed206 # initialize rs2
orn x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x13711581 # initialize rs1
li x20, 0xc289a6a7 # initialize rs2
orn x13, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbbbeb937 # initialize rs1
li x28, 0x358d3f3a # initialize rs2
orn x20, x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x81877e5a # initialize rs1
li x8, 0xa371ce2b # initialize rs2
orn x2, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x08ef0f05 # initialize rs1
li x9, 0x990393de # initialize rs2
orn x25, x6, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x07dcd558 # initialize rs1
li x26, 0xda910b25 # initialize rs2
orn x23, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3d0db809 # initialize rs1
li x5, 0x25b27d69 # initialize rs2
orn x9, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8fb2cf1e # initialize rs1
li x22, 0x18691d43 # initialize rs2
orn x13, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe6ddfdc2 # initialize rs1
li x7, 0xa64b1c84 # initialize rs2
orn x6, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd9697d21 # initialize rs1
li x30, 0xe8f110bb # initialize rs2
orn x8, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8710edb9 # initialize rs1
li x26, 0x73eaa497 # initialize rs2
orn x30, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa5859068 # initialize rs1
li x22, 0xf3ed2636 # initialize rs2
orn x24, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x450ea0e0 # initialize rs1
li x9, 0x91d43d38 # initialize rs2
orn x13, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x04b66c7d # initialize rs1
li x6, 0x60233f45 # initialize rs2
orn x16, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x94125be9 # initialize rs1
li x6, 0x28acc5c3 # initialize rs2
orn x22, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x4d1c7108 # initialize rs1
li x6, 0xd1b74284 # initialize rs2
orn x7, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4fd2da08 # initialize rs1
li x25, 0x95c5e5a2 # initialize rs2
orn x9, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x65c755a7 # initialize rs1
li x29, 0xe7e3a3b2 # initialize rs2
orn x5, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x02fe2d79 # initialize rs1
li x7, 0x24455c33 # initialize rs2
orn x18, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5f10428e # initialize rs1
li x14, 0xbe7fd573 # initialize rs2
orn x13, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2b840653 # initialize rs1
li x3, 0xd58b5f0e # initialize rs2
orn x11, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7af0c7f1 # initialize rs1
li x30, 0x4b71b35e # initialize rs2
orn x19, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe7f463cd # initialize rs1
li x22, 0xcec84b0c # initialize rs2
orn x30, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x2cd59f79 # initialize rs1
li x29, 0xb6d55352 # initialize rs2
orn x24, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x571a0d08 # initialize rs1
li x20, 0x7c17cc6f # initialize rs2
orn x27, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x21ac44d3 # initialize rs1
li x19, 0xff40e705 # initialize rs2
orn x22, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x280cf0e3 # initialize rs1
li x25, 0x26ecd0e9 # initialize rs2
orn x18, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0286adc9 # initialize rs1
li x7, 0xe193e0a3 # initialize rs2
orn x14, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfb29768e # initialize rs1
li x7, 0x40f45029 # initialize rs2
orn x15, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x46166dd0 # initialize rs1
li x20, 0x2f5f8002 # initialize rs2
orn x3, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x58d5da2d # initialize rs1
li x0, 0xb07e918b # initialize rs2
orn x11, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0xe08c4a16 # initialize rs1
li x1, 0xa259f52c # initialize rs2
orn x24, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0x758121ba # initialize rs1
li x2, 0x37a3a434 # initialize rs2
orn x12, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0xbba13549 # initialize rs1
li x3, 0x9779e938 # initialize rs2
orn x16, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x0e98fbdc # initialize rs1
li x4, 0x6c1398e5 # initialize rs2
orn x19, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x043356f3 # initialize rs1
li x5, 0x5b2bdfa1 # initialize rs2
orn x29, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x5ba5199a # initialize rs1
li x6, 0xf4e11a33 # initialize rs2
orn x4, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x0074edb1 # initialize rs1
li x7, 0x832c9351 # initialize rs2
orn x21, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0xd8390763 # initialize rs1
li x8, 0x6e396382 # initialize rs2
orn x31, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x9351e0ff # initialize rs1
li x9, 0xe1d03e40 # initialize rs2
orn x11, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x76096798 # initialize rs1
li x10, 0x4f5a4b14 # initialize rs2
orn x21, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x7e61ca95 # initialize rs1
li x11, 0x30e1c1fa # initialize rs2
orn x13, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x1, 0x6a0af178 # initialize rs1
li x12, 0xafa80cf5 # initialize rs2
orn x24, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x784f3b4b # initialize rs1
li x13, 0x4c12cadb # initialize rs2
orn x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0xd2cf6d59 # initialize rs1
li x14, 0x05ebbebb # initialize rs2
orn x24, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x4eff20c7 # initialize rs1
li x15, 0xcdbe1e0e # initialize rs2
orn x2, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xf0d13ff4 # initialize rs1
li x16, 0x8c658bb6 # initialize rs2
orn x5, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x62320903 # initialize rs1
li x17, 0xfc9db631 # initialize rs2
orn x31, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x5b35ce40 # initialize rs1
li x18, 0xc801e693 # initialize rs2
orn x29, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x3831b052 # initialize rs1
li x19, 0x1263a774 # initialize rs2
orn x2, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0xde276018 # initialize rs1
li x20, 0xc133486b # initialize rs2
orn x7, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0x13d92597 # initialize rs1
li x21, 0x9bcfa163 # initialize rs2
orn x23, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0x5d95e90c # initialize rs1
li x22, 0x1dc69551 # initialize rs2
orn x11, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x09e05268 # initialize rs1
li x23, 0xf93b8a20 # initialize rs2
orn x1, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x36e2d60c # initialize rs1
li x24, 0xeb710dac # initialize rs2
orn x12, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0xaa930606 # initialize rs1
li x25, 0xf0f90b5d # initialize rs2
orn x22, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0x239263d1 # initialize rs1
li x26, 0xfffae18e # initialize rs2
orn x3, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0xc091cd73 # initialize rs1
li x27, 0x55b4edc2 # initialize rs2
orn x13, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0x9560e72c # initialize rs1
li x28, 0xd66fd723 # initialize rs2
orn x31, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0x4ef28877 # initialize rs1
li x29, 0xee17b6c2 # initialize rs2
orn x1, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x12, 0x4a73ff5e # initialize rs1
li x30, 0xb1e10825 # initialize rs2
orn x8, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x21, 0x8f515bbf # initialize rs1
li x31, 0xa5b7a9c8 # initialize rs2
orn x16, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 252)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x07b60f4a # initialize rs1
li x24, 0x1d9b5538 # initialize rs2
orn x0, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x9dae91d1 # initialize rs1
li x16, 0xcf17d278 # initialize rs2
orn x1, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe093cad1 # initialize rs1
li x18, 0x4729fa55 # initialize rs2
orn x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0x11647233 # initialize rs1
li x21, 0x3e38512a # initialize rs2
orn x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xfe496166 # initialize rs1
li x18, 0x675454a6 # initialize rs2
orn x4, x30, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0xad876b74 # initialize rs1
li x28, 0x135f46fe # initialize rs2
orn x5, x11, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x9f8e2960 # initialize rs1
li x27, 0xcb5cfef4 # initialize rs2
orn x6, x14, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x72446403 # initialize rs1
li x29, 0x3395af78 # initialize rs2
orn x7, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xc1c12c1c # initialize rs1
li x26, 0xe4b59af6 # initialize rs2
orn x8, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xa8393ae1 # initialize rs1
li x24, 0xea8a0292 # initialize rs2
orn x9, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0xc0386db7 # initialize rs1
li x22, 0x905e1856 # initialize rs2
orn x10, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xe52af749 # initialize rs1
li x17, 0xf5b3dc99 # initialize rs2
orn x11, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x8a971d3c # initialize rs1
li x11, 0x52a8a89f # initialize rs2
orn x12, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0xeb5b3d79 # initialize rs1
li x12, 0x50e6e558 # initialize rs2
orn x13, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0x366d37da # initialize rs1
li x11, 0x8f6051c2 # initialize rs2
orn x14, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x25, 0x70d9914a # initialize rs1
li x20, 0x3fdbb4cb # initialize rs2
orn x15, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x55ecc433 # initialize rs1
li x9, 0x480e8acd # initialize rs2
orn x16, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x0388d540 # initialize rs1
li x13, 0x837c034c # initialize rs2
orn x17, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0xcff79b9e # initialize rs1
li x24, 0x44f34fe5 # initialize rs2
orn x18, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xd83aedcb # initialize rs1
li x13, 0x0d6349ec # initialize rs2
orn x19, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0xd631f462 # initialize rs1
li x14, 0x53ab5dd8 # initialize rs2
orn x20, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xbf56a381 # initialize rs1
li x14, 0x32a81a0c # initialize rs2
orn x21, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xf1eab7d0 # initialize rs1
li x3, 0xc2232f92 # initialize rs2
orn x22, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x36a29a35 # initialize rs1
li x15, 0xc39acf75 # initialize rs2
orn x23, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x8309970a # initialize rs1
li x10, 0xee96cea6 # initialize rs2
orn x24, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x9a442e1c # initialize rs1
li x24, 0xdec544a1 # initialize rs2
orn x25, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x791ca639 # initialize rs1
li x2, 0xffc90a5c # initialize rs2
orn x26, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x3a8cdef8 # initialize rs1
li x28, 0xcac9f627 # initialize rs2
orn x27, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x618f3515 # initialize rs1
li x6, 0x748fb221 # initialize rs2
orn x28, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0xf3ff161b # initialize rs1
li x24, 0x18e43d15 # initialize rs2
orn x29, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xf08ff1e1 # initialize rs1
li x10, 0x6c70d0e3 # initialize rs2
orn x30, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0xcd94cb60 # initialize rs1
li x20, 0x3ad76ff2 # initialize rs2
orn x31, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x00000000 # initialize rs1
li x7, 0xf0023e83 # initialize rs2
orn x6, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x00000001 # initialize rs1
li x10, 0xf2eab1af # initialize rs2
orn x11, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x00000002 # initialize rs1
li x26, 0xb57d4ab4 # initialize rs2
orn x20, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x6, 0x80000000 # initialize rs1
li x28, 0xc101e77a # initialize rs2
orn x27, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
li x14, 0xa34935b8 # initialize rs2
orn x18, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x15, 0x7fffffff # initialize rs1
li x9, 0x2e265f27 # initialize rs2
orn x8, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs1
li x16, 0x6535ac1f # initialize rs2
orn x24, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0xffffffff # initialize rs1
li x12, 0xb56d0b70 # initialize rs2
orn x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xfffffffe # initialize rs1
li x5, 0xeab2023a # initialize rs2
orn x26, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x25, 0x2ca86e5e # initialize rs2
orn x26, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x2, 0xf376bda8 # initialize rs2
orn x23, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
li x8, 0x09793528 # initialize rs2
orn x25, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x22960db0 # initialize rs1
li x3, 0x00000000 # initialize rs2
orn x16, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x2c2bd5eb # initialize rs1
li x19, 0x00000001 # initialize rs2
orn x16, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0xa42c4daf # initialize rs1
li x21, 0x00000002 # initialize rs2
orn x25, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0xd0052340 # initialize rs1
li x11, 0x80000000 # initialize rs2
orn x29, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x31, 0xf97910e7 # initialize rs1
li x6, 0x80000001 # initialize rs2
orn x17, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x26, 0x977ee08f # initialize rs1
li x22, 0x7fffffff # initialize rs2
orn x15, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x2, 0x38320dde # initialize rs1
li x7, 0x7ffffffe # initialize rs2
orn x30, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x92ef8b9e # initialize rs1
li x14, 0xffffffff # initialize rs2
orn x23, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x0f996c0a # initialize rs1
li x9, 0xfffffffe # initialize rs2
orn x22, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x8, 0x2762d21d # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
orn x20, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0x23fba35c # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
orn x7, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0xe1dcfe35 # initialize rs1
li x15, 0x55555555 # initialize rs2
orn x27, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
orn x20, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x00000000 # initialize rs1
li x21, 0x00000001 # initialize rs2
orn x6, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x00000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
orn x19, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x16, 0x00000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
orn x5, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x19, 0x00000000 # initialize rs1
li x9, 0x80000001 # initialize rs2
orn x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x27, 0x00000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
orn x31, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x31, 0x00000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x12, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x00000000 # initialize rs1
li x21, 0xffffffff # initialize rs2
orn x19, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
orn x23, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
orn x20, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x28, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
orn x24, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x20, 0x00000000 # initialize rs1
li x16, 0x55555555 # initialize rs2
orn x1, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x6, 0x00000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
orn x7, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x18, 0x00000001 # initialize rs2
orn x26, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x00000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
orn x10, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x10, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
orn x12, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x25, 0x00000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
orn x26, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x26, 0x00000001 # initialize rs1
li x6, 0x7fffffff # initialize rs2
orn x25, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x13, 0x00000001 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
orn x18, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x00000001 # initialize rs1
li x11, 0xffffffff # initialize rs2
orn x15, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
orn x1, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x12, 0x00000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
orn x19, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x5, 0x00000001 # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
orn x24, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x24, 0x00000001 # initialize rs1
li x26, 0x55555555 # initialize rs2
orn x25, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x15, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
orn x13, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
orn x28, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x11, 0x00000002 # initialize rs1
li x16, 0x00000002 # initialize rs2
orn x29, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x20, 0x00000002 # initialize rs1
li x21, 0x80000000 # initialize rs2
orn x31, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x1, 0x00000002 # initialize rs1
li x23, 0x80000001 # initialize rs2
orn x26, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x25, 0x00000002 # initialize rs1
li x20, 0x7fffffff # initialize rs2
orn x14, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
orn x8, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
orn x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x31, 0x00000002 # initialize rs1
li x1, 0xfffffffe # initialize rs2
orn x26, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x11, 0x00000002 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
orn x29, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
orn x25, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x19, 0x00000002 # initialize rs1
li x1, 0x55555555 # initialize rs2
orn x16, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x23, 0x80000000 # initialize rs1
li x6, 0x00000000 # initialize rs2
orn x31, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x9, 0x80000000 # initialize rs1
li x19, 0x00000001 # initialize rs2
orn x11, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x3, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
orn x2, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x28, 0x80000000 # initialize rs1
li x18, 0x80000000 # initialize rs2
orn x20, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x80000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
orn x15, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x27, 0x80000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
orn x28, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x14, 0x80000000 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x12, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x80000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
orn x14, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x5, 0x80000000 # initialize rs1
li x26, 0xfffffffe # initialize rs2
orn x24, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x28, 0x80000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
orn x26, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x18, 0x80000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
orn x8, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x28, 0x80000000 # initialize rs1
li x3, 0x55555555 # initialize rs2
orn x16, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x23, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
orn x10, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
orn x16, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x13, 0x80000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
orn x3, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001 # initialize rs1
li x18, 0x80000000 # initialize rs2
orn x15, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x15, 0x80000001 # initialize rs2
orn x7, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x22, 0x80000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
orn x1, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x3, 0x80000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x21, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x7, 0x80000001 # initialize rs1
li x17, 0xffffffff # initialize rs2
orn x12, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x80000001 # initialize rs1
li x18, 0xfffffffe # initialize rs2
orn x19, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
orn x6, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x12, 0x80000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
orn x19, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x2, 0x80000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
orn x30, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x11, 0x7fffffff # initialize rs1
li x29, 0x00000000 # initialize rs2
orn x6, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x23, 0x7fffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
orn x9, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x9, 0x7fffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
orn x7, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
orn x12, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x6, 0x7fffffff # initialize rs1
li x15, 0x80000001 # initialize rs2
orn x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x10, 0x7fffffff # initialize rs1
li x5, 0x7fffffff # initialize rs2
orn x24, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x16, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
orn x19, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x27, 0x7fffffff # initialize rs1
li x10, 0xffffffff # initialize rs2
orn x24, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x21, 0x7fffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
orn x23, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x21, 0x7fffffff # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
orn x3, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0x7fffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
orn x9, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x7fffffff # initialize rs1
li x18, 0x55555555 # initialize rs2
orn x3, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x19, 0x00000000 # initialize rs2
orn x31, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x9, 0x7ffffffe # initialize rs1
li x20, 0x00000001 # initialize rs2
orn x18, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x5, 0x7ffffffe # initialize rs1
li x20, 0x00000002 # initialize rs2
orn x1, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
orn x10, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x17, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
orn x6, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x30, 0x7ffffffe # initialize rs1
li x28, 0x7fffffff # initialize rs2
orn x20, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
orn x17, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x19, 0x7ffffffe # initialize rs1
li x17, 0xffffffff # initialize rs2
orn x29, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
orn x6, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x15, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
orn x26, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x31, 0x7ffffffe # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
orn x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x20, 0x7ffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
orn x6, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0xffffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
orn x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x3, 0x00000001 # initialize rs2
orn x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0xffffffff # initialize rs1
li x31, 0x00000002 # initialize rs2
orn x6, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x5, 0xffffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
orn x15, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x16, 0xffffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
orn x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x7, 0xffffffff # initialize rs1
li x21, 0x7fffffff # initialize rs2
orn x31, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x10, 0xffffffff # initialize rs1
li x3, 0x7ffffffe # initialize rs2
orn x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x14, 0xffffffff # initialize rs2
orn x1, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
orn x25, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x16, 0xffffffff # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
orn x7, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
orn x15, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
orn x5, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x15, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
orn x14, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x19, 0xfffffffe # initialize rs1
li x17, 0x00000001 # initialize rs2
orn x8, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x31, 0xfffffffe # initialize rs1
li x16, 0x00000002 # initialize rs2
orn x18, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x2, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
orn x24, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x7, 0xfffffffe # initialize rs1
li x27, 0x80000001 # initialize rs2
orn x10, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x27, 0xfffffffe # initialize rs1
li x20, 0x7fffffff # initialize rs2
orn x1, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x31, 0xfffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
orn x26, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x15, 0xfffffffe # initialize rs1
li x5, 0xffffffff # initialize rs2
orn x9, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x5, 0xfffffffe # initialize rs2
orn x18, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x3, 0xfffffffe # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
orn x9, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x31, 0xfffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
orn x14, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x12, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
orn x28, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x30, 0x5bbc8872 # initialize rs1
li x1, 0x00000000 # initialize rs2
orn x28, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x10, 0x5bbc8872 # initialize rs1
li x18, 0x00000001 # initialize rs2
orn x2, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x5, 0x5bbc8872 # initialize rs1
li x23, 0x00000002 # initialize rs2
orn x8, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x26, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
orn x2, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x3, 0x5bbc8872 # initialize rs1
li x12, 0x80000001 # initialize rs2
orn x28, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x20, 0x5bbc8872 # initialize rs1
li x22, 0x7fffffff # initialize rs2
orn x23, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
orn x27, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x24, 0x5bbc8872 # initialize rs1
li x18, 0xffffffff # initialize rs2
orn x20, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x20, 0xfffffffe # initialize rs2
orn x24, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
orn x23, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x7, 0x5bbc8872 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
orn x6, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x8, 0x5bbc8872 # initialize rs1
li x21, 0x55555555 # initialize rs2
orn x18, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x27, 0xaaaaaaaa # initialize rs1
li x12, 0x00000000 # initialize rs2
orn x19, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaa # initialize rs1
li x27, 0x00000001 # initialize rs2
orn x8, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaa # initialize rs1
li x14, 0x00000002 # initialize rs2
orn x23, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0xaaaaaaaa # initialize rs1
li x19, 0x80000000 # initialize rs2
orn x24, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x29, 0x80000001 # initialize rs2
orn x2, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x13, 0xaaaaaaaa # initialize rs1
li x5, 0x7fffffff # initialize rs2
orn x14, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x17, 0xaaaaaaaa # initialize rs1
li x8, 0x7ffffffe # initialize rs2
orn x20, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x9, 0xffffffff # initialize rs2
orn x22, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x15, 0xfffffffe # initialize rs2
orn x24, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x26, 0xaaaaaaaa # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
orn x17, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x28, 0xaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
orn x31, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x20, 0xaaaaaaaa # initialize rs1
li x31, 0x55555555 # initialize rs2
orn x25, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x3, 0x55555555 # initialize rs1
li x31, 0x00000000 # initialize rs2
orn x23, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x2, 0x55555555 # initialize rs1
li x24, 0x00000001 # initialize rs2
orn x27, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x23, 0x55555555 # initialize rs1
li x5, 0x00000002 # initialize rs2
orn x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x25, 0x55555555 # initialize rs1
li x21, 0x80000000 # initialize rs2
orn x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x7, 0x80000001 # initialize rs2
orn x15, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x10, 0x55555555 # initialize rs1
li x19, 0x7fffffff # initialize rs2
orn x31, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x27, 0x55555555 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
orn x23, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x7, 0xffffffff # initialize rs2
orn x22, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
orn x28, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x25, 0x55555555 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
orn x3, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x55555555 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
orn x20, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x28, 0x55555555 # initialize rs2
orn x9, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x3774dead # initialize rs1
li x0, 0x8634be26 # initialize rs2
orn x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x1f340b38 # initialize rs1
li x1, 0xdaee35f8 # initialize rs2
orn x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x10b3219b # initialize rs1
li x2, 0xb01887db # initialize rs2
orn x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc994076f # initialize rs1
li x3, 0x041e7839 # initialize rs2
orn x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbab83435 # initialize rs1
li x4, 0x2f14d58c # initialize rs2
orn x26, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x05674505 # initialize rs1
li x5, 0xa906e73a # initialize rs2
orn x13, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8abc5986 # initialize rs1
li x6, 0xf15a4d96 # initialize rs2
orn x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3532e071 # initialize rs1
li x7, 0x0b7776f4 # initialize rs2
orn x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2180f8b2 # initialize rs1
li x8, 0x21856958 # initialize rs2
orn x20, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x47716b1e # initialize rs1
li x9, 0x1f373160 # initialize rs2
orn x8, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x777eb50a # initialize rs1
li x10, 0x1c47b63c # initialize rs2
orn x31, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x05761342 # initialize rs1
li x11, 0x7af45594 # initialize rs2
orn x5, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4aa204ac # initialize rs1
li x12, 0x0ee0eb75 # initialize rs2
orn x16, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x9dc18c55 # initialize rs1
li x13, 0x236bc160 # initialize rs2
orn x23, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa8e99f8a # initialize rs1
li x14, 0x7d55fc34 # initialize rs2
orn x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x4f1daa98 # initialize rs1
li x15, 0x9ee3f9b5 # initialize rs2
orn x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x334b5517 # initialize rs1
li x16, 0x24bf71d6 # initialize rs2
orn x23, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x89f8de31 # initialize rs1
li x17, 0x986dbba8 # initialize rs2
orn x18, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x50c0546d # initialize rs1
li x18, 0x567791e0 # initialize rs2
orn x30, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x4b1a1b07 # initialize rs1
li x19, 0x02466543 # initialize rs2
orn x26, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0128cb31 # initialize rs1
li x20, 0x9e13a081 # initialize rs2
orn x18, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x166389f2 # initialize rs1
li x21, 0x91df58d7 # initialize rs2
orn x8, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xa243688a # initialize rs1
li x22, 0xf8068ccc # initialize rs2
orn x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x2ffc15a3 # initialize rs1
li x23, 0x33ffde6f # initialize rs2
orn x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x75b81940 # initialize rs1
li x24, 0xca8b23aa # initialize rs2
orn x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x56e96363 # initialize rs1
li x25, 0x7e59ca7d # initialize rs2
orn x7, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc7152f84 # initialize rs1
li x26, 0x4302ef58 # initialize rs2
orn x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xab785f63 # initialize rs1
li x27, 0x5552ba22 # initialize rs2
orn x23, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x053089ca # initialize rs1
li x28, 0xaee7804e # initialize rs2
orn x3, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xe6a53913 # initialize rs1
li x29, 0xc02bacb3 # initialize rs2
orn x18, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x9025b781 # initialize rs1
li x30, 0xaa735799 # initialize rs2
orn x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8932f6c2 # initialize rs1
li x31, 0x10fa0fd1 # initialize rs2
orn x20, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xba505e1b # initialize rs1
li x28, 0x0b6566b4 # initialize rs2
orn x0, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa30a3b48 # initialize rs1
li x7, 0xc177d161 # initialize rs2
orn x1, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x81572259 # initialize rs1
li x6, 0x31550a33 # initialize rs2
orn x2, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf9309aa9 # initialize rs1
li x19, 0xbfaf3fb4 # initialize rs2
orn x3, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x90eabf50 # initialize rs1
li x29, 0xd7bc18bf # initialize rs2
orn x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb2c9ad83 # initialize rs1
li x8, 0x80adb071 # initialize rs2
orn x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbd7cfd48 # initialize rs1
li x8, 0x1f5f0611 # initialize rs2
orn x6, x6, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0da29830 # initialize rs1
li x8, 0x044d203d # initialize rs2
orn x7, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1feacd29 # initialize rs1
li x5, 0xa23a1fc1 # initialize rs2
orn x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0a814e44 # initialize rs1
li x9, 0xc450dbd2 # initialize rs2
orn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x30dfd416 # initialize rs1
li x15, 0x2610dcd9 # initialize rs2
orn x10, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0fe76b00 # initialize rs1
li x20, 0xb487019e # initialize rs2
orn x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xeeb300bf # initialize rs1
li x3, 0xedc3fec6 # initialize rs2
orn x12, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe81cb114 # initialize rs1
li x12, 0xcd31cf0d # initialize rs2
orn x13, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7721541b # initialize rs1
li x10, 0x1a974e45 # initialize rs2
orn x14, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x88effa66 # initialize rs1
li x22, 0xa030d8c6 # initialize rs2
orn x15, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5cb4bab9 # initialize rs1
li x7, 0x6192f087 # initialize rs2
orn x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x71665850 # initialize rs1
li x25, 0xb3e5a9d2 # initialize rs2
orn x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3647b2d6 # initialize rs1
li x22, 0xe8eba1ae # initialize rs2
orn x18, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x27799f4c # initialize rs1
li x9, 0xdb430c67 # initialize rs2
orn x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc33e05a4 # initialize rs1
li x15, 0xb87d19d4 # initialize rs2
orn x20, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6748d675 # initialize rs1
li x13, 0x049e543a # initialize rs2
orn x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc73db83f # initialize rs1
li x5, 0x651098f5 # initialize rs2
orn x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x11c71755 # initialize rs1
li x24, 0x70add216 # initialize rs2
orn x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xdaebeb70 # initialize rs1
li x29, 0x3e24de95 # initialize rs2
orn x24, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x16bdef66 # initialize rs1
li x17, 0xbbfabfbf # initialize rs2
orn x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xab7966fa # initialize rs1
li x28, 0x89befc7c # initialize rs2
orn x26, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x08b4429b # initialize rs1
li x19, 0x4f4c3945 # initialize rs2
orn x27, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x768b6ea8 # initialize rs1
li x3, 0x7e7c0cb0 # initialize rs2
orn x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x7ad4b783 # initialize rs1
li x1, 0xe686c098 # initialize rs2
orn x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x07967f6b # initialize rs1
li x25, 0x8c2124ae # initialize rs2
orn x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xee4bdc06 # initialize rs1
li x8, 0x1b6941b9 # initialize rs2
orn x31, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x46dcd479 # initialize rs1
li x0, 0x236e147b # initialize rs2
orn x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x24, 0x71a4fce7 # initialize rs1
li x1, 0x9af30386 # initialize rs2
orn x1, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x6, 0x41a12274 # initialize rs1
li x2, 0x1bdab533 # initialize rs2
orn x2, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xa90627b8 # initialize rs1
li x3, 0x4d6c1ce5 # initialize rs2
orn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x9321c867 # initialize rs1
li x4, 0x8239928d # initialize rs2
orn x4, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xcedbf125 # initialize rs1
li x5, 0xa218171e # initialize rs2
orn x5, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x596c9e08 # initialize rs1
li x6, 0x926c3b30 # initialize rs2
orn x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0xf24876b1 # initialize rs1
li x7, 0x8cf00bd4 # initialize rs2
orn x7, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0x9932c65e # initialize rs1
li x8, 0xd8362a6b # initialize rs2
orn x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x26, 0x4d211a7e # initialize rs1
li x9, 0xbb245677 # initialize rs2
orn x9, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0x5e71d9d6 # initialize rs1
li x10, 0x1afb73b9 # initialize rs2
orn x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0xbe327c80 # initialize rs1
li x11, 0x7b5ad3c4 # initialize rs2
orn x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xcf0a7fbc # initialize rs1
li x12, 0x7ddc6b32 # initialize rs2
orn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0xa94e1ff3 # initialize rs1
li x13, 0xee9b92a6 # initialize rs2
orn x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0xc5f1d951 # initialize rs1
li x14, 0xc29fe778 # initialize rs2
orn x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x30, 0x25a44160 # initialize rs1
li x15, 0xa49748d4 # initialize rs2
orn x15, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0x23920858 # initialize rs1
li x16, 0x29d3cfa9 # initialize rs2
orn x16, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0x519136e3 # initialize rs1
li x17, 0x22e35a4f # initialize rs2
orn x17, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x11, 0x5cb2a816 # initialize rs1
li x18, 0x44dd6323 # initialize rs2
orn x18, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x12, 0x8cbcfee7 # initialize rs1
li x19, 0x458bd486 # initialize rs2
orn x19, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0x0af782cb # initialize rs1
li x20, 0x99091f91 # initialize rs2
orn x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x6, 0xebe0dcec # initialize rs1
li x21, 0x87ecdec2 # initialize rs2
orn x21, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x23, 0xc97bd85a # initialize rs1
li x22, 0x469124ed # initialize rs2
orn x22, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x0f72b85f # initialize rs1
li x23, 0x8fe131c6 # initialize rs2
orn x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x19, 0x224bb4a7 # initialize rs1
li x24, 0xa00b8d0f # initialize rs2
orn x24, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0x31aafbe3 # initialize rs1
li x25, 0xd9a8c62d # initialize rs2
orn x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x6, 0x3a777ec2 # initialize rs1
li x26, 0x0ef16821 # initialize rs2
orn x26, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xacca9a41 # initialize rs1
li x27, 0x2ac222ad # initialize rs2
orn x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xb53cabc2 # initialize rs1
li x28, 0x08aa1cf2 # initialize rs2
orn x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0xcb0a3b84 # initialize rs1
li x29, 0x6125e87f # initialize rs2
orn x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0xc71fdd20 # initialize rs1
li x30, 0x56955978 # initialize rs2
orn x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x23, 0xb101abbc # initialize rs1
li x31, 0x32f7c9e3 # initialize rs2
orn x31, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x336a687f # initialize rs1
li x0, 0x6caae38e # initialize rs2
orn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe79a68d0 # initialize rs1
li x1, 0xb5fd024f # initialize rs2
orn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x4b0d99a6 # initialize rs1
li x2, 0x43b136ff # initialize rs2
orn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4f534027 # initialize rs1
li x3, 0xe7bfbb07 # initialize rs2
orn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64413165 # initialize rs1
li x4, 0x56a54c00 # initialize rs2
orn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x92039a90 # initialize rs1
li x5, 0x3122b9a2 # initialize rs2
orn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x06a114fe # initialize rs1
li x6, 0x4d837705 # initialize rs2
orn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1d6199d2 # initialize rs1
li x7, 0xfbadeca4 # initialize rs2
orn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x853babe1 # initialize rs1
li x8, 0xde46e370 # initialize rs2
orn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf08f9456 # initialize rs1
li x9, 0x0abd90dc # initialize rs2
orn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7cde4bd7 # initialize rs1
li x10, 0xf356ddeb # initialize rs2
orn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x9d92c538 # initialize rs1
li x11, 0x35445da8 # initialize rs2
orn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x63752df0 # initialize rs1
li x12, 0xfc9560eb # initialize rs2
orn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x92bd0179 # initialize rs1
li x13, 0x18e21c58 # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x91661b79 # initialize rs1
li x14, 0x4ba26a83 # initialize rs2
orn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x59f8e93d # initialize rs1
li x15, 0xb67aab26 # initialize rs2
orn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x5727c33a # initialize rs1
li x16, 0x40e50534 # initialize rs2
orn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x5f242068 # initialize rs1
li x17, 0xe6f9488f # initialize rs2
orn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2eacebcb # initialize rs1
li x18, 0xc29cebc6 # initialize rs2
orn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x08d92acb # initialize rs1
li x19, 0x56802cb4 # initialize rs2
orn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfedc4ac7 # initialize rs1
li x20, 0xb318a44b # initialize rs2
orn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x01ece716 # initialize rs1
li x21, 0x7a0cc909 # initialize rs2
orn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x81bc468c # initialize rs1
li x22, 0x252e153b # initialize rs2
orn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x8d5cd3fe # initialize rs1
li x23, 0xd50290dc # initialize rs2
orn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb8bc982d # initialize rs1
li x24, 0x6a2477e4 # initialize rs2
orn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x01dcfa5c # initialize rs1
li x25, 0xb7b4fbbd # initialize rs2
orn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xda05faf0 # initialize rs1
li x26, 0x08eb3e21 # initialize rs2
orn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x59b61d66 # initialize rs1
li x27, 0x246d7dad # initialize rs2
orn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5a7839f8 # initialize rs1
li x28, 0x5a2801ad # initialize rs2
orn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4e41b487 # initialize rs1
li x29, 0xbfa93062 # initialize rs2
orn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xef247109 # initialize rs1
li x30, 0x01d42fb9 # initialize rs2
orn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7a618f01 # initialize rs1
li x31, 0x07d1b5cb # initialize rs2
orn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x26, x2 # perform first operation
orn x20, x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x21, x10 # perform first operation
orn x2, x8, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x28 # perform first operation
orn x19, x2, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x25, x20 # perform first operation
orn x25, x1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x18, x20 # perform first operation
orn x18, x24, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x30, x28 # perform first operation
orn x28, x11, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x1, x3 # perform first operation
orn x5, x26, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x16, x17 # perform first operation
orn x23, x5, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x22, x23 # perform first operation
orn x14, x30, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x16, x19 # perform first operation
orn x16, x7, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x2, x16 # perform first operation
orn x16, x23, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x24, x8 # perform first operation
orn x13, x10, x23 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,18128 #combined


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
