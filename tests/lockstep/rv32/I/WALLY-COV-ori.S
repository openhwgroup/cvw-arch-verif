///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-ori.S
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
li x0, 0xb53eb29f # initialize rs1
ori x31, x0, 403 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3dec1396 # initialize rs1
ori x6, x1, 2021 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x73ddec82 # initialize rs1
ori x30, x2, 634 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x96515377 # initialize rs1
ori x1, x3, 1548 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1c527747 # initialize rs1
ori x10, x4, -1131 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2cd2f28b # initialize rs1
ori x23, x5, 1389 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x27b6cfe5 # initialize rs1
ori x27, x6, -1628 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaf22fe21 # initialize rs1
ori x16, x7, -627 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe76a5546 # initialize rs1
ori x13, x8, -468 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6ddcbe31 # initialize rs1
ori x10, x9, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x89b8cb13 # initialize rs1
ori x26, x10, 1101 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x865ff5ab # initialize rs1
ori x14, x11, 1257 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x573f1235 # initialize rs1
ori x13, x12, -1929 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4278c05f # initialize rs1
ori x20, x13, 1778 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xd8839b47 # initialize rs1
ori x6, x14, -1964 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf4c25f85 # initialize rs1
ori x29, x15, 89 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x356c8125 # initialize rs1
ori x29, x16, -562 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x45c52bd8 # initialize rs1
ori x25, x17, -455 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x71c4fb0a # initialize rs1
ori x28, x18, -901 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x228c08a8 # initialize rs1
ori x6, x19, 284 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4fae5149 # initialize rs1
ori x18, x20, 1542 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x15467450 # initialize rs1
ori x10, x21, 403 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xeb4236c0 # initialize rs1
ori x7, x22, -376 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf43ac7b3 # initialize rs1
ori x30, x23, -1157 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd6c69701 # initialize rs1
ori x16, x24, 870 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x0cfc05bc # initialize rs1
ori x3, x25, -160 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x48972452 # initialize rs1
ori x18, x26, -248 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe3e550ab # initialize rs1
ori x5, x27, -1649 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xbdf5b203 # initialize rs1
ori x2, x28, 1104 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x77ff3b4c # initialize rs1
ori x20, x29, -1030 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x72900e1a # initialize rs1
ori x10, x30, -65 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x28fc4f90 # initialize rs1
ori x25, x31, 186 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 124)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0x6ee5d76a # initialize rs1
ori x0, x7, 807 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x1e2dce6a # initialize rs1
ori x1, x16, 87 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x32b65d09 # initialize rs1
ori x2, x15, -1091 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0xc447df94 # initialize rs1
ori x3, x24, -1112 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x758e0cb0 # initialize rs1
ori x4, x24, 1041 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x8dfd2e66 # initialize rs1
ori x5, x18, -314 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0xc083926e # initialize rs1
ori x6, x18, -187 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xcb529664 # initialize rs1
ori x7, x30, 1841 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0x42a657e3 # initialize rs1
ori x8, x22, 1555 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x22203d85 # initialize rs1
ori x9, x14, 497 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0xcfe1fa20 # initialize rs1
ori x10, x5, 711 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0xc8950dda # initialize rs1
ori x11, x5, -954 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x4d5a595a # initialize rs1
ori x12, x3, 859 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x2c114df3 # initialize rs1
ori x13, x10, 1914 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x2dba6e2a # initialize rs1
ori x14, x26, 590 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x6a51e758 # initialize rs1
ori x15, x13, -1452 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0xece10aa9 # initialize rs1
ori x16, x13, -1348 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x8, 0xcdb5fe57 # initialize rs1
ori x17, x8, 736 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0xc5b0b375 # initialize rs1
ori x18, x1, 206 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0xdc722cef # initialize rs1
ori x19, x28, -68 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x2ac69c31 # initialize rs1
ori x20, x2, 1534 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xccffa792 # initialize rs1
ori x21, x30, -1927 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x6a1b834b # initialize rs1
ori x22, x20, -269 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0xccf7a79d # initialize rs1
ori x23, x19, -650 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x77e404d8 # initialize rs1
ori x24, x13, -1066 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0xdb6c7913 # initialize rs1
ori x25, x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x1e9c4e49 # initialize rs1
ori x26, x5, 1994 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0x8b6f4a7c # initialize rs1
ori x27, x30, 1110 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0x057559b9 # initialize rs1
ori x28, x24, 1223 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xcea2ff64 # initialize rs1
ori x29, x26, -509 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x961b18b5 # initialize rs1
ori x30, x3, -1619 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xaf3d5f89 # initialize rs1
ori x31, x26, -2007 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x00000000 # initialize rs1
ori x30, x23, -65 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x00000001 # initialize rs1
ori x21, x8, 1615 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x00000002 # initialize rs1
ori x20, x17, -1606 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x19, 0x80000000 # initialize rs1
ori x8, x19, 167 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x5, 0x80000001 # initialize rs1
ori x30, x5, 393 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
ori x15, x17, -1847 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
ori x18, x31, 589 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0xffffffff # initialize rs1
ori x3, x1, 1025 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
ori x14, x9, -208 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
ori x1, x5, -675 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x26, 0xaaaaaaaa # initialize rs1
ori x19, x26, 1904 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x22, 0x55555555 # initialize rs1
ori x23, x22, -572 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 300)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rs1
ori x19, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
ori x22, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 308)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000 # initialize rs1
ori x20, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000 # initialize rs1
ori x27, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 316)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000 # initialize rs1
ori x12, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000 # initialize rs1
ori x29, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 324)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000 # initialize rs1
ori x5, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
ori x3, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 332)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
ori x9, x31, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000 # initialize rs1
ori x24, x31, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 340)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
ori x8, x29, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000 # initialize rs1
ori x14, x2, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 348)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
ori x20, x29, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
ori x21, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 356)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000 # initialize rs1
ori x12, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000 # initialize rs1
ori x2, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 364)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000 # initialize rs1
ori x23, x14, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000 # initialize rs1
ori x16, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 372)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000 # initialize rs1
ori x6, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000 # initialize rs1
ori x17, x8, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 380)

