///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sraiw.S
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
li x0, 0x212ec0c26b3e424d # initialize rs1
sraiw x13, x0, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x82dc257fc8c73e9c # initialize rs1
sraiw x23, x1, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf916860917a8f777 # initialize rs1
sraiw x14, x2, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x4effd5ccded9ecb4 # initialize rs1
sraiw x26, x3, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4222b5a7e5363bfb # initialize rs1
sraiw x30, x4, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe56c25182c417957 # initialize rs1
sraiw x6, x5, 15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xa4a9bf9c5db046b7 # initialize rs1
sraiw x24, x6, 27 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5c411323cbf6ae89 # initialize rs1
sraiw x8, x7, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7cfbb16c56f95bdd # initialize rs1
sraiw x6, x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0d9a229dd4952b0a # initialize rs1
sraiw x24, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x065a09dc0831e20a # initialize rs1
sraiw x12, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe435d63fb648362e # initialize rs1
sraiw x22, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x13bd36807214f260 # initialize rs1
sraiw x22, x12, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xba785ccffee07a41 # initialize rs1
sraiw x24, x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf7b737a4602a314c # initialize rs1
sraiw x22, x14, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd520650f4df6ee2c # initialize rs1
sraiw x29, x15, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1661435b59af5667 # initialize rs1
sraiw x1, x16, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xebc1894f0d12cebb # initialize rs1
sraiw x11, x17, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x8658f6ccf28dc6a8 # initialize rs1
sraiw x22, x18, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x747b34c2e9fe02a2 # initialize rs1
sraiw x15, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x11eb401e8d16fafc # initialize rs1
sraiw x25, x20, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7b3d775b9496efd6 # initialize rs1
sraiw x22, x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x37b493e6493f3cf4 # initialize rs1
sraiw x15, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5f15c0c108e2ab35 # initialize rs1
sraiw x2, x23, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x3c46183fb3330dfe # initialize rs1
sraiw x14, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe9cd652caa2f7dbd # initialize rs1
sraiw x18, x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x52526cb79cdc307e # initialize rs1
sraiw x18, x26, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3e0ff9adbebc64e1 # initialize rs1
sraiw x12, x27, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3bbced9310836ebb # initialize rs1
sraiw x6, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x22b59b47faf71881 # initialize rs1
sraiw x10, x29, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7343b1ba56295394 # initialize rs1
sraiw x28, x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xa05e9dab4e3f2a73 # initialize rs1
sraiw x21, x31, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 248)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0x2beb53ded6c118ad # initialize rs1
sraiw x0, x28, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x84c11429a5b52a31 # initialize rs1
sraiw x1, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0xe09786c390f86cbf # initialize rs1
sraiw x2, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0x49438908715aab39 # initialize rs1
sraiw x3, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xf6a537a8f9002209 # initialize rs1
sraiw x4, x15, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x01b130a970fb9b2f # initialize rs1
sraiw x5, x27, 28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x406f796503465648 # initialize rs1
sraiw x6, x20, 31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xf5953b62e8d6c523 # initialize rs1
sraiw x7, x10, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0xc9d42a7186a0f77e # initialize rs1
sraiw x8, x22, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0xa396591b5f977614 # initialize rs1
sraiw x9, x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xfb956b734c90d4a0 # initialize rs1
sraiw x10, x31, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x3e41f96ad0035f20 # initialize rs1
sraiw x11, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0xe0d78e99c14504a9 # initialize rs1
sraiw x12, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x7e60d6a7e7021d68 # initialize rs1
sraiw x13, x19, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x1612b0f8ce27eb4a # initialize rs1
sraiw x14, x2, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0xb2a4145fb61f2279 # initialize rs1
sraiw x15, x7, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x01159137d11b5540 # initialize rs1
sraiw x16, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0x769537b92d18cbb3 # initialize rs1
sraiw x17, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xc4820cdbbe3d977f # initialize rs1
sraiw x18, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0x14f7b3ab6f6fd0e4 # initialize rs1
sraiw x19, x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x463a05a4698088b1 # initialize rs1
sraiw x20, x18, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x4d97dc5a65dd0e40 # initialize rs1
sraiw x21, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x4e4733831d5c7f5b # initialize rs1
sraiw x22, x29, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x301e750901c68a72 # initialize rs1
sraiw x23, x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0x7e4df0abcd6dd174 # initialize rs1
sraiw x24, x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x0524137540be03eb # initialize rs1
sraiw x25, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x12, 0xe18f4d4283175c79 # initialize rs1
sraiw x26, x12, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x13, 0xaeefb845ff04e4d4 # initialize rs1
sraiw x27, x13, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x43cd2e1e59375b2e # initialize rs1
sraiw x28, x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x8743bcd83b7a5a7c # initialize rs1
sraiw x29, x3, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0x1063600990d968d6 # initialize rs1
sraiw x30, x24, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0xb3f1f2e1c7e03cbf # initialize rs1
sraiw x31, x23, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
sraiw x10, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
sraiw x24, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x0000000000000002 # initialize rs1
sraiw x19, x25, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
sraiw x2, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x2, 0x8000000000000001 # initialize rs1
sraiw x31, x2, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
sraiw x27, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
sraiw x7, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
sraiw x3, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
sraiw x3, x12, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
sraiw x13, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
sraiw x15, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
sraiw x5, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
sraiw x30, x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
sraiw x1, x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
sraiw x18, x12, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
sraiw x14, x8, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x41b41fd01f61adac # initialize rs1
sraiw x0, x0, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x26b8b3ade7123c4a # initialize rs1
sraiw x1, x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7c45d8c480eed68e # initialize rs1
sraiw x2, x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd4c6311bb8e7ec9b # initialize rs1
sraiw x3, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdf70c3ed28ce4cd3 # initialize rs1
sraiw x4, x4, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x24135747f1691ed9 # initialize rs1
sraiw x5, x5, 4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xaffe3ca753d1977d # initialize rs1
sraiw x6, x6, 11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x99042029482d25cb # initialize rs1
sraiw x7, x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x859d5e9e96d52fa6 # initialize rs1
sraiw x8, x8, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc7cdb76d30d32eb8 # initialize rs1
sraiw x9, x9, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x284c6b75e2eb915e # initialize rs1
sraiw x10, x10, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x672aee5a51b399c7 # initialize rs1
sraiw x11, x11, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb253269c3bd5d543 # initialize rs1
sraiw x12, x12, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x498e7b1f512b4711 # initialize rs1
sraiw x13, x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc3bd3081ca35c245 # initialize rs1
sraiw x14, x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf9fdb8d629673773 # initialize rs1
sraiw x15, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x48dc2057f89dfdfe # initialize rs1
sraiw x16, x16, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd61120a3081c66c2 # initialize rs1
sraiw x17, x17, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5c7d0910f49768a6 # initialize rs1
sraiw x18, x18, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x873763817a00d625 # initialize rs1
sraiw x19, x19, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x51c24eae9f620ca3 # initialize rs1
sraiw x20, x20, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9a05df06561d2479 # initialize rs1
sraiw x21, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xdf3e9fd8352b33d5 # initialize rs1
sraiw x22, x22, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9a8faf18e2c7cb9a # initialize rs1
sraiw x23, x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1c0a210555a01b4d # initialize rs1
sraiw x24, x24, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x6909fae2bb969838 # initialize rs1
sraiw x25, x25, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdbc16d2e055049bb # initialize rs1
sraiw x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xbedd8b4682e7d1fe # initialize rs1
sraiw x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcb19c2d0a64116a8 # initialize rs1
sraiw x28, x28, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3efd73835ffc2eaf # initialize rs1
sraiw x29, x29, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2aa6859b5da5df65 # initialize rs1
sraiw x30, x30, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb3251626eb58b498 # initialize rs1
sraiw x31, x31, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm_5 (Test bit = 0)
li x19, 0x35af3d0cb28b039e # initialize rs1
sraiw x31, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cp_uimm_5 (Test bit = 1)
li x13, 0xa76e5aa7eca0513a # initialize rs1
sraiw x10, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_uimm_5 (Test bit = 2)
li x7, 0x6f8fc1c508811898 # initialize rs1
sraiw x27, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 912)

