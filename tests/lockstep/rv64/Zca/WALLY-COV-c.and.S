///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.and.S
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
li x11, 0x34b6d67a3496b95e # initialize rs2
li x15, 0x0000000000000000 # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x27654e26ba96deff # initialize rs2
li x14, 0x0000000000000001 # initialize rd,rs1
c.and x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0xfe8558cb9380634e # initialize rs2
li x8, 0x0000000000000002 # initialize rd,rs1
c.and x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x348f685fe03d6009 # initialize rs2
li x15, 0x8000000000000000 # initialize rd,rs1
c.and x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x03b9b8a3837b8c0c # initialize rs2
li x12, 0x8000000000000001 # initialize rd,rs1
c.and x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0xdd91875751c31fd8 # initialize rs2
li x9, 0x7fffffffffffffff # initialize rd,rs1
c.and x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x5e164a4d1aaf1f4b # initialize rs2
li x10, 0x7ffffffffffffffe # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0x5ee52d6683978631 # initialize rs2
li x14, 0xffffffffffffffff # initialize rd,rs1
c.and x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0x39c885ac7392a344 # initialize rs2
li x11, 0xfffffffffffffffe # initialize rd,rs1
c.and x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x09a17933eb46efa6 # initialize rs2
li x15, 0x5bbc887763ae86f2 # initialize rd,rs1
c.and x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x65f6d999adc780f3 # initialize rs2
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.and x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0xa7fb6691f2e26c72 # initialize rs2
li x8, 0x5555555555555555 # initialize rd,rs1
c.and x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xeacf13ffd340f69a # initialize rs2
li x8, 0x00000000ffffffff # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x02367ad9bea8d4dc # initialize rs2
li x11, 0x00000000fffffffe # initialize rd,rs1
c.and x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x7b36cdebeb466b5b # initialize rs2
li x13, 0x0000000100000000 # initialize rd,rs1
c.and x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0xe1882a6e2bd6a03e # initialize rs2
li x15, 0x0000000100000001 # initialize rd,rs1
c.and x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x0000000000000000 # initialize rs2
li x14, 0x86de01b1ac327186 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x0000000000000001 # initialize rs2
li x9, 0x94c77af0f6e9f4bd # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x0000000000000002 # initialize rs2
li x11, 0x68edd520a1456d3a # initialize rd,rs1
c.and x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs2
li x15, 0xd569ef54380ea4c9 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs2
li x15, 0xcd2a9fc99f53084b # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs2
li x15, 0x4ffb535a1b15236b # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x8, 0xb9a094179e2329d1 # initialize rd,rs1
c.and x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
li x15, 0x10ac5172ce8a1659 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs2
li x9, 0xff69f4c180b7eed0 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs2
li x8, 0x965ee3c24d032d14 # initialize rd,rs1
c.and x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x10, 0x15d08d5d7c7ce840 # initialize rd,rs1
c.and x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs2
li x13, 0x3536ad20d4e63687 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs2
li x8, 0x76549e5d65d377ef # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs2
li x12, 0x53771236dae9549b # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs2
li x13, 0xf0ed1f98ab0eba06 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x9, 0xe06a50e88fdb2bfb # initialize rd,rs1
c.and x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc2d2dac2fa7200cd # initialize rs2
li x11, 0x922e56509b374750 # initialize rd,rs1
c.and x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1b6a9150b1eed7c4 # initialize rs2
li x15, 0x26780de47361224f # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x571ca5f20e90c7ff # initialize rs2
li x8, 0xdacb54b4be21266f # initialize rd,rs1
c.and x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x269e5d66a7be35b7 # initialize rs2
li x8, 0xcd4befcdee2106c0 # initialize rd,rs1
c.and x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdee4b9cf76e3d3cb # initialize rs2
li x11, 0x77ff8b7e314b06f5 # initialize rd,rs1
c.and x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xf5ecf5d43fbc9cf5 # initialize rs2
li x12, 0xb9e240468a36c7c8 # initialize rd,rs1
c.and x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe43b57e5627870da # initialize rs2
li x12, 0x472d47e2f9af6be4 # initialize rd,rs1
c.and x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xee1e7b692dc77652 # initialize rs2
li x15, 0xb01f17c6aae29407 # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x996bcad0a13b0b68 # initialize rs2
li x8, 0x184dd24e628a07b7 # initialize rd,rs1
c.and x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x2ebbe0153d075bc4 # initialize rs2
li x9, 0x9b0ad8b8c122c159 # initialize rd,rs1
c.and x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x2d54f530ce0f1174 # initialize rs2
li x10, 0x9a31c05c93fe0800 # initialize rd,rs1
c.and x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x56f6af290552af37 # initialize rs2
li x11, 0x1a7ba159ca459724 # initialize rd,rs1
c.and x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbc236a13c7063f98 # initialize rs2
li x12, 0x68f27f3ecd7dda21 # initialize rd,rs1
c.and x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xce132fdedb761464 # initialize rs2
li x13, 0x3bb679fa9900d8c8 # initialize rd,rs1
c.and x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x79fb929684c7f476 # initialize rs2
li x14, 0xd0901b8fc73c846f # initialize rd,rs1
c.and x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x530325de7d6f7e79 # initialize rs2
li x15, 0x8f925e948e539867 # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x3ebf002a2a6ebd95 # initialize rs2
li x15, 0xc3bb867bfdb62c6b # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xbd0f3a1b6491dc6d # initialize rs2
li x11, 0xe26a96e06932fe03 # initialize rd,rs1
c.and x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xa431b24b7d7ce383 # initialize rs2
li x12, 0x44c6e6ffab2454ee # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x0b0af85b922019cd # initialize rs2
li x12, 0xb45ec5d82908d9d8 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xb2b80f13b3f9d520 # initialize rs2
li x14, 0x69d6d4139fcc1d79 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xc93d3ea6f799d8b9 # initialize rs2
li x14, 0x2cee59c1b00c82f2 # initialize rd,rs1
c.and x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x62e90d7d399fc96b # initialize rs2
li x15, 0xea82002add94140e # initialize rd,rs1
c.and x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x1d2573b232330262 # initialize rs2
li x9, 0x435eb2f720c3e544 # initialize rd,rs1
c.and x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xcdc79f9ac7b7af4e # initialize rs2
li x10, 0x1cee4bb3953fc89f # initialize rd,rs1
c.and x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x3c55d79e1c1527c8 # initialize rs2
li x12, 0x5ac4c1a65f330646 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xa1a9026b6157b3f1 # initialize rs2
li x15, 0xbd8a8665d61da14f # initialize rd,rs1
c.and x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x1dac9983eb74affd # initialize rs2
li x10, 0x520082691ccd4a83 # initialize rd,rs1
c.and x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x215f251248ac2ff3 # initialize rs2
li x10, 0x58903137e3f13a59 # initialize rd,rs1
c.and x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x314acb1671ea8556 # initialize rs2
li x9, 0xafd70d581c6c1832 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x448741547ace6636 # initialize rs2
li x10, 0x465bfe606892c6c2 # initialize rd,rs1
c.and x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x84da245900bcdce2 # initialize rs2
li x13, 0xb32a72f6788c0443 # initialize rd,rs1
c.and x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x8f34ee814cd4e8e3 # initialize rs2
li x8, 0xf664ffa23b216d06 # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x6ade2aff4f64fab9 # initialize rs2
li x9, 0x4d1b49d3a228dfa5 # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0x309394fed72d6cca # initialize rs2
li x10, 0x94243882db660bbb # initialize rd,rs1
c.and x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0xb9a335a84e90c6c1 # initialize rs2
li x11, 0xbc23520916c7382f # initialize rd,rs1
c.and x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x27d89ecbdff71518 # initialize rs2
li x12, 0xd5934c4b4c9305c9 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x27c10bbf9021bbb6 # initialize rs2
li x13, 0xdf37f2390b966821 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xafbbe286fb81c43f # initialize rs2
li x14, 0x92986c65c7b2af76 # initialize rd,rs1
c.and x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x9f004941f4c1f37e # initialize rs2
li x15, 0x0710374b1c63ae75 # initialize rd,rs1
c.and x15, x14 # perform operation
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
