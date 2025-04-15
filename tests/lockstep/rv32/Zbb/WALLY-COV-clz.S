///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-clz.S
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
