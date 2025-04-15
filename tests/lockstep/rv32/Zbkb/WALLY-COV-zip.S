///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-zip.S
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
li x0, 0x48ce8245 # initialize rs1
zip x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x32da2483 # initialize rs1
zip x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x83cc1c0f # initialize rs1
zip x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1104b029 # initialize rs1
zip x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x38bf706e # initialize rs1
zip x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0xd999942c # initialize rs1
zip x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x03dda29c # initialize rs1
zip x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0461825e # initialize rs1
zip x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x34b7ecf9 # initialize rs1
zip x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8a7e194d # initialize rs1
zip x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4deb54eb # initialize rs1
zip x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x17dea07f # initialize rs1
zip x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xdb1a9d54 # initialize rs1
zip x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x376235d4 # initialize rs1
zip x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa362a277 # initialize rs1
zip x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xde8619f9 # initialize rs1
zip x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9d626ad3 # initialize rs1
zip x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xdb93f624 # initialize rs1
zip x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbe4197fc # initialize rs1
zip x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xfb4a11b2 # initialize rs1
zip x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6ca1f642 # initialize rs1
zip x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9294e87e # initialize rs1
zip x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2f642c58 # initialize rs1
zip x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xdfe3c589 # initialize rs1
zip x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0e639314 # initialize rs1
zip x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x050248ce # initialize rs1
zip x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4f61e30f # initialize rs1
zip x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1e29ddfa # initialize rs1
zip x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3d117259 # initialize rs1
zip x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0ece4f83 # initialize rs1
zip x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9283487e # initialize rs1
zip x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xdf0ce052 # initialize rs1
zip x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 124)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0xeee42cb8 # initialize rs1
zip x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x20f2638b # initialize rs1
zip x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x554e4736 # initialize rs1
zip x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0x8eba661c # initialize rs1
zip x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x12084002 # initialize rs1
zip x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0xf38a1dfd # initialize rs1
zip x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xb05dd437 # initialize rs1
zip x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xbc4c6a8e # initialize rs1
zip x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xbc02e842 # initialize rs1
zip x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0xa3a3b2ee # initialize rs1
zip x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0xcd3d8531 # initialize rs1
zip x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x6, 0xc968f5e3 # initialize rs1
zip x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xb7ca92ed # initialize rs1
zip x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x4f1feb58 # initialize rs1
zip x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x7dbc1097 # initialize rs1
zip x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0xf6d5c3b7 # initialize rs1
zip x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x8, 0x0051fa36 # initialize rs1
zip x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0xd6d4d110 # initialize rs1
zip x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0xb0d6f29e # initialize rs1
zip x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0xf7cc3882 # initialize rs1
zip x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0xbd170681 # initialize rs1
zip x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0x5a91493b # initialize rs1
zip x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0xb2051cdd # initialize rs1
zip x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x18465f1c # initialize rs1
zip x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0xf257711f # initialize rs1
zip x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x03ce0643 # initialize rs1
zip x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x3148ade0 # initialize rs1
zip x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x25, 0x73b6abbc # initialize rs1
zip x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x15f440dd # initialize rs1
zip x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0xf8edb4ce # initialize rs1
zip x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xdfe1cf8c # initialize rs1
zip x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xa1f1b58b # initialize rs1
zip x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
zip x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x00000001 # initialize rs1
zip x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
zip x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x13, 0x80000000 # initialize rs1
zip x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x16, 0x80000001 # initialize rs1
zip x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x23, 0x7fffffff # initialize rs1
zip x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
zip x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0xffffffff # initialize rs1
zip x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
zip x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x5bbc8872 # initialize rs1
zip x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
zip x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
zip x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x3a1a6f73 # initialize rs1
zip x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe4f7a101 # initialize rs1
zip x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf98e21f8 # initialize rs1
zip x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6bc59ef1 # initialize rs1
zip x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x21d75dab # initialize rs1
zip x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0679254d # initialize rs1
zip x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x09361fa1 # initialize rs1
zip x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbc92a6c1 # initialize rs1
zip x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdf7513d1 # initialize rs1
zip x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x436a0d95 # initialize rs1
zip x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf43fca54 # initialize rs1
zip x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9c2c1948 # initialize rs1
zip x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf52cf111 # initialize rs1
zip x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xace90a1d # initialize rs1
zip x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3182ebe0 # initialize rs1
zip x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb3720c2e # initialize rs1
zip x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf5998e3b # initialize rs1
zip x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x30ca1fba # initialize rs1
zip x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x381ea6c4 # initialize rs1
zip x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0e2ee9bf # initialize rs1
zip x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf67bb493 # initialize rs1
zip x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd5903985 # initialize rs1
zip x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xebf618b9 # initialize rs1
zip x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x30b6834a # initialize rs1
zip x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa2b7c4c7 # initialize rs1
zip x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x27df8c69 # initialize rs1
zip x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbf2b1263 # initialize rs1
zip x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1447d746 # initialize rs1
zip x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd266fce4 # initialize rs1
zip x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x372137f9 # initialize rs1
zip x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc67d4fb1 # initialize rs1
zip x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd34c351d # initialize rs1
zip x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x20, x15 # perform first operation
zip x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x5, x20 # perform first operation
zip x9, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x23, x26 # perform first operation
zip x30, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x8, x9 # perform first operation
zip x14, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x27, x28 # perform first operation
zip x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x6, x10 # perform first operation
zip x26, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x23, x3 # perform first operation
zip x26, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x9, x12 # perform first operation
zip x3, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x2, x1 # perform first operation
zip x29, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x24, x30 # perform first operation
zip x24, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x14, x16 # perform first operation
zip x16, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x1, x8 # perform first operation
zip x10, x5 # perform second (triggering) operation

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
