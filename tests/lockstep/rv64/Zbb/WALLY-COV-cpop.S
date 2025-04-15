///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-cpop.S
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
li x0, 0xd7471886c8787ddd # initialize rs1
cpop x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x41a586c2a6638e11 # initialize rs1
cpop x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xabf867120b0b0f5e # initialize rs1
cpop x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb976aef168e6ae41 # initialize rs1
cpop x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xccdc58c8e1bb7ae6 # initialize rs1
cpop x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf58f3aa23500050 # initialize rs1
cpop x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x55d1f0fe4e6f2555 # initialize rs1
cpop x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x49a14d35b3583c2d # initialize rs1
cpop x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x45de3980d5604584 # initialize rs1
cpop x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd5eceb3adf0e6f01 # initialize rs1
cpop x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4fcc0c9f1ea18046 # initialize rs1
cpop x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd25308fcad269356 # initialize rs1
cpop x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3f24ac596118a12b # initialize rs1
cpop x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x91820e376fa35db4 # initialize rs1
cpop x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x1c02f78fcb3ae1b5 # initialize rs1
cpop x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd1ee9c7b67be60af # initialize rs1
cpop x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x236f91762af87fb1 # initialize rs1
cpop x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe19c1c5696164429 # initialize rs1
cpop x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x98148c7f72aa0c17 # initialize rs1
cpop x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd720582a13d3373a # initialize rs1
cpop x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x69480a9ec78feed0 # initialize rs1
cpop x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3426c1c3e91e6338 # initialize rs1
cpop x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x46df7b386fcb4884 # initialize rs1
cpop x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb4c3ef118af37377 # initialize rs1
cpop x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x111a47ee6762b336 # initialize rs1
cpop x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5a07cbc221f31371 # initialize rs1
cpop x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x18a5f144ac5204b6 # initialize rs1
cpop x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeeeb64934e785db6 # initialize rs1
cpop x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x993eeec557e677ea # initialize rs1
cpop x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x4c7406c3932c3ec5 # initialize rs1
cpop x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0334791e95b38080 # initialize rs1
cpop x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe5ab765e56d68239 # initialize rs1
cpop x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0x8bdb579f1815ae89 # initialize rs1
cpop x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x39b68c66c7f381d5 # initialize rs1
cpop x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x50a36cb54737eb36 # initialize rs1
cpop x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x62aa7cee2d69e518 # initialize rs1
cpop x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x2803eb065161611e # initialize rs1
cpop x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x17cb4a1c1a0046f2 # initialize rs1
cpop x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x4fdb6bfd4d6ab6f2 # initialize rs1
cpop x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0xb47509172d589e02 # initialize rs1
cpop x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x19, 0x8d47f71f1f9dbf6f # initialize rs1
cpop x8, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0xd38af92236e0b521 # initialize rs1
cpop x9, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x1d05ff0d55b9d183 # initialize rs1
cpop x10, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x6, 0xb18be37670a6eeed # initialize rs1
cpop x11, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x8e91203c48ef743f # initialize rs1
cpop x12, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x1e49d716a5437208 # initialize rs1
cpop x13, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x2deaf3a6a8adae19 # initialize rs1
cpop x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x5ab9791474a88f1f # initialize rs1
cpop x15, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x7d87b86b45ccda3e # initialize rs1
cpop x16, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x3a7fa4befbced48b # initialize rs1
cpop x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0xe8482228d3aef5bb # initialize rs1
cpop x18, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x3c6da7a65bb2cb7c # initialize rs1
cpop x19, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x0909c7b39830410f # initialize rs1
cpop x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x2, 0x4118d41ab844daf4 # initialize rs1
cpop x21, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x1738b846793a4c2d # initialize rs1
cpop x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0xcc17afc6fa3cb87c # initialize rs1
cpop x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xd445bf4595f5457d # initialize rs1
cpop x24, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0x78e0f54fa8880f5f # initialize rs1
cpop x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xc2266fea09278b78 # initialize rs1
cpop x26, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0x52cf3ef9caa9bbf1 # initialize rs1
cpop x27, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x5712cf05e8308ed1 # initialize rs1
cpop x28, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0xa65ef12772d54ac5 # initialize rs1
cpop x29, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xaece0d05e359aafb # initialize rs1
cpop x30, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0xbc9ec26108202ee1 # initialize rs1
cpop x31, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
cpop x7, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
cpop x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
cpop x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
cpop x16, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
cpop x8, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
cpop x17, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
cpop x2, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
cpop x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
cpop x2, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
cpop x22, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
cpop x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
cpop x6, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs1
cpop x21, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
cpop x26, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
cpop x26, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
cpop x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8b64355c807f5280 # initialize rs1
cpop x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x86a5e6ee9f52286f # initialize rs1
cpop x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x9835e5e0b584baaa # initialize rs1
cpop x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x423c3951e87a8423 # initialize rs1
cpop x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x6f7d9010c0024fcc # initialize rs1
cpop x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa871d894050d8b3b # initialize rs1
cpop x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa4b73e550d67bea7 # initialize rs1
cpop x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbb06822a7d40457c # initialize rs1
cpop x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x069b0c3c37217a66 # initialize rs1
cpop x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0ae48735a2f12d7d # initialize rs1
cpop x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfc588edd72f4c995 # initialize rs1
cpop x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb38d7a800ca31118 # initialize rs1
cpop x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb2b412b6033971ce # initialize rs1
cpop x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xcb91c2f69850f0ce # initialize rs1
cpop x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd0988a66b1bbaa66 # initialize rs1
cpop x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x71204f587b56c3c7 # initialize rs1
cpop x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x80639c24040532a8 # initialize rs1
cpop x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5c8729d3f5270abc # initialize rs1
cpop x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x35ba0a3168875e7b # initialize rs1
cpop x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x83fb979d49832074 # initialize rs1
cpop x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7836ab3a556c4845 # initialize rs1
cpop x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x536e5531b1bc873a # initialize rs1
cpop x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x01e4dd86f633c230 # initialize rs1
cpop x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9c110eb3ac07ceb2 # initialize rs1
cpop x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf8afc1a21e6c4617 # initialize rs1
cpop x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2fcdccb477b9bb18 # initialize rs1
cpop x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x808936aa253bca31 # initialize rs1
cpop x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb00ae0aacc2dfca5 # initialize rs1
cpop x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfdfc604fea73fe6b # initialize rs1
cpop x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x019e098d7bfe78e1 # initialize rs1
cpop x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3c32fee61660b76d # initialize rs1
cpop x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x88c460a2ad2d8cc3 # initialize rs1
cpop x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x29, x13 # perform first operation
cpop x27, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x2, x22 # perform first operation
cpop x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x27, x6 # perform first operation
cpop x5, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x2, x19 # perform first operation
cpop x18, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x15, x12 # perform first operation
cpop x11, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x17, x21 # perform first operation
cpop x17, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x22, x27 # perform first operation
cpop x30, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x10, x26 # perform first operation
cpop x17, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x20, x15 # perform first operation
cpop x21, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x20, x12 # perform first operation
cpop x20, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x5, x26 # perform first operation
cpop x26, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x21, x24 # perform first operation
cpop x26, x20 # perform second (triggering) operation

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