# Testcase cp_uimm_5 (Test bit = 3)
li x7, 0xa3ac38260548976c # initialize rs1
sraiw x14, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cp_uimm_5 (Test bit = 4)
li x13, 0xd7ee04eec5f57bf5 # initialize rs1
sraiw x20, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cp_uimm_5 (Test bit = 5)
li x6, 0x995f5a13d2ae5fa0 # initialize rs1
sraiw x14, x6, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cp_uimm_5 (Test bit = 6)
li x16, 0xc4cc3f4f46330d03 # initialize rs1
sraiw x20, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 944)

# Testcase cp_uimm_5 (Test bit = 7)
li x2, 0xdb471e63f879d938 # initialize rs1
sraiw x29, x2, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cp_uimm_5 (Test bit = 8)
li x24, 0x683b125e8839a58a # initialize rs1
sraiw x29, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 960)

# Testcase cp_uimm_5 (Test bit = 9)
li x30, 0xeb332c2e8fc81f5d # initialize rs1
sraiw x7, x30, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cp_uimm_5 (Test bit = 10)
li x7, 0xbf517bd2eb046177 # initialize rs1
sraiw x14, x7, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cp_uimm_5 (Test bit = 11)
li x18, 0x73c7fb24c73029d5 # initialize rs1
sraiw x15, x18, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cp_uimm_5 (Test bit = 12)
li x22, 0x9a98337e30f92c45 # initialize rs1
sraiw x19, x22, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cp_uimm_5 (Test bit = 13)
li x9, 0x9602114cbbad2c3d # initialize rs1
sraiw x7, x9, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cp_uimm_5 (Test bit = 14)
li x13, 0xbbf5024ddd2f3797 # initialize rs1
sraiw x12, x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cp_uimm_5 (Test bit = 15)
li x9, 0x085e5de7845896d2 # initialize rs1
sraiw x21, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cp_uimm_5 (Test bit = 16)
li x3, 0x46a7d84331f9ee5d # initialize rs1
sraiw x31, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1024)