# Testcase cr_rs1_imm_corners
li x20, 0x00000001 # initialize rs1
ori x15, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
ori x12, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 388)

# Testcase cr_rs1_imm_corners
li x3, 0x00000001 # initialize rs1
ori x28, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cr_rs1_imm_corners
li x21, 0x00000001 # initialize rs1
ori x12, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 396)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
ori x2, x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rs1
ori x28, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 404)

# Testcase cr_rs1_imm_corners
li x27, 0x00000001 # initialize rs1
ori x5, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rs1
ori x8, x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 412)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001 # initialize rs1
ori x8, x7, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cr_rs1_imm_corners
li x15, 0x00000001 # initialize rs1
ori x2, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 420)

# Testcase cr_rs1_imm_corners
li x19, 0x00000001 # initialize rs1
ori x25, x19, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_imm_corners
li x7, 0x00000001 # initialize rs1
ori x21, x7, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 428)

# Testcase cr_rs1_imm_corners
li x16, 0x00000001 # initialize rs1
ori x8, x16, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rs1
ori x14, x13, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 436)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
ori x25, x28, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cr_rs1_imm_corners
li x2, 0x00000001 # initialize rs1
ori x9, x2, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 444)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
ori x13, x5, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 448)

# Testcase cr_rs1_imm_corners
li x5, 0x00000001 # initialize rs1
ori x17, x5, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 452)

# Testcase cr_rs1_imm_corners
li x12, 0x00000001 # initialize rs1
ori x15, x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_imm_corners
li x28, 0x00000001 # initialize rs1
ori x25, x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 460)

# Testcase cr_rs1_imm_corners
li x3, 0x00000002 # initialize rs1
ori x30, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cr_rs1_imm_corners
li x5, 0x00000002 # initialize rs1
ori x13, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 468)

# Testcase cr_rs1_imm_corners
li x26, 0x00000002 # initialize rs1
ori x12, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cr_rs1_imm_corners
li x21, 0x00000002 # initialize rs1
ori x23, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 476)

# Testcase cr_rs1_imm_corners
li x7, 0x00000002 # initialize rs1
ori x24, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rs1
ori x3, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_imm_corners
li x10, 0x00000002 # initialize rs1
ori x27, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cr_rs1_imm_corners
li x12, 0x00000002 # initialize rs1
ori x1, x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_imm_corners
li x27, 0x00000002 # initialize rs1
ori x14, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
ori x3, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 500)

# Testcase cr_rs1_imm_corners
li x1, 0x00000002 # initialize rs1
ori x5, x1, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 504)

# Testcase cr_rs1_imm_corners
li x15, 0x00000002 # initialize rs1
ori x19, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 508)

