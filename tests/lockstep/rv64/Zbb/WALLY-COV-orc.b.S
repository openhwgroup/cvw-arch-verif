///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-orc.b.S
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
li x0, 0x5074b9b2e5a97ce2 # initialize rs1
orc.b x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbe72735c8f765a23 # initialize rs1
orc.b x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x2fd0f93eca938fd7 # initialize rs1
orc.b x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x7149ddfab7cc77b8 # initialize rs1
orc.b x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x38837782e3b88551 # initialize rs1
orc.b x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe704d110adf3cc94 # initialize rs1
orc.b x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xea9082b88a1cbefe # initialize rs1
orc.b x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x863732a9ffba1295 # initialize rs1
orc.b x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa20b945cd707e0b0 # initialize rs1
orc.b x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x50037aece643ec91 # initialize rs1
orc.b x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7e73042ea30d1869 # initialize rs1
orc.b x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x6888178f098e9848 # initialize rs1
orc.b x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x75fdc92a51b347d0 # initialize rs1
orc.b x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x585549d093f4d190 # initialize rs1
orc.b x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x31581deb18f41384 # initialize rs1
orc.b x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe6f60f39ef70a2c0 # initialize rs1
orc.b x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb979123215452562 # initialize rs1
orc.b x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x00b97659fae94614 # initialize rs1
orc.b x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb361a368823fd148 # initialize rs1
orc.b x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x3597154336fbd627 # initialize rs1
orc.b x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xec9716c52208dc3a # initialize rs1
orc.b x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc9bf595842b1dd56 # initialize rs1
orc.b x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xcb64062dcb1616f6 # initialize rs1
orc.b x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x691a4f48451c3e79 # initialize rs1
orc.b x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x9ff728e620c3c0cb # initialize rs1
orc.b x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5ecce759435e4fdc # initialize rs1
orc.b x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf9efe4f33cd17e28 # initialize rs1
orc.b x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd36bdb871ad8450a # initialize rs1
orc.b x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x60042339779163c5 # initialize rs1
orc.b x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc0b94565f014ec05 # initialize rs1
orc.b x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xf704b5f75e3d2963 # initialize rs1
orc.b x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xdec04ad2e54b89e5 # initialize rs1
orc.b x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 248)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0x23e393509f64af0c # initialize rs1
orc.b x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x3e5684b1bdbd6ef7 # initialize rs1
orc.b x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0xf4340851a13ece98 # initialize rs1
orc.b x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x99e263c57e7a8332 # initialize rs1
orc.b x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xa6f094c68a7b692d # initialize rs1
orc.b x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x2e6299281c4b7e1e # initialize rs1
orc.b x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x5e6477d156d1386e # initialize rs1
orc.b x6, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x44dacbe1b1e22f83 # initialize rs1
orc.b x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0xb1c186713c56925b # initialize rs1
orc.b x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x2498b1e53f17aa79 # initialize rs1
orc.b x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xf4c2641b938a887d # initialize rs1
orc.b x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0x0219c9863210ed93 # initialize rs1
orc.b x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x189d491cbb980d32 # initialize rs1
orc.b x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x8656f7e46ccd037e # initialize rs1
orc.b x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x74829d06571f02de # initialize rs1
orc.b x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0xe0ce30ba9aa27a61 # initialize rs1
orc.b x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x8, 0xbe326ad245f8d430 # initialize rs1
orc.b x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x27, 0xd529809736d31952 # initialize rs1
orc.b x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0x4b3fd371b16f901c # initialize rs1
orc.b x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0x8644fd97de3e47f0 # initialize rs1
orc.b x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x22, 0x7186328e71076a3a # initialize rs1
orc.b x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x294a958de825250a # initialize rs1
orc.b x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x614d91c74b98d08b # initialize rs1
orc.b x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x20, 0xc4016986d4f1a5ec # initialize rs1
orc.b x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x3abb788b9ca75f67 # initialize rs1
orc.b x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x0e3340e447ec383f # initialize rs1
orc.b x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x8d3e8a03ad7ccaad # initialize rs1
orc.b x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x4670ca2519577c91 # initialize rs1
orc.b x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0x5707d09771e4436e # initialize rs1
orc.b x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x09d2f019463d6365 # initialize rs1
orc.b x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0xc4deb2a0da5ef30a # initialize rs1
orc.b x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0x44d87934e6df187e # initialize rs1
orc.b x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
orc.b x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
orc.b x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
orc.b x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
orc.b x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
orc.b x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
orc.b x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
orc.b x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
orc.b x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
orc.b x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
orc.b x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
orc.b x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x17, 0x5555555555555555 # initialize rs1
orc.b x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
orc.b x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
orc.b x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
orc.b x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
orc.b x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf4d4a8642980480c # initialize rs1
orc.b x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfc8302beb04141a6 # initialize rs1
orc.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc64018be9f935093 # initialize rs1
orc.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xeb665dd309d31122 # initialize rs1
orc.b x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9759cd771e40f7f2 # initialize rs1
orc.b x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd3f7e5f5eb3c6a40 # initialize rs1
orc.b x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3499afdd33f1bddb # initialize rs1
orc.b x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2fe8efd79299aca7 # initialize rs1
orc.b x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x046f9c2ab95374a1 # initialize rs1
orc.b x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x403f1e218d636c5e # initialize rs1
orc.b x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe8504b826340fa68 # initialize rs1
orc.b x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7371a172cbba14be # initialize rs1
orc.b x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3306b430f78e2ec3 # initialize rs1
orc.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcc99dd4d41a38551 # initialize rs1
orc.b x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x440f279bf00792a4 # initialize rs1
orc.b x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x248a961ecb594ae1 # initialize rs1
orc.b x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xeff1a8a92993cd5c # initialize rs1
orc.b x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf9a87141d24fbf07 # initialize rs1
orc.b x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0a443393c6c84b22 # initialize rs1
orc.b x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x42d3f002bec1af19 # initialize rs1
orc.b x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x76bd9d87bc782cf8 # initialize rs1
orc.b x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x036f2b4326210206 # initialize rs1
orc.b x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7e716ea0a243e83b # initialize rs1
orc.b x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbc079bf3d341c7f9 # initialize rs1
orc.b x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x58cabee0aad603f6 # initialize rs1
orc.b x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xab227526b9b58685 # initialize rs1
orc.b x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x310d1dfae87fa5e7 # initialize rs1
orc.b x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3c8ee7e444eadef6 # initialize rs1
orc.b x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x1e815674dcfc65ee # initialize rs1
orc.b x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x0f8c524d4c1c42a0 # initialize rs1
orc.b x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc3fc16b252a30396 # initialize rs1
orc.b x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc6f74398ff27bf1e # initialize rs1
orc.b x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x20, x22 # perform first operation
orc.b x6, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x13, x10 # perform first operation
orc.b x7, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x19, x26 # perform first operation
orc.b x13, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x29, x9 # perform first operation
orc.b x29, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x18, x1 # perform first operation
orc.b x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x24, x20 # perform first operation
orc.b x12, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x20, x22 # perform first operation
orc.b x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x1, x23 # perform first operation
orc.b x2, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x8, x5 # perform first operation
orc.b x23, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x9, x21 # perform first operation
orc.b x9, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x29, x27 # perform first operation
orc.b x27, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x28, x23 # perform first operation
orc.b x26, x13 # perform second (triggering) operation

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
