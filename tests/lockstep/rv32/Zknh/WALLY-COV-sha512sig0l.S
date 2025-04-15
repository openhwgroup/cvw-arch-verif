///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha512sig0l.S
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
li x0, 0x7a663f5f # initialize rs1
li x27, 0x0bdeff63 # initialize rs2
sha512sig0l x14, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x681457c9 # initialize rs1
li x11, 0x135cd933 # initialize rs2
sha512sig0l x25, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf7614839 # initialize rs1
li x10, 0x320b759f # initialize rs2
sha512sig0l x7, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x16864274 # initialize rs1
li x28, 0xb50ebde5 # initialize rs2
sha512sig0l x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x887cac52 # initialize rs1
li x3, 0x9ec01db1 # initialize rs2
sha512sig0l x6, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf3988002 # initialize rs1
li x17, 0x9ddb3b37 # initialize rs2
sha512sig0l x9, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed567453 # initialize rs1
li x22, 0x07eb777f # initialize rs2
sha512sig0l x31, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6dacc927 # initialize rs1
li x8, 0x9ac400f3 # initialize rs2
sha512sig0l x10, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb2263992 # initialize rs1
li x5, 0xed75f061 # initialize rs2
sha512sig0l x2, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf28ee7c0 # initialize rs1
li x29, 0x8c4e5947 # initialize rs2
sha512sig0l x15, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x354ba7b4 # initialize rs1
li x2, 0x34d2fc2a # initialize rs2
sha512sig0l x23, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3a96ea7c # initialize rs1
li x24, 0x6f56c703 # initialize rs2
sha512sig0l x1, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x51aadfc2 # initialize rs1
li x28, 0xf403332f # initialize rs2
sha512sig0l x21, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x25e20a7b # initialize rs1
li x26, 0x56cad435 # initialize rs2
sha512sig0l x18, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x22a66b3f # initialize rs1
li x16, 0xcfff66ed # initialize rs2
sha512sig0l x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x165c291e # initialize rs1
li x1, 0xda8cc519 # initialize rs2
sha512sig0l x7, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x71bdc65d # initialize rs1
li x5, 0x4ec605a5 # initialize rs2
sha512sig0l x15, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x47a2fe0f # initialize rs1
li x2, 0x949a2c21 # initialize rs2
sha512sig0l x3, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4943132a # initialize rs1
li x11, 0x606df0a7 # initialize rs2
sha512sig0l x23, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8f29222d # initialize rs1
li x28, 0xb33594ad # initialize rs2
sha512sig0l x8, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x40e417d5 # initialize rs1
li x16, 0x9f5d620a # initialize rs2
sha512sig0l x13, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xac2afcbe # initialize rs1
li x30, 0xab6ca765 # initialize rs2
sha512sig0l x5, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe02d20bf # initialize rs1
li x27, 0xf0ac1c75 # initialize rs2
sha512sig0l x9, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1ab7d4c8 # initialize rs1
li x10, 0xd11bdc79 # initialize rs2
sha512sig0l x20, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0761fef1 # initialize rs1
li x10, 0x3d95a5d2 # initialize rs2
sha512sig0l x22, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x08829fbf # initialize rs1
li x18, 0x285b8e68 # initialize rs2
sha512sig0l x6, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xed284505 # initialize rs1
li x16, 0x3a572453 # initialize rs2
sha512sig0l x15, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6cf7210f # initialize rs1
li x14, 0x4ea34704 # initialize rs2
sha512sig0l x28, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa83d3f00 # initialize rs1
li x9, 0x529db3ad # initialize rs2
sha512sig0l x11, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xae705117 # initialize rs1
li x17, 0x8d884924 # initialize rs2
sha512sig0l x11, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xec9c1523 # initialize rs1
li x9, 0xe8c68f7d # initialize rs2
sha512sig0l x24, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x859362de # initialize rs1
li x29, 0x6bae3735 # initialize rs2
sha512sig0l x13, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0xe4510141 # initialize rs1
li x0, 0xa58fa0a3 # initialize rs2
sha512sig0l x26, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xb3457bd4 # initialize rs1
li x1, 0xbeab906d # initialize rs2
sha512sig0l x16, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0xd8e361bf # initialize rs1
li x2, 0x83d54c4f # initialize rs2
sha512sig0l x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x7df0b3c4 # initialize rs1
li x3, 0x049cee09 # initialize rs2
sha512sig0l x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xfc244cbc # initialize rs1
li x4, 0xb993a5a6 # initialize rs2
sha512sig0l x20, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x42af9fcc # initialize rs1
li x5, 0xa9f56651 # initialize rs2
sha512sig0l x25, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x8c846b10 # initialize rs1
li x6, 0xda619dcb # initialize rs2
sha512sig0l x18, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xf54ea637 # initialize rs1
li x7, 0xa607b295 # initialize rs2
sha512sig0l x21, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xc9f75035 # initialize rs1
li x8, 0x66c3cf7f # initialize rs2
sha512sig0l x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x2f0e5ee3 # initialize rs1
li x9, 0xe74e61c0 # initialize rs2
sha512sig0l x28, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0xf15eecdc # initialize rs1
li x10, 0xba514300 # initialize rs2
sha512sig0l x21, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x1e2d3637 # initialize rs1
li x11, 0xf5bc9953 # initialize rs2
sha512sig0l x1, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xc2a0ab68 # initialize rs1
li x12, 0x3577b604 # initialize rs2
sha512sig0l x24, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x12, 0xb7d4e7a9 # initialize rs1
li x13, 0x44f5d2d0 # initialize rs2
sha512sig0l x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0xf9d41474 # initialize rs1
li x14, 0xd0067e35 # initialize rs2
sha512sig0l x10, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0xb10538f9 # initialize rs1
li x15, 0xc8a9ac67 # initialize rs2
sha512sig0l x6, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xc7499da6 # initialize rs1
li x16, 0x9fcc1496 # initialize rs2
sha512sig0l x5, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0xb31cd04d # initialize rs1
li x17, 0xe0f17f63 # initialize rs2
sha512sig0l x2, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0xcd592cdb # initialize rs1
li x18, 0x2d7cf23c # initialize rs2
sha512sig0l x5, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x675a042e # initialize rs1
li x19, 0xef2319a4 # initialize rs2
sha512sig0l x15, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x30, 0x198102c8 # initialize rs1
li x20, 0x83f65583 # initialize rs2
sha512sig0l x6, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0x64636209 # initialize rs1
li x21, 0xb0afc878 # initialize rs2
sha512sig0l x14, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0xf51c3950 # initialize rs1
li x22, 0x04849285 # initialize rs2
sha512sig0l x10, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x493e9e29 # initialize rs1
li x23, 0x5f248698 # initialize rs2
sha512sig0l x25, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0xd7745ef9 # initialize rs1
li x24, 0x9be58963 # initialize rs2
sha512sig0l x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x10, 0xf4a6509a # initialize rs1
li x25, 0x5fc8efd2 # initialize rs2
sha512sig0l x26, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0xd80bdc02 # initialize rs1
li x26, 0x4d36d89a # initialize rs2
sha512sig0l x21, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x24f24509 # initialize rs1
li x27, 0x04d75db2 # initialize rs2
sha512sig0l x6, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x772aa7af # initialize rs1
li x28, 0x34d5e717 # initialize rs2
sha512sig0l x3, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0x5d45f978 # initialize rs1
li x29, 0xdc51f52a # initialize rs2
sha512sig0l x8, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0x97f46d87 # initialize rs1
li x30, 0xb8436824 # initialize rs2
sha512sig0l x13, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x14c760d0 # initialize rs1
li x31, 0x19a2b6ba # initialize rs2
sha512sig0l x9, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_rd (Test destination rd = x0)
li x16, 0x19c26a16 # initialize rs1
li x24, 0x5136c347 # initialize rs2
sha512sig0l x0, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x2b9af404 # initialize rs1
li x14, 0xc36358fc # initialize rs2
sha512sig0l x1, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x51336672 # initialize rs1
li x18, 0x567846f4 # initialize rs2
sha512sig0l x2, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xed41029e # initialize rs1
li x14, 0xbcd61968 # initialize rs2
sha512sig0l x3, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x212b1af4 # initialize rs1
li x22, 0x76ce0731 # initialize rs2
sha512sig0l x4, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0xf06604e8 # initialize rs1
li x18, 0x485b8903 # initialize rs2
sha512sig0l x5, x26, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x3a2efe87 # initialize rs1
li x29, 0xe0876520 # initialize rs2
sha512sig0l x6, x9, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xbd7d28cf # initialize rs1
li x10, 0xbdb627c1 # initialize rs2
sha512sig0l x7, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x5b96b0ac # initialize rs1
li x15, 0x03fbe869 # initialize rs2
sha512sig0l x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x1, 0xfec6eef5 # initialize rs1
li x27, 0x6631bff9 # initialize rs2
sha512sig0l x9, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xb9af8d14 # initialize rs1
li x3, 0xf5776353 # initialize rs2
sha512sig0l x10, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x415b484e # initialize rs1
li x27, 0xdad437bd # initialize rs2
sha512sig0l x11, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x8ceab853 # initialize rs1
li x19, 0xc2b9c3c4 # initialize rs2
sha512sig0l x12, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x2535a923 # initialize rs1
li x23, 0x0c282b2b # initialize rs2
sha512sig0l x13, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0xac0b6178 # initialize rs1
li x26, 0x72a477aa # initialize rs2
sha512sig0l x14, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x8398c307 # initialize rs1
li x7, 0x44f5258e # initialize rs2
sha512sig0l x15, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0x77136ae3 # initialize rs1
li x13, 0x6e698dce # initialize rs2
sha512sig0l x16, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x9a552a07 # initialize rs1
li x30, 0x12476222 # initialize rs2
sha512sig0l x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x45875b87 # initialize rs1
li x10, 0xab0dad16 # initialize rs2
sha512sig0l x18, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xdd94f8dc # initialize rs1
li x14, 0x391b8f3b # initialize rs2
sha512sig0l x19, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x816a6bd1 # initialize rs1
li x27, 0xbb8389ee # initialize rs2
sha512sig0l x20, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0x3ad75f72 # initialize rs1
li x8, 0x17db4a78 # initialize rs2
sha512sig0l x21, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0xc48c9e54 # initialize rs1
li x23, 0xf9391f01 # initialize rs2
sha512sig0l x22, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x599c2a60 # initialize rs1
li x31, 0x893ac825 # initialize rs2
sha512sig0l x23, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xf19e43a6 # initialize rs1
li x20, 0x4aa87df1 # initialize rs2
sha512sig0l x24, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x5e9f3e1f # initialize rs1
li x11, 0x40af80b2 # initialize rs2
sha512sig0l x25, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0x73bab160 # initialize rs1
li x16, 0x0d455952 # initialize rs2
sha512sig0l x26, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xa3fcb09d # initialize rs1
li x20, 0x1bce259d # initialize rs2
sha512sig0l x27, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x54e1e86a # initialize rs1
li x24, 0x76ace9a7 # initialize rs2
sha512sig0l x28, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x5f2ff28d # initialize rs1
li x28, 0x813f2e0c # initialize rs2
sha512sig0l x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xf08fb2cf # initialize rs1
li x30, 0x19bd0ee6 # initialize rs2
sha512sig0l x30, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0x0b2ccfd0 # initialize rs1
li x21, 0xfa0cdeed # initialize rs2
sha512sig0l x31, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x00000000 # initialize rs1
li x5, 0xbaf6ccca # initialize rs2
sha512sig0l x13, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
li x18, 0x1ca5c06e # initialize rs2
sha512sig0l x21, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
li x11, 0x8d6a6af2 # initialize rs2
sha512sig0l x12, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x26, 0xac40beaf # initialize rs2
sha512sig0l x8, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x23, 0x666bd124 # initialize rs2
sha512sig0l x27, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
li x17, 0xdd028d1c # initialize rs2
sha512sig0l x3, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x27, 0xa6c9cb19 # initialize rs2
sha512sig0l x8, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x18, 0xf86fa14c # initialize rs2
sha512sig0l x11, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x12, 0x87a20c3d # initialize rs2
sha512sig0l x14, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
li x14, 0xc1f09ff5 # initialize rs2
sha512sig0l x28, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x26, 0xaaaaaaaa # initialize rs1
li x11, 0x8dcb51e8 # initialize rs2
sha512sig0l x22, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x16, 0x55555555 # initialize rs1
li x15, 0x0e4a23fa # initialize rs2
sha512sig0l x22, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xe49ca6e8 # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig0l x5, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x09950778 # initialize rs1
li x30, 0x00000001 # initialize rs2
sha512sig0l x2, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0xe26cd27c # initialize rs1
li x6, 0x00000002 # initialize rs2
sha512sig0l x14, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x9bfcf183 # initialize rs1
li x5, 0x80000000 # initialize rs2
sha512sig0l x25, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x1, 0x8bafeb9c # initialize rs1
li x5, 0x80000001 # initialize rs2
sha512sig0l x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x31, 0x6992ff44 # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig0l x18, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0x8e52482a # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sha512sig0l x20, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xcadac856 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig0l x2, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x5c068c85 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig0l x31, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x27, 0x0e9b9c61 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig0l x5, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x28, 0x1413eb03 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig0l x19, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0xd1ad74ed # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sig0l x21, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
sha512sig0l x19, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x3, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x00000000 # initialize rs1
li x15, 0x00000002 # initialize rs2
sha512sig0l x16, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sig0l x8, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x31, 0x00000000 # initialize rs1
li x1, 0x80000001 # initialize rs2
sha512sig0l x20, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sha512sig0l x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0x00000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sig0l x21, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x9, 0x00000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sig0l x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x00000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sig0l x19, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sig0l x27, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sha512sig0l x10, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x7, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig0l x18, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sig0l x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
sha512sig0l x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x00000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
sha512sig0l x17, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x00000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
sha512sig0l x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x3, 0x00000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig0l x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x13, 0x00000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
sha512sig0l x12, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x27, 0x00000001 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sha512sig0l x28, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sig0l x31, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sig0l x3, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x22, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig0l x5, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sig0l x16, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig0l x24, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x00000002 # initialize rs1
li x16, 0x00000000 # initialize rs2
sha512sig0l x21, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x00000002 # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig0l x26, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
sha512sig0l x9, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x27, 0x80000000 # initialize rs2
sha512sig0l x16, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x21, 0x00000002 # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sig0l x11, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x15, 0x00000002 # initialize rs1
li x30, 0x7fffffff # initialize rs2
sha512sig0l x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x9, 0x00000002 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sig0l x26, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
sha512sig0l x8, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x25, 0x00000002 # initialize rs1
li x11, 0xfffffffe # initialize rs2
sha512sig0l x16, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
sha512sig0l x21, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x27, 0x00000002 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sig0l x30, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x00000002 # initialize rs1
li x22, 0x55555555 # initialize rs2
sha512sig0l x19, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x29, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0l x22, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x22, 0x80000000 # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sig0l x13, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x23, 0x80000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
sha512sig0l x6, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sig0l x28, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x25, 0x80000001 # initialize rs2
sha512sig0l x2, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x19, 0x80000000 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sig0l x22, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x9, 0x80000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sha512sig0l x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x19, 0x80000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sig0l x16, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x28, 0x80000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sha512sig0l x3, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x28, 0x80000000 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
sha512sig0l x22, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x21, 0x80000000 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sha512sig0l x20, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x26, 0x80000000 # initialize rs1
li x22, 0x55555555 # initialize rs2
sha512sig0l x18, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x22, 0x80000001 # initialize rs1
li x26, 0x00000000 # initialize rs2
sha512sig0l x2, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x12, 0x80000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
sha512sig0l x20, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x8, 0x80000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig0l x25, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x17, 0x80000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
sha512sig0l x2, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x28, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig0l x27, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x22, 0x80000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sha512sig0l x18, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0x80000001 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sha512sig0l x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x28, 0xffffffff # initialize rs2
sha512sig0l x18, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0x80000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sha512sig0l x26, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x19, 0x80000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sig0l x9, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig0l x20, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
sha512sig0l x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x1, 0x7fffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sig0l x20, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x21, 0x7fffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sig0l x29, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x18, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sig0l x21, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x7fffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
sha512sig0l x27, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
sha512sig0l x29, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
sha512sig0l x29, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x31, 0x7fffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sig0l x18, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x18, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sig0l x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0x7fffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig0l x30, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x17, 0x7fffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sig0l x25, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x7fffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sha512sig0l x15, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0x7fffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig0l x11, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x3, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
sha512sig0l x30, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sha512sig0l x10, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x28, 0x7ffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
sha512sig0l x9, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sig0l x31, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x7ffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sig0l x28, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
sha512sig0l x23, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sha512sig0l x31, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x3, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sig0l x27, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sig0l x14, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig0l x22, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0x7ffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig0l x25, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x23, 0x7ffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sig0l x21, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0xffffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
sha512sig0l x22, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig0l x30, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0xffffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
sha512sig0l x19, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xffffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
sha512sig0l x13, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x1, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig0l x25, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x9, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig0l x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sig0l x8, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
sha512sig0l x3, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
sha512sig0l x21, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x29, 0xffffffff # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
sha512sig0l x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x26, 0xffffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sig0l x1, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x11, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
sha512sig0l x1, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0xfffffffe # initialize rs1
li x30, 0x00000000 # initialize rs2
sha512sig0l x22, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0xfffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x9, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0xfffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig0l x5, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x15, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sig0l x10, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0xfffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sig0l x7, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x10, 0xfffffffe # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig0l x1, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sig0l x9, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x24, 0xfffffffe # initialize rs1
li x27, 0xffffffff # initialize rs2
sha512sig0l x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sig0l x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x20, 0xfffffffe # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sig0l x31, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sha512sig0l x22, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x21, 0xfffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sig0l x10, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x15, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
sha512sig0l x29, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x29, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x24, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x29, 0x5bbc8872 # initialize rs1
li x11, 0x00000002 # initialize rs2
sha512sig0l x9, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x13, 0x5bbc8872 # initialize rs1
li x17, 0x80000000 # initialize rs2
sha512sig0l x31, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x29, 0x5bbc8872 # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sig0l x15, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x27, 0x5bbc8872 # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig0l x14, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sha512sig0l x24, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x26, 0x5bbc8872 # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sig0l x18, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sha512sig0l x28, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sha512sig0l x30, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x21, 0x5bbc8872 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sha512sig0l x19, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x3, 0x55555555 # initialize rs2
sha512sig0l x2, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaa # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0l x9, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x17, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x13, 0xaaaaaaaa # initialize rs1
li x29, 0x00000002 # initialize rs2
sha512sig0l x24, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x18, 0xaaaaaaaa # initialize rs1
li x22, 0x80000000 # initialize rs2
sha512sig0l x11, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sig0l x1, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
sha512sig0l x9, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x27, 0xaaaaaaaa # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sha512sig0l x18, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x9, 0xffffffff # initialize rs2
sha512sig0l x6, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x29, 0xfffffffe # initialize rs2
sha512sig0l x25, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x6, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sha512sig0l x20, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sha512sig0l x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x23, 0xaaaaaaaa # initialize rs1
li x10, 0x55555555 # initialize rs2
sha512sig0l x11, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x26, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
sha512sig0l x22, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x30, 0x55555555 # initialize rs1
li x10, 0x00000001 # initialize rs2
sha512sig0l x14, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x12, 0x55555555 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig0l x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x10, 0x80000000 # initialize rs2
sha512sig0l x15, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x8, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
sha512sig0l x22, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x26, 0x55555555 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sha512sig0l x20, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x27, 0x55555555 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sha512sig0l x26, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x21, 0xffffffff # initialize rs2
sha512sig0l x5, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x19, 0x55555555 # initialize rs1
li x7, 0xfffffffe # initialize rs2
sha512sig0l x15, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x15, 0x55555555 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig0l x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x14, 0x55555555 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sha512sig0l x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x7, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sig0l x15, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa861f8f2 # initialize rs1
li x0, 0x3860b250 # initialize rs2
sha512sig0l x20, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc04494e2 # initialize rs1
li x1, 0xf757a1da # initialize rs2
sha512sig0l x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd62597d8 # initialize rs1
li x2, 0x63ae1d73 # initialize rs2
sha512sig0l x6, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xba952ea6 # initialize rs1
li x3, 0xd9521aad # initialize rs2
sha512sig0l x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba20da9f # initialize rs1
li x4, 0x291d2e05 # initialize rs2
sha512sig0l x16, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbbb460cc # initialize rs1
li x5, 0xcfffd991 # initialize rs2
sha512sig0l x27, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x98caf15d # initialize rs1
li x6, 0x643b9dc9 # initialize rs2
sha512sig0l x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xab41ac8b # initialize rs1
li x7, 0x9b91d49b # initialize rs2
sha512sig0l x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9a02adaf # initialize rs1
li x8, 0xeb345acd # initialize rs2
sha512sig0l x20, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x604121ec # initialize rs1
li x9, 0xb7cf5083 # initialize rs2
sha512sig0l x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x78c265be # initialize rs1
li x10, 0x95aaea77 # initialize rs2
sha512sig0l x26, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xdf59bc11 # initialize rs1
li x11, 0x433e3538 # initialize rs2
sha512sig0l x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x8a860a4b # initialize rs1
li x12, 0xa4e68214 # initialize rs2
sha512sig0l x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5e7f2ad9 # initialize rs1
li x13, 0x83112619 # initialize rs2
sha512sig0l x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xbdc43a99 # initialize rs1
li x14, 0xf086e865 # initialize rs2
sha512sig0l x16, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb735f82a # initialize rs1
li x15, 0xf28b4ad7 # initialize rs2
sha512sig0l x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa281f974 # initialize rs1
li x16, 0xc047e43d # initialize rs2
sha512sig0l x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x723f2566 # initialize rs1
li x17, 0xf2992ca7 # initialize rs2
sha512sig0l x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9378ef34 # initialize rs1
li x18, 0x2a65087a # initialize rs2
sha512sig0l x6, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbe266c80 # initialize rs1
li x19, 0x922ed0b0 # initialize rs2
sha512sig0l x31, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x97126247 # initialize rs1
li x20, 0xb484cfa2 # initialize rs2
sha512sig0l x30, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xeab8369f # initialize rs1
li x21, 0x2597c45d # initialize rs2
sha512sig0l x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x857fc709 # initialize rs1
li x22, 0x65383a13 # initialize rs2
sha512sig0l x14, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5c2965f1 # initialize rs1
li x23, 0x8fde68dc # initialize rs2
sha512sig0l x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x050b13c7 # initialize rs1
li x24, 0x5fb5257a # initialize rs2
sha512sig0l x7, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x60fb1ec8 # initialize rs1
li x25, 0x153db06a # initialize rs2
sha512sig0l x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x4949a37d # initialize rs1
li x26, 0x9f243316 # initialize rs2
sha512sig0l x14, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x02a166f4 # initialize rs1
li x27, 0xeb68f635 # initialize rs2
sha512sig0l x29, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x69ae712b # initialize rs1
li x28, 0x738bfe29 # initialize rs2
sha512sig0l x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xbaa59df9 # initialize rs1
li x29, 0xa77d1d65 # initialize rs2
sha512sig0l x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x00a6e70f # initialize rs1
li x30, 0x9ecc24d9 # initialize rs2
sha512sig0l x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x9c306db4 # initialize rs1
li x31, 0x2cb02460 # initialize rs2
sha512sig0l x25, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x244132be # initialize rs1
li x29, 0xe93fdabe # initialize rs2
sha512sig0l x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x98c7be1b # initialize rs1
li x11, 0xe0a39bd1 # initialize rs2
sha512sig0l x1, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x06db5f0b # initialize rs1
li x17, 0x8d4377f9 # initialize rs2
sha512sig0l x2, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0438f29d # initialize rs1
li x18, 0xf10cef42 # initialize rs2
sha512sig0l x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4800769c # initialize rs1
li x31, 0x18eeb230 # initialize rs2
sha512sig0l x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xec1bed1c # initialize rs1
li x26, 0xcf7c2375 # initialize rs2
sha512sig0l x5, x5, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb4fb7d26 # initialize rs1
li x15, 0xec8311e3 # initialize rs2
sha512sig0l x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x28cb5449 # initialize rs1
li x22, 0xddb09642 # initialize rs2
sha512sig0l x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcfeee567 # initialize rs1
li x1, 0x81a028bd # initialize rs2
sha512sig0l x8, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1bc8c265 # initialize rs1
li x5, 0x7b81e5b0 # initialize rs2
sha512sig0l x9, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x59c50b07 # initialize rs1
li x26, 0xce1d1a66 # initialize rs2
sha512sig0l x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcb75abe5 # initialize rs1
li x1, 0x439a0514 # initialize rs2
sha512sig0l x11, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x14955b5a # initialize rs1
li x22, 0xd5f94961 # initialize rs2
sha512sig0l x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x67afff55 # initialize rs1
li x26, 0x95f1ee9a # initialize rs2
sha512sig0l x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x986f536d # initialize rs1
li x19, 0x82199a8e # initialize rs2
sha512sig0l x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb63a8933 # initialize rs1
li x28, 0xc816730d # initialize rs2
sha512sig0l x15, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb6631bac # initialize rs1
li x11, 0x90508ba9 # initialize rs2
sha512sig0l x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc155e614 # initialize rs1
li x26, 0x837c533f # initialize rs2
sha512sig0l x17, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x512f61b2 # initialize rs1
li x15, 0x70cfc164 # initialize rs2
sha512sig0l x18, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4d3e7f8b # initialize rs1
li x9, 0xfb92bc4e # initialize rs2
sha512sig0l x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa52237fe # initialize rs1
li x14, 0xadc3a742 # initialize rs2
sha512sig0l x20, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2da2e4a2 # initialize rs1
li x14, 0x0a36bfa0 # initialize rs2
sha512sig0l x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb3700786 # initialize rs1
li x6, 0xf23f52dc # initialize rs2
sha512sig0l x22, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x35714495 # initialize rs1
li x2, 0x1df5e151 # initialize rs2
sha512sig0l x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9a7d07fa # initialize rs1
li x18, 0x4756ff25 # initialize rs2
sha512sig0l x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xfa55abcb # initialize rs1
li x28, 0x48775107 # initialize rs2
sha512sig0l x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x18a94deb # initialize rs1
li x3, 0x96b88265 # initialize rs2
sha512sig0l x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x383ac2a1 # initialize rs1
li x21, 0x0f0275f2 # initialize rs2
sha512sig0l x27, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf6c54f20 # initialize rs1
li x15, 0xce847838 # initialize rs2
sha512sig0l x28, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdca4bf16 # initialize rs1
li x10, 0xc39d38b7 # initialize rs2
sha512sig0l x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd0231365 # initialize rs1
li x2, 0x3cd41f9e # initialize rs2
sha512sig0l x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3a85e7bb # initialize rs1
li x6, 0x778a1692 # initialize rs2
sha512sig0l x31, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0x76868f7c # initialize rs1
li x0, 0x7f225061 # initialize rs2
sha512sig0l x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x5, 0x23f24209 # initialize rs1
li x1, 0x70f81444 # initialize rs2
sha512sig0l x1, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x56debdfc # initialize rs1
li x2, 0x9e6a4ad5 # initialize rs2
sha512sig0l x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xe184314a # initialize rs1
li x3, 0x4d23c39c # initialize rs2
sha512sig0l x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x13a450e0 # initialize rs1
li x4, 0x25b93bb6 # initialize rs2
sha512sig0l x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xba667757 # initialize rs1
li x5, 0x047111f0 # initialize rs2
sha512sig0l x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x68964f24 # initialize rs1
li x6, 0x7e61a467 # initialize rs2
sha512sig0l x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xf239aebb # initialize rs1
li x7, 0xb01726a6 # initialize rs2
sha512sig0l x7, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x20, 0x02ae505d # initialize rs1
li x8, 0xb3efacce # initialize rs2
sha512sig0l x8, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0x368964a4 # initialize rs1
li x9, 0xf104a7ed # initialize rs2
sha512sig0l x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x6, 0x6417d6b1 # initialize rs1
li x10, 0x24731772 # initialize rs2
sha512sig0l x10, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0x25585329 # initialize rs1
li x11, 0x53d5629f # initialize rs2
sha512sig0l x11, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x7, 0x59e73298 # initialize rs1
li x12, 0x43a178d7 # initialize rs2
sha512sig0l x12, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0x282de112 # initialize rs1
li x13, 0xf99ef7e6 # initialize rs2
sha512sig0l x13, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x8d01f5dc # initialize rs1
li x14, 0x4cccb3dd # initialize rs2
sha512sig0l x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0x1c9fe645 # initialize rs1
li x15, 0xc144d2f4 # initialize rs2
sha512sig0l x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xc87e4730 # initialize rs1
li x16, 0xdda3998e # initialize rs2
sha512sig0l x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0xea8e476a # initialize rs1
li x17, 0x55ddc780 # initialize rs2
sha512sig0l x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0xada15ccc # initialize rs1
li x18, 0xba3ee9d6 # initialize rs2
sha512sig0l x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x04add516 # initialize rs1
li x19, 0x895d5aa3 # initialize rs2
sha512sig0l x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0x29904431 # initialize rs1
li x20, 0xdb948c5c # initialize rs2
sha512sig0l x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x8b07caa8 # initialize rs1
li x21, 0x244ceaaf # initialize rs2
sha512sig0l x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x11, 0x83f3f590 # initialize rs1
li x22, 0x0b47a7b5 # initialize rs2
sha512sig0l x22, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0xbeabe12b # initialize rs1
li x23, 0x49fcc5db # initialize rs2
sha512sig0l x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0xc30bb621 # initialize rs1
li x24, 0xcd0f1984 # initialize rs2
sha512sig0l x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x5d99e909 # initialize rs1
li x25, 0x9705b523 # initialize rs2
sha512sig0l x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0x012265e6 # initialize rs1
li x26, 0x29597be6 # initialize rs2
sha512sig0l x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0x4884640b # initialize rs1
li x27, 0xb2fb12a0 # initialize rs2
sha512sig0l x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0x66e65203 # initialize rs1
li x28, 0x6264e7b5 # initialize rs2
sha512sig0l x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0x0d306be8 # initialize rs1
li x29, 0x06668118 # initialize rs2
sha512sig0l x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x62688279 # initialize rs1
li x30, 0x96080f14 # initialize rs2
sha512sig0l x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0xfdae9d6f # initialize rs1
li x31, 0x927c3189 # initialize rs2
sha512sig0l x31, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa32347bf # initialize rs1
li x0, 0x41780fc8 # initialize rs2
sha512sig0l x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcafeaa41 # initialize rs1
li x1, 0xe71c48af # initialize rs2
sha512sig0l x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x554fc34c # initialize rs1
li x2, 0x2fad2df1 # initialize rs2
sha512sig0l x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x47e3f098 # initialize rs1
li x3, 0x28f1c504 # initialize rs2
sha512sig0l x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x19172fc9 # initialize rs1
li x4, 0xaffa11cc # initialize rs2
sha512sig0l x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x04eff021 # initialize rs1
li x5, 0xdf881653 # initialize rs2
sha512sig0l x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe4e37ebb # initialize rs1
li x6, 0x15b5010c # initialize rs2
sha512sig0l x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xafe33b0a # initialize rs1
li x7, 0xfa477151 # initialize rs2
sha512sig0l x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x86119f1d # initialize rs1
li x8, 0x7d6140de # initialize rs2
sha512sig0l x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb58f41a1 # initialize rs1
li x9, 0xbbeff44c # initialize rs2
sha512sig0l x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3b80e5f0 # initialize rs1
li x10, 0x71519b21 # initialize rs2
sha512sig0l x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x747d18cb # initialize rs1
li x11, 0x968e7fe0 # initialize rs2
sha512sig0l x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7507f6c5 # initialize rs1
li x12, 0xb075cf89 # initialize rs2
sha512sig0l x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xce6beab7 # initialize rs1
li x13, 0xda8e9359 # initialize rs2
sha512sig0l x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc97b3e45 # initialize rs1
li x14, 0x5984e468 # initialize rs2
sha512sig0l x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe9d8fe98 # initialize rs1
li x15, 0x8a774c11 # initialize rs2
sha512sig0l x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xefb1c36a # initialize rs1
li x16, 0xfdbc1bf1 # initialize rs2
sha512sig0l x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x93ce1caa # initialize rs1
li x17, 0xbfe42942 # initialize rs2
sha512sig0l x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x59d5bb9b # initialize rs1
li x18, 0xf4cd7422 # initialize rs2
sha512sig0l x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x551044b9 # initialize rs1
li x19, 0x0a32aa98 # initialize rs2
sha512sig0l x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xbe675aa4 # initialize rs1
li x20, 0xe3c161d5 # initialize rs2
sha512sig0l x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc5ec46f0 # initialize rs1
li x21, 0xe1ad29c8 # initialize rs2
sha512sig0l x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xab1749b4 # initialize rs1
li x22, 0x9d5b4ccc # initialize rs2
sha512sig0l x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfe9c57ff # initialize rs1
li x23, 0x6875c45b # initialize rs2
sha512sig0l x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4981d195 # initialize rs1
li x24, 0x3abb4d54 # initialize rs2
sha512sig0l x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x59790d8e # initialize rs1
li x25, 0x2671ce73 # initialize rs2
sha512sig0l x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x88217f80 # initialize rs1
li x26, 0xca145e64 # initialize rs2
sha512sig0l x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x232018e2 # initialize rs1
li x27, 0x9c93189e # initialize rs2
sha512sig0l x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x13255edd # initialize rs1
li x28, 0x7332cee0 # initialize rs2
sha512sig0l x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4ef1ceec # initialize rs1
li x29, 0x53d6d597 # initialize rs2
sha512sig0l x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8b4ed06d # initialize rs1
li x30, 0xee1e7890 # initialize rs2
sha512sig0l x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x709dab29 # initialize rs1
li x31, 0x8077194b # initialize rs2
sha512sig0l x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x17, x13 # perform first operation
sha512sig0l x12, x21, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x9, x7 # perform first operation
sha512sig0l x5, x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x19, x8 # perform first operation
sha512sig0l x26, x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x24, x15 # perform first operation
sha512sig0l x15, x11, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x2, x26 # perform first operation
sha512sig0l x2, x1, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x5, x22 # perform first operation
sha512sig0l x24, x12, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x20, x6 # perform first operation
sha512sig0l x8, x2, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x7, x22 # perform first operation
sha512sig0l x17, x30, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x26, x11 # perform first operation
sha512sig0l x13, x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x19, x29 # perform first operation
sha512sig0l x19, x22, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x16, x15 # perform first operation
sha512sig0l x15, x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x5, x6 # perform first operation
sha512sig0l x10, x28, x7 # perform second (triggering) operation

.EQU SIGSIZE,1568


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
