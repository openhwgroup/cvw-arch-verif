///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-srliw.S
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
li x0, 0x3d7d5eccafc6b651 # initialize rs1
srliw x26, x0, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x37c75c7e8d8a7b8a # initialize rs1
srliw x6, x1, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4e3908cd2affaeba # initialize rs1
srliw x11, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd4e59f7e912261eb # initialize rs1
srliw x9, x3, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbeb92cb0d200f650 # initialize rs1
srliw x12, x4, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8db42bbcaa01a463 # initialize rs1
srliw x18, x5, 16 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdc3d55640e070754 # initialize rs1
srliw x11, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc99471dc0ffc3f24 # initialize rs1
srliw x27, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xce32901f945dfd55 # initialize rs1
srliw x25, x8, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe00a2ce7acfead91 # initialize rs1
srliw x7, x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xf74a744be348db4f # initialize rs1
srliw x1, x10, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2c9deb07f2e05da5 # initialize rs1
srliw x15, x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x73fd8d5b7f34b020 # initialize rs1
srliw x8, x12, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x830548cc6536d29b # initialize rs1
srliw x1, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc81544172d9be8f1 # initialize rs1
srliw x7, x14, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8f4c9fc20c78e3e9 # initialize rs1
srliw x29, x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7e1f87b4c8fd9139 # initialize rs1
srliw x15, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xac0fda7c0fd3a12e # initialize rs1
srliw x18, x17, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6ddafe2971245688 # initialize rs1
srliw x10, x18, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb08a2d172a0229b0 # initialize rs1
srliw x8, x19, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd6acdd528067f23f # initialize rs1
srliw x30, x20, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x4fd007306e89c1ce # initialize rs1
srliw x25, x21, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5fa0ad231fd0bf8c # initialize rs1
srliw x27, x22, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x51565119dcd7f9d4 # initialize rs1
srliw x6, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8983c6abcd196882 # initialize rs1
srliw x2, x24, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x74213aa0fabc5337 # initialize rs1
srliw x11, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xea06000b5b23b6ae # initialize rs1
srliw x10, x26, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xcbc5cdc9d6772ae2 # initialize rs1
srliw x11, x27, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7031428c2079d62f # initialize rs1
srliw x17, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3ac0eb931eafda7a # initialize rs1
srliw x2, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa1c16a5cbe212896 # initialize rs1
srliw x9, x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc988255bbafcd877 # initialize rs1
srliw x24, x31, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rd (Test destination rd = x0)
li x26, 0x4ca1e2ab77f07fe7 # initialize rs1
srliw x0, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xa4dc4059270d8bbc # initialize rs1
srliw x1, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0x2a89a24fd976ee4a # initialize rs1
srliw x2, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x9a2fc47b717d9239 # initialize rs1
srliw x3, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x3e81de7d53483879 # initialize rs1
srliw x4, x11, 25 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x6540ea0dbfed6940 # initialize rs1
srliw x5, x17, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x6c28562274836893 # initialize rs1
srliw x6, x30, 9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x63bac57397fb93f5 # initialize rs1
srliw x7, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x49eec13dda9ee25f # initialize rs1
srliw x8, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x2de7c925e7841d08 # initialize rs1
srliw x9, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x821987464b7c62f7 # initialize rs1
srliw x10, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x67c305330f3f1a78 # initialize rs1
srliw x11, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x5c4817b6db3e7dff # initialize rs1
srliw x12, x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x17af4b19ac926953 # initialize rs1
srliw x13, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x69baf1eb7e0a0bda # initialize rs1
srliw x14, x14, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x453d4cf9fbf9a181 # initialize rs1
srliw x15, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0xa15af8a53f1505e6 # initialize rs1
srliw x16, x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0xefba16bd1530cab6 # initialize rs1
srliw x17, x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0x02742746160bd091 # initialize rs1
srliw x18, x8, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x8d96c9aa06efcb4b # initialize rs1
srliw x19, x14, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0xa00424569dd07bde # initialize rs1
srliw x20, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x4e823d7af066cce0 # initialize rs1
srliw x21, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xa04147e06587f90d # initialize rs1
srliw x22, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0xa479d991feceaf6b # initialize rs1
srliw x23, x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x8a170b8148acf31e # initialize rs1
srliw x24, x13, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x577c2a48d27e521a # initialize rs1
srliw x25, x24, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x23, 0x557960a794f6bd3e # initialize rs1
srliw x26, x23, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0xfa7067e2830ae529 # initialize rs1
srliw x27, x23, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0x23c9799ad9143f72 # initialize rs1
srliw x28, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x13, 0x3a35e2986ef7cb2d # initialize rs1
srliw x29, x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0xd1a3e82d5e51a4ac # initialize rs1
srliw x30, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0xdadbaeebedf3c1dd # initialize rs1
srliw x31, x25, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
srliw x11, x19, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x0000000000000001 # initialize rs1
srliw x29, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x0000000000000002 # initialize rs1
srliw x2, x27, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
srliw x7, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
srliw x5, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
srliw x22, x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
srliw x12, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
srliw x10, x21, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs1
srliw x15, x21, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
srliw x6, x5, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
srliw x14, x19, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x5555555555555555 # initialize rs1
srliw x18, x21, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
srliw x14, x5, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
srliw x3, x21, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
srliw x29, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
srliw x3, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0ca0ddb006255f1c # initialize rs1
srliw x0, x0, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xac40713a9bcd958d # initialize rs1
srliw x1, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf5fff84c4afa2768 # initialize rs1
srliw x2, x2, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf06b6d649fcf06b4 # initialize rs1
srliw x3, x3, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaf677dca4e73a6ea # initialize rs1
srliw x4, x4, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3f6787c66a3787f1 # initialize rs1
srliw x5, x5, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x018d5cc6785a2e54 # initialize rs1
srliw x6, x6, 16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1cdd220c4a95a13b # initialize rs1
srliw x7, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2bc743884378af6b # initialize rs1
srliw x8, x8, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb8fdeb31cf58219f # initialize rs1
srliw x9, x9, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbcb4d1eb19b0ba33 # initialize rs1
srliw x10, x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xebe559e9652eed1a # initialize rs1
srliw x11, x11, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9a9beffb07f121df # initialize rs1
srliw x12, x12, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2af0b1d1e62af939 # initialize rs1
srliw x13, x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x40b3783ca55960a7 # initialize rs1
srliw x14, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc0267efc7d500192 # initialize rs1
srliw x15, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe6d57c27a93c3750 # initialize rs1
srliw x16, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1ea1951263eb278d # initialize rs1
srliw x17, x17, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6fb0658c61a304e6 # initialize rs1
srliw x18, x18, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1adabee162c628f6 # initialize rs1
srliw x19, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xc574875ddf1aafdd # initialize rs1
srliw x20, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x272a23de6cad3ab9 # initialize rs1
srliw x21, x21, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe8ceb5c029c311b1 # initialize rs1
srliw x22, x22, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2bba3108aa29de37 # initialize rs1
srliw x23, x23, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd21873d824e165b3 # initialize rs1
srliw x24, x24, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x70785a42fe860566 # initialize rs1
srliw x25, x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe40e14f6429f5968 # initialize rs1
srliw x26, x26, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x58bf7303b25e386e # initialize rs1
srliw x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4a539954b23a8cf9 # initialize rs1
srliw x28, x28, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xed8efd1fc6fc8dc7 # initialize rs1
srliw x29, x29, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x75b3ce3e40506c8e # initialize rs1
srliw x30, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x14cf345438abca65 # initialize rs1
srliw x31, x31, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm_5 (Test bit = 0)
li x3, 0x2ff7f83f511b6009 # initialize rs1
srliw x23, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_uimm_5 (Test bit = 1)
li x3, 0x8f2376c861a478a8 # initialize rs1
srliw x20, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 904)