# Testcase cr_rs1_imm_corners
li x29, 0x00000002 # initialize rs1
ori x8, x29, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cr_rs1_imm_corners
li x16, 0x00000002 # initialize rs1
ori x2, x16, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 516)

# Testcase cr_rs1_imm_corners
li x31, 0x00000002 # initialize rs1
ori x12, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cr_rs1_imm_corners
li x24, 0x00000002 # initialize rs1
ori x29, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 524)

# Testcase cr_rs1_imm_corners
li x17, 0x00000002 # initialize rs1
ori x20, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cr_rs1_imm_corners
li x25, 0x00000002 # initialize rs1
ori x27, x25, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 532)

# Testcase cr_rs1_imm_corners
li x8, 0x00000002 # initialize rs1
ori x24, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cr_rs1_imm_corners
li x21, 0x00000002 # initialize rs1
ori x11, x21, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 540)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rs1
ori x1, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rs1
ori x21, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 548)

# Testcase cr_rs1_imm_corners
li x5, 0x80000000 # initialize rs1
ori x10, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cr_rs1_imm_corners
li x11, 0x80000000 # initialize rs1
ori x9, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 556)

# Testcase cr_rs1_imm_corners
li x26, 0x80000000 # initialize rs1
ori x5, x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_imm_corners
li x19, 0x80000000 # initialize rs1
ori x18, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 564)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000 # initialize rs1
ori x9, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_imm_corners
li x31, 0x80000000 # initialize rs1
ori x27, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 572)

# Testcase cr_rs1_imm_corners
li x29, 0x80000000 # initialize rs1
ori x2, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_imm_corners
li x7, 0x80000000 # initialize rs1
ori x12, x7, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 580)

# Testcase cr_rs1_imm_corners
li x20, 0x80000000 # initialize rs1
ori x12, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cr_rs1_imm_corners
li x10, 0x80000000 # initialize rs1
ori x17, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 588)

# Testcase cr_rs1_imm_corners
li x2, 0x80000000 # initialize rs1
ori x3, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cr_rs1_imm_corners
li x28, 0x80000000 # initialize rs1
ori x13, x28, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_imm_corners
li x3, 0x80000000 # initialize rs1
ori x7, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_imm_corners
li x8, 0x80000000 # initialize rs1
ori x28, x8, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 604)

# Testcase cr_rs1_imm_corners
li x17, 0x80000000 # initialize rs1
ori x12, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cr_rs1_imm_corners
li x9, 0x80000000 # initialize rs1
ori x11, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cr_rs1_imm_corners
li x24, 0x80000000 # initialize rs1
ori x7, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cr_rs1_imm_corners
li x19, 0x80000000 # initialize rs1
ori x17, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 620)

# Testcase cr_rs1_imm_corners
li x3, 0x80000001 # initialize rs1
ori x30, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_imm_corners
li x26, 0x80000001 # initialize rs1
ori x9, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 628)

# Testcase cr_rs1_imm_corners
li x6, 0x80000001 # initialize rs1
ori x14, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_imm_corners
li x29, 0x80000001 # initialize rs1
ori x10, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001 # initialize rs1
ori x13, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cr_rs1_imm_corners
li x17, 0x80000001 # initialize rs1
ori x10, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 644)

# Testcase cr_rs1_imm_corners
li x2, 0x80000001 # initialize rs1
ori x16, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 648)

# Testcase cr_rs1_imm_corners
li x10, 0x80000001 # initialize rs1
ori x8, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 652)

# Testcase cr_rs1_imm_corners
li x9, 0x80000001 # initialize rs1
ori x31, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 656)

# Testcase cr_rs1_imm_corners
li x20, 0x80000001 # initialize rs1
ori x25, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cr_rs1_imm_corners
li x3, 0x80000001 # initialize rs1
ori x24, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_imm_corners
li x27, 0x80000001 # initialize rs1
ori x6, x27, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 668)

# Testcase cr_rs1_imm_corners
li x19, 0x80000001 # initialize rs1
ori x1, x19, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_imm_corners
li x19, 0x80000001 # initialize rs1
ori x26, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 676)

# Testcase cr_rs1_imm_corners
li x7, 0x80000001 # initialize rs1
ori x16, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 680)

# Testcase cr_rs1_imm_corners
li x25, 0x80000001 # initialize rs1
ori x17, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 684)

