///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha256sum0.S
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
li x0, 0x84bb32b0 # initialize rs1
sha256sum0 x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x93b1ecc0 # initialize rs1
sha256sum0 x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfac6c6fe # initialize rs1
sha256sum0 x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x17388ee6 # initialize rs1
sha256sum0 x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc06e2a8d # initialize rs1
sha256sum0 x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5c4f3adc # initialize rs1
sha256sum0 x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8a178637 # initialize rs1
sha256sum0 x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xb146b378 # initialize rs1
sha256sum0 x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa181b362 # initialize rs1
sha256sum0 x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x99c6e94e # initialize rs1
sha256sum0 x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xad6c944d # initialize rs1
sha256sum0 x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x35926ae2 # initialize rs1
sha256sum0 x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x408feadb # initialize rs1
sha256sum0 x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x0cbb3684 # initialize rs1
sha256sum0 x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x15ec386b # initialize rs1
sha256sum0 x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x712b1f3c # initialize rs1
sha256sum0 x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x47f27ffc # initialize rs1
sha256sum0 x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3945bc76 # initialize rs1
sha256sum0 x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0144c433 # initialize rs1
sha256sum0 x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7d6626ee # initialize rs1
sha256sum0 x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4c449db4 # initialize rs1
sha256sum0 x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x62ca548e # initialize rs1
sha256sum0 x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x58d5d57f # initialize rs1
sha256sum0 x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4ba1557f # initialize rs1
sha256sum0 x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5ffa8cb2 # initialize rs1
sha256sum0 x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xad5373d9 # initialize rs1
sha256sum0 x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd01b4394 # initialize rs1
sha256sum0 x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x009523b8 # initialize rs1
sha256sum0 x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb8461b24 # initialize rs1
sha256sum0 x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9aaaf6ae # initialize rs1
sha256sum0 x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x653c7f2d # initialize rs1
sha256sum0 x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x754f1627 # initialize rs1
sha256sum0 x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x0113e847 # initialize rs1
sha256sum0 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0xae7f6374 # initialize rs1
sha256sum0 x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x79cbfe6a # initialize rs1
sha256sum0 x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x10, 0xca73f240 # initialize rs1
sha256sum0 x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x1ed29e45 # initialize rs1
sha256sum0 x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x04f183b8 # initialize rs1
sha256sum0 x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x36c0f9b7 # initialize rs1
sha256sum0 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xdb577cbd # initialize rs1
sha256sum0 x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0xfb2175a4 # initialize rs1
sha256sum0 x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7e72136b # initialize rs1
sha256sum0 x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0xfc5ac1c2 # initialize rs1
sha256sum0 x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0xd2c083f5 # initialize rs1
sha256sum0 x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x31a7b72f # initialize rs1
sha256sum0 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x0d2c073b # initialize rs1
sha256sum0 x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0xb7df1db6 # initialize rs1
sha256sum0 x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xc29dac56 # initialize rs1
sha256sum0 x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x7a2f3035 # initialize rs1
sha256sum0 x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x5eb9938c # initialize rs1
sha256sum0 x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0x36206ab6 # initialize rs1
sha256sum0 x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0x8885068c # initialize rs1
sha256sum0 x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x616110b4 # initialize rs1
sha256sum0 x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x48e406d1 # initialize rs1
sha256sum0 x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xc2562bd9 # initialize rs1
sha256sum0 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x4f20ccb6 # initialize rs1
sha256sum0 x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0x25a97a20 # initialize rs1
sha256sum0 x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0xaa191765 # initialize rs1
sha256sum0 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0xcf840f16 # initialize rs1
sha256sum0 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x2fd5ac9e # initialize rs1
sha256sum0 x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x604ba7ce # initialize rs1
sha256sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x2b30ca67 # initialize rs1
sha256sum0 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x2c796600 # initialize rs1
sha256sum0 x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0x4619e364 # initialize rs1
sha256sum0 x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x00000000 # initialize rs1
sha256sum0 x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
sha256sum0 x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x00000002 # initialize rs1
sha256sum0 x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x80000000 # initialize rs1
sha256sum0 x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
sha256sum0 x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
sha256sum0 x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
sha256sum0 x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
sha256sum0 x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0xfffffffe # initialize rs1
sha256sum0 x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
sha256sum0 x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
sha256sum0 x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
sha256sum0 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc288e196 # initialize rs1
sha256sum0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3f51938d # initialize rs1
sha256sum0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x0fd8a558 # initialize rs1
sha256sum0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc502096f # initialize rs1
sha256sum0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd2630d26 # initialize rs1
sha256sum0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbc7cd7e2 # initialize rs1
sha256sum0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfd4c9a45 # initialize rs1
sha256sum0 x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x87d5e6f0 # initialize rs1
sha256sum0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x70cb94a7 # initialize rs1
sha256sum0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd6b9108b # initialize rs1
sha256sum0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9709f29c # initialize rs1
sha256sum0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5b97f14a # initialize rs1
sha256sum0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa268d543 # initialize rs1
sha256sum0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1e8bcd31 # initialize rs1
sha256sum0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x92135315 # initialize rs1
sha256sum0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x55782bc4 # initialize rs1
sha256sum0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa30154b9 # initialize rs1
sha256sum0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xead970ec # initialize rs1
sha256sum0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdd10543d # initialize rs1
sha256sum0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7b397b59 # initialize rs1
sha256sum0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd30ef79c # initialize rs1
sha256sum0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x057c5d3c # initialize rs1
sha256sum0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa5bce28c # initialize rs1
sha256sum0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdd695781 # initialize rs1
sha256sum0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x117b24a3 # initialize rs1
sha256sum0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x18bd1757 # initialize rs1
sha256sum0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x698156c8 # initialize rs1
sha256sum0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf5e92cd7 # initialize rs1
sha256sum0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9c34d8ba # initialize rs1
sha256sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x95aedff4 # initialize rs1
sha256sum0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1345d260 # initialize rs1
sha256sum0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x50d5f0ed # initialize rs1
sha256sum0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x31, x15 # perform first operation
sha256sum0 x10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x13, x7 # perform first operation
sha256sum0 x20, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x15, x17 # perform first operation
sha256sum0 x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x19, x10 # perform first operation
sha256sum0 x28, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x24, x31 # perform first operation
sha256sum0 x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x18, x9 # perform first operation
sha256sum0 x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x28, x7 # perform first operation
sha256sum0 x29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x17, x7 # perform first operation
sha256sum0 x10, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x22, x11 # perform first operation
sha256sum0 x29, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x15, x12 # perform first operation
sha256sum0 x15, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x10, x26 # perform first operation
sha256sum0 x26, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x10, x7 # perform first operation
sha256sum0 x14, x3 # perform second (triggering) operation

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
