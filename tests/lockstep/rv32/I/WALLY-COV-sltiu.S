///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-sltiu.S
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
li x0, 0xe703df0d # initialize rs1
sltiu x12, x0, -2005 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa98259d3 # initialize rs1
sltiu x23, x1, -689 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa54c4a76 # initialize rs1
sltiu x6, x2, 145 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xffa51180 # initialize rs1
sltiu x15, x3, -1163 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc510a2e3 # initialize rs1
sltiu x14, x4, -247 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0a0f409d # initialize rs1
sltiu x31, x5, 360 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6b87f155 # initialize rs1
sltiu x8, x6, 1070 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdb312cb8 # initialize rs1
sltiu x14, x7, 1602 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd0451747 # initialize rs1
sltiu x15, x8, -1206 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x78f39a1a # initialize rs1
sltiu x21, x9, 1099 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x48b408aa # initialize rs1
sltiu x31, x10, 1222 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x24ce06fb # initialize rs1
sltiu x8, x11, 243 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xef129606 # initialize rs1
sltiu x26, x12, 930 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x94cad9d2 # initialize rs1
sltiu x11, x13, 1784 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa5aae4f4 # initialize rs1
sltiu x12, x14, -1741 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc0064fce # initialize rs1
sltiu x24, x15, -1002 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x8ee3b108 # initialize rs1
sltiu x12, x16, 625 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7ff6e6f3 # initialize rs1
sltiu x15, x17, -436 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2d5cf83f # initialize rs1
sltiu x14, x18, 1276 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb30d3c38 # initialize rs1
sltiu x28, x19, -1104 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x73087828 # initialize rs1
sltiu x25, x20, 1937 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8a88f04f # initialize rs1
sltiu x9, x21, 379 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2221ba6d # initialize rs1
sltiu x26, x22, -1469 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x63d98bdf # initialize rs1
sltiu x27, x23, 1316 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd1efba1e # initialize rs1
sltiu x25, x24, 1868 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcd06ea9c # initialize rs1
sltiu x17, x25, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbbfaca2b # initialize rs1
sltiu x23, x26, -820 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa74e9470 # initialize rs1
sltiu x10, x27, -189 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x8c6b6407 # initialize rs1
sltiu x25, x28, 200 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7b3b70ed # initialize rs1
sltiu x30, x29, 783 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x576659a0 # initialize rs1
sltiu x11, x30, 1109 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3d984117 # initialize rs1
sltiu x6, x31, 663 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 124)

