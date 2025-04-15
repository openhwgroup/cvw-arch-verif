///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.or.S
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
li x13, 0xfab7b55ed23ec69d # initialize rs2
li x8, 0x0000000000000000 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x7c0f0a9053e4e286 # initialize rs2
li x10, 0x0000000000000001 # initialize rd,rs1
c.or x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0xfe76f06bf8961842 # initialize rs2
li x15, 0x0000000000000002 # initialize rd,rs1
c.or x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0xb1d3e0cdc810ebd7 # initialize rs2
li x12, 0x8000000000000000 # initialize rd,rs1
c.or x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0xb25ae772f1d983c4 # initialize rs2
li x11, 0x8000000000000001 # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0xe88eb174b5dcdf35 # initialize rs2
li x10, 0x7fffffffffffffff # initialize rd,rs1
c.or x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x1acf003443602c46 # initialize rs2
li x13, 0x7ffffffffffffffe # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0x707d9c43034565c8 # initialize rs2
li x9, 0xffffffffffffffff # initialize rd,rs1
c.or x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xd9a6c4023ded483b # initialize rs2
li x9, 0xfffffffffffffffe # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x11, 0x8b067bab949db2a3 # initialize rs2
li x9, 0x5bbc887763ae86f2 # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0x6f3279821373c7a2 # initialize rs2
li x14, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.or x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0xa00517fef4f917dc # initialize rs2
li x12, 0x5555555555555555 # initialize rd,rs1
c.or x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x9c1ac5088ed9ab60 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.or x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xafb4bc3bcd653079 # initialize rs2
li x8, 0x00000000fffffffe # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x541b3eedae27af6f # initialize rs2
li x13, 0x0000000100000000 # initialize rd,rs1
c.or x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x7c06d97ece13a8be # initialize rs2
li x10, 0x0000000100000001 # initialize rd,rs1
c.or x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x0000000000000000 # initialize rs2
li x8, 0xe9ce6cd829ab5f67 # initialize rd,rs1
c.or x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x0000000000000001 # initialize rs2
li x8, 0xd01ffe20def322a7 # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x0000000000000002 # initialize rs2
li x10, 0xd1ad6812d258baac # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs2
li x8, 0x26aff30248998952 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs2
li x14, 0xd2a07b1f9b292951 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
li x11, 0xefcd9363794224a0 # initialize rd,rs1
c.or x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs2
li x8, 0x27fe7f2bb70595c4 # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs2
li x11, 0x1d480abdb429d968 # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs2
li x13, 0x30e7b8b8206dea52 # initialize rd,rs1
c.or x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs2
li x14, 0x4caafb3830e70047 # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x13, 0x5be81392d74b691e # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs2
li x11, 0x3d966bc3dfcf87b0 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs2
li x14, 0x518769770a58e9db # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs2
li x8, 0x55098c6f3cc03768 # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0x0000000100000000 # initialize rs2
li x9, 0x9839622b54e1fb1d # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0000000100000001 # initialize rs2
li x8, 0x755906d79cb302c4 # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x616489ce69d84442 # initialize rs2
li x11, 0x7e9a681fdd2947e2 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2647b3202479f43e # initialize rs2
li x12, 0x87bcc5416fd8cc1b # initialize rd,rs1
c.or x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xba11da519a983710 # initialize rs2
li x14, 0x80e961a2d2391160 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x266a498e0c1b9229 # initialize rs2
li x10, 0x2b8d3a8fc0502a89 # initialize rd,rs1
c.or x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0b3fa9f9bcb6c397 # initialize rs2
li x13, 0xef6ef214b537c777 # initialize rd,rs1
c.or x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x259d0a5aad4d807b # initialize rs2
li x11, 0x108c370b56a4324d # initialize rd,rs1
c.or x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9154e8e0cd85cc60 # initialize rs2
li x10, 0xd3b005e04766dee7 # initialize rd,rs1
c.or x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x214da2e5196f83ba # initialize rs2
li x13, 0x64fb8f32fa9dcda8 # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xa140a14f7f13fab6 # initialize rs2
li x8, 0x2aa648163f8c9e33 # initialize rd,rs1
c.or x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xfe97061d0116efe1 # initialize rs2
li x9, 0xdd5b5294ae0840b9 # initialize rd,rs1
c.or x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x98ce72302e2c003d # initialize rs2
li x10, 0x367083399ddd2bf7 # initialize rd,rs1
c.or x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x65dd85de61a5101d # initialize rs2
li x11, 0x2443021d7483d919 # initialize rd,rs1
c.or x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x76fae12d91560848 # initialize rs2
li x12, 0xd5e497a9e85a184f # initialize rd,rs1
c.or x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xed442072b2c81cf8 # initialize rs2
li x13, 0x5aa78267ff7cf144 # initialize rd,rs1
c.or x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xe3d39c9d0e7ab51e # initialize rs2
li x14, 0x1ea43142d2bfa5ce # initialize rd,rs1
c.or x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xf6ac2d978be6164c # initialize rs2
li x15, 0x1a614b27cdd16d2e # initialize rd,rs1
c.or x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xaef983d4f6cb5fff # initialize rs2
li x11, 0xd0a88c7d311a2415 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xecd2c791b3a40223 # initialize rs2
li x13, 0x80b53ff0d90dd768 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x74c1e2823cc59447 # initialize rs2
li x8, 0xeed1af8ca036c01b # initialize rd,rs1
c.or x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x367a235662d28a14 # initialize rs2
li x13, 0x74b427126363ef00 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x88bddd0e10bb0b6f # initialize rs2
li x10, 0x4aee5542eb60facf # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0x6bcba4ace3d1f599 # initialize rs2
li x10, 0xa14a4d04eaa3a58e # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0xcfd8e0a009a60646 # initialize rs2
li x13, 0x3819e166771338c9 # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xc245e89d7ebc4168 # initialize rs2
li x12, 0xde33a213596867c7 # initialize rd,rs1
c.or x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xa86128b024c7e090 # initialize rs2
li x14, 0xaea61a32ce4326b0 # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8ce291dd4da4bcb2 # initialize rs2
li x11, 0x3e9f2d7c5c36dea4 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x75c3aa8544820e8c # initialize rs2
li x13, 0xf70daa3d745d661f # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xde6312a48cfaa3a3 # initialize rs2
li x8, 0x4848d4e2d1f69c2a # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1617a3a8ed91768e # initialize rs2
li x14, 0x9e517eed601fba4c # initialize rd,rs1
c.or x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xedcb2c624b28dac9 # initialize rs2
li x8, 0x02c1089e966b6592 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x84c9167c42eec905 # initialize rs2
li x8, 0xe18bb2742e405ba1 # initialize rd,rs1
c.or x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x65ba5da9dffe6e6c # initialize rs2
li x8, 0x5e34ea9415266884 # initialize rd,rs1
c.or x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xacd8fbfa7353fb7b # initialize rs2
li x8, 0x164b5430d90e2ef0 # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xa68fe2cab1d2df0d # initialize rs2
li x9, 0xfe0edad06cd730d6 # initialize rd,rs1
c.or x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xfa6f08dfdd464467 # initialize rs2
li x10, 0x83e4a15b6ceae413 # initialize rd,rs1
c.or x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xc0ddf21bae9b4083 # initialize rs2
li x11, 0x52fee1135b40a168 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x686910762a094a69 # initialize rs2
li x12, 0x26ce5dfe048c5868 # initialize rd,rs1
c.or x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0xbbf8e77b13633cda # initialize rs2
li x13, 0x0d96d14bcafb6514 # initialize rd,rs1
c.or x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x79de14e2af1bf51f # initialize rs2
li x14, 0xfd33fe2b364777f7 # initialize rd,rs1
c.or x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x69b328bf8139f7af # initialize rs2
li x15, 0xc4ecc343f6940e0c # initialize rd,rs1
c.or x15, x12 # perform operation
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
