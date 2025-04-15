///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-bexti.S
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
li x0, 0xdb824e1115c0d51c # initialize rs1
bexti x9, x0, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x318315108a1d91ab # initialize rs1
bexti x29, x1, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb7c99ba4faaa07ec # initialize rs1
bexti x1, x2, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65fd16ac6b516108 # initialize rs1
bexti x21, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd277d14d055182e6 # initialize rs1
bexti x10, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5921d2ba1e8140c2 # initialize rs1
bexti x18, x5, 30 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbac5a2b4dab4556a # initialize rs1
bexti x5, x6, 24 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd4f2856d6ae865fa # initialize rs1
bexti x5, x7, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x08ffe17ab00f5279 # initialize rs1
bexti x16, x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x441987fa6cf250c6 # initialize rs1
bexti x1, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x640899c1db67a5c1 # initialize rs1
bexti x7, x10, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8899c399b4aa286e # initialize rs1
bexti x6, x11, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x081ffd9a940bcef2 # initialize rs1
bexti x18, x12, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4b60a83167d38f40 # initialize rs1
bexti x23, x13, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9e5f0ffaad3947a4 # initialize rs1
bexti x6, x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xef6442cfca1a812e # initialize rs1
bexti x11, x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4a02a9be3a09c452 # initialize rs1
bexti x26, x16, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1906969033bf27db # initialize rs1
bexti x25, x17, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x977e83d3eed55632 # initialize rs1
bexti x15, x18, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf722a3ee74932597 # initialize rs1
bexti x13, x19, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7f9aecf5ad782948 # initialize rs1
bexti x18, x20, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1fbf9e964d307c99 # initialize rs1
bexti x12, x21, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xfffe297def711ec4 # initialize rs1
bexti x23, x22, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xaf1ae9dce5a38e81 # initialize rs1
bexti x30, x23, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb0a59f0371760351 # initialize rs1
bexti x6, x24, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x695dc67b56dc3c05 # initialize rs1
bexti x13, x25, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x26f6c64777d06a00 # initialize rs1
bexti x2, x26, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xb50f46649aebbf0b # initialize rs1
bexti x28, x27, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xeaf0bfe1462aba8d # initialize rs1
bexti x19, x28, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2224762e6c0386af # initialize rs1
bexti x5, x29, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa6b561dcda72b2de # initialize rs1
bexti x10, x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xdbda561c77651a42 # initialize rs1
bexti x19, x31, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x03c9508067591ce4 # initialize rs1
bexti x0, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xc13078b32dbb4000 # initialize rs1
bexti x1, x9, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x2ced576550a5289c # initialize rs1
bexti x2, x30, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x3b59611ea9cdf2bc # initialize rs1
bexti x3, x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xbe37bc7cea9d37d0 # initialize rs1
bexti x4, x25, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x861fa0a75948c0f3 # initialize rs1
bexti x5, x29, 60 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0xa279b06412903c3c # initialize rs1
bexti x6, x20, 27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x56155c0114830caf # initialize rs1
bexti x7, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xb0b0390d40174b69 # initialize rs1
bexti x8, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x56be213ac4f9bb02 # initialize rs1
bexti x9, x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc04bf10d38d75936 # initialize rs1
bexti x10, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0xcd58697d1af7219c # initialize rs1
bexti x11, x25, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x16, 0x52441a885a3eb794 # initialize rs1
bexti x12, x16, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x99911dc785ddbcc4 # initialize rs1
bexti x13, x19, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xfb091406d92d56db # initialize rs1
bexti x14, x13, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x5dbc7e6cba107d9e # initialize rs1
bexti x15, x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x66fb34f115d91a40 # initialize rs1
bexti x16, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x0ded22c5ceaae417 # initialize rs1
bexti x17, x22, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x037339de0c5a6022 # initialize rs1
bexti x18, x20, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0xc7fde8805aa9a1b4 # initialize rs1
bexti x19, x23, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd6294d4f18a7978a # initialize rs1
bexti x20, x20, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xf3905d024cc288de # initialize rs1
bexti x21, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0xfd2067b0803b519f # initialize rs1
bexti x22, x29, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0x1793f588ba0fa90e # initialize rs1
bexti x23, x14, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x9b941441fa9f4830 # initialize rs1
bexti x24, x31, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x65ca262bd91ce5fe # initialize rs1
bexti x25, x13, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xf65ab7336b970abe # initialize rs1
bexti x26, x17, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x28891d74fbe65112 # initialize rs1
bexti x27, x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x6c3fffc5044c2f70 # initialize rs1
bexti x28, x13, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x5, 0x003da572bc3d9e03 # initialize rs1
bexti x29, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0xa955369186a34851 # initialize rs1
bexti x30, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x6, 0x0f21f4addc9d2e8a # initialize rs1
bexti x31, x6, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
bexti x13, x2, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x0000000000000001 # initialize rs1
bexti x31, x15, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
bexti x9, x29, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
bexti x27, x29, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x8000000000000001 # initialize rs1
bexti x23, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
bexti x24, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
bexti x28, x1, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
bexti x10, x1, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
bexti x5, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
bexti x8, x1, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
bexti x14, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
bexti x14, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
bexti x6, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
bexti x6, x2, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x0000000100000000 # initialize rs1
bexti x6, x28, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x18, 0x0000000100000001 # initialize rs1
bexti x16, x18, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa87509a385795de8 # initialize rs1
bexti x0, x0, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb5ab4135c7b64b66 # initialize rs1
bexti x1, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x69e7e7a674f04a64 # initialize rs1
bexti x2, x2, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xec6d7117f16076aa # initialize rs1
bexti x3, x3, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22ea567611305aaa # initialize rs1
bexti x4, x4, 53 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3ed0bbe247071da3 # initialize rs1
bexti x5, x5, 63 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1bd39edc479ee0b4 # initialize rs1
bexti x6, x6, 34 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f332baeb9089624 # initialize rs1
bexti x7, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x36031a4c22d247a7 # initialize rs1
bexti x8, x8, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa98fe8b920581d35 # initialize rs1
bexti x9, x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7019fb7bbf3774ee # initialize rs1
bexti x10, x10, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb3c5a606c1941032 # initialize rs1
bexti x11, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4847e77031be57d0 # initialize rs1
bexti x12, x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x13ce459b0c578a3e # initialize rs1
bexti x13, x13, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe5e8ce4927abc91e # initialize rs1
bexti x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x70e1c92ec3b83131 # initialize rs1
bexti x15, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x921fbe52ecb343b6 # initialize rs1
bexti x16, x16, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x57043df6618d0482 # initialize rs1
bexti x17, x17, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd3a6f81eaab13569 # initialize rs1
bexti x18, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd54307bdbec4a09b # initialize rs1
bexti x19, x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7d5a403e8d320546 # initialize rs1
bexti x20, x20, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf9fc2852680a3e4f # initialize rs1
bexti x21, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe900e1bec6cdbf5c # initialize rs1
bexti x22, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0b3290491c7d066a # initialize rs1
bexti x23, x23, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x83d04abad4e5401a # initialize rs1
bexti x24, x24, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7c0d04a3a037a5b0 # initialize rs1
bexti x25, x25, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0fb1c171f771bac3 # initialize rs1
bexti x26, x26, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3d79561b6f91fcf3 # initialize rs1
bexti x27, x27, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa9b068f742a6415b # initialize rs1
bexti x28, x28, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x839d2e36e34aae29 # initialize rs1
bexti x29, x29, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x06af40a3f0b65b89 # initialize rs1
bexti x30, x30, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe27b554a528469d9 # initialize rs1
bexti x31, x31, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x25, 0x829ae15825dfabe5 # initialize rs1
bexti x7, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cp_uimm (Test bit = 1)
li x6, 0x9a431f0eb9c55340 # initialize rs1
bexti x18, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_uimm (Test bit = 2)
li x26, 0x0de6563253f02813 # initialize rs1
bexti x24, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_uimm (Test bit = 3)
li x15, 0xcbe4ebc0f02d8fb2 # initialize rs1
bexti x1, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_uimm (Test bit = 4)
li x19, 0x3b78de703f0a0751 # initialize rs1
bexti x11, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cp_uimm (Test bit = 5)
li x11, 0x4ff2f175fcc0945d # initialize rs1
bexti x5, x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_uimm (Test bit = 6)
li x5, 0xde69f86b21bccc60 # initialize rs1
bexti x1, x5, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cp_uimm (Test bit = 7)
li x18, 0xd91b60200aed6469 # initialize rs1
bexti x24, x18, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_uimm (Test bit = 8)
li x5, 0x7b046bfb70761170 # initialize rs1
bexti x23, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_uimm (Test bit = 9)
li x12, 0x4fb32588e0627ded # initialize rs1
bexti x15, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_uimm (Test bit = 10)
li x18, 0xe8b019d55647cb7d # initialize rs1
bexti x6, x18, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cp_uimm (Test bit = 11)
li x13, 0xe98065744beb67c9 # initialize rs1
bexti x9, x13, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cp_uimm (Test bit = 12)
li x24, 0xa1498dc581280e9b # initialize rs1
bexti x31, x24, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cp_uimm (Test bit = 13)
li x30, 0xf47f093a28e94dc7 # initialize rs1
bexti x24, x30, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_uimm (Test bit = 14)
li x14, 0x6ab1d67182a18709 # initialize rs1
bexti x23, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_uimm (Test bit = 15)
li x12, 0x413ba08e5b8edcea # initialize rs1
bexti x3, x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cp_uimm (Test bit = 16)
li x11, 0x119b4d3684193cce # initialize rs1
bexti x10, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cp_uimm (Test bit = 17)
li x16, 0xba25926ff05d8651 # initialize rs1
bexti x19, x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cp_uimm (Test bit = 18)
li x6, 0x2a542ded809520aa # initialize rs1
bexti x29, x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cp_uimm (Test bit = 19)
li x7, 0x113dff9ad573a00f # initialize rs1
bexti x6, x7, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cp_uimm (Test bit = 20)
li x11, 0xffada4ba9c550324 # initialize rs1
bexti x25, x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cp_uimm (Test bit = 21)
li x3, 0xfa6ef04df4e97754 # initialize rs1
bexti x20, x3, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1064)