# Testcase cp_rd (Test destination rd = x0)
li x2, 0x52494f9b # initialize rs1
sltiu x0, x2, -686 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x8572aacb # initialize rs1
sltiu x1, x24, -910 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x7bfe258b # initialize rs1
sltiu x2, x29, -1547 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x9304a98b # initialize rs1
sltiu x3, x6, -878 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x92fef087 # initialize rs1
sltiu x4, x24, -921 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x84aa926d # initialize rs1
sltiu x5, x30, -1137 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xd99b0962 # initialize rs1
sltiu x6, x7, -1179 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
li x31, 0xcd214c31 # initialize rs1
sltiu x7, x31, 1226 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x32d19f71 # initialize rs1
sltiu x8, x27, 1450 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x72198489 # initialize rs1
sltiu x9, x27, -840 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0xe053cfc9 # initialize rs1
sltiu x10, x27, -1664 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0x2ebf35ae # initialize rs1
sltiu x11, x21, 1596 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xa34c5f11 # initialize rs1
sltiu x12, x1, -1006 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x25, 0x87f4fe87 # initialize rs1
sltiu x13, x25, 1690 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x3, 0x3f265659 # initialize rs1
sltiu x14, x3, -780 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xb4ba91a7 # initialize rs1
sltiu x15, x15, 1037 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0xf1174328 # initialize rs1
sltiu x16, x18, 1157 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0x1e54187e # initialize rs1
sltiu x17, x31, 203 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x6f4cb895 # initialize rs1
sltiu x18, x14, -1899 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0xd3272428 # initialize rs1
sltiu x19, x15, -1513 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x17464a35 # initialize rs1
sltiu x20, x27, 1307 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x175dca8b # initialize rs1
sltiu x21, x21, -1135 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x7f5cad3d # initialize rs1
sltiu x22, x29, 345 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0xc5feb8ce # initialize rs1
sltiu x23, x16, -344 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0x12d797ab # initialize rs1
sltiu x24, x20, 2011 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x34da7873 # initialize rs1
sltiu x25, x7, -492 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x45c10291 # initialize rs1
sltiu x26, x18, 691 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x76fc9132 # initialize rs1
sltiu x27, x11, 1355 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0xc8795dd2 # initialize rs1
sltiu x28, x31, 1362 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x84859b0f # initialize rs1
sltiu x29, x29, -1254 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x9, 0xf6336162 # initialize rs1
sltiu x30, x9, 1959 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0x7df5b894 # initialize rs1
sltiu x31, x30, -441 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
sltiu x20, x30, 1247 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
sltiu x19, x3, 1041 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002 # initialize rs1
sltiu x21, x11, 1420 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x80000000 # initialize rs1
sltiu x25, x27, 1908 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x18, 0x80000001 # initialize rs1
sltiu x19, x18, 139 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x5, 0x7fffffff # initialize rs1
sltiu x25, x5, -1263 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs1
sltiu x23, x10, 1670 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xffffffff # initialize rs1
sltiu x17, x6, -863 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0xfffffffe # initialize rs1
sltiu x11, x22, -958 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
sltiu x18, x11, -964 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
sltiu x21, x2, 1104 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x16, 0x55555555 # initialize rs1
sltiu x21, x16, 596 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 300)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000 # initialize rs1
sltiu x10, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
sltiu x10, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 308)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000 # initialize rs1
sltiu x3, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000 # initialize rs1
sltiu x5, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 316)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000 # initialize rs1
sltiu x25, x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000 # initialize rs1
sltiu x17, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000 # initialize rs1
sltiu x27, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000 # initialize rs1
sltiu x30, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 332)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
sltiu x14, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000 # initialize rs1
sltiu x31, x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 340)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000 # initialize rs1
sltiu x13, x8, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rs1
sltiu x28, x13, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 348)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
sltiu x10, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000 # initialize rs1
sltiu x22, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 356)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
sltiu x10, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000 # initialize rs1
sltiu x14, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 364)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000 # initialize rs1
sltiu x26, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000 # initialize rs1
sltiu x24, x5, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 372)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000 # initialize rs1
sltiu x18, x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rs1
sltiu x25, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 380)

# Testcase cr_rs1_imm_corners
li x23, 0x00000001 # initialize rs1
sltiu x14, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cr_rs1_imm_corners
li x23, 0x00000001 # initialize rs1
sltiu x14, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 388)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
sltiu x23, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
sltiu x25, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 396)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rs1
sltiu x31, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 400)

# Testcase cr_rs1_imm_corners
li x17, 0x00000001 # initialize rs1
sltiu x14, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 404)

# Testcase cr_rs1_imm_corners
li x29, 0x00000001 # initialize rs1
sltiu x22, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
sltiu x3, x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 412)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
sltiu x20, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rs1
sltiu x26, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 420)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
sltiu x2, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cr_rs1_imm_corners
li x14, 0x00000001 # initialize rs1
sltiu x29, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 428)

# Testcase cr_rs1_imm_corners
li x29, 0x00000001 # initialize rs1
sltiu x27, x29, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
sltiu x13, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

# Testcase cr_rs1_imm_corners
li x17, 0x00000001 # initialize rs1
sltiu x27, x17, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 440)

# Testcase cr_rs1_imm_corners
li x26, 0x00000001 # initialize rs1
sltiu x28, x26, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 444)

# Testcase cr_rs1_imm_corners
li x26, 0x00000001 # initialize rs1
sltiu x3, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cr_rs1_imm_corners
li x9, 0x00000001 # initialize rs1
sltiu x23, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 452)

# Testcase cr_rs1_imm_corners
li x17, 0x00000001 # initialize rs1
sltiu x22, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cr_rs1_imm_corners
li x3, 0x00000001 # initialize rs1
sltiu x26, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 460)

# Testcase cr_rs1_imm_corners
li x18, 0x00000002 # initialize rs1
sltiu x6, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002 # initialize rs1
sltiu x15, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 468)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002 # initialize rs1
sltiu x19, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cr_rs1_imm_corners
li x28, 0x00000002 # initialize rs1
sltiu x10, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 476)

# Testcase cr_rs1_imm_corners
li x18, 0x00000002 # initialize rs1
sltiu x31, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 480)

# Testcase cr_rs1_imm_corners
li x28, 0x00000002 # initialize rs1
sltiu x7, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 484)

