///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.xor.S
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
li x9, 0xa1e40e4351f5380a # initialize rs2
li x10, 0x0000000000000000 # initialize rd,rs1
c.xor x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x78d8d813c2548355 # initialize rs2
li x11, 0x0000000000000001 # initialize rd,rs1
c.xor x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0xea6c1d5c5daadadb # initialize rs2
li x13, 0x0000000000000002 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0xa196313c51e81d2d # initialize rs2
li x14, 0x8000000000000000 # initialize rd,rs1
c.xor x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x097534f2c5293d04 # initialize rs2
li x13, 0x8000000000000001 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0xe8229e0f18635253 # initialize rs2
li x11, 0x7fffffffffffffff # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x3f90e8092edb9591 # initialize rs2
li x12, 0x7ffffffffffffffe # initialize rd,rs1
c.xor x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0x6e73cf0bb02f224a # initialize rs2
li x12, 0xffffffffffffffff # initialize rd,rs1
c.xor x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0x6a179338100a9247 # initialize rs2
li x13, 0xfffffffffffffffe # initialize rd,rs1
c.xor x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x8f382179057584d5 # initialize rs2
li x9, 0x5bbc887763ae86f2 # initialize rd,rs1
c.xor x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xe88d2bad0a01d3a2 # initialize rs2
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x11, 0x7e959f661539a9c7 # initialize rs2
li x12, 0x5555555555555555 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x81527b87527995f8 # initialize rs2
li x10, 0x00000000ffffffff # initialize rd,rs1
c.xor x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x56f75818fdb4dc71 # initialize rs2
li x10, 0x00000000fffffffe # initialize rd,rs1
c.xor x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x13, 0x62c9264544fb0967 # initialize rs2
li x9, 0x0000000100000000 # initialize rd,rs1
c.xor x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0xda684a0259718d79 # initialize rs2
li x13, 0x0000000100000001 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x0000000000000000 # initialize rs2
li x8, 0xb21481689e213139 # initialize rd,rs1
c.xor x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x0000000000000001 # initialize rs2
li x15, 0x53ef8e951c7a26be # initialize rd,rs1
c.xor x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x0000000000000002 # initialize rs2
li x15, 0x4f85702a8a477699 # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs2
li x15, 0x7d6b3f4954a663c5 # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs2
li x9, 0xce1f032da24f0217 # initialize rd,rs1
c.xor x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs2
li x10, 0x0060ffea5d393361 # initialize rd,rs1
c.xor x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs2
li x11, 0x08b220fe77a5f86c # initialize rd,rs1
c.xor x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs2
li x8, 0xf00105afdb570500 # initialize rd,rs1
c.xor x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs2
li x11, 0x086a7690d575157f # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs2
li x9, 0x29c742a503a23163 # initialize rd,rs1
c.xor x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x9, 0xcbacf16ea3ca8826 # initialize rd,rs1
c.xor x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs2
li x13, 0x6aeee934e772b90c # initialize rd,rs1
c.xor x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x13, 0xcfc3262e5caa2299 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs2
li x8, 0xc146a75c7289fc76 # initialize rd,rs1
c.xor x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs2
li x8, 0xe5c4a5058127e474 # initialize rd,rs1
c.xor x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x13, 0x6c71a9b8aee363a8 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb162d0b9d1264249 # initialize rs2
li x11, 0x3f8bc790c4b7ab4e # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x8b8fea4761cf7947 # initialize rs2
li x13, 0x3542c8577c89d24f # initialize rd,rs1
c.xor x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcfd54d292378d5c2 # initialize rs2
li x10, 0x2a476dba09c4264f # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xccdcc0b4c54b6050 # initialize rs2
li x10, 0xcf9dcf774baacab9 # initialize rd,rs1
c.xor x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x9489ddffc297f7f8 # initialize rs2
li x8, 0xed8b8117e23db5a0 # initialize rd,rs1
c.xor x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x52540f4eaa5aa1ec # initialize rs2
li x11, 0x632408c110726e13 # initialize rd,rs1
c.xor x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf25276dd00b01e0e # initialize rs2
li x12, 0xcb4579f194139f9e # initialize rd,rs1
c.xor x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1ca81e141155cd09 # initialize rs2
li x13, 0xff3947d260c9d172 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x97f964f173430732 # initialize rs2
li x8, 0xba1561d3fcae90a2 # initialize rd,rs1
c.xor x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x3b2dfc35bb674c2a # initialize rs2
li x9, 0xb22df48b7cec756f # initialize rd,rs1
c.xor x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x011541d5099da7c0 # initialize rs2
li x10, 0x7846991a754bcdd5 # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x89050fc11f9657e3 # initialize rs2
li x11, 0x70b936111ccf6f1b # initialize rd,rs1
c.xor x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x349f1ae1ba7dabb3 # initialize rs2
li x12, 0x7c9a1fd130f932a5 # initialize rd,rs1
c.xor x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x325e693c35bfdf7a # initialize rs2
li x13, 0x5acce6630a311b96 # initialize rd,rs1
c.xor x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xd6feefc5b8468272 # initialize rs2
li x14, 0x3ef943ef05af6ebf # initialize rd,rs1
c.xor x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x929dc5e6ad0b7cbd # initialize rs2
li x15, 0x37aa60c5ab256ccd # initialize rd,rs1
c.xor x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x33c83a9fa8c67e8d # initialize rs2
li x13, 0xd06ee797d430c934 # initialize rd,rs1
c.xor x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x8079a52f7c67d57f # initialize rs2
li x15, 0xd44137a5b743ae9e # initialize rd,rs1
c.xor x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x268322146fab3925 # initialize rs2
li x11, 0x6118aa0318965078 # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x6d617e8d81e2231d # initialize rs2
li x8, 0xeb03ee2b7629d260 # initialize rd,rs1
c.xor x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xaf4e6a9bd7a419d7 # initialize rs2
li x13, 0x101e80f6c4f4bd32 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x60319bbf11887dbb # initialize rs2
li x14, 0x2952ce05333793d4 # initialize rd,rs1
c.xor x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x325ef5cc6ce24540 # initialize rs2
li x9, 0xd73b2222c3d9116f # initialize rd,rs1
c.xor x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x1561062751127a59 # initialize rs2
li x11, 0xc8a8af91292a025e # initialize rd,rs1
c.xor x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xf991bf5f0167d94c # initialize rs2
li x10, 0x578cf6f18eb390e8 # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xfbd5549e89b79c8a # initialize rs2
li x15, 0xcab50005fdfacbc6 # initialize rd,rs1
c.xor x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x79e6dd956044a0c1 # initialize rs2
li x15, 0xf7c3b82799e6ee3d # initialize rd,rs1
c.xor x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x1f82dca0a8ac639b # initialize rs2
li x12, 0x25c48dec3361614b # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x4bcd5f6bfc5094f3 # initialize rs2
li x8, 0xef99c0514a7d6c6e # initialize rd,rs1
c.xor x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xdb77d814348fcf63 # initialize rs2
li x12, 0x6c36b67b24255099 # initialize rd,rs1
c.xor x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe047b70758d5990b # initialize rs2
li x15, 0xee6660e459164d95 # initialize rd,rs1
c.xor x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x635a23885e5357fa # initialize rs2
li x13, 0x50e1662f625d2a44 # initialize rd,rs1
c.xor x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x62cc614a8e45f64f # initialize rs2
li x8, 0xec2a8cbb2bb006cf # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x1c53308d1a0714eb # initialize rs2
li x9, 0x3f79e8d6c9465643 # initialize rd,rs1
c.xor x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xf45e2a4f6c9f1fad # initialize rs2
li x10, 0x279f03da3732734d # initialize rd,rs1
c.xor x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9e148f95485fd7b4 # initialize rs2
li x11, 0x07f7f225d5b110da # initialize rd,rs1
c.xor x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x57c4a166e70aa406 # initialize rs2
li x12, 0x504c5e5878773e05 # initialize rd,rs1
c.xor x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x3096c55a089ca4c6 # initialize rs2
li x13, 0x6914eda242ece260 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x7eb72bbfc85b945f # initialize rs2
li x14, 0x5ef9bca12c13d7cc # initialize rd,rs1
c.xor x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xc2c20306b220dbfd # initialize rs2
li x15, 0x4eb307ca467e1f33 # initialize rd,rs1
c.xor x15, x12 # perform operation
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