# Testcase cp_uimm (Test bit = 22)
li x27, 0xa3ceb15b22307f26 # initialize rs1
bexti x9, x27, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_uimm (Test bit = 23)
li x12, 0x6fb98f1ee69dd29e # initialize rs1
bexti x14, x12, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cp_uimm (Test bit = 24)
li x14, 0xed7a18e4111098e6 # initialize rs1
bexti x21, x14, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cp_uimm (Test bit = 25)
li x5, 0xb94264cc579268da # initialize rs1
bexti x26, x5, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cp_uimm (Test bit = 26)
li x25, 0x050eece38b946e77 # initialize rs1
bexti x15, x25, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cp_uimm (Test bit = 27)
li x5, 0x1b31c6f8cd1287f2 # initialize rs1
bexti x21, x5, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cp_uimm (Test bit = 28)
li x1, 0x1b41da61bfc96921 # initialize rs1
bexti x12, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cp_uimm (Test bit = 29)
li x27, 0x65e1eb95807de752 # initialize rs1
bexti x15, x27, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cp_uimm (Test bit = 30)
li x27, 0x1491e4c9713b4863 # initialize rs1
bexti x18, x27, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cp_uimm (Test bit = 31)
li x3, 0xdbaa776cd76d216b # initialize rs1
bexti x6, x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cp_uimm (Test bit = 32)
li x15, 0xb7c21eb30878d402 # initialize rs1
bexti x28, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cp_uimm (Test bit = 33)
li x5, 0xc8eb61599ee636ea # initialize rs1
bexti x29, x5, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cp_uimm (Test bit = 34)
li x15, 0x8cafe883c75fd049 # initialize rs1
bexti x3, x15, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cp_uimm (Test bit = 35)
li x13, 0xed5fc6a297ee24dd # initialize rs1
bexti x3, x13, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cp_uimm (Test bit = 36)
li x29, 0xc55d9650e76e933c # initialize rs1
bexti x28, x29, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1184)