# Testcase cr_rs1_imm_corners
li x2, 0x80000001 # initialize rs1
ori x28, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_imm_corners
li x19, 0x80000001 # initialize rs1
ori x13, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 692)

# Testcase cr_rs1_imm_corners
li x11, 0x80000001 # initialize rs1
ori x12, x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cr_rs1_imm_corners
li x12, 0x80000001 # initialize rs1
ori x11, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 700)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffff # initialize rs1
ori x11, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffff # initialize rs1
ori x20, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 708)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffff # initialize rs1
ori x6, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 712)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffff # initialize rs1
ori x8, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffff # initialize rs1
ori x14, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffff # initialize rs1
ori x29, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 724)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rs1
ori x18, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffff # initialize rs1
ori x29, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 732)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffff # initialize rs1
ori x15, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffff # initialize rs1
ori x18, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 740)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffff # initialize rs1
ori x21, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffff # initialize rs1
ori x28, x27, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffff # initialize rs1
ori x17, x30, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffff # initialize rs1
ori x22, x8, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 756)

# Testcase cr_rs1_imm_corners
li x28, 0x7fffffff # initialize rs1
ori x16, x28, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffff # initialize rs1
ori x7, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 764)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rs1
ori x1, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_imm_corners
li x28, 0x7fffffff # initialize rs1
ori x17, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 772)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffff # initialize rs1
ori x31, x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 776)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffff # initialize rs1
ori x26, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 780)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffe # initialize rs1
ori x10, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffe # initialize rs1
ori x24, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 788)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffe # initialize rs1
ori x18, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffe # initialize rs1
ori x11, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 796)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
ori x7, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffe # initialize rs1
ori x8, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 804)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffe # initialize rs1
ori x29, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffe # initialize rs1
ori x26, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 812)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffe # initialize rs1
ori x12, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffe # initialize rs1
ori x18, x24, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 820)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
ori x25, x19, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe # initialize rs1
ori x19, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffe # initialize rs1
ori x30, x12, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffe # initialize rs1
ori x12, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 836)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffe # initialize rs1
ori x31, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffe # initialize rs1
ori x7, x19, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 844)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffe # initialize rs1
ori x16, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 848)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rs1
ori x25, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 852)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffe # initialize rs1
ori x26, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffe # initialize rs1
ori x5, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 860)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffff # initialize rs1
ori x25, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffff # initialize rs1
ori x16, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffff # initialize rs1
ori x29, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffff # initialize rs1
ori x12, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
ori x30, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffff # initialize rs1
ori x5, x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 884)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffff # initialize rs1
ori x18, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 888)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffff # initialize rs1
ori x11, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 892)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
ori x18, x12, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffff # initialize rs1
ori x12, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 900)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffff # initialize rs1
ori x15, x26, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffff # initialize rs1
ori x26, x27, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 908)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffff # initialize rs1
ori x9, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffff # initialize rs1
ori x3, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 916)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffff # initialize rs1
ori x3, x12, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
ori x7, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 924)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffff # initialize rs1
ori x21, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 928)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffff # initialize rs1
ori x30, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 932)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffff # initialize rs1
ori x8, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cr_rs1_imm_corners
li x23, 0xffffffff # initialize rs1
ori x20, x23, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 940)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffe # initialize rs1
ori x18, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 944)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffe # initialize rs1
ori x25, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 948)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffe # initialize rs1
ori x11, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffe # initialize rs1
ori x12, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 956)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffe # initialize rs1
ori x25, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffe # initialize rs1
ori x6, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 964)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffe # initialize rs1
ori x21, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffe # initialize rs1
ori x10, x1, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 972)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffe # initialize rs1
ori x23, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffe # initialize rs1
ori x10, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 980)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
ori x29, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 984)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rs1
ori x15, x13, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 988)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffe # initialize rs1
ori x14, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 992)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffe # initialize rs1
ori x5, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 996)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffe # initialize rs1
ori x17, x28, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1000)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffe # initialize rs1
ori x27, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1004)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffe # initialize rs1
ori x20, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffe # initialize rs1
ori x2, x7, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1012)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffe # initialize rs1
ori x17, x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1016)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffe # initialize rs1
ori x26, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1020)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc8872 # initialize rs1
ori x26, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc8872 # initialize rs1
ori x25, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1028)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc8872 # initialize rs1
ori x5, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc8872 # initialize rs1
ori x11, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1036)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc8872 # initialize rs1
ori x24, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc8872 # initialize rs1
ori x20, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1044)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc8872 # initialize rs1
ori x5, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1048)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
ori x27, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1052)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc8872 # initialize rs1
ori x28, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc8872 # initialize rs1
ori x3, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1060)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc8872 # initialize rs1
ori x30, x29, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc8872 # initialize rs1
ori x14, x25, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1068)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
ori x17, x15, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
ori x1, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1076)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc8872 # initialize rs1
ori x13, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8872 # initialize rs1
ori x25, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1084)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc8872 # initialize rs1
ori x7, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc8872 # initialize rs1
ori x6, x26, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc8872 # initialize rs1
ori x24, x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc8872 # initialize rs1
ori x27, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaa # initialize rs1
ori x22, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaa # initialize rs1
ori x5, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1108)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaa # initialize rs1
ori x28, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaa # initialize rs1
ori x1, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1116)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaa # initialize rs1
ori x28, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaa # initialize rs1
ori x7, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1124)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaa # initialize rs1
ori x9, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rs1
ori x31, x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1132)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaa # initialize rs1
ori x18, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaa # initialize rs1
ori x10, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1140)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
ori x1, x18, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1144)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaa # initialize rs1
ori x17, x7, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1148)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
ori x15, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaa # initialize rs1
ori x20, x31, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1156)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa # initialize rs1
ori x13, x9, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
ori x12, x18, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1164)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaa # initialize rs1
ori x14, x18, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cr_rs1_imm_corners
li x5, 0xaaaaaaaa # initialize rs1
ori x3, x5, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1172)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaa # initialize rs1
ori x26, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaa # initialize rs1
ori x14, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1180)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
ori x12, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1184)