# Testcase cp_uimm_5 (Test bit = 17)
li x22, 0xa8cb606bd61a472c # initialize rs1
sraiw x31, x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cp_uimm_5 (Test bit = 18)
li x7, 0x80beaa634cd8f20e # initialize rs1
sraiw x3, x7, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cp_uimm_5 (Test bit = 19)
li x1, 0x4913a45b6fcdfdb1 # initialize rs1
sraiw x20, x1, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1048)

# Testcase cp_uimm_5 (Test bit = 20)
li x12, 0x097c0263bbaec3ae # initialize rs1
sraiw x8, x12, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cp_uimm_5 (Test bit = 21)
li x17, 0xe6e73e968125b3b2 # initialize rs1
sraiw x12, x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cp_uimm_5 (Test bit = 22)
li x30, 0x739ed6b75f792edf # initialize rs1
sraiw x23, x30, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cp_uimm_5 (Test bit = 23)
li x18, 0xbeabe9b351e19d8a # initialize rs1
sraiw x27, x18, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cp_uimm_5 (Test bit = 24)
li x28, 0x3c5b500e1f9a4611 # initialize rs1
sraiw x2, x28, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cp_uimm_5 (Test bit = 25)
li x10, 0x66cf8e607d7ed572 # initialize rs1
sraiw x5, x10, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cp_uimm_5 (Test bit = 26)
li x7, 0xd94bc42f7977f5c5 # initialize rs1
sraiw x8, x7, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cp_uimm_5 (Test bit = 27)
li x13, 0x8d0b2d86fa7685c1 # initialize rs1
sraiw x24, x13, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1112)

# Testcase cp_uimm_5 (Test bit = 28)
li x2, 0x58330d0ebc40cff8 # initialize rs1
sraiw x31, x2, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cp_uimm_5 (Test bit = 29)
li x28, 0xa8314d918b2578d5 # initialize rs1
sraiw x6, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cp_uimm_5 (Test bit = 30)
li x11, 0x29a77b508a016284 # initialize rs1
sraiw x22, x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cp_uimm_5 (Test bit = 31)
li x13, 0xee85a8402bd0c13f # initialize rs1
sraiw x22, x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x3, x23 # perform first operation
sraiw x9, x20, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x23, x11 # perform first operation
sraiw x10, x12, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x22, x15 # perform first operation
sraiw x20, x31, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x12, x7 # perform first operation
sraiw x17, x17, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x22, x15 # perform first operation
sraiw x15, x11, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x22, x21 # perform first operation
sraiw x22, x17, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x6, x27 # perform first operation
sraiw x12, x26, 11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x26, x27 # perform first operation
sraiw x7, x1, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x13, x2 # perform first operation
sraiw x16, x25, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x14, x29 # perform first operation
sraiw x14, x16, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x31, x22 # perform first operation
sraiw x22, x6, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x5, x29 # perform first operation
sraiw x9, x24, 6 # perform second (triggering) operation

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