# Testcase cp_uimm (Test bit = 37)
li x23, 0x0cc1d2eaa743ed17 # initialize rs1
bexti x24, x23, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cp_uimm (Test bit = 38)
li x31, 0xa5e5ce7caea7ca77 # initialize rs1
bexti x8, x31, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cp_uimm (Test bit = 39)
li x20, 0x599ab4a6abd3f2ea # initialize rs1
bexti x16, x20, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cp_uimm (Test bit = 40)
li x18, 0xabaadaeac1c364a4 # initialize rs1
bexti x7, x18, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cp_uimm (Test bit = 41)
li x10, 0x0c62862e861e9428 # initialize rs1
bexti x3, x10, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1224)

# Testcase cp_uimm (Test bit = 42)
li x8, 0xc64aa167b7a1ef2d # initialize rs1
bexti x15, x8, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1232)

# Testcase cp_uimm (Test bit = 43)
li x17, 0x2e410971ba30cfea # initialize rs1
bexti x7, x17, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cp_uimm (Test bit = 44)
li x26, 0xd2a22d8af7c6796e # initialize rs1
bexti x29, x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cp_uimm (Test bit = 45)
li x2, 0xbc6fb397bd875792 # initialize rs1
bexti x10, x2, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1256)

# Testcase cp_uimm (Test bit = 46)
li x1, 0x6ad42d9f60e171ba # initialize rs1
bexti x19, x1, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cp_uimm (Test bit = 47)
li x14, 0x5146417f5b34571a # initialize rs1
bexti x18, x14, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cp_uimm (Test bit = 48)
li x5, 0xe353c93022af7c3a # initialize rs1
bexti x24, x5, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cp_uimm (Test bit = 49)
li x29, 0xd336a0a757625143 # initialize rs1
bexti x2, x29, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cp_uimm (Test bit = 50)
li x29, 0xdc6cea047fee4faf # initialize rs1
bexti x20, x29, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cp_uimm (Test bit = 51)
li x19, 0xd8706c61a7a7e936 # initialize rs1
bexti x5, x19, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cp_uimm (Test bit = 52)
li x22, 0x01f553441361ce03 # initialize rs1
bexti x7, x22, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

