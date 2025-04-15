///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-clz.S
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
li x0, 0x5b188328ac932537 # initialize rs1
clz x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd09df23517ea3a4b # initialize rs1
clz x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x05ab83e75ed8695f # initialize rs1
clz x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x98241973fb7b4acf # initialize rs1
clz x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcdb757fbeb4cd548 # initialize rs1
clz x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd884af153f4765b6 # initialize rs1
clz x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd8b5fd212d162d1b # initialize rs1
clz x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x474d342bc0063936 # initialize rs1
clz x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x03df110404758254 # initialize rs1
clz x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe04800781bf8e1a1 # initialize rs1
clz x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xea01e0c7daa0db83 # initialize rs1
clz x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb1bc4d7de35ec3e1 # initialize rs1
clz x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3edd2254c19198ce # initialize rs1
clz x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd962a28a9f9c2a80 # initialize rs1
clz x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xeec3325739b86f71 # initialize rs1
clz x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xda20a0d98b087cf9 # initialize rs1
clz x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe3141d9fe342728a # initialize rs1
clz x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf46e4184ba441572 # initialize rs1
clz x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4bca09d438f34d8c # initialize rs1
clz x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8f24052b30f8b455 # initialize rs1
clz x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x6e648a6d537ceaa8 # initialize rs1
clz x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x916433197455b917 # initialize rs1
clz x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa25611f798492b75 # initialize rs1
clz x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x688cfff74d8515fc # initialize rs1
clz x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc98cbd41dcde4028 # initialize rs1
clz x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x97241b579b606475 # initialize rs1
clz x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xadfa6011dae8f759 # initialize rs1
clz x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x7bf1de61c7ce976d # initialize rs1
clz x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd163e6fe31a0241f # initialize rs1
clz x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2cd126f369aaafe7 # initialize rs1
clz x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5029ececa251409c # initialize rs1
clz x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4b8899f6de657cf3 # initialize rs1
clz x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rd (Test destination rd = x0)
li x13, 0x908fd0ab800ef854 # initialize rs1
clz x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x11, 0x15cf5f72b717222d # initialize rs1
clz x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0xf498be3364d9980e # initialize rs1
clz x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x5, 0x134ebc1bdbe47592 # initialize rs1
clz x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xc19f1c1c1659a0cf # initialize rs1
clz x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xaa94503dadd48a7c # initialize rs1
clz x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x229808db2a54dfa5 # initialize rs1
clz x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xa6524f1f20bbed01 # initialize rs1
clz x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x0855aaf87d355175 # initialize rs1
clz x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x4819d51d6dcd4c2b # initialize rs1
clz x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x5011cf44a3083615 # initialize rs1
clz x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0xb88b89856c75e6df # initialize rs1
clz x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0x7ad3b2c3fc568c2f # initialize rs1
clz x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xffbaa4802915d1f2 # initialize rs1
clz x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xaa6c851ae68b900c # initialize rs1
clz x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xec545f333d241753 # initialize rs1
clz x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0x8f941ae628195e5e # initialize rs1
clz x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x3602abcd40272e41 # initialize rs1
clz x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x10, 0xcd76754d432aa156 # initialize rs1
clz x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0xae80ec5c9f16b347 # initialize rs1
clz x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0x3addf66f1a6f3602 # initialize rs1
clz x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0x362f40b76b057538 # initialize rs1
clz x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x26f3d820b54749c6 # initialize rs1
clz x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x37feb48431db73f9 # initialize rs1
clz x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0x2a05c4444577cf1a # initialize rs1
clz x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0xc841445bf286055b # initialize rs1
clz x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x3b5c69f527703262 # initialize rs1
clz x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x108e13cda97e513a # initialize rs1
clz x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x97d3e7f4bfdb48db # initialize rs1
clz x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x075cdf6505ad4611 # initialize rs1
clz x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0x5513af21e3806dcb # initialize rs1
clz x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0xd8ddc72d04c1e026 # initialize rs1
clz x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0x0000000000000000 # initialize rs1
clz x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0000000000000001 # initialize rs1
clz x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
clz x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
clz x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
clz x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
clz x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
clz x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
clz x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
clz x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
clz x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
clz x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
clz x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
clz x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
clz x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
clz x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
clz x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x49cf5a6f135ff974 # initialize rs1
clz x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7ed9667460245b87 # initialize rs1
clz x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x61c4e1eda8055c75 # initialize rs1
clz x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5fbf36ff85f5c9da # initialize rs1
clz x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5f8df71d8019ada5 # initialize rs1
clz x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3d3766008a427ed2 # initialize rs1
clz x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe225be38b87a48de # initialize rs1
clz x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe2814688b9499a1e # initialize rs1
clz x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x169e7478dcdf47c9 # initialize rs1
clz x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3710dd7074a0206e # initialize rs1
clz x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x136c76640ae6c203 # initialize rs1
clz x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xec1ef149e3345a6a # initialize rs1
clz x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8f1679e62f398ac6 # initialize rs1
clz x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7689dc4c8c408f9f # initialize rs1
clz x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x96a5df60690ccf6e # initialize rs1
clz x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x860a20e20f9fcf8b # initialize rs1
clz x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x790febdf21f360ee # initialize rs1
clz x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf22802537663eb45 # initialize rs1
clz x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd03b9857aa601047 # initialize rs1
clz x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7a762003fa0ff537 # initialize rs1
clz x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd791ad6bf5e30383 # initialize rs1
clz x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x291047e0103bba5a # initialize rs1
clz x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb10a0deecff5550d # initialize rs1
clz x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xeda93cebb12312f4 # initialize rs1
clz x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7ee43be8c487d5f6 # initialize rs1
clz x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x165d4c25fb333a12 # initialize rs1
clz x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc1d905417ccdc4f8 # initialize rs1
clz x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xecefbb4f06413aa0 # initialize rs1
clz x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0cf54672cc5977e2 # initialize rs1
clz x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xcb22108d70cda308 # initialize rs1
clz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4c5f77aecd39734b # initialize rs1
clz x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xaac91c07787a968d # initialize rs1
clz x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x25, x23 # perform first operation
clz x29, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x24, x23 # perform first operation
clz x5, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x16, x30 # perform first operation
clz x23, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x3, x6 # perform first operation
clz x18, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x29, x22 # perform first operation
clz x10, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x10, x29 # perform first operation
clz x19, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x31, x17 # perform first operation
clz x15, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x7, x17 # perform first operation
clz x14, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x22, x7 # perform first operation
clz x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x5, x21 # perform first operation
clz x5, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x25, x10 # perform first operation
clz x10, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x20, x27 # perform first operation
clz x24, x16 # perform second (triggering) operation

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