# Testcase cr_rs1_imm_corners
li x17, 0x55555555 # initialize rs1
ori x2, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1188)

# Testcase cr_rs1_imm_corners
li x5, 0x55555555 # initialize rs1
ori x1, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1192)

# Testcase cr_rs1_imm_corners
li x23, 0x55555555 # initialize rs1
ori x9, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1196)

# Testcase cr_rs1_imm_corners
li x31, 0x55555555 # initialize rs1
ori x12, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
ori x26, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1204)

# Testcase cr_rs1_imm_corners
li x30, 0x55555555 # initialize rs1
ori x15, x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1208)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555 # initialize rs1
ori x25, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1212)

# Testcase cr_rs1_imm_corners
li x25, 0x55555555 # initialize rs1
ori x3, x25, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1216)

# Testcase cr_rs1_imm_corners
li x7, 0x55555555 # initialize rs1
ori x11, x7, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1220)

# Testcase cr_rs1_imm_corners
li x20, 0x55555555 # initialize rs1
ori x26, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

# Testcase cr_rs1_imm_corners
li x31, 0x55555555 # initialize rs1
ori x13, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1228)

# Testcase cr_rs1_imm_corners
li x22, 0x55555555 # initialize rs1
ori x24, x22, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cr_rs1_imm_corners
li x10, 0x55555555 # initialize rs1
ori x3, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1236)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
ori x27, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_imm_corners
li x1, 0x55555555 # initialize rs1
ori x3, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1244)

# Testcase cr_rs1_imm_corners
li x16, 0x55555555 # initialize rs1
ori x24, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1248)

