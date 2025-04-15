///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.addiw.S
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

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf467b7881fa49c75 # initialize rs1
c.addiw x1, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xcdbc2a371b75abce # initialize rs1
c.addiw x2, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xcad648ea320dc6ff # initialize rs1
c.addiw x3, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5e94eae0004eec51 # initialize rs1
c.addiw x4, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xec7ccbff43ffcb64 # initialize rs1
c.addiw x5, -21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcc272e9ce6dbf225 # initialize rs1
c.addiw x6, 14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe58ace75ac468c08 # initialize rs1
c.addiw x7, -24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2a5aafa4434978f4 # initialize rs1
c.addiw x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdeec8d9bc707f1d9 # initialize rs1
c.addiw x9, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8dffae89438aecb5 # initialize rs1
c.addiw x10, -4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd00822b43d88bb61 # initialize rs1
c.addiw x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5120b6c709660687 # initialize rs1
c.addiw x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x159bc0b2c2e4e746 # initialize rs1
c.addiw x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x41e69df20450155f # initialize rs1
c.addiw x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe6590f7fb553c3a6 # initialize rs1
c.addiw x15, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xa48400c10400df8e # initialize rs1
c.addiw x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x722789f1c02c25a3 # initialize rs1
c.addiw x17, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x1d8b53547870ccca # initialize rs1
c.addiw x18, -8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x607bb471e087221a # initialize rs1
c.addiw x19, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd4455d025595c874 # initialize rs1
c.addiw x20, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xf499f2e3d999dc94 # initialize rs1
c.addiw x21, -18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x7900f22e8ac46b28 # initialize rs1
c.addiw x22, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf36eff252872f99e # initialize rs1
c.addiw x23, -27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5ff83e0ee8c2357c # initialize rs1
c.addiw x24, -17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x71f499a684b790ba # initialize rs1
c.addiw x25, -7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9fdee88e3d604e3e # initialize rs1
c.addiw x26, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7a30c585c4222c0a # initialize rs1
c.addiw x27, -29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xbeec70d18d4b6186 # initialize rs1
c.addiw x28, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa357253651f40b42 # initialize rs1
c.addiw x29, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xddfae98ca73e2717 # initialize rs1
c.addiw x30, -20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8d1bbcc83c3a6144 # initialize rs1
c.addiw x31, -15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0x0000000000000000 # initialize rs1
c.addiw x29, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
c.addiw x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x0000000000000002 # initialize rs1
c.addiw x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
c.addiw x30, -22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
c.addiw x14, -21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
c.addiw x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
c.addiw x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
c.addiw x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 304)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
c.addiw x23, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x7, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
c.addiw x5, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
c.addiw x7, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
c.addiw x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
c.addiw x23, -19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
c.addiw x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cp_imm_corners
li x29, 0x96b133d88e4970f7 # initialize rs1
c.addiw x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cp_imm_corners
li x22, 0xa2af6d53eb7a383c # initialize rs1
c.addiw x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_imm_corners
li x1, 0xfb1552c46d4c4bcb # initialize rs1
c.addiw x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_imm_corners
li x17, 0xf0b2415fc31c8404 # initialize rs1
c.addiw x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_imm_corners
li x3, 0xedb980ffcf933e78 # initialize rs1
c.addiw x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_imm_corners
li x25, 0xef43de6082780a42 # initialize rs1
c.addiw x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_imm_corners
li x29, 0xc56b2d3d134df12e # initialize rs1
c.addiw x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_imm_corners
li x29, 0x5b84f566c7b64ba1 # initialize rs1
c.addiw x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cp_imm_corners
li x2, 0xdb46df2ed398cff3 # initialize rs1
c.addiw x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_imm_corners
li x7, 0x4b80d3d3aec5e3e4 # initialize rs1
c.addiw x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_imm_corners
li x16, 0x8bbc1757afaa89b6 # initialize rs1
c.addiw x16, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_imm_corners
li x6, 0x056dc8cd290e6c6c # initialize rs1
c.addiw x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_imm_corners
li x20, 0x768d667ac9a8d92d # initialize rs1
c.addiw x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
c.addiw x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rs1
c.addiw x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
c.addiw x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000 # initialize rs1
c.addiw x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000 # initialize rs1
c.addiw x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
c.addiw x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
c.addiw x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
c.addiw x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
c.addiw x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000 # initialize rs1
c.addiw x8, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000000 # initialize rs1
c.addiw x7, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
c.addiw x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
c.addiw x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 576)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001 # initialize rs1
c.addiw x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
c.addiw x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
c.addiw x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
c.addiw x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000001 # initialize rs1
c.addiw x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000001 # initialize rs1
c.addiw x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001 # initialize rs1
c.addiw x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
c.addiw x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
c.addiw x25, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 648)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
c.addiw x25, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001 # initialize rs1
c.addiw x2, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
c.addiw x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
c.addiw x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
c.addiw x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
c.addiw x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
c.addiw x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
c.addiw x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
c.addiw x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
c.addiw x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
c.addiw x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002 # initialize rs1
c.addiw x20, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
c.addiw x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 752)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000002 # initialize rs1
c.addiw x7, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
c.addiw x5, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 768)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000002 # initialize rs1
c.addiw x31, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 776)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rs1
c.addiw x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rs1
c.addiw x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
c.addiw x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000000 # initialize rs1
c.addiw x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
c.addiw x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
c.addiw x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000 # initialize rs1
c.addiw x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addiw x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000 # initialize rs1
c.addiw x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000000 # initialize rs1
c.addiw x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
c.addiw x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000000 # initialize rs1
c.addiw x17, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000000 # initialize rs1
c.addiw x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
c.addiw x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
c.addiw x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
c.addiw x30, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001 # initialize rs1
c.addiw x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
c.addiw x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001 # initialize rs1
c.addiw x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
c.addiw x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000001 # initialize rs1
c.addiw x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
c.addiw x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
c.addiw x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
c.addiw x15, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000001 # initialize rs1
c.addiw x2, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
c.addiw x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000001 # initialize rs1
c.addiw x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 992)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffffffffffff # initialize rs1
c.addiw x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1000)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
c.addiw x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
c.addiw x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
c.addiw x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rs1
c.addiw x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff # initialize rs1
c.addiw x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
c.addiw x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffffffffffff # initialize rs1
c.addiw x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
c.addiw x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff # initialize rs1
c.addiw x31, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
c.addiw x12, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
c.addiw x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1088)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
c.addiw x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffffffffffe # initialize rs1
c.addiw x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe # initialize rs1
c.addiw x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
c.addiw x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rs1
c.addiw x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
c.addiw x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
c.addiw x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
c.addiw x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffffffffffe # initialize rs1
c.addiw x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
c.addiw x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
c.addiw x24, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rs1
c.addiw x27, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
c.addiw x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
c.addiw x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
c.addiw x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
c.addiw x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1216)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
c.addiw x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff # initialize rs1
c.addiw x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
c.addiw x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
c.addiw x18, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
c.addiw x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
c.addiw x3, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
c.addiw x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
c.addiw x9, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1280)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffffffffffff # initialize rs1
c.addiw x17, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cr_rs1_imm_corners
li x17, 0xffffffffffffffff # initialize rs1
c.addiw x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff # initialize rs1
c.addiw x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1304)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffffffffffe # initialize rs1
c.addiw x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
c.addiw x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1320)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
c.addiw x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rs1
c.addiw x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffffffffffe # initialize rs1
c.addiw x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
c.addiw x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffffffffffe # initialize rs1
c.addiw x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
c.addiw x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
c.addiw x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1376)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
c.addiw x12, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe # initialize rs1
c.addiw x19, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1392)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
c.addiw x12, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
c.addiw x23, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1408)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1432)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1456)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cr_rs1_imm_corners
li x11, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x31, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1488)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x6, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1504)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
c.addiw x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1512)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1528)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_imm_corners
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1568)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x24, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1576)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x25, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1592)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x25, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
c.addiw x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1616)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
c.addiw x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1624)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addiw x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
c.addiw x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1640)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
c.addiw x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1648)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
c.addiw x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1656)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
c.addiw x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1664)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
c.addiw x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1672)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addiw x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1680)

