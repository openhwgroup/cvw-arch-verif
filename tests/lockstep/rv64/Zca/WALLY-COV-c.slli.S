///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.slli.S
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
li x1, 0xb464d7315e259883
c.slli x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x76bbc93bf477a736
c.slli x2, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x6bc576a3a11b7ea3
c.slli x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x17a4761bde6e3705
c.slli x4, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8fdcac67b920abe5
c.slli x5, 33 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x873b0b2d887ba403
c.slli x6, 22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9f6d0592c72e3955
c.slli x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x04327e39a35e571a
c.slli x8, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x62cba00e5563bc3e
c.slli x9, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xaf7e20fef241cc91
c.slli x10, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x96d18540159f6fc1
c.slli x11, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa9aa4ebc3a01e53b
c.slli x12, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc0325d2aa522b2a3
c.slli x13, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x357c47ad8abeff58
c.slli x14, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x35384374e790451e
c.slli x15, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3dcfd74b507133d5
c.slli x16, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x22b3d47cab278b44
c.slli x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4b0d5758ebfdc4cd
c.slli x18, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x88af13bf309ed5d7
c.slli x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd59a3b046f1c6a14
c.slli x20, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa51610e5900d7e9f
c.slli x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xbad5ff5e42f8b42d
c.slli x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x5e0adfa452c6a277
c.slli x23, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xbe131d3747f3d5e2
c.slli x24, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xee45a764caf5ceb5
c.slli x25, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa14553fe3c719ed2
c.slli x26, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xed3ce8885c7d6440
c.slli x27, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc16ccace657b3116
c.slli x28, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x539acd4d0aa6172f
c.slli x29, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd1313e57afdbf6a8
c.slli x30, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x2e6b63afa87c7db4
c.slli x31, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x0000000000000000
c.slli x31, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001
c.slli x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0000000000000002
c.slli x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x8000000000000000
c.slli x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001
c.slli x13, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff
c.slli x25, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe
c.slli x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0xffffffffffffffff
c.slli x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe
c.slli x30, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 312)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2
c.slli x23, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa
c.slli x5, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555
c.slli x8, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff
c.slli x5, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 344)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe
c.slli x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x0000000100000000
c.slli x26, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001
c.slli x5, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000
c.slli x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000000
c.slli x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000
c.slli x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000
c.slli x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000
c.slli x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000
c.slli x27, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000
c.slli x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000
c.slli x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000
c.slli x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000
c.slli x1, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000
c.slli x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000000
c.slli x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000
c.slli x31, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000
c.slli x25, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000
c.slli x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000
c.slli x26, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001
c.slli x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001
c.slli x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.slli x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.slli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001
c.slli x3, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001
c.slli x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000001
c.slli x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001
c.slli x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000001
c.slli x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001
c.slli x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001
c.slli x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001
c.slli x22, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001
c.slli x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001
c.slli x24, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001
c.slli x8, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002
c.slli x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.slli x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000002
c.slli x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002
c.slli x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002
c.slli x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002
c.slli x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002
c.slli x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002
c.slli x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.slli x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002
c.slli x17, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 704)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002
c.slli x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002
c.slli x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002
c.slli x17, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002
c.slli x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000002
c.slli x1, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002
c.slli x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 752)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000
c.slli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.slli x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000
c.slli x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000
c.slli x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 784)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000000
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000
c.slli x16, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000
c.slli x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000
c.slli x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000000
c.slli x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000
c.slli x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000
c.slli x22, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000
c.slli x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000
c.slli x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000
c.slli x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000
c.slli x27, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000
c.slli x30, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001
c.slli x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001
c.slli x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001
c.slli x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001
c.slli x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001
c.slli x27, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001
c.slli x7, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 936)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001
c.slli x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001
c.slli x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001
c.slli x1, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001
c.slli x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001
c.slli x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000001
c.slli x22, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001
c.slli x1, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001
c.slli x9, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001
c.slli x21, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.slli x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff
c.slli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff
c.slli x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff
c.slli x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff
c.slli x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffffffffffff
c.slli x21, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff
c.slli x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff
c.slli x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff
c.slli x3, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff
c.slli x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff
c.slli x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff
c.slli x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffffffffffff
c.slli x25, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff
c.slli x20, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff
c.slli x31, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe
c.slli x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1144)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe
c.slli x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe
c.slli x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe
c.slli x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe
c.slli x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe
c.slli x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe
c.slli x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.slli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe
c.slli x21, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1208)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe
c.slli x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe
c.slli x11, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffffffffffe
c.slli x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe
c.slli x20, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe
c.slli x9, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1248)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe
c.slli x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe
c.slli x2, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff
c.slli x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff
c.slli x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff
c.slli x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff
c.slli x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1296)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff
c.slli x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffffffffffff
c.slli x16, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1312)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff
c.slli x19, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1320)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff
c.slli x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff
c.slli x26, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff
c.slli x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff
c.slli x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1352)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff
c.slli x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff
c.slli x26, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff
c.slli x10, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffffffffffff
c.slli x28, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff
c.slli x30, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe
c.slli x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1400)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe
c.slli x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffffffffffe
c.slli x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffffffffffe
c.slli x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1424)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe
c.slli x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe
c.slli x19, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe
c.slli x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe
c.slli x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1456)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe
c.slli x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffffffffffe
c.slli x28, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1472)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe
c.slli x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe
c.slli x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1488)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe
c.slli x31, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffffffffffe
c.slli x18, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1504)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe
c.slli x26, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1512)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe
c.slli x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2
c.slli x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1528)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc887763ae86f2
c.slli x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1536)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2
c.slli x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1544)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2
c.slli x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1552)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2
c.slli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1560)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2
c.slli x1, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2
c.slli x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1576)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2
c.slli x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1584)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2
c.slli x6, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1592)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2
c.slli x14, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1600)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2
c.slli x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1608)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f2
c.slli x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2
c.slli x6, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1624)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2
c.slli x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2
c.slli x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2
c.slli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1648)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa
c.slli x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa
c.slli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa
c.slli x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1672)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa
c.slli x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa
c.slli x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa
c.slli x24, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa
c.slli x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa
c.slli x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1712)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa
c.slli x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa
c.slli x31, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1728)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa
c.slli x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa
c.slli x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa
c.slli x20, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1752)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa
c.slli x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa
c.slli x6, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa
c.slli x3, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555
c.slli x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555
c.slli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555
c.slli x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555
c.slli x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_imm_corners
li x23, 0x5555555555555555
c.slli x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555
c.slli x28, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cr_rs1_imm_corners
li x18, 0x5555555555555555
c.slli x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555
c.slli x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555
c.slli x27, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555
c.slli x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555
c.slli x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555
c.slli x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cr_rs1_imm_corners
li x1, 0x5555555555555555
c.slli x1, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cr_rs1_imm_corners
li x21, 0x5555555555555555
c.slli x21, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cr_rs1_imm_corners
li x2, 0x5555555555555555
c.slli x2, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cr_rs1_imm_corners
li x23, 0x5555555555555555
c.slli x23, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff
c.slli x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 112)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff
c.slli x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000ffffffff
c.slli x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff
c.slli x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff
c.slli x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff
c.slli x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff
c.slli x17, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff
c.slli x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff
c.slli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000ffffffff
c.slli x19, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff
c.slli x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff
c.slli x2, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000ffffffff
c.slli x25, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff
c.slli x9, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff
c.slli x21, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff
c.slli x6, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe
c.slli x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe
c.slli x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe
c.slli x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe
c.slli x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe
c.slli x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000fffffffe
c.slli x2, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe
c.slli x26, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe
c.slli x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe
c.slli x24, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 304)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe
c.slli x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000fffffffe
c.slli x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe
c.slli x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.slli x9, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe
c.slli x30, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe
c.slli x7, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 352)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe
c.slli x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000
c.slli x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000
c.slli x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000
c.slli x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000
c.slli x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000
c.slli x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000
c.slli x19, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000
c.slli x24, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000000
c.slli x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000
c.slli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000
c.slli x11, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000
c.slli x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000000
c.slli x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000
c.slli x3, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000
c.slli x27, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000
c.slli x30, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000000
c.slli x25, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001
c.slli x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001
c.slli x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001
c.slli x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001
c.slli x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 520)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001
c.slli x28, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001
c.slli x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001
c.slli x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001
c.slli x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001
c.slli x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 584)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001
c.slli x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 592)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001
c.slli x31, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001
c.slli x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001
c.slli x7, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cp_uimm (Test bit = 0)
li x25, 0x7f6155787150b4f5
c.slli x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cp_uimm (Test bit = 1)
li x9, 0x8e56d3cf63df6829
c.slli x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_uimm (Test bit = 2)
li x5, 0x17f8142862615b80
c.slli x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cp_uimm (Test bit = 3)
li x17, 0x9c6c843b60a1d4e9
c.slli x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_uimm (Test bit = 4)
li x26, 0xe4c556367fe53d44
c.slli x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cp_uimm (Test bit = 5)
li x8, 0xcf4443f9a4d0a4f6
c.slli x8, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cp_uimm (Test bit = 6)
li x12, 0x93d42b60bb730dc5
c.slli x12, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cp_uimm (Test bit = 7)
li x20, 0x07c0d9ffe1fdca75
c.slli x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cp_uimm (Test bit = 8)
li x10, 0xf2af074945a74589
c.slli x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cp_uimm (Test bit = 9)
li x27, 0x9f159bb6b5f708bb
c.slli x27, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 696)