# Testcase cr_rs1_imm_corners
li x6, 0x00000002 # initialize rs1
sltiu x3, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 488)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
sltiu x24, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 492)

# Testcase cr_rs1_imm_corners
li x11, 0x00000002 # initialize rs1
sltiu x2, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rs1
sltiu x11, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 500)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002 # initialize rs1
sltiu x10, x8, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cr_rs1_imm_corners
li x19, 0x00000002 # initialize rs1
sltiu x10, x19, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 508)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002 # initialize rs1
sltiu x22, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cr_rs1_imm_corners
li x21, 0x00000002 # initialize rs1
sltiu x11, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 516)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rs1
sltiu x27, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cr_rs1_imm_corners
li x23, 0x00000002 # initialize rs1
sltiu x18, x23, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_imm_corners
li x5, 0x00000002 # initialize rs1
sltiu x3, x5, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rs1
sltiu x27, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 532)

# Testcase cr_rs1_imm_corners
li x2, 0x00000002 # initialize rs1
sltiu x10, x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_imm_corners
li x31, 0x00000002 # initialize rs1
sltiu x11, x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 540)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
sltiu x23, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 544)

# Testcase cr_rs1_imm_corners
li x29, 0x80000000 # initialize rs1
sltiu x31, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 548)

# Testcase cr_rs1_imm_corners
li x28, 0x80000000 # initialize rs1
sltiu x24, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_imm_corners
li x29, 0x80000000 # initialize rs1
sltiu x28, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 556)

# Testcase cr_rs1_imm_corners
li x19, 0x80000000 # initialize rs1
sltiu x25, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cr_rs1_imm_corners
li x30, 0x80000000 # initialize rs1
sltiu x25, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 564)

# Testcase cr_rs1_imm_corners
li x12, 0x80000000 # initialize rs1
sltiu x31, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000 # initialize rs1
sltiu x14, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 572)

# Testcase cr_rs1_imm_corners
li x22, 0x80000000 # initialize rs1
sltiu x29, x22, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 576)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
sltiu x22, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 580)

# Testcase cr_rs1_imm_corners
li x31, 0x80000000 # initialize rs1
sltiu x21, x31, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_imm_corners
li x6, 0x80000000 # initialize rs1
sltiu x16, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_imm_corners
li x31, 0x80000000 # initialize rs1
sltiu x6, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_imm_corners
li x18, 0x80000000 # initialize rs1
sltiu x5, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 596)

# Testcase cr_rs1_imm_corners
li x2, 0x80000000 # initialize rs1
sltiu x31, x2, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cr_rs1_imm_corners
li x15, 0x80000000 # initialize rs1
sltiu x6, x15, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 604)

# Testcase cr_rs1_imm_corners
li x7, 0x80000000 # initialize rs1
sltiu x5, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_imm_corners
li x21, 0x80000000 # initialize rs1
sltiu x10, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 612)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
sltiu x21, x3, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_imm_corners
li x14, 0x80000000 # initialize rs1
sltiu x26, x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 620)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001 # initialize rs1
sltiu x15, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_imm_corners
li x2, 0x80000001 # initialize rs1
sltiu x27, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

# Testcase cr_rs1_imm_corners
li x25, 0x80000001 # initialize rs1
sltiu x6, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_imm_corners
li x29, 0x80000001 # initialize rs1
sltiu x13, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 636)

# Testcase cr_rs1_imm_corners
li x24, 0x80000001 # initialize rs1
sltiu x15, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_imm_corners
li x19, 0x80000001 # initialize rs1
sltiu x11, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 644)

# Testcase cr_rs1_imm_corners
li x6, 0x80000001 # initialize rs1
sltiu x20, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 648)

# Testcase cr_rs1_imm_corners
li x2, 0x80000001 # initialize rs1
sltiu x12, x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 652)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001 # initialize rs1
sltiu x19, x28, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_imm_corners
li x16, 0x80000001 # initialize rs1
sltiu x18, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 660)

# Testcase cr_rs1_imm_corners
li x28, 0x80000001 # initialize rs1
sltiu x19, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
sltiu x10, x26, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 668)

# Testcase cr_rs1_imm_corners
li x27, 0x80000001 # initialize rs1
sltiu x9, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 672)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
sltiu x27, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
sltiu x31, x26, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_imm_corners
li x23, 0x80000001 # initialize rs1
sltiu x9, x23, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 684)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
sltiu x8, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cr_rs1_imm_corners
li x21, 0x80000001 # initialize rs1
sltiu x12, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 692)

