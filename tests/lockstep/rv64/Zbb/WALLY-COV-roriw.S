///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-roriw.S
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
li x0, 0x9849b691615eaad3 # initialize rs1
roriw x3, x0, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd1a7fde5b4ad00f8 # initialize rs1
roriw x31, x1, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x83f3a8fb1694b2d1 # initialize rs1
roriw x19, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd022130999fd1c1b # initialize rs1
roriw x27, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc87891779246be32 # initialize rs1
roriw x14, x4, 29 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab3dcebb4280159e # initialize rs1
roriw x18, x5, 4 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x10921299edaab363 # initialize rs1
roriw x26, x6, 14 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x79e21596c576876d # initialize rs1
roriw x23, x7, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2b3f4cc0b0bb8892 # initialize rs1
roriw x26, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xef4994e8f491690b # initialize rs1
roriw x13, x9, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa78ea00cc858eb17 # initialize rs1
roriw x17, x10, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x413738168e517306 # initialize rs1
roriw x21, x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x33f68c78a1f26018 # initialize rs1
roriw x21, x12, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbcbbce581d7ad334 # initialize rs1
roriw x12, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x22b3e4069a497656 # initialize rs1
roriw x7, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x83293bc814604a32 # initialize rs1
roriw x3, x15, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xac0f894024801d24 # initialize rs1
roriw x15, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe44a7dabcd856255 # initialize rs1
roriw x1, x17, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0bfbfef62256df0a # initialize rs1
roriw x23, x18, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0146edc0ea80e986 # initialize rs1
roriw x16, x19, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8eac849d413b37ff # initialize rs1
roriw x11, x20, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe63f52211d0f5119 # initialize rs1
roriw x22, x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa9a616e5bbd7855f # initialize rs1
roriw x21, x22, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x702c1be23e61930f # initialize rs1
roriw x26, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4767e9b5f7ba3a54 # initialize rs1
roriw x2, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x43c96e8b57ded8b9 # initialize rs1
roriw x27, x25, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x5b42343f4a554d12 # initialize rs1
roriw x1, x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x9d3537e783c65d6f # initialize rs1
roriw x29, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x96027b03f484c7a9 # initialize rs1
roriw x8, x28, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xa7dd14433afc97e5 # initialize rs1
roriw x21, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x764a27004fb0dc02 # initialize rs1
roriw x1, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xa4f2388cfd70a136 # initialize rs1
roriw x19, x31, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x504584b7106d32e8 # initialize rs1
roriw x0, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x8f2d8bcbe579b5fa # initialize rs1
roriw x1, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x4234ae61902daf9e # initialize rs1
roriw x2, x7, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x9ebed4e093e5c83b # initialize rs1
roriw x3, x24, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x8cf27f00faa64a55 # initialize rs1
roriw x4, x27, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x39017f7bc56d4089 # initialize rs1
roriw x5, x17, 27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x2e08f5d3ddd0e3f2 # initialize rs1
roriw x6, x5, 16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x752494a4c2f37bb3 # initialize rs1
roriw x7, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xec60c9874705ffdf # initialize rs1
roriw x8, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x293bdc58c49c5a41 # initialize rs1
roriw x9, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xf2bd1b369b47df35 # initialize rs1
roriw x10, x12, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x84c51c9f5ae29487 # initialize rs1
roriw x11, x3, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x4488377a36924bfd # initialize rs1
roriw x12, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0xfd19d9ac772804e0 # initialize rs1
roriw x13, x7, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0xeed34b5c5ae7b86e # initialize rs1
roriw x14, x7, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x14bf9ab8e080ab49 # initialize rs1
roriw x15, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x23d80d2f0afd5216 # initialize rs1
roriw x16, x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x87aca1695e336d62 # initialize rs1
roriw x17, x12, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0xa3d7a6ea723aabbd # initialize rs1
roriw x18, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0xca34368283820441 # initialize rs1
roriw x19, x7, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x4f3e25cda616c3c9 # initialize rs1
roriw x20, x13, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x398c0026a4d1e6b4 # initialize rs1
roriw x21, x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x3c1b7d80c454deb4 # initialize rs1
roriw x22, x17, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0xfb335f67312fc4a6 # initialize rs1
roriw x23, x14, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0x6ee278546f772990 # initialize rs1
roriw x24, x15, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0x50f0a0b27f87a5d5 # initialize rs1
roriw x25, x17, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x17e462a80975a99e # initialize rs1
roriw x26, x28, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x31, 0x4fa62fbdd0fec812 # initialize rs1
roriw x27, x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0xfd70a7948775a328 # initialize rs1
roriw x28, x26, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x7e9096ed2dd33190 # initialize rs1
roriw x29, x28, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x77e78907316ee334 # initialize rs1
roriw x30, x25, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0xfb10db4b3dff6412 # initialize rs1
roriw x31, x1, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x0000000000000000 # initialize rs1
roriw x18, x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
roriw x14, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x0000000000000002 # initialize rs1
roriw x8, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x14, 0x8000000000000000 # initialize rs1
roriw x2, x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
roriw x25, x10, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
roriw x22, x1, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
roriw x28, x20, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
roriw x1, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
roriw x16, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
roriw x9, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
roriw x13, x23, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
roriw x14, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs1
roriw x20, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
roriw x16, x20, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs1
roriw x20, x13, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
roriw x15, x23, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x21c308a8a0670f93 # initialize rs1
roriw x0, x0, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa4113c81149f6d51 # initialize rs1
roriw x1, x1, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1ccfaad71497e835 # initialize rs1
roriw x2, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbf691e37a178cfff # initialize rs1
roriw x3, x3, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbb90cfc9603ad42d # initialize rs1
roriw x4, x4, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x67cd1014a41b5db0 # initialize rs1
roriw x5, x5, 29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0248f5baeb88d0cb # initialize rs1
roriw x6, x6, 9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd9cccdf06efb8081 # initialize rs1
roriw x7, x7, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf1f243b448a75db2 # initialize rs1
roriw x8, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb2492f7463edc13c # initialize rs1
roriw x9, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x159910a9437e683b # initialize rs1
roriw x10, x10, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd4466b323b798a0c # initialize rs1
roriw x11, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe177d2f438ef6086 # initialize rs1
roriw x12, x12, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x27ce51d052453326 # initialize rs1
roriw x13, x13, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xea99d7253fe1e19c # initialize rs1
roriw x14, x14, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa149168bbb1222a5 # initialize rs1
roriw x15, x15, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9eead0ad96c176c1 # initialize rs1
roriw x16, x16, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0f3e6521a976563f # initialize rs1
roriw x17, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5028771b7f71244a # initialize rs1
roriw x18, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xffb98a067d6d656b # initialize rs1
roriw x19, x19, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1b395979db69c609 # initialize rs1
roriw x20, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x79d72913e717f9eb # initialize rs1
roriw x21, x21, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x330e9fcfb50ce6bd # initialize rs1
roriw x22, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd757a2724f40fe75 # initialize rs1
roriw x23, x23, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6b4c71b8895e823f # initialize rs1
roriw x24, x24, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb61d29ec4650ad7b # initialize rs1
roriw x25, x25, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc12556b97c20d365 # initialize rs1
roriw x26, x26, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x724e27406d34c67d # initialize rs1
roriw x27, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6ff16e33c9b9ff7d # initialize rs1
roriw x28, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc2c5d5f95c8805de # initialize rs1
roriw x29, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa459c4788e102083 # initialize rs1
roriw x30, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb09fc05f2d5bdff6 # initialize rs1
roriw x31, x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm_5 (Test bit = 0)
li x28, 0x98ac4c396c3d7862 # initialize rs1
roriw x24, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cp_uimm_5 (Test bit = 1)
li x2, 0x35956544a5b4a1f4 # initialize rs1
roriw x30, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cp_uimm_5 (Test bit = 2)
li x16, 0x7e81a3938f6336aa # initialize rs1
roriw x3, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cp_uimm_5 (Test bit = 3)
li x30, 0x66bb1300b4b66bb2 # initialize rs1
roriw x31, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cp_uimm_5 (Test bit = 4)
li x18, 0xa1ef042a4b914a7c # initialize rs1
roriw x26, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 928)

