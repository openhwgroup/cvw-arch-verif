///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-sext.b.S
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
li x0, 0xa8e8e2d1a0ff71fe # initialize rs1
sext.b x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x09ab35d83e4cda9e # initialize rs1
sext.b x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x57577d959572fca4 # initialize rs1
sext.b x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xdee8e22e35cd3825 # initialize rs1
sext.b x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xab328ff59b65f706 # initialize rs1
sext.b x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x353f00efde17d3cd # initialize rs1
sext.b x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9a81c2e386e594de # initialize rs1
sext.b x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x06c3607a6cd01ac7 # initialize rs1
sext.b x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe3632ea48364a1ad # initialize rs1
sext.b x30, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x5b3bf512ed69428c # initialize rs1
sext.b x1, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x54761ef48d375475 # initialize rs1
sext.b x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc8be18059f228d52 # initialize rs1
sext.b x19, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe3d0ad97ca1c963a # initialize rs1
sext.b x7, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xde48042272e5560e # initialize rs1
sext.b x11, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe960bcb71cd15224 # initialize rs1
sext.b x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xfd20670ebc4d97d5 # initialize rs1
sext.b x12, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x95abf8694590d4d6 # initialize rs1
sext.b x18, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2ca7b10b78c78f8b # initialize rs1
sext.b x12, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x29396be07c5a4a14 # initialize rs1
sext.b x28, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8edf85a8f12822fb # initialize rs1
sext.b x28, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x50e7c71242638f72 # initialize rs1
sext.b x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xcca60acedaf4e5e8 # initialize rs1
sext.b x20, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x79fb2b6efd248b0a # initialize rs1
sext.b x1, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x0e76f4d80aad8a17 # initialize rs1
sext.b x30, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4eddb412891deb36 # initialize rs1
sext.b x2, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa168e5ef3069f53c # initialize rs1
sext.b x30, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0c8c315eb8f70776 # initialize rs1
sext.b x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf24f211ab13099a0 # initialize rs1
sext.b x23, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x185b5a0c3a43ae4a # initialize rs1
sext.b x12, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8afabf41ee0e328e # initialize rs1
sext.b x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5ee3a77aac7ef263 # initialize rs1
sext.b x14, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xa9dd71c023fbeff8 # initialize rs1
sext.b x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 248)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x79c021cf10d4f549 # initialize rs1
sext.b x0, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x8e837caa197b1d69 # initialize rs1
sext.b x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0x382d1906e223dc7e # initialize rs1
sext.b x2, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0xba74b7b3c5a7e526 # initialize rs1
sext.b x3, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x30, 0x144abf98509cce52 # initialize rs1
sext.b x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x5bfa32415605c32d # initialize rs1
sext.b x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x51d08650984da676 # initialize rs1
sext.b x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
li x17, 0x156e6652aab7519f # initialize rs1
sext.b x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0xebbac4672ff25190 # initialize rs1
sext.b x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0xeef134911f21370f # initialize rs1
sext.b x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x1ebd992f37340522 # initialize rs1
sext.b x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0x06ba186b306b06c9 # initialize rs1
sext.b x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x41dbadc77e621a75 # initialize rs1
sext.b x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x842f2ea4b2826402 # initialize rs1
sext.b x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0x8ed6e897736d7d90 # initialize rs1
sext.b x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x1d06ab9f7b21a2f1 # initialize rs1
sext.b x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0x55124381c86a2761 # initialize rs1
sext.b x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xb2c983c18a6b1033 # initialize rs1
sext.b x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x185b555048ee7c93 # initialize rs1
sext.b x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x4eb902e90b6326ea # initialize rs1
sext.b x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0xf398c031083c1a47 # initialize rs1
sext.b x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x2ebe71b0ac6e3aeb # initialize rs1
sext.b x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0xb0f937f695566501 # initialize rs1
sext.b x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0x2ab3f82e57df332f # initialize rs1
sext.b x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x427b7fe0ae2b6efb # initialize rs1
sext.b x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0xe1d5269b124e3882 # initialize rs1
sext.b x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x4f64abc22f8a6231 # initialize rs1
sext.b x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x8, 0x1c51469384164453 # initialize rs1
sext.b x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0xcf1130a2b5c180c3 # initialize rs1
sext.b x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xc14794c889bfb8c4 # initialize rs1
sext.b x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x9, 0xf30f77f2366bff40 # initialize rs1
sext.b x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0x34b40423cf42a082 # initialize rs1
sext.b x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x0000000000000000 # initialize rs1
sext.b x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
sext.b x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
sext.b x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
sext.b x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
sext.b x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
sext.b x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
sext.b x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
sext.b x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
sext.b x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
sext.b x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
sext.b x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
sext.b x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
sext.b x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
sext.b x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
sext.b x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001 # initialize rs1
sext.b x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf0cbfd902e0a4e4b # initialize rs1
sext.b x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x94faefff4f8c85f4 # initialize rs1
sext.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7a98b5ae8bbc2fa6 # initialize rs1
sext.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6722c9d50f046a05 # initialize rs1
sext.b x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe4afe64ed95b6292 # initialize rs1
sext.b x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1913356b3621967a # initialize rs1
sext.b x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf45b01e28c50344b # initialize rs1
sext.b x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7883a0646bc18aa6 # initialize rs1
sext.b x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1c5d5ec3c55ce76f # initialize rs1
sext.b x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x40af114ada9fb1b4 # initialize rs1
sext.b x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x020a2d288f1940cd # initialize rs1
sext.b x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcbcc9280f9a96997 # initialize rs1
sext.b x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe554e0a0cb21c9ad # initialize rs1
sext.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x04f054b07bc794f6 # initialize rs1
sext.b x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7540b71c50d32c26 # initialize rs1
sext.b x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2d5b8d275f28efe7 # initialize rs1
sext.b x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xba656d5edb3b7f08 # initialize rs1
sext.b x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7d3c4c5660d16e50 # initialize rs1
sext.b x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5adda3d2e0c65d2e # initialize rs1
sext.b x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x80175f48c3099d14 # initialize rs1
sext.b x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa8a6ffc1defff724 # initialize rs1
sext.b x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf9c4e60b668bc03a # initialize rs1
sext.b x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2eb8abd6b70bd3b4 # initialize rs1
sext.b x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x09a42aaf6d1d2918 # initialize rs1
sext.b x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf0bfee05fca10aed # initialize rs1
sext.b x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3188e3e63f7729ca # initialize rs1
sext.b x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3ee05356cbad6395 # initialize rs1
sext.b x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7a72e685e94e61df # initialize rs1
sext.b x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9cafcc68bf7bb9b0 # initialize rs1
sext.b x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5691d0d8b8617a24 # initialize rs1
sext.b x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x652582b537387065 # initialize rs1
sext.b x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa23f89f74b3a6780 # initialize rs1
sext.b x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x17, x8 # perform first operation
sext.b x13, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x27, x23 # perform first operation
sext.b x7, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x20, x29 # perform first operation
sext.b x7, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x14, x27 # perform first operation
sext.b x27, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x27, x10 # perform first operation
sext.b x27, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x27, x13 # perform first operation
sext.b x13, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x3, x18 # perform first operation
sext.b x2, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x6, x31 # perform first operation
sext.b x5, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x1, x26 # perform first operation
sext.b x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x8, x22 # perform first operation
sext.b x8, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x8, x2 # perform first operation
sext.b x2, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x11, x31 # perform first operation
sext.b x22, x9 # perform second (triggering) operation

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