# Testcase cp_uimm (Test bit = 10)
li x3, 0x2656e03b700e1d0b
c.slli x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cp_uimm (Test bit = 11)
li x29, 0x67f9f042c5d8e26a
c.slli x29, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cp_uimm (Test bit = 12)
li x11, 0x36277e0eb48d584c
c.slli x11, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cp_uimm (Test bit = 13)
li x23, 0xed9c100e6abb7785
c.slli x23, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 728)

# Testcase cp_uimm (Test bit = 14)
li x9, 0x2a3e34229bbdd52e
c.slli x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cp_uimm (Test bit = 15)
li x25, 0x12d36be0c0299b19
c.slli x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 744)

# Testcase cp_uimm (Test bit = 16)
li x9, 0x7701fb6c9c163220
c.slli x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cp_uimm (Test bit = 17)
li x5, 0x6d002bd6ac0a316d
c.slli x5, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cp_uimm (Test bit = 18)
li x24, 0x4b4aef3155c98358
c.slli x24, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cp_uimm (Test bit = 19)
li x16, 0x41c24d0b888dbb48
c.slli x16, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cp_uimm (Test bit = 20)
li x21, 0x36d792fa1bf71972
c.slli x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cp_uimm (Test bit = 21)
li x26, 0xabb6aa595093640a
c.slli x26, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cp_uimm (Test bit = 22)
li x3, 0x9d95e6ce7de81ba7
c.slli x3, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cp_uimm (Test bit = 23)
li x16, 0x4a9a91039c6efc97
c.slli x16, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cp_uimm (Test bit = 24)
li x25, 0x6564d1038fb411a2
c.slli x25, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_uimm (Test bit = 25)
li x15, 0x42ae8d35f8a4a300
c.slli x15, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cp_uimm (Test bit = 26)
li x28, 0xc7302686b05b08d2
c.slli x28, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_uimm (Test bit = 27)
li x27, 0xc029b3c72276e0dc
c.slli x27, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_uimm (Test bit = 28)
li x23, 0x7bca9493d6174ba9
c.slli x23, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cp_uimm (Test bit = 29)
li x1, 0x8ef0312b2d73d7b0
c.slli x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cp_uimm (Test bit = 30)
li x29, 0xd0afa2c0e6fff5c6
c.slli x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cp_uimm (Test bit = 31)
li x10, 0xe9d7a5c50783f9cc
c.slli x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cp_uimm (Test bit = 32)
li x24, 0x684967c447bf5b21
c.slli x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_uimm (Test bit = 33)
li x21, 0x494d3e4d8584d476
c.slli x21, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cp_uimm (Test bit = 34)
li x23, 0xb220b2446b7ea4f1
c.slli x23, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_uimm (Test bit = 35)
li x14, 0x077d6aae7b6c69c4
c.slli x14, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_uimm (Test bit = 36)
li x29, 0x3bff85193de1bcc3
c.slli x29, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cp_uimm (Test bit = 37)
li x13, 0xa4e70c50095a2c96
c.slli x13, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_uimm (Test bit = 38)
li x13, 0x60a42f78dfe30fb8
c.slli x13, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_uimm (Test bit = 39)
li x2, 0x08260758ccb0753a
c.slli x2, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_uimm (Test bit = 40)
li x2, 0xdf18d03eb15acb61
c.slli x2, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 944)

