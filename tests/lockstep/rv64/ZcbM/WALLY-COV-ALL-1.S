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

    

// ******************
// Tests from: WALLY-COV-c.mul.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x2677b44c0e8ab56e # initialize rs2
li x8, 0x0000000000000000 # initialize rd,rs1
c.mul x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x8f3e2c0c21c074ab # initialize rs2
li x9, 0x0000000000000001 # initialize rd,rs1
c.mul x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x5cb277bc08cc9bb6 # initialize rs2
li x11, 0x0000000000000002 # initialize rd,rs1
c.mul x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0xb8fad5c088c17b99 # initialize rs2
li x13, 0x8000000000000000 # initialize rd,rs1
c.mul x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x419bcae421bec32b # initialize rs2
li x15, 0x8000000000000001 # initialize rd,rs1
c.mul x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x6d115fabf8f34be4 # initialize rs2
li x9, 0x7fffffffffffffff # initialize rd,rs1
c.mul x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0xc2c28e9e15e3fd7b # initialize rs2
li x10, 0x7ffffffffffffffe # initialize rd,rs1
c.mul x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0x1c992360fc704e90 # initialize rs2
li x15, 0xffffffffffffffff # initialize rd,rs1
c.mul x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x10, 0xad693fbd5e786d34 # initialize rs2
li x12, 0xfffffffffffffffe # initialize rd,rs1
c.mul x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x9, 0x2064d1066b44c7da # initialize rs2
li x14, 0x5bbc887763ae86f2 # initialize rd,rs1
c.mul x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0x26d509c0f26eb09e # initialize rs2
li x12, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.mul x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x3db663f18486b9c7 # initialize rs2
li x11, 0x5555555555555555 # initialize rd,rs1
c.mul x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xb5fc65d706a2ab14 # initialize rs2
li x12, 0x00000000ffffffff # initialize rd,rs1
c.mul x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x460ff656347f8dc3 # initialize rs2
li x11, 0x00000000fffffffe # initialize rd,rs1
c.mul x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x4dd76899a9e2c398 # initialize rs2
li x9, 0x0000000100000000 # initialize rd,rs1
c.mul x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x2160e008cd46469c # initialize rs2
li x11, 0x0000000100000001 # initialize rd,rs1
c.mul x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x0000000000000000 # initialize rs2
li x12, 0x0ebad1df1048c5dc # initialize rd,rs1
c.mul x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0000000000000001 # initialize rs2
li x13, 0x8084a766189ed66e # initialize rd,rs1
c.mul x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x0000000000000002 # initialize rs2
li x11, 0xa93b052057e95042 # initialize rd,rs1
c.mul x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs2
li x11, 0x987b44d2949423ea # initialize rd,rs1
c.mul x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs2
li x14, 0x18474cc9ac40015c # initialize rd,rs1
c.mul x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs2
li x12, 0xd137b938ad3d5e5a # initialize rd,rs1
c.mul x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs2
li x13, 0x93a36cb37ea8e9e7 # initialize rd,rs1
c.mul x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs2
li x11, 0xcdb6e1cc77edef72 # initialize rd,rs1
c.mul x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rs2
li x9, 0x1fdfbe97f56efe34 # initialize rd,rs1
c.mul x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs2
li x11, 0xf49c5fa83aaf0a27 # initialize rd,rs1
c.mul x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x8, 0x35c919c71e783dff # initialize rd,rs1
c.mul x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs2
li x10, 0x8472fac57ec0568e # initialize rd,rs1
c.mul x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x14, 0xc52c1a4a6bc41a58 # initialize rd,rs1
c.mul x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs2
li x15, 0x314cac71874ba69c # initialize rd,rs1
c.mul x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0x0000000100000000 # initialize rs2
li x8, 0xbfc99ab545ae9b92 # initialize rd,rs1
c.mul x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs2
li x9, 0x449fb0001cfac5ac # initialize rd,rs1
c.mul x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x1932aa43b13f011c # initialize rs2
li x8, 0xeeb8b363d51e021b # initialize rd,rs1
c.mul x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x025cd42648699ab0 # initialize rs2
li x9, 0xc3da119be5e432a3 # initialize rd,rs1
c.mul x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x6bb311ed9bdd9d6f # initialize rs2
li x10, 0x83c4b286bfb8c2e0 # initialize rd,rs1
c.mul x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x92fc2ecad5345725 # initialize rs2
li x11, 0x40a3cca2b6c6775b # initialize rd,rs1
c.mul x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xea631c9a573305af # initialize rs2
li x12, 0x2d5d472aff5b2ca4 # initialize rd,rs1
c.mul x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4bfcc8e965f6a06b # initialize rs2
li x13, 0x61bea8e9936ebc6c # initialize rd,rs1
c.mul x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xccab7ec1c81493f3 # initialize rs2
li x14, 0x4631e0d1278f1212 # initialize rd,rs1
c.mul x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xaac995fe4f6a4b71 # initialize rs2
li x15, 0xb2efd71d6f0427e4 # initialize rd,rs1
c.mul x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x96c22bb7cd1488b2 # initialize rs2
li x12, 0x7d3f0f174cc51e95 # initialize rd,rs1
c.mul x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8c07cbf5c548380c # initialize rs2
li x13, 0x78c285ce74aa53f2 # initialize rd,rs1
c.mul x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xacee3c34dc25a7e3 # initialize rs2
li x11, 0x025f717e0f278fc7 # initialize rd,rs1
c.mul x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x57b1d54244803b6b # initialize rs2
li x12, 0x7f7bad4edfd9927b # initialize rd,rs1
c.mul x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x1a338a38ce5b87af # initialize rs2
li x8, 0xa025ea574e4936f2 # initialize rd,rs1
c.mul x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xfccf9ffb106b5165 # initialize rs2
li x11, 0x5501bed0eb098133 # initialize rd,rs1
c.mul x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x03b15cd1b34b1069 # initialize rs2
li x12, 0xf711775f757f8bd5 # initialize rd,rs1
c.mul x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xc67f306389576775 # initialize rs2
li x10, 0x8b73572567300a13 # initialize rd,rs1
c.mul x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x198efc5dddef93da # initialize rs2
li x8, 0x54a51061b9be0f03 # initialize rd,rs1
c.mul x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xd4ee604cf4a5a0ad # initialize rs2
li x9, 0x362af9eeba6a561e # initialize rd,rs1
c.mul x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x9f5013ad1ace8e7d # initialize rs2
li x10, 0xa09e0af80ac6d47c # initialize rd,rs1
c.mul x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x14e3fa5406456582 # initialize rs2
li x11, 0x37e2f613e874003f # initialize rd,rs1
c.mul x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x85f3a704f4eaa93f # initialize rs2
li x12, 0xc4eda46bc0c4d59f # initialize rd,rs1
c.mul x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x6501d85a63b10b58 # initialize rs2
li x13, 0x153daf1b73d28d1e # initialize rd,rs1
c.mul x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 424)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x55952724b3304ecc # initialize rs2
li x14, 0x98a289c74bb93b72 # initialize rd,rs1
c.mul x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 432)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xce16f962aba41ff3 # initialize rs2
li x15, 0x2747182e666e5334 # initialize rd,rs1
c.mul x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

#.EQU SIGSIZE,448
.EQU SIGSIZE,448 #combined


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
