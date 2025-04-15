///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-andn.S
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
