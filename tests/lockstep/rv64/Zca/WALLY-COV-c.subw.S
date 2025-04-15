///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.subw.S
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

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x3ca0bc4dee4b5f85 # initialize rs2
li x15, 0x0000000000000000 # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0xf3dc287606a6702d # initialize rs2
li x8, 0x0000000000000001 # initialize rd,rs1
c.subw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x5305bf8bb7f6ab11 # initialize rs2
li x14, 0x0000000000000002 # initialize rd,rs1
c.subw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x69bcdf96193cf472 # initialize rs2
li x10, 0x8000000000000000 # initialize rd,rs1
c.subw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x5526419038395ab8 # initialize rs2
li x8, 0x8000000000000001 # initialize rd,rs1
c.subw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x11, 0x14982eac2d0fbaa8 # initialize rs2
li x13, 0x7fffffffffffffff # initialize rd,rs1
c.subw x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x8121e63edf8546c9 # initialize rs2
li x14, 0x7ffffffffffffffe # initialize rd,rs1
c.subw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xbb05ab6cd998a3f1 # initialize rs2
li x8, 0xffffffffffffffff # initialize rd,rs1
c.subw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0x8a0b4ea7be45ac06 # initialize rs2
li x13, 0xfffffffffffffffe # initialize rd,rs1
c.subw x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x6ea866d43e9e3184 # initialize rs2
li x13, 0x5bbc887763ae86f2 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x1f2a886a9cf51cd3 # initialize rs2
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0xd908ddff2d61033e # initialize rs2
li x13, 0x5555555555555555 # initialize rd,rs1
c.subw x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xb52282ceb15850e0 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.subw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xffcdb76d3fce7c83 # initialize rs2
li x10, 0x00000000fffffffe # initialize rd,rs1
c.subw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0xd68207e4333d3196 # initialize rs2
li x15, 0x0000000100000000 # initialize rd,rs1
c.subw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x696f9370fae38966 # initialize rs2
li x12, 0x0000000100000001 # initialize rd,rs1
c.subw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0x0000000000000000 # initialize rs2
li x12, 0xdbec4eda436053db # initialize rd,rs1
c.subw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x0000000000000001 # initialize rs2
li x14, 0xee1c35b0a5155c7c # initialize rd,rs1
c.subw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x0000000000000002 # initialize rs2
li x9, 0x565b4c2f7a4011ff # initialize rd,rs1
c.subw x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs2
li x12, 0x028df2991f30339f # initialize rd,rs1
c.subw x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs2
li x10, 0xee07f01360d1168d # initialize rd,rs1
c.subw x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x11, 0x7fffffffffffffff # initialize rs2
li x12, 0xf4bcd4aa00e1dd2e # initialize rd,rs1
c.subw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x15, 0x23332d7ac8656f01 # initialize rd,rs1
c.subw x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs2
li x14, 0x37139fae569dee1e # initialize rd,rs1
c.subw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs2
li x10, 0xabfef39cd538e756 # initialize rd,rs1
c.subw x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs2
li x12, 0x486b4fd24201098f # initialize rd,rs1
c.subw x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x9, 0xd9a8656e972c947b # initialize rd,rs1
c.subw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs2
li x14, 0xb9b264b09d99e983 # initialize rd,rs1
c.subw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x8, 0x19a612d7f684a7ae # initialize rd,rs1
c.subw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs2
li x12, 0xfdfd4a29c54273f1 # initialize rd,rs1
c.subw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs2
li x8, 0xd3017dc386c46930 # initialize rd,rs1
c.subw x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0000000100000001 # initialize rs2
li x15, 0x430073b4302239fc # initialize rd,rs1
c.subw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xfcc0577907660750 # initialize rs2
li x15, 0xa0abf88ebf1884c0 # initialize rd,rs1
c.subw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe0b0ff3e1692228f # initialize rs2
li x8, 0x2c48b876c69aad4d # initialize rd,rs1
c.subw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x2e7579231a827548 # initialize rs2
li x15, 0x09c97714ad749823 # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xe5875d6e0cfbc199 # initialize rs2
li x9, 0xec642eef7ecd1556 # initialize rd,rs1
c.subw x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x106580813c9da2f7 # initialize rs2
li x13, 0x5de496580bb29fb7 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xef6a0dbec8c2c001 # initialize rs2
li x10, 0x38f1c236430a5a82 # initialize rd,rs1
c.subw x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x6227f34e954ef25f # initialize rs2
li x10, 0xb8129bc24e779315 # initialize rd,rs1
c.subw x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb6de40e26b2aebbe # initialize rs2
li x10, 0x6cc8ce9d91e2034a # initialize rd,rs1
c.subw x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x16c4a36e39e291c9 # initialize rs2
li x8, 0x1375a9b66b38e307 # initialize rd,rs1
c.subw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9ccd4a3943ba8102 # initialize rs2
li x9, 0xf9228576cb7cc3e4 # initialize rd,rs1
c.subw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4057d57c7a7f17e2 # initialize rs2
li x10, 0x743881491d46a995 # initialize rd,rs1
c.subw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x75a3551e29870ae7 # initialize rs2
li x11, 0x9877b5aadb54c651 # initialize rd,rs1
c.subw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xba5a795bc9c0e76b # initialize rs2
li x12, 0x1d518510e6d30da7 # initialize rd,rs1
c.subw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x99fa4c78893c2c19 # initialize rs2
li x13, 0x1086a6207a373f7e # initialize rd,rs1
c.subw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x07bc9cfc027e71da # initialize rs2
li x14, 0x3acb25eeca85281d # initialize rd,rs1
c.subw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xa3c34379bf6ebf13 # initialize rs2
li x15, 0x98dc761684e38a2d # initialize rd,rs1
c.subw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0xda6033e625561dad # initialize rs2
li x10, 0xdc42be58fe17ae20 # initialize rd,rs1
c.subw x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x747ef647aab4836a # initialize rs2
li x8, 0xce1ccbde5483a3eb # initialize rd,rs1
c.subw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x114411bc0d0eae71 # initialize rs2
li x11, 0xbce20f03b48aa605 # initialize rd,rs1
c.subw x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x23c77f49bed7b4c2 # initialize rs2
li x8, 0x5421eaf30ab2a2ca # initialize rd,rs1
c.subw x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xd1516005c9df0a57 # initialize rs2
li x15, 0xec4c2caf7cc04757 # initialize rd,rs1
c.subw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x2cdaed8b12de32ac # initialize rs2
li x11, 0x1183d09e74d882b8 # initialize rd,rs1
c.subw x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x0a7ce8df8f97a081 # initialize rs2
li x13, 0xf445b2dd53568cc9 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xa3385c0e64ff8c61 # initialize rs2
li x8, 0x51bc6f83ea3172a3 # initialize rd,rs1
c.subw x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x8ae430595df48805 # initialize rs2
li x10, 0x5fdb8e7c618adef4 # initialize rd,rs1
c.subw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xd06b55416dfe17b2 # initialize rs2
li x15, 0xb4bd85b95f761b20 # initialize rd,rs1
c.subw x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xfebfbba178250a3b # initialize rs2
li x11, 0x294d2d114081bfcd # initialize rd,rs1
c.subw x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x104d3cc199b74d5d # initialize rs2
li x14, 0x2c8d8a47593ae495 # initialize rd,rs1
c.subw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x03a70859c6e5d45a # initialize rs2
li x8, 0x41f0a85ce73ed781 # initialize rd,rs1
c.subw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x94c0b42e8a8ee571 # initialize rs2
li x8, 0xade0052ca9fd79cc # initialize rd,rs1
c.subw x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x2d11c4ec8c76db10 # initialize rs2
li x10, 0x87263a6d6a086500 # initialize rd,rs1
c.subw x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x6337e1c59486f392 # initialize rs2
li x9, 0x9471bf67929b60d4 # initialize rd,rs1
c.subw x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x70623487cac9696c # initialize rs2
li x8, 0x1bbe736efe244a11 # initialize rd,rs1
c.subw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xd57004546328af55 # initialize rs2
li x9, 0x3f0be258a821f00d # initialize rd,rs1
c.subw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0x364c3c5fc1659ed6 # initialize rs2
li x10, 0xd15176747010c81a # initialize rd,rs1
c.subw x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x900ea862c0bec58e # initialize rs2
li x11, 0xd4fde71ebafcf10c # initialize rd,rs1
c.subw x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x0fa22efc74ca88ce # initialize rs2
li x12, 0x26bc875c260d7872 # initialize rd,rs1
c.subw x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x12, 0xb4b884bda4c87e74 # initialize rs2
li x13, 0x011360609aa15d56 # initialize rd,rs1
c.subw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xbcc2b81600c4f6a7 # initialize rs2
li x14, 0xb811fcb4d0d7f8d8 # initialize rd,rs1
c.subw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xf1d93e5eda904e47 # initialize rs2
li x15, 0x27e7365b229eada1 # initialize rd,rs1
c.subw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

.EQU SIGSIZE,576


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
