///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.sub.S
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
li x9, 0xb525171b9c969d59 # initialize rs2
li x11, 0x0000000000000000 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x748df3562c1cad98 # initialize rs2
li x8, 0x0000000000000001 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x47f0166310044ca5 # initialize rs2
li x11, 0x0000000000000002 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x953e3426ebd9a8b1 # initialize rs2
li x8, 0x8000000000000000 # initialize rd,rs1
c.sub x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0xd193bd733fcdb36f # initialize rs2
li x10, 0x8000000000000001 # initialize rd,rs1
c.sub x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0xb94d00919a286d17 # initialize rs2
li x9, 0x7fffffffffffffff # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0xb74244794fb85b34 # initialize rs2
li x10, 0x7ffffffffffffffe # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xe902955f128c8e73 # initialize rs2
li x10, 0xffffffffffffffff # initialize rd,rs1
c.sub x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xc7de85fefb220445 # initialize rs2
li x12, 0xfffffffffffffffe # initialize rd,rs1
c.sub x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0xca274837dec58210 # initialize rs2
li x10, 0x5bbc887763ae86f2 # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x2ec8091525002a27 # initialize rs2
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.sub x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0xdfe838642ecc393c # initialize rs2
li x11, 0x5555555555555555 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x0a65fb33e1cc2f92 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.sub x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xe7b4f56a35f85689 # initialize rs2
li x12, 0x00000000fffffffe # initialize rd,rs1
c.sub x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0xd1b532a9b4f06900 # initialize rs2
li x8, 0x0000000100000000 # initialize rd,rs1
c.sub x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0xf3696a9d1afe1309 # initialize rs2
li x14, 0x0000000100000001 # initialize rd,rs1
c.sub x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x0000000000000000 # initialize rs2
li x14, 0x89819af5d2a857cd # initialize rd,rs1
c.sub x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x12, 0x0000000000000001 # initialize rs2
li x13, 0x7c66b3e46f83a464 # initialize rd,rs1
c.sub x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x0000000000000002 # initialize rs2
li x14, 0xe232be0e967370dd # initialize rd,rs1
c.sub x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs2
li x9, 0x926777dd0b15d613 # initialize rd,rs1
c.sub x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs2
li x8, 0x904b5f3a7d54df91 # initialize rd,rs1
c.sub x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs2
li x13, 0x56fa886611ee3a69 # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x12, 0x4793bf0ad691f207 # initialize rd,rs1
c.sub x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
li x11, 0xbe0de8706c30f272 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x10, 0xfffffffffffffffe # initialize rs2
li x13, 0xf6400b9c221be8bb # initialize rd,rs1
c.sub x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs2
li x9, 0x8cb31bd42cb1057c # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x12, 0xc04d67fa7eac4d81 # initialize rd,rs1
c.sub x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs2
li x9, 0xe96ebced9dfffb13 # initialize rd,rs1
c.sub x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x12, 0xe33f0d0aea30aa58 # initialize rd,rs1
c.sub x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs2
li x15, 0xe717f231065723c4 # initialize rd,rs1
c.sub x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs2
li x15, 0x137f19ac22e05bf4 # initialize rd,rs1
c.sub x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x12, 0x53fa9bd4845b821c # initialize rd,rs1
c.sub x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xeec5e9fc634ab2b9 # initialize rs2
li x15, 0xae7559e75c792091 # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3d1de6c67db42284 # initialize rs2
li x15, 0x1b31e559f81e8199 # initialize rd,rs1
c.sub x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x01d78977857d5953 # initialize rs2
li x12, 0x7b7127c2c0228be0 # initialize rd,rs1
c.sub x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x073c3b1dfc885b17 # initialize rs2
li x8, 0xa2f17f8e818168c3 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc185abae06a2c977 # initialize rs2
li x8, 0xd03e30b684f23727 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xf3ed38b2f6f9d485 # initialize rs2
li x13, 0x9771ae70ffe5ef06 # initialize rd,rs1
c.sub x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x45396a8af0c53b4f # initialize rs2
li x12, 0xc92b9f37139a7793 # initialize rd,rs1
c.sub x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x75d00a69efa89883 # initialize rs2
li x8, 0x2549b30fb13739fd # initialize rd,rs1
c.sub x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x67a15c243cf6a146 # initialize rs2
li x8, 0xf8e18c061a818b2d # initialize rd,rs1
c.sub x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x43ab0076d7f37b3a # initialize rs2
li x9, 0xfe6e87f89c043f21 # initialize rd,rs1
c.sub x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x8c56c20eabf6fbea # initialize rs2
li x10, 0x68bdf1c6713c673e # initialize rd,rs1
c.sub x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xd265d64c37f84c09 # initialize rs2
li x11, 0x45b030c4f01e48e3 # initialize rd,rs1
c.sub x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x4705711f91fb58de # initialize rs2
li x12, 0xf64758ad0d05398d # initialize rd,rs1
c.sub x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xff2c6f67c6a72a1b # initialize rs2
li x13, 0xd5fb766bddc06a62 # initialize rd,rs1
c.sub x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x17987fd4f4a969bf # initialize rs2
li x14, 0x58f84e048ce96f92 # initialize rd,rs1
c.sub x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xec3141bd158cba3c # initialize rs2
li x15, 0xd2e4f26363b4fc71 # initialize rd,rs1
c.sub x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xc9b387fa6c2c0f69 # initialize rs2
li x9, 0xbc4a4a59f0c40733 # initialize rd,rs1
c.sub x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0xcce1bc2186ec6644 # initialize rs2
li x15, 0xeb571a143defecbc # initialize rd,rs1
c.sub x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x634f323086564526 # initialize rs2
li x12, 0xc619e7899de3f19b # initialize rd,rs1
c.sub x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x6f06b959aa10576e # initialize rs2
li x15, 0xe76a4698a2c08e0b # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0xe6dd13de89b7dff9 # initialize rs2
li x9, 0x9df793f65f47efb5 # initialize rd,rs1
c.sub x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xa6f304236c62ac4a # initialize rs2
li x9, 0x34a6282cd98f1670 # initialize rd,rs1
c.sub x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x7fabde880d1b33e6 # initialize rs2
li x8, 0x96cca1de6bb979db # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xbe4692daff652ca1 # initialize rs2
li x8, 0x77389f76cf9f63d1 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xfa4c0babcbcc7a97 # initialize rs2
li x13, 0x4619e7bca38a409c # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x0ce6041fed188c66 # initialize rs2
li x13, 0x886a54209f467b9d # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x6658ed0337ab9de7 # initialize rs2
li x15, 0xc6b86b67fbf1dec0 # initialize rd,rs1
c.sub x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x51c9d38add556bda # initialize rs2
li x8, 0x75f356d9f5261714 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x984bb5ab85b3c700 # initialize rs2
li x9, 0x1a8ea863e44a8bde # initialize rd,rs1
c.sub x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xf5bd6b6c3615e6cc # initialize rs2
li x11, 0x91a52375ec152bb4 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x7ee822e3969ba1bf # initialize rs2
li x15, 0x086e01c8e940be4b # initialize rd,rs1
c.sub x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf63d42cc63801ebd # initialize rs2
li x13, 0x3aba399cbc8ea37f # initialize rd,rs1
c.sub x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x10f579329737cb50 # initialize rs2
li x8, 0xf083f1ed5c256824 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xacd670617c161192 # initialize rs2
li x9, 0xf142be84fc2e922e # initialize rd,rs1
c.sub x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0xb01049a6227cd9b1 # initialize rs2
li x10, 0x9cd3e25b20d64911 # initialize rd,rs1
c.sub x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x510f0c6e0663d429 # initialize rs2
li x11, 0x0498c66b2ef81b9e # initialize rd,rs1
c.sub x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x67e302d17c0e8c98 # initialize rs2
li x12, 0x9847d727c5976e5b # initialize rd,rs1
c.sub x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x91164a647f7384e2 # initialize rs2
li x13, 0x60874c7a2d049250 # initialize rd,rs1
c.sub x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x13b47d14edc0d5fe # initialize rs2
li x14, 0x579644d558c9c87c # initialize rd,rs1
c.sub x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x1faccfe4363b5257 # initialize rs2
li x15, 0x8b38b60b1a2cc0ea # initialize rd,rs1
c.sub x15, x11 # perform operation
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
