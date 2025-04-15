///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha256sig0.S
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
li x0, 0x585b572507775b64 # initialize rs1
sha256sig0 x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8e6fa824d008b50f # initialize rs1
sha256sig0 x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xbc2f279649614bbb # initialize rs1
sha256sig0 x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb5b30620d06c1cd9 # initialize rs1
sha256sig0 x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x422a0a0c78461b4c # initialize rs1
sha256sig0 x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd920928141a1e3f5 # initialize rs1
sha256sig0 x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x779e02b790c3b722 # initialize rs1
sha256sig0 x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xffadbc19f331b43e # initialize rs1
sha256sig0 x27, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9199a2a450417eb7 # initialize rs1
sha256sig0 x13, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x703dc036a8429a04 # initialize rs1
sha256sig0 x3, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8af088b1f84ebbfe # initialize rs1
sha256sig0 x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x78e41a851d205bc1 # initialize rs1
sha256sig0 x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x737bfe8be9d43b64 # initialize rs1
sha256sig0 x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x47e1c67144961339 # initialize rs1
sha256sig0 x21, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2b412e4d70f1b962 # initialize rs1
sha256sig0 x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xffaf6bdb631ae123 # initialize rs1
sha256sig0 x27, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7300b10e42290f32 # initialize rs1
sha256sig0 x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8ebca664e6c07578 # initialize rs1
sha256sig0 x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcba45dc4601ea6cd # initialize rs1
sha256sig0 x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xedad4b3159237211 # initialize rs1
sha256sig0 x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd1d051a24cc6bc00 # initialize rs1
sha256sig0 x26, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd7fe03976de88b2f # initialize rs1
sha256sig0 x19, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x52bfeb44cde89fee # initialize rs1
sha256sig0 x13, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa684f4f8fecb8ab9 # initialize rs1
sha256sig0 x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x38d7bc9be729a1bb # initialize rs1
sha256sig0 x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x76dfab961157f3d7 # initialize rs1
sha256sig0 x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9a981493f6cba85d # initialize rs1
sha256sig0 x11, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x89a563639da78e74 # initialize rs1
sha256sig0 x23, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9cbfd8162ebca732 # initialize rs1
sha256sig0 x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcc02457ac1c8f536 # initialize rs1
sha256sig0 x28, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0e48f315651564b3 # initialize rs1
sha256sig0 x25, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3e6e066b837b1482 # initialize rs1
sha256sig0 x18, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 248)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x10c2297ccd31d7e7 # initialize rs1
sha256sig0 x0, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0x727f2e338239e639 # initialize rs1
sha256sig0 x1, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xa57559b7f53a79de # initialize rs1
sha256sig0 x2, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xf58ccb17518f5761 # initialize rs1
sha256sig0 x3, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x16, 0xed148835ff29b9da # initialize rs1
sha256sig0 x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x2eed510f431bae86 # initialize rs1
sha256sig0 x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xf6bb8ed5d5b00588 # initialize rs1
sha256sig0 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xdd32832cb4dde737 # initialize rs1
sha256sig0 x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x4d39f67aa1df4801 # initialize rs1
sha256sig0 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x762deb7501bff39e # initialize rs1
sha256sig0 x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x4519d161d6240faf # initialize rs1
sha256sig0 x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0xcaa2b15555777cb3 # initialize rs1
sha256sig0 x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x3d4879ae9a7eff94 # initialize rs1
sha256sig0 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0xc45a16f073be9827 # initialize rs1
sha256sig0 x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x67eb554b0cd0ab69 # initialize rs1
sha256sig0 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xc757a0f5ed754d5e # initialize rs1
sha256sig0 x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xced8e601f4a173d6 # initialize rs1
sha256sig0 x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xd92ea87ccd4bb914 # initialize rs1
sha256sig0 x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xf949ed01a2fc473c # initialize rs1
sha256sig0 x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x25a44272f9e16dfe # initialize rs1
sha256sig0 x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x46fd178fb3585957 # initialize rs1
sha256sig0 x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xd5e670a486b245bc # initialize rs1
sha256sig0 x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xb2735603eb3782b0 # initialize rs1
sha256sig0 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x3, 0x5d770147969b92e2 # initialize rs1
sha256sig0 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0xf6c438dd2e1b54e8 # initialize rs1
sha256sig0 x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xeba3616ed20467c0 # initialize rs1
sha256sig0 x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x430bc41f3bff57c3 # initialize rs1
sha256sig0 x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0xa9de2fef7115b187 # initialize rs1
sha256sig0 x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0x340724a09d92df37 # initialize rs1
sha256sig0 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x06d151883d667072 # initialize rs1
sha256sig0 x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x793bb5095dbc051a # initialize rs1
sha256sig0 x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x14, 0x1e63f101920c6001 # initialize rs1
sha256sig0 x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
sha256sig0 x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
sha256sig0 x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
sha256sig0 x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x19, 0x8000000000000000 # initialize rs1
sha256sig0 x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x2, 0x8000000000000001 # initialize rs1
sha256sig0 x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
sha256sig0 x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
sha256sig0 x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
sha256sig0 x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
sha256sig0 x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
sha256sig0 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sig0 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
sha256sig0 x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
sha256sig0 x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
sha256sig0 x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
sha256sig0 x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
sha256sig0 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5ee54b14c2b107b3 # initialize rs1
sha256sig0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc5bf55ae3253b7a3 # initialize rs1
sha256sig0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5cbe808040d25cbb # initialize rs1
sha256sig0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd66e32f3dcec0ed6 # initialize rs1
sha256sig0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3e732f4450b9eb0d # initialize rs1
sha256sig0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9dabe1a7e327fc4c # initialize rs1
sha256sig0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6b5b8caec543a59 # initialize rs1
sha256sig0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa7b36edfba4f93d5 # initialize rs1
sha256sig0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4bd0746707de5ff1 # initialize rs1
sha256sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x77b8a697ef19e08a # initialize rs1
sha256sig0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8887a7584dbe7a70 # initialize rs1
sha256sig0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3766b8c5e56fd37e # initialize rs1
sha256sig0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd7cc770457d41ba6 # initialize rs1
sha256sig0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb373d08fda5e0824 # initialize rs1
sha256sig0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x88cb06eb34ab5399 # initialize rs1
sha256sig0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfe339d03532b75c9 # initialize rs1
sha256sig0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1bb92e9fcb340d4b # initialize rs1
sha256sig0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x514b867c18bcada7 # initialize rs1
sha256sig0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7819f733f1e6089d # initialize rs1
sha256sig0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x648344ad81ca7866 # initialize rs1
sha256sig0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3f52d9e061be0af4 # initialize rs1
sha256sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbf4b3924131bfa42 # initialize rs1
sha256sig0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x45596d9689492572 # initialize rs1
sha256sig0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x928d4f3ff4474e55 # initialize rs1
sha256sig0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x252af9ae79003080 # initialize rs1
sha256sig0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x87445118b407624c # initialize rs1
sha256sig0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa7ea0529303bb86e # initialize rs1
sha256sig0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2eed5df46a381dd9 # initialize rs1
sha256sig0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2c2498ef0e19c871 # initialize rs1
sha256sig0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x03e464d1a49d09b1 # initialize rs1
sha256sig0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x777320b0722fba0b # initialize rs1
sha256sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbe1756b9198ed03e # initialize rs1
sha256sig0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x6, x10 # perform first operation
sha256sig0 x27, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x18, x5 # perform first operation
sha256sig0 x6, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x11, x16 # perform first operation
sha256sig0 x9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x6, x29 # perform first operation
sha256sig0 x31, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x22, x23 # perform first operation
sha256sig0 x29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x1, x20 # perform first operation
sha256sig0 x1, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x10, x9 # perform first operation
sha256sig0 x16, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x9, x11 # perform first operation
sha256sig0 x16, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x13, x18 # perform first operation
sha256sig0 x25, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x29, x8 # perform first operation
sha256sig0 x29, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x10, x1 # perform first operation
sha256sig0 x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x16, x24 # perform first operation
sha256sig0 x12, x9 # perform second (triggering) operation

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
