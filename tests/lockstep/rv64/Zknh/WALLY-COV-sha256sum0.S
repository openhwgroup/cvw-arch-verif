///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha256sum0.S
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
li x0, 0x927d86822d067f05 # initialize rs1
sha256sum0 x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfd104de9f8fc08dc # initialize rs1
sha256sum0 x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7407677c60ab0f0b # initialize rs1
sha256sum0 x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xec5dff4b6486d566 # initialize rs1
sha256sum0 x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfeb860dcf7ce6041 # initialize rs1
sha256sum0 x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x489fc586813ef790 # initialize rs1
sha256sum0 x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x72bc39bf439ad02b # initialize rs1
sha256sum0 x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc5f3c618eb9c32d2 # initialize rs1
sha256sum0 x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x151096708ad03f14 # initialize rs1
sha256sum0 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0cbb36849b589503 # initialize rs1
sha256sum0 x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2abb92a5a81b5d4a # initialize rs1
sha256sum0 x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x74b63149712b1f3c # initialize rs1
sha256sum0 x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x5bd969fd3945bc76 # initialize rs1
sha256sum0 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xadc508076f8a52b0 # initialize rs1
sha256sum0 x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xac6d6bfa2d798346 # initialize rs1
sha256sum0 x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1cf220d1beb5d32d # initialize rs1
sha256sum0 x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7b60dc8cb60b15c6 # initialize rs1
sha256sum0 x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb948724e5e3e35d8 # initialize rs1
sha256sum0 x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x59daa9eedbd2a745 # initialize rs1
sha256sum0 x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1e7ca89c8fca3b85 # initialize rs1
sha256sum0 x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9aaaf6ae4a85d1ac # initialize rs1
sha256sum0 x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xa0175166711696cf # initialize rs1
sha256sum0 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x8ab7f4c00a490f6b # initialize rs1
sha256sum0 x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x48c35941bfc57b96 # initialize rs1
sha256sum0 x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdbba6fa02b3a9a73 # initialize rs1
sha256sum0 x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcf26e55001f168b0 # initialize rs1
sha256sum0 x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x31bd453295e076d0 # initialize rs1
sha256sum0 x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x72c722b8ac74ad68 # initialize rs1
sha256sum0 x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xda6b734c77b97c66 # initialize rs1
sha256sum0 x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9d6a68128c98bcc8 # initialize rs1
sha256sum0 x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xad6f6fc6b3826d84 # initialize rs1
sha256sum0 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6d361f8a7194fe1b # initialize rs1
sha256sum0 x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0xe5c5b317bb290dbe # initialize rs1
sha256sum0 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x18, 0xd858e0287c46db54 # initialize rs1
sha256sum0 x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xdfea11118ea7ccdf # initialize rs1
sha256sum0 x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0x0a4b0b8a27ff4fe2 # initialize rs1
sha256sum0 x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x04f183b8835e63ba # initialize rs1
sha256sum0 x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x0994fc0d5345df14 # initialize rs1
sha256sum0 x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xb6a6e45da3dc6e51 # initialize rs1
sha256sum0 x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xab1da6e7118ea042 # initialize rs1
sha256sum0 x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0xda519e187e72a344 # initialize rs1
sha256sum0 x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x1ac06a652e96e2db # initialize rs1
sha256sum0 x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0xda7c1e28527779e7 # initialize rs1
sha256sum0 x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0x0d1f135990964d70 # initialize rs1
sha256sum0 x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0xa9338c5b0d41f68e # initialize rs1
sha256sum0 x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x5b9d59d307162a63 # initialize rs1
sha256sum0 x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x24, 0x9d7628de5eb84342 # initialize rs1
sha256sum0 x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x5aef54cd0eebeccc # initialize rs1
sha256sum0 x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x5ced26e51f11a249 # initialize rs1
sha256sum0 x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x8d6751a6ae2980fb # initialize rs1
sha256sum0 x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0x03d7895d58396811 # initialize rs1
sha256sum0 x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x5e30278748d12d90 # initialize rs1
sha256sum0 x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x8ae71ea86f118c00 # initialize rs1
sha256sum0 x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x7e2ef9c69ae23215 # initialize rs1
sha256sum0 x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0xc5d9855e9a8756b2 # initialize rs1
sha256sum0 x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x26a1739e2c796600 # initialize rs1
sha256sum0 x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x10ea7a4a955f1bc0 # initialize rs1
sha256sum0 x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x47613f5a281bd81f # initialize rs1
sha256sum0 x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0x063ad48731ab1387 # initialize rs1
sha256sum0 x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x67737080c6f0ef57 # initialize rs1
sha256sum0 x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x36c9786f99adcb31 # initialize rs1
sha256sum0 x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xf5859bb121e74ad9 # initialize rs1
sha256sum0 x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x4cd16fc27a602e89 # initialize rs1
sha256sum0 x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x12, 0x6a89f827dee1992c # initialize rs1
sha256sum0 x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x0000000000000000 # initialize rs1
sha256sum0 x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x0000000000000001 # initialize rs1
sha256sum0 x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x0000000000000002 # initialize rs1
sha256sum0 x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
sha256sum0 x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
sha256sum0 x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
sha256sum0 x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
sha256sum0 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
sha256sum0 x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
sha256sum0 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
sha256sum0 x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sum0 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
sha256sum0 x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
sha256sum0 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
sha256sum0 x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
sha256sum0 x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
sha256sum0 x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe2a9db96e7a62344 # initialize rs1
sha256sum0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9fa122ede57db740 # initialize rs1
sha256sum0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x94959aef2079caed # initialize rs1
sha256sum0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4e3f9d7623506b36 # initialize rs1
sha256sum0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97b86da3a0e35a05 # initialize rs1
sha256sum0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x790f023c2392950b # initialize rs1
sha256sum0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcb02245f7a3dd86a # initialize rs1
sha256sum0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3ab43b1f9709f29c # initialize rs1
sha256sum0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf8a9090b50108dfa # initialize rs1
sha256sum0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0af3c66f0e40a2dc # initialize rs1
sha256sum0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x17f8775a6c287bbc # initialize rs1
sha256sum0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x32a42e386728c3f1 # initialize rs1
sha256sum0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfac7875c3175ecb7 # initialize rs1
sha256sum0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdb8748ea40bb8c1a # initialize rs1
sha256sum0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xefd1ccc297493558 # initialize rs1
sha256sum0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x74e1f1560271789c # initialize rs1
sha256sum0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x23f05502dd695781 # initialize rs1
sha256sum0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4897581563e67792 # initialize rs1
sha256sum0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe87b814403b059e4 # initialize rs1
sha256sum0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xec57232fb96e42e4 # initialize rs1
sha256sum0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1fe356aeb7176cfe # initialize rs1
sha256sum0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x326c8248562d146f # initialize rs1
sha256sum0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbd8fc0bb8aac0011 # initialize rs1
sha256sum0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1cfba62094b012cb # initialize rs1
sha256sum0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x60d354bdfe2ed3ff # initialize rs1
sha256sum0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xec1c73ca4189e7cf # initialize rs1
sha256sum0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcedadda30bcc268e # initialize rs1
sha256sum0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7cf3ab6b5d9caa3e # initialize rs1
sha256sum0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2dea436afafd2ad7 # initialize rs1
sha256sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x2b365bfc41de6f7b # initialize rs1
sha256sum0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x509ed9e83c1389a7 # initialize rs1
sha256sum0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x27ac1dc09259b2a4 # initialize rs1
sha256sum0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x31, x15 # perform first operation
sha256sum0 x13, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x6, x19 # perform first operation
sha256sum0 x15, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x9, x26 # perform first operation
sha256sum0 x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x27, x9 # perform first operation
sha256sum0 x11, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x16, x12 # perform first operation
sha256sum0 x16, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x23, x9 # perform first operation
sha256sum0 x2, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x9, x30 # perform first operation
sha256sum0 x10, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x20, x5 # perform first operation
sha256sum0 x18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x12, x25 # perform first operation
sha256sum0 x9, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x11, x21 # perform first operation
sha256sum0 x11, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x12, x7 # perform first operation
sha256sum0 x7, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x11, x15 # perform first operation
sha256sum0 x14, x21 # perform second (triggering) operation

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
