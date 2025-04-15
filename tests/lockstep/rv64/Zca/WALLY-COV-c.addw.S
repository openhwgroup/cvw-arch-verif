///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.addw.S
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
li x11, 0x44b2e978a7fbef01 # initialize rs2
li x12, 0x0000000000000000 # initialize rd,rs1
c.addw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x37f8abb62833b214 # initialize rs2
li x12, 0x0000000000000001 # initialize rd,rs1
c.addw x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0xef3d6aad7ecd5506 # initialize rs2
li x8, 0x0000000000000002 # initialize rd,rs1
c.addw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0xcb9ecca6316b6bbd # initialize rs2
li x9, 0x8000000000000000 # initialize rd,rs1
c.addw x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0xbf837410d36e2bc7 # initialize rs2
li x11, 0x8000000000000001 # initialize rd,rs1
c.addw x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x14bbf09d45b9f4b5 # initialize rs2
li x15, 0x7fffffffffffffff # initialize rd,rs1
c.addw x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0xb4c706b97a4ed4aa # initialize rs2
li x8, 0x7ffffffffffffffe # initialize rd,rs1
c.addw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0x276d3bf013a97157 # initialize rs2
li x8, 0xffffffffffffffff # initialize rd,rs1
c.addw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xa4ee84dd9eec66df # initialize rs2
li x15, 0xfffffffffffffffe # initialize rd,rs1
c.addw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x11, 0xe6c9873d222f4d79 # initialize rs2
li x15, 0x5bbc887763ae86f2 # initialize rd,rs1
c.addw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0x06fb02f57705f011 # initialize rs2
li x15, 0xaaaaaaaaaaaaaaaa # initialize rd,rs1
c.addw x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0x952b850d71a4f0e2 # initialize rs2
li x14, 0x5555555555555555 # initialize rd,rs1
c.addw x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x50d423949eed3863 # initialize rs2
li x13, 0x00000000ffffffff # initialize rd,rs1
c.addw x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xaa350e6a8b34e9fb # initialize rs2
li x9, 0x00000000fffffffe # initialize rd,rs1
c.addw x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x121f89e52171e302 # initialize rs2
li x15, 0x0000000100000000 # initialize rd,rs1
c.addw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0xf6bfcafd94143d3e # initialize rs2
li x15, 0x0000000100000001 # initialize rd,rs1
c.addw x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x0000000000000000 # initialize rs2
li x8, 0x75f603f4af81b1a3 # initialize rd,rs1
c.addw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x0000000000000001 # initialize rs2
li x10, 0x2a1164d11a720fb7 # initialize rd,rs1
c.addw x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x12, 0x0000000000000002 # initialize rs2
li x13, 0x0b16c673e5991b4b # initialize rd,rs1
c.addw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs2
li x15, 0xe98db2c9e3ae3a88 # initialize rd,rs1
c.addw x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs2
li x12, 0x636acf66c666ea73 # initialize rd,rs1
c.addw x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs2
li x13, 0x0463b8fe15c36a14 # initialize rd,rs1
c.addw x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs2
li x12, 0x957587b92baddb92 # initialize rd,rs1
c.addw x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs2
li x14, 0xf5b83db8b3be82ef # initialize rd,rs1
c.addw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs2
li x8, 0x711d8ccb2a2a9dfe # initialize rd,rs1
c.addw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs2
li x15, 0x87cbd68b4ff2ba0d # initialize rd,rs1
c.addw x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
li x13, 0x694859a4aed7b7c8 # initialize rd,rs1
c.addw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs2
li x9, 0x3ac88a9d3014be59 # initialize rd,rs1
c.addw x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs2
li x15, 0xde3fcd8f1b4a63e9 # initialize rd,rs1
c.addw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs2
li x8, 0x2dbfe11fd3f64fa6 # initialize rd,rs1
c.addw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs2
li x12, 0x5c52d158fa0dade2 # initialize rd,rs1
c.addw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs2
li x15, 0xd256a482fd2d1031 # initialize rd,rs1
c.addw x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc209662667c5299b # initialize rs2
li x10, 0x01fe22b7d365810a # initialize rd,rs1
c.addw x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd557ff7002406337 # initialize rs2
li x9, 0x7710aa2ec9c25066 # initialize rd,rs1
c.addw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x64364a493962de0e # initialize rs2
li x9, 0x7c7034a9b9bc394e # initialize rd,rs1
c.addw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd1431c42688930bc # initialize rs2
li x15, 0xd57af9e6ecfc673d # initialize rd,rs1
c.addw x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb14df29bb3f1463a # initialize rs2
li x13, 0xbf48903695ca02ba # initialize rd,rs1
c.addw x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc959ad4be0a557b6 # initialize rs2
li x13, 0x33066f115d5fa209 # initialize rd,rs1
c.addw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x2993754322d5207a # initialize rs2
li x15, 0xa1e01b72b3efab44 # initialize rd,rs1
c.addw x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8bb058c5c0700e43 # initialize rs2
li x14, 0xf196901aa715781e # initialize rd,rs1
c.addw x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x1e5b14b88ac49230 # initialize rs2
li x8, 0xf7f5d12396a47b64 # initialize rd,rs1
c.addw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xf09b21ad2eb4e968 # initialize rs2
li x9, 0x47561433abba65ee # initialize rd,rs1
c.addw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4204300306108db6 # initialize rs2
li x10, 0x8386f28e1959eef9 # initialize rd,rs1
c.addw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xebf88f633ed70dc7 # initialize rs2
li x11, 0x10390afa777d2ff6 # initialize rd,rs1
c.addw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x29b23e9f391c88ac # initialize rs2
li x12, 0x1def9855595f106d # initialize rd,rs1
c.addw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xfb3d8cef95867ffd # initialize rs2
li x13, 0xea63279aa4fcffd1 # initialize rd,rs1
c.addw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x15e4148aeb23ed98 # initialize rs2
li x14, 0x3fec6f67361fd41d # initialize rd,rs1
c.addw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xfd054802199a2f7e # initialize rs2
li x15, 0xa316797a823aad8c # initialize rd,rs1
c.addw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0xc366bc079a44d2e6 # initialize rs2
li x9, 0x0a1fda71976d21a8 # initialize rd,rs1
c.addw x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x156cdfe0e33c8edd # initialize rs2
li x8, 0xe4a5950a447fda25 # initialize rd,rs1
c.addw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x664ca2a8a93d2628 # initialize rs2
li x12, 0x4451c7a487b6beaa # initialize rd,rs1
c.addw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x7550d0a057e0a334 # initialize rs2
li x13, 0x8abc94bd6ec1c873 # initialize rd,rs1
c.addw x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x330272fa7e2e24ab # initialize rs2
li x14, 0x204f50031e2f3f46 # initialize rd,rs1
c.addw x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x9e63febfd0e807d7 # initialize rs2
li x14, 0x30b7be4901558524 # initialize rd,rs1
c.addw x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0xc167959b0f189678 # initialize rs2
li x8, 0xec7533478564a77b # initialize rd,rs1
c.addw x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0x01b956bd53830ba5 # initialize rs2
li x9, 0xb01f1bf52223eb95 # initialize rd,rs1
c.addw x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xd86f21779aff949e # initialize rs2
li x12, 0x028fd9caebea56c3 # initialize rd,rs1
c.addw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x63d150f07c0a1df1 # initialize rs2
li x8, 0xe829e6728a2a1727 # initialize rd,rs1
c.addw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x474527995c42f152 # initialize rs2
li x13, 0xa7e64c854048cbb9 # initialize rd,rs1
c.addw x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x14c5c46c02525d83 # initialize rs2
li x10, 0xd601b9fffcbe1aa7 # initialize rd,rs1
c.addw x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x3b3608cd29d1777e # initialize rs2
li x14, 0x8a02bbadacb0875b # initialize rd,rs1
c.addw x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xe50fadc26b69ddfe # initialize rs2
li x14, 0xe37e3c3e26a9ab0b # initialize rd,rs1
c.addw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xfac82562af05bd89 # initialize rs2
li x12, 0x77a96451ed312dd0 # initialize rd,rs1
c.addw x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x48a77175086b85d3 # initialize rs2
li x8, 0x4392d247f8f7b720 # initialize rd,rs1
c.addw x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xa6b249576f537ff9 # initialize rs2
li x8, 0xb9e8957554e18246 # initialize rd,rs1
c.addw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0xdfa2ac4466f18e9c # initialize rs2
li x9, 0x49409f8059cc5586 # initialize rd,rs1
c.addw x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x3b870a011fd426e0 # initialize rs2
li x10, 0x1d0016f8b1aeccc2 # initialize rd,rs1
c.addw x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x033082d32a7c6748 # initialize rs2
li x11, 0x0709eca4d7d3081e # initialize rd,rs1
c.addw x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x8b7e7a9e9ffd58b5 # initialize rs2
li x12, 0xdfbfa44824c99378 # initialize rd,rs1
c.addw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x0f0f03716f75331c # initialize rs2
li x13, 0xc782a65aea9fd903 # initialize rd,rs1
c.addw x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x7aeaf327bb05f643 # initialize rs2
li x14, 0x4735af72e637ebac # initialize rd,rs1
c.addw x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0xaa5094e33f49e243 # initialize rs2
li x15, 0x86871f9686bce8f6 # initialize rd,rs1
c.addw x15, x13 # perform operation
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