# Testcase cp_uimm_5 (Test bit = 2)
li x26, 0x54dcedaac9ad6de3 # initialize rs1
srliw x21, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 912)

# Testcase cp_uimm_5 (Test bit = 3)
li x23, 0x89aeadc86108700d # initialize rs1
srliw x21, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cp_uimm_5 (Test bit = 4)
li x9, 0xf00b0340fe2a6618 # initialize rs1
srliw x27, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cp_uimm_5 (Test bit = 5)
li x7, 0x1d71d71bab5aead0 # initialize rs1
srliw x2, x7, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_uimm_5 (Test bit = 6)
li x31, 0x46231ef2744b2758 # initialize rs1
srliw x29, x31, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cp_uimm_5 (Test bit = 7)
li x10, 0x15b19d45a6729736 # initialize rs1
srliw x1, x10, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_uimm_5 (Test bit = 8)
li x1, 0x60a115fdc670adec # initialize rs1
srliw x6, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_uimm_5 (Test bit = 9)
li x27, 0xf898463a71352310 # initialize rs1
srliw x21, x27, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cp_uimm_5 (Test bit = 10)
li x16, 0x65efc1b0e6b68bc0 # initialize rs1
srliw x24, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cp_uimm_5 (Test bit = 11)
li x12, 0x65a096ee465f4bb8 # initialize rs1
srliw x19, x12, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cp_uimm_5 (Test bit = 12)
li x26, 0x5e8a2f1fc4ec40b4 # initialize rs1
srliw x29, x26, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_uimm_5 (Test bit = 13)
li x6, 0xf50b342466f0013a # initialize rs1
srliw x1, x6, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cp_uimm_5 (Test bit = 14)
li x10, 0x5fedff9b9a4c1c11 # initialize rs1
srliw x16, x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cp_uimm_5 (Test bit = 15)
li x9, 0xa3bc3555c9252290 # initialize rs1
srliw x26, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cp_uimm_5 (Test bit = 16)
li x7, 0x523aba0f0d395b32 # initialize rs1
srliw x12, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cp_uimm_5 (Test bit = 17)
li x3, 0xf4969c315c75b19f # initialize rs1
srliw x19, x3, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cp_uimm_5 (Test bit = 18)
li x6, 0x728908b7f89e14c3 # initialize rs1
srliw x25, x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cp_uimm_5 (Test bit = 19)
li x28, 0x205804015c7f0151 # initialize rs1
srliw x13, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cp_uimm_5 (Test bit = 20)
li x22, 0xa92f2c3e870de50c # initialize rs1
srliw x21, x22, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1056)

