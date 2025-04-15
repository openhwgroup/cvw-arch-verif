///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha256sum1.S
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
li x0, 0x6b38fc01aefbcc24 # initialize rs1
sha256sum1 x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8ed24d5d9b30cf57 # initialize rs1
sha256sum1 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xc51e2c5b0dd9f5ef # initialize rs1
sha256sum1 x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xafae3a9fd5164483 # initialize rs1
sha256sum1 x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9410464ac59320dd # initialize rs1
sha256sum1 x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9762ddd0f3987d05 # initialize rs1
sha256sum1 x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x28a776aef822624a # initialize rs1
sha256sum1 x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x968034edc83f6369 # initialize rs1
sha256sum1 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbbcc6d0c43216df1 # initialize rs1
sha256sum1 x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x58e3875e523d1995 # initialize rs1
sha256sum1 x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x099219a3ac55ff2d # initialize rs1
sha256sum1 x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x214a08a458dfe530 # initialize rs1
sha256sum1 x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd9b9bdd0bbe288e6 # initialize rs1
sha256sum1 x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x06ee1bc9b03771a2 # initialize rs1
sha256sum1 x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xd6b4205ea4119e03 # initialize rs1
sha256sum1 x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x52c7fcd9252e92c8 # initialize rs1
sha256sum1 x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x473f41848361acc5 # initialize rs1
sha256sum1 x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x863f2103a87b6834 # initialize rs1
sha256sum1 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe9ac0381fc6c2ac5 # initialize rs1
sha256sum1 x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa5978875081f0d2a # initialize rs1
sha256sum1 x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1c7604856c3942fd # initialize rs1
sha256sum1 x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9da1bfcc89466d63 # initialize rs1
sha256sum1 x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xcc3f03c6b3cd1d45 # initialize rs1
sha256sum1 x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1fbe09c4ce24353a # initialize rs1
sha256sum1 x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc331502a415f4604 # initialize rs1
sha256sum1 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xabdc7140c7aa00bd # initialize rs1
sha256sum1 x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4ec1477213b35bf2 # initialize rs1
sha256sum1 x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbfc8825717c0357a # initialize rs1
sha256sum1 x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb63ab907a1f98f6f # initialize rs1
sha256sum1 x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xaaa365d4c3a8e213 # initialize rs1
sha256sum1 x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x69d0835f51be0a7e # initialize rs1
sha256sum1 x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc1af09e501d69105 # initialize rs1
sha256sum1 x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0x0dbc8df174684b6a # initialize rs1
sha256sum1 x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x6a962a52270b7628 # initialize rs1
sha256sum1 x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x5e465bff785583f0 # initialize rs1
sha256sum1 x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x87a04c96be58dc04 # initialize rs1
sha256sum1 x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x7c507ee70e9ce929 # initialize rs1
sha256sum1 x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xeded50a30b94a1e6 # initialize rs1
sha256sum1 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x2b0006b2c0e16f05 # initialize rs1
sha256sum1 x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x8caed418349d01d5 # initialize rs1
sha256sum1 x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x797d3ed27b328b9b # initialize rs1
sha256sum1 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x236d57f1fef3dbfa # initialize rs1
sha256sum1 x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x9e2ba646d5556c58 # initialize rs1
sha256sum1 x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x16e3cc0ac514750b # initialize rs1
sha256sum1 x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xcc958395d296f512 # initialize rs1
sha256sum1 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xb83bbaeb8a562247 # initialize rs1
sha256sum1 x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0xbba92069ec325d16 # initialize rs1
sha256sum1 x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xb0b05de0b3e22d90 # initialize rs1
sha256sum1 x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0xf6aed1078b0af172 # initialize rs1
sha256sum1 x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0xbdf96adeb757cc42 # initialize rs1
sha256sum1 x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xb4d1653622837e71 # initialize rs1
sha256sum1 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0xb6cad7e3ba99a560 # initialize rs1
sha256sum1 x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x0375d0551fbb8645 # initialize rs1
sha256sum1 x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x4feb294dcb62a726 # initialize rs1
sha256sum1 x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0xd5010b0d8384a38d # initialize rs1
sha256sum1 x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0x5f43775fe87db8ee # initialize rs1
sha256sum1 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0xbdf3347345ceae04 # initialize rs1
sha256sum1 x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x2bc386a325b1f54a # initialize rs1
sha256sum1 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xa9b9b816d03198e6 # initialize rs1
sha256sum1 x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x51c8e89d76d98c30 # initialize rs1
sha256sum1 x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0x94595992492724a7 # initialize rs1
sha256sum1 x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x23adfd69e10afc4d # initialize rs1
sha256sum1 x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x36f2a6bcb540326f # initialize rs1
sha256sum1 x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x4770575b408335aa # initialize rs1
sha256sum1 x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x0000000000000000 # initialize rs1
sha256sum1 x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rs1
sha256sum1 x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rs1
sha256sum1 x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
sha256sum1 x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
sha256sum1 x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
sha256sum1 x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
sha256sum1 x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
sha256sum1 x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
sha256sum1 x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
sha256sum1 x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sum1 x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
sha256sum1 x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
sha256sum1 x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
sha256sum1 x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
sha256sum1 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
sha256sum1 x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc8c1ca84cc141e9d # initialize rs1
sha256sum1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6f307d91f6c28431 # initialize rs1
sha256sum1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe3cb9ef4c09fbe39 # initialize rs1
sha256sum1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xca22488236285c68 # initialize rs1
sha256sum1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6e6cc336c20b0c45 # initialize rs1
sha256sum1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd54da41044ce98e0 # initialize rs1
sha256sum1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4eacab79c2ff6756 # initialize rs1
sha256sum1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa132b7c3e33636a8 # initialize rs1
sha256sum1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd30834d4a8d25a91 # initialize rs1
sha256sum1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1c0aa92eb209a81e # initialize rs1
sha256sum1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x33e5bd9190d7b7d2 # initialize rs1
sha256sum1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xddf517021f6f18b4 # initialize rs1
sha256sum1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa01fc582d02a4aa4 # initialize rs1
sha256sum1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x79f8e0df1a5619cb # initialize rs1
sha256sum1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x76c0d41c2654ee15 # initialize rs1
sha256sum1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc584920bcfa57725 # initialize rs1
sha256sum1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xeed7aa0e2cea14af # initialize rs1
sha256sum1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x519960a016091291 # initialize rs1
sha256sum1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6a13a73158ec0ea6 # initialize rs1
sha256sum1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfcb5da55b5c8b376 # initialize rs1
sha256sum1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd44a56c2e8dc9e3f # initialize rs1
sha256sum1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xff76848f2d1b98cd # initialize rs1
sha256sum1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd492662e8eedcb3c # initialize rs1
sha256sum1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5f6fda67ee9b611b # initialize rs1
sha256sum1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xea16988d0a3efbfd # initialize rs1
sha256sum1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x670f42a21fe7dd50 # initialize rs1
sha256sum1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5c4a8e6e9883cb43 # initialize rs1
sha256sum1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6d1e1a586ecd4b0c # initialize rs1
sha256sum1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb557229628d72ac4 # initialize rs1
sha256sum1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x02df77b4cbf0ffb2 # initialize rs1
sha256sum1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeaad83015b9f351a # initialize rs1
sha256sum1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfee222e37e18d46a # initialize rs1
sha256sum1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x30 # perform first operation
sha256sum1 x18, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x10, x11 # perform first operation
sha256sum1 x26, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x12, x26 # perform first operation
sha256sum1 x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x29, x31 # perform first operation
sha256sum1 x9, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x5, x14 # perform first operation
sha256sum1 x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x10, x23 # perform first operation
sha256sum1 x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x13, x10 # perform first operation
sha256sum1 x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x20, x2 # perform first operation
sha256sum1 x5, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x30, x9 # perform first operation
sha256sum1 x5, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x18, x17 # perform first operation
sha256sum1 x18, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x9, x16 # perform first operation
sha256sum1 x16, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x11, x18 # perform first operation
sha256sum1 x16, x17 # perform second (triggering) operation

.EQU SIGSIZE,896


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