# Testcase cr_rs1_imm_corners
li x16, 0x80000001 # initialize rs1
sltiu x21, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_imm_corners
li x1, 0x80000001 # initialize rs1
sltiu x14, x1, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 700)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffff # initialize rs1
sltiu x27, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffff # initialize rs1
sltiu x1, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 708)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
sltiu x26, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rs1
sltiu x20, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 716)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffff # initialize rs1
sltiu x20, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffff # initialize rs1
sltiu x8, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 724)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
sltiu x13, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 728)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffff # initialize rs1
sltiu x1, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 732)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffff # initialize rs1
sltiu x16, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 736)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffff # initialize rs1
sltiu x18, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 740)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
sltiu x6, x17, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 744)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffff # initialize rs1
sltiu x25, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 748)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffff # initialize rs1
sltiu x25, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 752)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffff # initialize rs1
sltiu x25, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 756)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
sltiu x23, x26, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 760)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffff # initialize rs1
sltiu x27, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 764)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffff # initialize rs1
sltiu x11, x9, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffff # initialize rs1
sltiu x23, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 772)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
sltiu x18, x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffff # initialize rs1
sltiu x27, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 780)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
sltiu x7, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffe # initialize rs1
sltiu x6, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 788)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffe # initialize rs1
sltiu x10, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 792)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffe # initialize rs1
sltiu x10, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 796)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffe # initialize rs1
sltiu x26, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe # initialize rs1
sltiu x10, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 804)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
sltiu x10, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffe # initialize rs1
sltiu x6, x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 812)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffe # initialize rs1
sltiu x9, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe # initialize rs1
sltiu x21, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 820)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffe # initialize rs1
sltiu x29, x18, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffe # initialize rs1
sltiu x19, x3, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe # initialize rs1
sltiu x23, x7, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
sltiu x30, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 836)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffe # initialize rs1
sltiu x30, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffe # initialize rs1
sltiu x15, x7, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 844)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe # initialize rs1
sltiu x21, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
sltiu x28, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 852)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffe # initialize rs1
sltiu x10, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffe # initialize rs1
sltiu x24, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 860)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffff # initialize rs1
sltiu x31, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff # initialize rs1
sltiu x27, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 868)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffff # initialize rs1
sltiu x11, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffff # initialize rs1
sltiu x26, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 876)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffff # initialize rs1
sltiu x30, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rs1
sltiu x25, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 884)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rs1
sltiu x28, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_imm_corners
li x23, 0xffffffff # initialize rs1
sltiu x18, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffff # initialize rs1
sltiu x13, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff # initialize rs1
sltiu x17, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 900)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffff # initialize rs1
sltiu x7, x24, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffff # initialize rs1
sltiu x12, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 908)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffff # initialize rs1
sltiu x13, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
sltiu x8, x30, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 916)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff # initialize rs1
sltiu x25, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffff # initialize rs1
sltiu x30, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 924)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffff # initialize rs1
sltiu x29, x31, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 928)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
sltiu x30, x18, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 932)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffff # initialize rs1
sltiu x1, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff # initialize rs1
sltiu x13, x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 940)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rs1
sltiu x13, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffe # initialize rs1
sltiu x29, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 948)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
sltiu x14, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 952)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffe # initialize rs1
sltiu x26, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 956)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
sltiu x25, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffe # initialize rs1
sltiu x28, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 964)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffe # initialize rs1
sltiu x27, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
sltiu x21, x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 972)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rs1
sltiu x24, x13, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffe # initialize rs1
sltiu x13, x22, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 980)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffe # initialize rs1
sltiu x30, x7, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffe # initialize rs1
sltiu x6, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 988)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffe # initialize rs1
sltiu x1, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffe # initialize rs1
sltiu x10, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 996)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffe # initialize rs1
sltiu x20, x28, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
sltiu x25, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1004)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffe # initialize rs1
sltiu x18, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffe # initialize rs1
sltiu x10, x24, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1012)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffe # initialize rs1
sltiu x31, x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffe # initialize rs1
sltiu x6, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1020)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc8872 # initialize rs1
sltiu x19, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872 # initialize rs1
sltiu x27, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1028)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872 # initialize rs1
sltiu x16, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc8872 # initialize rs1
sltiu x14, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1036)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc8872 # initialize rs1
sltiu x15, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc8872 # initialize rs1
sltiu x24, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1044)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc8872 # initialize rs1
sltiu x17, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872 # initialize rs1
sltiu x10, x21, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1052)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872 # initialize rs1
sltiu x16, x12, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc8872 # initialize rs1
sltiu x15, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1060)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc8872 # initialize rs1
sltiu x11, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc8872 # initialize rs1
sltiu x17, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1068)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872 # initialize rs1
sltiu x14, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1072)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc8872 # initialize rs1
sltiu x12, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1076)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc8872 # initialize rs1
sltiu x10, x2, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1080)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
sltiu x13, x15, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1084)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc8872 # initialize rs1
sltiu x16, x20, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1088)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc8872 # initialize rs1
sltiu x12, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1092)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc8872 # initialize rs1
sltiu x3, x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
sltiu x24, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1100)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rs1
sltiu x25, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_imm_corners
li x23, 0xaaaaaaaa # initialize rs1
sltiu x2, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1108)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaa # initialize rs1
sltiu x9, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaa # initialize rs1
sltiu x23, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1116)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
sltiu x30, x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaa # initialize rs1
sltiu x26, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1124)