# Testcase cp_uimm (Test bit = 41)
li x16, 0xbe1302a4ecaa556a
c.slli x16, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_uimm (Test bit = 42)
li x7, 0xb9b657a927c58a3f
c.slli x7, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_uimm (Test bit = 43)
li x3, 0xcc7b9b98a50b42f5
c.slli x3, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 968)

# Testcase cp_uimm (Test bit = 44)
li x26, 0x46149a8dff172f48
c.slli x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_uimm (Test bit = 45)
li x19, 0x01cfabeecb82b775
c.slli x19, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cp_uimm (Test bit = 46)
li x22, 0x958ec4b231be178e
c.slli x22, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_uimm (Test bit = 47)
li x27, 0x0d62a23e36365c9f
c.slli x27, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1000)

# Testcase cp_uimm (Test bit = 48)
li x28, 0x0ff1aa936eb64ebd
c.slli x28, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cp_uimm (Test bit = 49)
li x21, 0x8533273687845592
c.slli x21, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1016)

# Testcase cp_uimm (Test bit = 50)
li x13, 0x16e7a6ea5c734967
c.slli x13, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cp_uimm (Test bit = 51)
li x1, 0xdb8b1ba9028dc93f
c.slli x1, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cp_uimm (Test bit = 52)
li x22, 0xa5bb28c4041e9ba7
c.slli x22, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cp_uimm (Test bit = 53)
li x16, 0x541c1a52464c3c3e
c.slli x16, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cp_uimm (Test bit = 54)
li x20, 0x4dd9be26f78e7f05
c.slli x20, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cp_uimm (Test bit = 55)
li x6, 0x0bdddce102011ee7
c.slli x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cp_uimm (Test bit = 56)
li x3, 0x28aef75965d120a2
c.slli x3, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cp_uimm (Test bit = 57)
li x6, 0x31e1da1ff1cd8371
c.slli x6, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1080)

# Testcase cp_uimm (Test bit = 58)
li x5, 0x41fdee900c9d96a1
c.slli x5, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cp_uimm (Test bit = 59)
li x17, 0x076fb91921cf0f55
c.slli x17, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

# Testcase cp_uimm (Test bit = 60)
li x29, 0x57ec215a2d048ca3
c.slli x29, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cp_uimm (Test bit = 61)
li x21, 0xc4ec598c217ad485
c.slli x21, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cp_uimm (Test bit = 62)
li x11, 0xa29334690cfc9c5c
c.slli x11, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cp_uimm (Test bit = 63)
li x14, 0x102791b7a1fb6f8f
c.slli x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

.EQU SIGSIZE,2936


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