# Testcase cr_rs1_imm_corners
li x14, 0x55555555 # initialize rs1
ori x17, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cr_rs1_imm_corners
li x5, 0x55555555 # initialize rs1
ori x27, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_imm_corners
li x9, 0x55555555 # initialize rs1
ori x27, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x25270f02 # initialize rs1
ori x0, x0, -35 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x39180386 # initialize rs1
ori x1, x1, 1019 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x06a74fd4 # initialize rs1
ori x2, x2, -618 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xfe86ab70 # initialize rs1
ori x3, x3, -585 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb4234ba2 # initialize rs1
ori x4, x4, 486 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8ebabdcb # initialize rs1
ori x5, x5, -1955 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe25e45e # initialize rs1
ori x6, x6, 1642 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaab707c6 # initialize rs1
ori x7, x7, 1451 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd5ac0c6a # initialize rs1
ori x8, x8, 1650 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9c7057b9 # initialize rs1
ori x9, x9, 123 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3c84359e # initialize rs1
ori x10, x10, 911 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x21782db4 # initialize rs1
ori x11, x11, 1411 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x59089b2f # initialize rs1
ori x12, x12, 1673 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe7a8fcff # initialize rs1
ori x13, x13, -447 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x04222dd4 # initialize rs1
ori x14, x14, 1747 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf08111fe # initialize rs1
ori x15, x15, 399 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x94398ea7 # initialize rs1
ori x16, x16, -1191 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa7018a04 # initialize rs1
ori x17, x17, 1950 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8595e4d7 # initialize rs1
ori x18, x18, 232 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0bb0ef6b # initialize rs1
ori x19, x19, -1724 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb7cbe6a1 # initialize rs1
ori x20, x20, -1171 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6f5315bb # initialize rs1
ori x21, x21, -1022 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd03f8f4b # initialize rs1
ori x22, x22, 1506 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa2d57382 # initialize rs1
ori x23, x23, 1780 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1e9d5f63 # initialize rs1
ori x24, x24, 1285 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xfb78a279 # initialize rs1
ori x25, x25, -84 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3e92d3cb # initialize rs1
ori x26, x26, 935 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8dc5b879 # initialize rs1
ori x27, x27, 753 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd16d22d0 # initialize rs1
ori x28, x28, -662 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0aa4b91a # initialize rs1
ori x29, x29, -1897 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc437d11a # initialize rs1
ori x30, x30, -1807 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x02608dd3 # initialize rs1
ori x31, x31, 1933 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1388)

# Testcase cp_imm_corners
li x7, 0xa624e5b8 # initialize rs1
ori x6, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1392)

# Testcase cp_imm_corners
li x19, 0x139aa057 # initialize rs1
ori x20, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1396)

# Testcase cp_imm_corners
li x22, 0x5cc776d0 # initialize rs1
ori x6, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1400)

# Testcase cp_imm_corners
li x25, 0x6e6b0e0e # initialize rs1
ori x29, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1404)

# Testcase cp_imm_corners
li x17, 0x9210f92a # initialize rs1
ori x15, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cp_imm_corners
li x17, 0xf1c7faf1 # initialize rs1
ori x26, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1412)

# Testcase cp_imm_corners
li x5, 0x89e01ac3 # initialize rs1
ori x15, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cp_imm_corners
li x29, 0xf0b9cffb # initialize rs1
ori x5, x29, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1420)

# Testcase cp_imm_corners
li x10, 0xb2597076 # initialize rs1
ori x29, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1424)

# Testcase cp_imm_corners
li x11, 0x4540e93e # initialize rs1
ori x14, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1428)

# Testcase cp_imm_corners
li x20, 0x2d1d01ac # initialize rs1
ori x19, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cp_imm_corners
li x15, 0x46a9e77d # initialize rs1
ori x29, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1436)

# Testcase cp_imm_corners
li x23, 0x12e48e25 # initialize rs1
ori x2, x23, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1440)

# Testcase cp_imm_corners
li x15, 0x7a304187 # initialize rs1
ori x1, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cp_imm_corners
li x21, 0xc84e7798 # initialize rs1
ori x11, x21, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1448)

# Testcase cp_imm_corners
li x8, 0xe5302cf5 # initialize rs1
ori x23, x8, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1452)

# Testcase cp_imm_corners
li x27, 0x557ae80a # initialize rs1
ori x15, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

# Testcase cp_imm_corners
li x11, 0x51fa616a # initialize rs1
ori x27, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1460)

# Testcase cp_imm_corners
li x21, 0xf2cccdd9 # initialize rs1
ori x8, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cp_imm_corners
li x24, 0x31a98fac # initialize rs1
ori x5, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1468)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x29, x28 # perform first operation
ori x12, x5, -288 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x27, x8 # perform first operation
ori x7, x5, -1669 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x7, x14 # perform first operation
ori x23, x12, 701 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x10, x13 # perform first operation
ori x30, x17, -1727 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x14, x16 # perform first operation
ori x3, x27, -806 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x6, x9 # perform first operation
ori x9, x7, 609 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x28, x26 # perform first operation
ori x23, x10, 1338 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x23, x2 # perform first operation
ori x3, x28, -782 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x9, x19 # perform first operation
ori x12, x16, 1918 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x20, x1 # perform first operation
ori x20, x16, 1619 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x20, x15 # perform first operation
ori x15, x5, 1380 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x25, x23 # perform first operation
ori x17, x7, 292 # perform second (triggering) operation

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