# Testcase cr_rs1_imm_corners
li x5, 0xaaaaaaaa # initialize rs1
sltiu x7, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1128)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
sltiu x7, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1132)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaa # initialize rs1
sltiu x12, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rs1
sltiu x17, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1140)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaa # initialize rs1
sltiu x10, x7, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
sltiu x19, x18, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1148)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaa # initialize rs1
sltiu x1, x16, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1152)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
sltiu x6, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1156)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaa # initialize rs1
sltiu x16, x8, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaa # initialize rs1
sltiu x31, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1164)

# Testcase cr_rs1_imm_corners
li x22, 0xaaaaaaaa # initialize rs1
sltiu x29, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaa # initialize rs1
sltiu x14, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1172)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaa # initialize rs1
sltiu x28, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaa # initialize rs1
sltiu x26, x30, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1180)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
sltiu x6, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1184)

# Testcase cr_rs1_imm_corners
li x15, 0x55555555 # initialize rs1
sltiu x16, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1188)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555 # initialize rs1
sltiu x11, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1192)

# Testcase cr_rs1_imm_corners
li x18, 0x55555555 # initialize rs1
sltiu x3, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cr_rs1_imm_corners
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
sltiu x13, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1204)

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rs1
sltiu x6, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
sltiu x31, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1212)

# Testcase cr_rs1_imm_corners
li x12, 0x55555555 # initialize rs1
sltiu x23, x12, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1216)

# Testcase cr_rs1_imm_corners
li x31, 0x55555555 # initialize rs1
sltiu x6, x31, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1220)

# Testcase cr_rs1_imm_corners
li x1, 0x55555555 # initialize rs1
sltiu x11, x1, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
sltiu x7, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1228)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
sltiu x24, x20, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cr_rs1_imm_corners
li x21, 0x55555555 # initialize rs1
sltiu x30, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1236)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
sltiu x11, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
sltiu x7, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1244)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
sltiu x3, x20, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_imm_corners
li x19, 0x55555555 # initialize rs1
sltiu x12, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1252)