# Testcase cr_rs1_imm_corners
li x20, 0x5555555555555555 # initialize rs1
c.addiw x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
c.addiw x16, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
c.addiw x29, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
c.addiw x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1712)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
c.addiw x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1720)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
c.addiw x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1728)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
c.addiw x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1736)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
c.addiw x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1744)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
c.addiw x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
c.addiw x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1760)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
c.addiw x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1768)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
c.addiw x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1776)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000ffffffff # initialize rs1
c.addiw x18, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1784)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff # initialize rs1
c.addiw x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
c.addiw x3, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
c.addiw x9, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000ffffffff # initialize rs1
c.addiw x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
c.addiw x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe # initialize rs1
c.addiw x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
c.addiw x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
c.addiw x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
c.addiw x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe # initialize rs1
c.addiw x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
c.addiw x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
c.addiw x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 104)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
c.addiw x11, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
c.addiw x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rs1
c.addiw x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
c.addiw x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addiw x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
c.addiw x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addiw x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
c.addiw x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
c.addiw x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
c.addiw x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
c.addiw x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
c.addiw x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
c.addiw x31, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000 # initialize rs1
c.addiw x19, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000 # initialize rs1
c.addiw x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
c.addiw x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
c.addiw x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001 # initialize rs1
c.addiw x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
c.addiw x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
c.addiw x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
c.addiw x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
c.addiw x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
c.addiw x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
c.addiw x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
c.addiw x17, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
c.addiw x29, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001 # initialize rs1
c.addiw x28, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
c.addiw x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
c.addiw x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

.EQU SIGSIZE,2144


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