# Testcase cp_uimm_5 (Test bit = 5)
li x11, 0xcb1c551c2fc5ecb6 # initialize rs1
roriw x10, x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 936)

# Testcase cp_uimm_5 (Test bit = 6)
li x17, 0xcdced29c40949584 # initialize rs1
roriw x2, x17, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cp_uimm_5 (Test bit = 7)
li x22, 0xf1030b42bef1df26 # initialize rs1
roriw x23, x22, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 952)

# Testcase cp_uimm_5 (Test bit = 8)
li x7, 0x49deb9c18dc10143 # initialize rs1
roriw x17, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_uimm_5 (Test bit = 9)
li x13, 0x8a5b9dd07f062d8e # initialize rs1
roriw x5, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_uimm_5 (Test bit = 10)
li x31, 0x3ae6f3f0a480b80e # initialize rs1
roriw x16, x31, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cp_uimm_5 (Test bit = 11)
li x7, 0x13c2dde100ffaf8b # initialize rs1
roriw x1, x7, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cp_uimm_5 (Test bit = 12)
li x31, 0xe9058fa5c38614d6 # initialize rs1
roriw x20, x31, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 992)

# Testcase cp_uimm_5 (Test bit = 13)
li x8, 0x620a217d9493571d # initialize rs1
roriw x25, x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1000)