# Testcase cr_rs1_imm_corners
li x5, 0x55555555 # initialize rs1
sltiu x9, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
sltiu x25, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd91b6375 # initialize rs1
sltiu x0, x0, 830 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x632a5ccd # initialize rs1
sltiu x1, x1, 1114 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x008e17b5 # initialize rs1
sltiu x2, x2, -1986 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3059a501 # initialize rs1
sltiu x3, x3, -1207 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8fc9121d # initialize rs1
sltiu x4, x4, 1227 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x008c9740 # initialize rs1
sltiu x5, x5, 749 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x95976a3a # initialize rs1
sltiu x6, x6, -890 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x513afbcd # initialize rs1
sltiu x7, x7, -1184 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfce3a75c # initialize rs1
sltiu x8, x8, -373 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x466195bb # initialize rs1
sltiu x9, x9, 1226 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc58b4017 # initialize rs1
sltiu x10, x10, -1304 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x807df05c # initialize rs1
sltiu x11, x11, -1263 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd024dd68 # initialize rs1
sltiu x12, x12, 1886 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x25c62159 # initialize rs1
sltiu x13, x13, 1755 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x25eec24f # initialize rs1
sltiu x14, x14, 1980 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x426e7e3b # initialize rs1
sltiu x15, x15, 1075 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc97fb499 # initialize rs1
sltiu x16, x16, 335 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x031f33a4 # initialize rs1
sltiu x17, x17, 1373 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5b9eb1fa # initialize rs1
sltiu x18, x18, -803 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3e7cb7a7 # initialize rs1
sltiu x19, x19, 1944 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3a532637 # initialize rs1
sltiu x20, x20, 1006 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf38c3725 # initialize rs1
sltiu x21, x21, -69 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x31aebc8a # initialize rs1
sltiu x22, x22, 1608 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa70119af # initialize rs1
sltiu x23, x23, -954 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe5c463e8 # initialize rs1
sltiu x24, x24, -883 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa7b25954 # initialize rs1
sltiu x25, x25, 793 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0c649b26 # initialize rs1
sltiu x26, x26, 1231 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9a647045 # initialize rs1
sltiu x27, x27, 323 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfa7e8e5f # initialize rs1
sltiu x28, x28, 511 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc241f6c7 # initialize rs1
sltiu x29, x29, 1499 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4bd66f0b # initialize rs1
sltiu x30, x30, -1815 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x98e95bb1 # initialize rs1
sltiu x31, x31, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1388)

# Testcase cp_imm_corners
li x21, 0xa717f481 # initialize rs1
sltiu x22, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1392)

# Testcase cp_imm_corners
li x21, 0x6486b71c # initialize rs1
sltiu x3, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1396)

# Testcase cp_imm_corners
li x5, 0x255029cd # initialize rs1
sltiu x10, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

# Testcase cp_imm_corners
li x1, 0xc1a89397 # initialize rs1
sltiu x16, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1404)

# Testcase cp_imm_corners
li x11, 0x2e2eecde # initialize rs1
sltiu x24, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cp_imm_corners
li x30, 0x1aeb269b # initialize rs1
sltiu x28, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1412)

# Testcase cp_imm_corners
li x13, 0x5aa82fd9 # initialize rs1
sltiu x27, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cp_imm_corners
li x16, 0x2566550c # initialize rs1
sltiu x6, x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1420)

# Testcase cp_imm_corners
li x9, 0x25f70b83 # initialize rs1
sltiu x11, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cp_imm_corners
li x16, 0xb1353e43 # initialize rs1
sltiu x23, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1428)

# Testcase cp_imm_corners
li x5, 0x81551f8c # initialize rs1
sltiu x12, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cp_imm_corners
li x3, 0xed68d42f # initialize rs1
sltiu x5, x3, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1436)

# Testcase cp_imm_corners
li x6, 0x8838222b # initialize rs1
sltiu x27, x6, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1440)

# Testcase cp_imm_corners
li x6, 0x9f15dbe3 # initialize rs1
sltiu x23, x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1444)

# Testcase cp_imm_corners
li x31, 0x17cd22d4 # initialize rs1
sltiu x8, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cp_imm_corners
li x30, 0x629e1f3a # initialize rs1
sltiu x2, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1452)

# Testcase cp_imm_corners
li x22, 0xc5f7da8d # initialize rs1
sltiu x25, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1456)

# Testcase cp_imm_corners
li x23, 0x3ad7e86a # initialize rs1
sltiu x8, x23, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1460)

# Testcase cp_imm_corners
li x21, 0x310662c3 # initialize rs1
sltiu x30, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cp_imm_corners
li x12, 0x8b9f9752 # initialize rs1
sltiu x31, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1468)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x30, x5 # perform first operation
sltiu x26, x28, 1916 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x21, x7 # perform first operation
sltiu x17, x29, -1835 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x30, x29 # perform first operation
sltiu x16, x31, 1923 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x27, x29 # perform first operation
sltiu x31, x20, 238 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x31, x5 # perform first operation
sltiu x5, x27, -1990 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x16, x14 # perform first operation
sltiu x16, x25, -600 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x16, x14 # perform first operation
sltiu x30, x31, -1078 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x3, x15 # perform first operation
sltiu x10, x25, 1071 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x1, x27 # perform first operation
sltiu x13, x15, 1417 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x24, x11 # perform first operation
sltiu x24, x7, 1525 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x12, x22 # perform first operation
sltiu x22, x10, 436 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x3, x5 # perform first operation
sltiu x18, x27, -546 # perform second (triggering) operation

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