# Testcase cp_uimm_5 (Test bit = 21)
li x9, 0x4e4ba4a9d5019ca9 # initialize rs1
srliw x30, x9, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cp_uimm_5 (Test bit = 22)
li x16, 0x61bc2ad4df78b90f # initialize rs1
srliw x20, x16, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cp_uimm_5 (Test bit = 23)
li x10, 0x13cf5ae3db91fce8 # initialize rs1
srliw x27, x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cp_uimm_5 (Test bit = 24)
li x3, 0xb0083c804f691416 # initialize rs1
srliw x1, x3, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1088)

# Testcase cp_uimm_5 (Test bit = 25)
li x21, 0xca9221ec9c6b200b # initialize rs1
srliw x31, x21, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cp_uimm_5 (Test bit = 26)
li x1, 0x7ef74c55036b3024 # initialize rs1
srliw x15, x1, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cp_uimm_5 (Test bit = 27)
li x9, 0x54d860eda5150d8b # initialize rs1
srliw x11, x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cp_uimm_5 (Test bit = 28)
li x29, 0xa606517647c8e43b # initialize rs1
srliw x1, x29, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cp_uimm_5 (Test bit = 29)
li x11, 0x483010f2b01dc688 # initialize rs1
srliw x16, x11, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cp_uimm_5 (Test bit = 30)
li x29, 0xdb4d37b150a8615a # initialize rs1
srliw x5, x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cp_uimm_5 (Test bit = 31)
li x17, 0x21b0caf55d4b615d # initialize rs1
srliw x16, x17, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x11, x23 # perform first operation
srliw x25, x10, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x24, x11 # perform first operation
srliw x28, x1, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x29, x13 # perform first operation
srliw x1, x15, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x3, x22 # perform first operation
srliw x22, x31, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x17, x31 # perform first operation
srliw x10, x3, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x11, x10 # perform first operation
srliw x10, x22, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x6, x25 # perform first operation
srliw x24, x22, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x11, x20 # perform first operation
srliw x3, x1, 16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x22, x31 # perform first operation
srliw x20, x17, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x13, x23 # perform first operation
srliw x13, x15, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x13, x29 # perform first operation
srliw x29, x10, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x7, x29 # perform first operation
srliw x24, x23, 14 # perform second (triggering) operation

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