# Testcase cp_uimm_5 (Test bit = 14)
li x17, 0x830479c9f45cbbde # initialize rs1
roriw x6, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1008)

# Testcase cp_uimm_5 (Test bit = 15)
li x1, 0xb68b90b073fc18b9 # initialize rs1
roriw x26, x1, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cp_uimm_5 (Test bit = 16)
li x14, 0xe7b83f01b82b1b19 # initialize rs1
roriw x30, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cp_uimm_5 (Test bit = 17)
li x31, 0xfbae13a9bb651f91 # initialize rs1
roriw x17, x31, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1032)

# Testcase cp_uimm_5 (Test bit = 18)
li x12, 0xc8cfb957a2727731 # initialize rs1
roriw x7, x12, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cp_uimm_5 (Test bit = 19)
li x8, 0xafc79105d77b9e65 # initialize rs1
roriw x27, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cp_uimm_5 (Test bit = 20)
li x5, 0x3e7fdf7c1a84a725 # initialize rs1
roriw x22, x5, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cp_uimm_5 (Test bit = 21)
li x7, 0x6bf5b5c97e8efd7a # initialize rs1
roriw x15, x7, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cp_uimm_5 (Test bit = 22)
li x5, 0xa8e74f026a4bf602 # initialize rs1
roriw x21, x5, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cp_uimm_5 (Test bit = 23)
li x6, 0x7a57c748e42e1449 # initialize rs1
roriw x26, x6, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cp_uimm_5 (Test bit = 24)
li x1, 0xfbc2b8b6fb632d72 # initialize rs1
roriw x3, x1, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cp_uimm_5 (Test bit = 25)
li x9, 0x633147b33f363578 # initialize rs1
roriw x2, x9, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cp_uimm_5 (Test bit = 26)
li x28, 0x46869528800f5a6e # initialize rs1
roriw x31, x28, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1104)

# Testcase cp_uimm_5 (Test bit = 27)
li x25, 0x3bcfbb62a6164183 # initialize rs1
roriw x6, x25, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cp_uimm_5 (Test bit = 28)
li x24, 0xa3cbdc0728543b95 # initialize rs1
roriw x6, x24, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cp_uimm_5 (Test bit = 29)
li x10, 0x3c5c62de70bb25a9 # initialize rs1
roriw x21, x10, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cp_uimm_5 (Test bit = 30)
li x7, 0x9a4cd5119cc10551 # initialize rs1
roriw x30, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cp_uimm_5 (Test bit = 31)
li x3, 0xa265c016e3424fb6 # initialize rs1
roriw x31, x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x10, x13 # perform first operation
roriw x2, x20, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x2, x8 # perform first operation
roriw x3, x30, 29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x26, x25 # perform first operation
roriw x24, x11, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x29, x14 # perform first operation
roriw x3, x21, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x15, x24 # perform first operation
roriw x26, x2, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x11, x28 # perform first operation
roriw x12, x24, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x16, x27 # perform first operation
roriw x3, x10, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x7, x6 # perform first operation
roriw x10, x22, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x23, x9 # perform first operation
roriw x6, x17, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x6, x12 # perform first operation
roriw x6, x24, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x18, x14 # perform first operation
roriw x14, x9, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x26, x1 # perform first operation
roriw x17, x20, 8 # perform second (triggering) operation

.EQU SIGSIZE,1152


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