# Testcase cp_uimm (Test bit = 53)
li x27, 0xebe6758706f6361c # initialize rs1
bexti x15, x27, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cp_uimm (Test bit = 54)
li x14, 0x8a6a63b8dd182a50 # initialize rs1
bexti x7, x14, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)

# Testcase cp_uimm (Test bit = 55)
li x6, 0xedcbb6bf8e954c2e # initialize rs1
bexti x30, x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cp_uimm (Test bit = 56)
li x12, 0x69a51a76eead33f4 # initialize rs1
bexti x19, x12, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cp_uimm (Test bit = 57)
li x7, 0x34c31c226f188a6a # initialize rs1
bexti x23, x7, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cp_uimm (Test bit = 58)
li x10, 0x3024468d06913332 # initialize rs1
bexti x29, x10, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cp_uimm (Test bit = 59)
li x29, 0xf5bc2eb09a910650 # initialize rs1
bexti x14, x29, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cp_uimm (Test bit = 60)
li x22, 0x0e86b5434ed4fcd6 # initialize rs1
bexti x20, x22, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cp_uimm (Test bit = 61)
li x2, 0x5d1ba20237e5fec2 # initialize rs1
bexti x14, x2, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

# Testcase cp_uimm (Test bit = 62)
li x19, 0xf843a5e54725d22f # initialize rs1
bexti x23, x19, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cp_uimm (Test bit = 63)
li x26, 0x3c480e5664a63ea5 # initialize rs1
bexti x13, x26, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x24, x29 # perform first operation
bexti x14, x27, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x17, x13 # perform first operation
bexti x7, x18, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x15, x1 # perform first operation
bexti x18, x9, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x28, x16 # perform first operation
bexti x16, x24, 17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x28, x9 # perform first operation
bexti x12, x23, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x28, x7 # perform first operation
bexti x7, x30, 45 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x14, x12 # perform first operation
bexti x19, x11, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x25, x12 # perform first operation
bexti x8, x27, 47 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x7, x30 # perform first operation
bexti x19, x23, 35 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x20, x9 # perform first operation
bexti x20, x23, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x8, x5 # perform first operation
bexti x5, x22, 26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x20, x12 # perform first operation
bexti x13, x2, 10 # perform second (triggering) operation

.EQU SIGSIZE,1408


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
