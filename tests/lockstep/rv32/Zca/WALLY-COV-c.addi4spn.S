///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.addi4spn.S
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

    
# Testcase cp_rd (Test destination rd = x8)
li sp, 0x32f9e727 # initialize some value to sp 
c.addi4spn x8, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rd (Test destination rd = x9)
li sp, 0xb077bdb2 # initialize some value to sp 
c.addi4spn x9, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rd (Test destination rd = x10)
li sp, 0xebdd835b # initialize some value to sp 
c.addi4spn x10, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rd (Test destination rd = x11)
li sp, 0xf6a2f9a1 # initialize some value to sp 
c.addi4spn x11, sp, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rd (Test destination rd = x12)
li sp, 0x128b7645 # initialize some value to sp 
c.addi4spn x12, sp, 612 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rd (Test destination rd = x13)
li sp, 0xb70b511e # initialize some value to sp 
c.addi4spn x13, sp, 312 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cp_rd (Test destination rd = x14)
li sp, 0x0d515afd # initialize some value to sp 
c.addi4spn x14, sp, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rd (Test destination rd = x15)
li sp, 0xc8a96449 # initialize some value to sp 
c.addi4spn x15, sp, 956 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_imm_mul
li sp, 0xdbd95358 # initialize some value to sp 
c.addi4spn x8, sp, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_imm_mul
li sp, 0x295d00d1 # initialize some value to sp 
c.addi4spn x9, sp, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_imm_mul
li sp, 0x4f78aa5c # initialize some value to sp 
c.addi4spn x14, sp, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_imm_mul
li sp, 0x1a31512d # initialize some value to sp 
c.addi4spn x12, sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_imm_mul
li sp, 0xe683c471 # initialize some value to sp 
c.addi4spn x10, sp, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_imm_mul
li sp, 0xd609369b # initialize some value to sp 
c.addi4spn x14, sp, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_imm_mul
li sp, 0x16879103 # initialize some value to sp 
c.addi4spn x11, sp, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_imm_mul
li sp, 0xebdb6651 # initialize some value to sp 
c.addi4spn x8, sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 60)

# Testcase cp_imm_mul
li sp, 0x21755bbe # initialize some value to sp 
c.addi4spn x9, sp, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_imm_mul
li sp, 0xd6d93692 # initialize some value to sp 
c.addi4spn x11, sp, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_imm_mul
li sp, 0x5c0aa468 # initialize some value to sp 
c.addi4spn x14, sp, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_imm_mul
li sp, 0xecbf04dd # initialize some value to sp 
c.addi4spn x11, sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_imm_mul
li sp, 0xd331dc28 # initialize some value to sp 
c.addi4spn x13, sp, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_imm_mul
li sp, 0xeb0649d8 # initialize some value to sp 
c.addi4spn x11, sp, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 84)

# Testcase cp_imm_mul
li sp, 0x3f0bfbd8 # initialize some value to sp 
c.addi4spn x12, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_imm_mul
li sp, 0x7533f968 # initialize some value to sp 
c.addi4spn x15, sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_imm_mul
li sp, 0x36aa1dac # initialize some value to sp 
c.addi4spn x8, sp, 68 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cp_imm_mul
li sp, 0x48a14d11 # initialize some value to sp 
c.addi4spn x13, sp, 72 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_imm_mul
li sp, 0x46fa223e # initialize some value to sp 
c.addi4spn x12, sp, 76 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_imm_mul
li sp, 0x83c00f94 # initialize some value to sp 
c.addi4spn x13, sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_imm_mul
li sp, 0xfa963e9e # initialize some value to sp 
c.addi4spn x15, sp, 84 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_imm_mul
li sp, 0x12e828c9 # initialize some value to sp 
c.addi4spn x10, sp, 88 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_imm_mul
li sp, 0x5129740d # initialize some value to sp 
c.addi4spn x14, sp, 92 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_imm_mul
li sp, 0x85c67606 # initialize some value to sp 
c.addi4spn x9, sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_imm_mul
li sp, 0x23549565 # initialize some value to sp 
c.addi4spn x8, sp, 100 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_imm_mul
li sp, 0x6f6c1fb1 # initialize some value to sp 
c.addi4spn x12, sp, 104 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_imm_mul
li sp, 0xa1de0aaf # initialize some value to sp 
c.addi4spn x14, sp, 108 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_imm_mul
li sp, 0x8f5e992f # initialize some value to sp 
c.addi4spn x15, sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 140)

# Testcase cp_imm_mul
li sp, 0xe9566890 # initialize some value to sp 
c.addi4spn x10, sp, 116 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cp_imm_mul
li sp, 0xb4a4d4a1 # initialize some value to sp 
c.addi4spn x8, sp, 120 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 148)

# Testcase cp_imm_mul
li sp, 0xdb3f17d1 # initialize some value to sp 
c.addi4spn x12, sp, 124 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_imm_mul
li sp, 0xbe99ed19 # initialize some value to sp 
c.addi4spn x14, sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_imm_mul
li sp, 0xfac4c673 # initialize some value to sp 
c.addi4spn x8, sp, 132 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_imm_mul
li sp, 0x9ede22f6 # initialize some value to sp 
c.addi4spn x14, sp, 136 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_imm_mul
li sp, 0x522bb3ab # initialize some value to sp 
c.addi4spn x12, sp, 140 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_imm_mul
li sp, 0x9ebb65d6 # initialize some value to sp 
c.addi4spn x12, sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_imm_mul
li sp, 0xb5c1e947 # initialize some value to sp 
c.addi4spn x9, sp, 148 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_imm_mul
li sp, 0xa7be7bfe # initialize some value to sp 
c.addi4spn x11, sp, 152 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_imm_mul
li sp, 0x1170057c # initialize some value to sp 
c.addi4spn x9, sp, 156 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_imm_mul
li sp, 0xb7002596 # initialize some value to sp 
c.addi4spn x13, sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 188)

# Testcase cp_imm_mul
li sp, 0xfd427dd4 # initialize some value to sp 
c.addi4spn x15, sp, 164 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_imm_mul
li sp, 0x8d64f889 # initialize some value to sp 
c.addi4spn x13, sp, 168 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_imm_mul
li sp, 0x54bffb5c # initialize some value to sp 
c.addi4spn x14, sp, 172 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_imm_mul
li sp, 0x4fe35c2a # initialize some value to sp 
c.addi4spn x14, sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 204)

# Testcase cp_imm_mul
li sp, 0x3e5e2e4a # initialize some value to sp 
c.addi4spn x13, sp, 180 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_imm_mul
li sp, 0x97dcd2c1 # initialize some value to sp 
c.addi4spn x14, sp, 184 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 212)

# Testcase cp_imm_mul
li sp, 0x047d07f3 # initialize some value to sp 
c.addi4spn x8, sp, 188 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_imm_mul
li sp, 0xed50fd2d # initialize some value to sp 
c.addi4spn x10, sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 220)

# Testcase cp_imm_mul
li sp, 0xc2aba26a # initialize some value to sp 
c.addi4spn x14, sp, 196 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_imm_mul
li sp, 0xb2fcd934 # initialize some value to sp 
c.addi4spn x10, sp, 200 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 228)

# Testcase cp_imm_mul
li sp, 0x3d01cf92 # initialize some value to sp 
c.addi4spn x13, sp, 204 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_imm_mul
li sp, 0x1221e409 # initialize some value to sp 
c.addi4spn x15, sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 236)

# Testcase cp_imm_mul
li sp, 0x4cd0888b # initialize some value to sp 
c.addi4spn x13, sp, 212 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_imm_mul
li sp, 0x656f69ae # initialize some value to sp 
c.addi4spn x10, sp, 216 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 244)

# Testcase cp_imm_mul
li sp, 0xe028aeff # initialize some value to sp 
c.addi4spn x12, sp, 220 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_imm_mul
li sp, 0x1193083a # initialize some value to sp 
c.addi4spn x12, sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 252)

# Testcase cp_imm_mul
li sp, 0x6ad78cce # initialize some value to sp 
c.addi4spn x15, sp, 228 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cp_imm_mul
li sp, 0xa948bc34 # initialize some value to sp 
c.addi4spn x11, sp, 232 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 260)

# Testcase cp_imm_mul
li sp, 0x03888bd0 # initialize some value to sp 
c.addi4spn x9, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_imm_mul
li sp, 0xac7c8dc3 # initialize some value to sp 
c.addi4spn x8, sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_imm_mul
li sp, 0x0048a72f # initialize some value to sp 
c.addi4spn x12, sp, 244 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_imm_mul
li sp, 0x24a22628 # initialize some value to sp 
c.addi4spn x13, sp, 248 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 276)

# Testcase cp_imm_mul
li sp, 0x0b1261a9 # initialize some value to sp 
c.addi4spn x12, sp, 252 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 280)

# Testcase cp_imm_mul
li sp, 0x3f0adf3b # initialize some value to sp 
c.addi4spn x15, sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 284)

# Testcase cp_imm_mul
li sp, 0x08d2b20a # initialize some value to sp 
c.addi4spn x9, sp, 260 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cp_imm_mul
li sp, 0x6bf0bb8c # initialize some value to sp 
c.addi4spn x12, sp, 264 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 292)

# Testcase cp_imm_mul
li sp, 0xa01c9ef7 # initialize some value to sp 
c.addi4spn x9, sp, 268 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_imm_mul
li sp, 0xe00795aa # initialize some value to sp 
c.addi4spn x14, sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 300)

# Testcase cp_imm_mul
li sp, 0xb532ffa1 # initialize some value to sp 
c.addi4spn x13, sp, 276 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cp_imm_mul
li sp, 0x9bb307c3 # initialize some value to sp 
c.addi4spn x8, sp, 280 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 308)

# Testcase cp_imm_mul
li sp, 0xb4b2a534 # initialize some value to sp 
c.addi4spn x13, sp, 284 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_imm_mul
li sp, 0xcea17f66 # initialize some value to sp 
c.addi4spn x9, sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 316)

# Testcase cp_imm_mul
li sp, 0x0ba740c2 # initialize some value to sp 
c.addi4spn x10, sp, 292 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_imm_mul
li sp, 0x77ef6e34 # initialize some value to sp 
c.addi4spn x10, sp, 296 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 324)

# Testcase cp_imm_mul
li sp, 0xd3b1a96c # initialize some value to sp 
c.addi4spn x14, sp, 300 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_imm_mul
li sp, 0x8bee8be4 # initialize some value to sp 
c.addi4spn x9, sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 332)

# Testcase cp_imm_mul
li sp, 0x61ea68c1 # initialize some value to sp 
c.addi4spn x13, sp, 308 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cp_imm_mul
li sp, 0xe206a9d6 # initialize some value to sp 
c.addi4spn x9, sp, 312 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cp_imm_mul
li sp, 0xd800c1f2 # initialize some value to sp 
c.addi4spn x13, sp, 316 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_imm_mul
li sp, 0x8d9a32d3 # initialize some value to sp 
c.addi4spn x10, sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 348)

# Testcase cp_imm_mul
li sp, 0x9d033142 # initialize some value to sp 
c.addi4spn x12, sp, 324 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_imm_mul
li sp, 0x7d41cc90 # initialize some value to sp 
c.addi4spn x13, sp, 328 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cp_imm_mul
li sp, 0xfd846838 # initialize some value to sp 
c.addi4spn x11, sp, 332 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_imm_mul
li sp, 0x263256a4 # initialize some value to sp 
c.addi4spn x12, sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 364)

# Testcase cp_imm_mul
li sp, 0x661a55b9 # initialize some value to sp 
c.addi4spn x8, sp, 340 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cp_imm_mul
li sp, 0xac92eaa6 # initialize some value to sp 
c.addi4spn x15, sp, 344 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 372)

# Testcase cp_imm_mul
li sp, 0x485172a2 # initialize some value to sp 
c.addi4spn x15, sp, 348 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_imm_mul
li sp, 0xc90b00e3 # initialize some value to sp 
c.addi4spn x11, sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 380)

# Testcase cp_imm_mul
li sp, 0x83b1de28 # initialize some value to sp 
c.addi4spn x10, sp, 356 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cp_imm_mul
li sp, 0xfd453096 # initialize some value to sp 
c.addi4spn x9, sp, 360 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 388)

# Testcase cp_imm_mul
li sp, 0x3a499ece # initialize some value to sp 
c.addi4spn x11, sp, 364 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_imm_mul
li sp, 0xac098dd4 # initialize some value to sp 
c.addi4spn x13, sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_imm_mul
li sp, 0xc81ac724 # initialize some value to sp 
c.addi4spn x8, sp, 372 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_imm_mul
li sp, 0xa5b67c24 # initialize some value to sp 
c.addi4spn x8, sp, 376 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 404)

# Testcase cp_imm_mul
li sp, 0x7584f529 # initialize some value to sp 
c.addi4spn x15, sp, 380 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_imm_mul
li sp, 0xf1b7d8bf # initialize some value to sp 
c.addi4spn x11, sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_imm_mul
li sp, 0x3cf8c9b7 # initialize some value to sp 
c.addi4spn x13, sp, 388 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_imm_mul
li sp, 0xec4bb247 # initialize some value to sp 
c.addi4spn x13, sp, 392 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 420)

# Testcase cp_imm_mul
li sp, 0x169d5608 # initialize some value to sp 
c.addi4spn x8, sp, 396 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_imm_mul
li sp, 0x8573e859 # initialize some value to sp 
c.addi4spn x15, sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 428)

# Testcase cp_imm_mul
li sp, 0x246140db # initialize some value to sp 
c.addi4spn x10, sp, 404 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_imm_mul
li sp, 0xb6ff29f8 # initialize some value to sp 
c.addi4spn x9, sp, 408 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 436)

# Testcase cp_imm_mul
li sp, 0xfdb8124d # initialize some value to sp 
c.addi4spn x15, sp, 412 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cp_imm_mul
li sp, 0x0c8a6b3a # initialize some value to sp 
c.addi4spn x9, sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 444)

# Testcase cp_imm_mul
li sp, 0xf220f125 # initialize some value to sp 
c.addi4spn x11, sp, 420 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_imm_mul
li sp, 0x7ba2843c # initialize some value to sp 
c.addi4spn x12, sp, 424 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 452)

# Testcase cp_imm_mul
li sp, 0x3551b50f # initialize some value to sp 
c.addi4spn x12, sp, 428 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_imm_mul
li sp, 0x355f4f29 # initialize some value to sp 
c.addi4spn x9, sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 460)

# Testcase cp_imm_mul
li sp, 0xc34f94a3 # initialize some value to sp 
c.addi4spn x15, sp, 436 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cp_imm_mul
li sp, 0x4e70f0cc # initialize some value to sp 
c.addi4spn x13, sp, 440 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 468)

# Testcase cp_imm_mul
li sp, 0xa85ff5ec # initialize some value to sp 
c.addi4spn x13, sp, 444 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_imm_mul
li sp, 0x818123aa # initialize some value to sp 
c.addi4spn x15, sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 476)

# Testcase cp_imm_mul
li sp, 0xe540e76b # initialize some value to sp 
c.addi4spn x12, sp, 452 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cp_imm_mul
li sp, 0x490bc1b1 # initialize some value to sp 
c.addi4spn x11, sp, 456 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 484)

# Testcase cp_imm_mul
li sp, 0x481c91aa # initialize some value to sp 
c.addi4spn x12, sp, 460 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cp_imm_mul
li sp, 0xdfb2e548 # initialize some value to sp 
c.addi4spn x11, sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 492)

# Testcase cp_imm_mul
li sp, 0xa8ddf261 # initialize some value to sp 
c.addi4spn x11, sp, 468 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_imm_mul
li sp, 0x97ca4922 # initialize some value to sp 
c.addi4spn x8, sp, 472 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cp_imm_mul
li sp, 0xc121a8a2 # initialize some value to sp 
c.addi4spn x12, sp, 476 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_imm_mul
li sp, 0x6d08c2a7 # initialize some value to sp 
c.addi4spn x12, sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 508)

# Testcase cp_imm_mul
li sp, 0x52bf29d0 # initialize some value to sp 
c.addi4spn x9, sp, 484 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cp_imm_mul
li sp, 0xfa3406f4 # initialize some value to sp 
c.addi4spn x9, sp, 488 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 516)

# Testcase cp_imm_mul
li sp, 0xef1e5b16 # initialize some value to sp 
c.addi4spn x12, sp, 492 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_imm_mul
li sp, 0x46fd1c24 # initialize some value to sp 
c.addi4spn x15, sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 524)

# Testcase cp_imm_mul
li sp, 0x0a140371 # initialize some value to sp 
c.addi4spn x10, sp, 500 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_imm_mul
li sp, 0x3581853a # initialize some value to sp 
c.addi4spn x12, sp, 504 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 532)

# Testcase cp_imm_mul
li sp, 0x674ca34e # initialize some value to sp 
c.addi4spn x9, sp, 508 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cp_imm_mul
li sp, 0x6079597a # initialize some value to sp 
c.addi4spn x12, sp, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 540)

# Testcase cp_imm_mul
li sp, 0x1144345d # initialize some value to sp 
c.addi4spn x12, sp, 516 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_imm_mul
li sp, 0x0aee6788 # initialize some value to sp 
c.addi4spn x15, sp, 520 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 548)

# Testcase cp_imm_mul
li sp, 0xa8490f10 # initialize some value to sp 
c.addi4spn x8, sp, 524 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cp_imm_mul
li sp, 0xb6b40b61 # initialize some value to sp 
c.addi4spn x15, sp, 528 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 556)

# Testcase cp_imm_mul
li sp, 0x7f615cac # initialize some value to sp 
c.addi4spn x8, sp, 532 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cp_imm_mul
li sp, 0xd394c622 # initialize some value to sp 
c.addi4spn x8, sp, 536 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 564)

# Testcase cp_imm_mul
li sp, 0x9d1ce6f5 # initialize some value to sp 
c.addi4spn x14, sp, 540 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cp_imm_mul
li sp, 0xdbd3f9df # initialize some value to sp 
c.addi4spn x11, sp, 544 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 572)

# Testcase cp_imm_mul
li sp, 0xd17283b4 # initialize some value to sp 
c.addi4spn x13, sp, 548 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cp_imm_mul
li sp, 0x90e136c3 # initialize some value to sp 
c.addi4spn x15, sp, 552 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 580)

# Testcase cp_imm_mul
li sp, 0x23c290ad # initialize some value to sp 
c.addi4spn x15, sp, 556 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cp_imm_mul
li sp, 0x0042eaa6 # initialize some value to sp 
c.addi4spn x8, sp, 560 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 588)

# Testcase cp_imm_mul
li sp, 0x33d9cf84 # initialize some value to sp 
c.addi4spn x8, sp, 564 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_imm_mul
li sp, 0x4d47a302 # initialize some value to sp 
c.addi4spn x10, sp, 568 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cp_imm_mul
li sp, 0x8414be33 # initialize some value to sp 
c.addi4spn x10, sp, 572 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cp_imm_mul
li sp, 0x768b5a27 # initialize some value to sp 
c.addi4spn x10, sp, 576 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 604)

# Testcase cp_imm_mul
li sp, 0x88668e7c # initialize some value to sp 
c.addi4spn x13, sp, 580 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_imm_mul
li sp, 0x994aeef5 # initialize some value to sp 
c.addi4spn x11, sp, 584 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 612)

# Testcase cp_imm_mul
li sp, 0x8cf4c39a # initialize some value to sp 
c.addi4spn x15, sp, 588 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cp_imm_mul
li sp, 0xcc86ff99 # initialize some value to sp 
c.addi4spn x8, sp, 592 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 620)

# Testcase cp_imm_mul
li sp, 0x6b470e66 # initialize some value to sp 
c.addi4spn x13, sp, 596 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 624)

# Testcase cp_imm_mul
li sp, 0xea50bf61 # initialize some value to sp 
c.addi4spn x11, sp, 600 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 628)

# Testcase cp_imm_mul
li sp, 0x15256116 # initialize some value to sp 
c.addi4spn x9, sp, 604 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cp_imm_mul
li sp, 0x046677b8 # initialize some value to sp 
c.addi4spn x13, sp, 608 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 636)

# Testcase cp_imm_mul
li sp, 0xedc74c21 # initialize some value to sp 
c.addi4spn x10, sp, 612 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cp_imm_mul
li sp, 0xd64787d2 # initialize some value to sp 
c.addi4spn x8, sp, 616 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 644)

# Testcase cp_imm_mul
li sp, 0x48a3d38a # initialize some value to sp 
c.addi4spn x13, sp, 620 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cp_imm_mul
li sp, 0x3243dece # initialize some value to sp 
c.addi4spn x8, sp, 624 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 652)

# Testcase cp_imm_mul
li sp, 0x49fc840d # initialize some value to sp 
c.addi4spn x13, sp, 628 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 656)

# Testcase cp_imm_mul
li sp, 0x9a1ea7c6 # initialize some value to sp 
c.addi4spn x10, sp, 632 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 660)

# Testcase cp_imm_mul
li sp, 0x2773694b # initialize some value to sp 
c.addi4spn x9, sp, 636 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cp_imm_mul
li sp, 0xb5a577b5 # initialize some value to sp 
c.addi4spn x12, sp, 640 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 668)

# Testcase cp_imm_mul
li sp, 0x805e205c # initialize some value to sp 
c.addi4spn x15, sp, 644 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cp_imm_mul
li sp, 0xbc200766 # initialize some value to sp 
c.addi4spn x9, sp, 648 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 676)

# Testcase cp_imm_mul
li sp, 0xdf627989 # initialize some value to sp 
c.addi4spn x15, sp, 652 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cp_imm_mul
li sp, 0x92e36c5c # initialize some value to sp 
c.addi4spn x8, sp, 656 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 684)

# Testcase cp_imm_mul
li sp, 0x6fc03f44 # initialize some value to sp 
c.addi4spn x11, sp, 660 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cp_imm_mul
li sp, 0x3906309d # initialize some value to sp 
c.addi4spn x15, sp, 664 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 692)

# Testcase cp_imm_mul
li sp, 0x37ddc13d # initialize some value to sp 
c.addi4spn x9, sp, 668 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cp_imm_mul
li sp, 0x5753353c # initialize some value to sp 
c.addi4spn x12, sp, 672 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 700)

# Testcase cp_imm_mul
li sp, 0x89c4b192 # initialize some value to sp 
c.addi4spn x13, sp, 676 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cp_imm_mul
li sp, 0x71d5afd4 # initialize some value to sp 
c.addi4spn x13, sp, 680 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cp_imm_mul
li sp, 0x2c449cdd # initialize some value to sp 
c.addi4spn x15, sp, 684 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 712)

# Testcase cp_imm_mul
li sp, 0x63ac6005 # initialize some value to sp 
c.addi4spn x10, sp, 688 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 716)

# Testcase cp_imm_mul
li sp, 0xf93795b7 # initialize some value to sp 
c.addi4spn x11, sp, 692 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cp_imm_mul
li sp, 0xa2ab460f # initialize some value to sp 
c.addi4spn x9, sp, 696 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 724)

# Testcase cp_imm_mul
li sp, 0x3e68bbef # initialize some value to sp 
c.addi4spn x9, sp, 700 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cp_imm_mul
li sp, 0x85d2f4b0 # initialize some value to sp 
c.addi4spn x10, sp, 704 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cp_imm_mul
li sp, 0xa9af7cfe # initialize some value to sp 
c.addi4spn x9, sp, 708 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cp_imm_mul
li sp, 0xae9fb664 # initialize some value to sp 
c.addi4spn x15, sp, 712 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 740)

# Testcase cp_imm_mul
li sp, 0x14769b62 # initialize some value to sp 
c.addi4spn x12, sp, 716 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cp_imm_mul
li sp, 0x41ec62aa # initialize some value to sp 
c.addi4spn x8, sp, 720 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 748)

# Testcase cp_imm_mul
li sp, 0x7956410e # initialize some value to sp 
c.addi4spn x8, sp, 724 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cp_imm_mul
li sp, 0xda93e78d # initialize some value to sp 
c.addi4spn x14, sp, 728 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 756)

# Testcase cp_imm_mul
li sp, 0xfe81ee25 # initialize some value to sp 
c.addi4spn x12, sp, 732 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 760)

# Testcase cp_imm_mul
li sp, 0x2333ff6e # initialize some value to sp 
c.addi4spn x13, sp, 736 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 764)

# Testcase cp_imm_mul
li sp, 0x3aae37d7 # initialize some value to sp 
c.addi4spn x15, sp, 740 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cp_imm_mul
li sp, 0xc17a3729 # initialize some value to sp 
c.addi4spn x12, sp, 744 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 772)

# Testcase cp_imm_mul
li sp, 0xa2755bb0 # initialize some value to sp 
c.addi4spn x8, sp, 748 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cp_imm_mul
li sp, 0x69358ec5 # initialize some value to sp 
c.addi4spn x8, sp, 752 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 780)

# Testcase cp_imm_mul
li sp, 0xa1fd1782 # initialize some value to sp 
c.addi4spn x14, sp, 756 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cp_imm_mul
li sp, 0x7fe23a5c # initialize some value to sp 
c.addi4spn x14, sp, 760 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 788)

# Testcase cp_imm_mul
li sp, 0x1257e85f # initialize some value to sp 
c.addi4spn x9, sp, 764 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_imm_mul
li sp, 0x0b038b3b # initialize some value to sp 
c.addi4spn x11, sp, 768 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 796)

# Testcase cp_imm_mul
li sp, 0x8804c407 # initialize some value to sp 
c.addi4spn x11, sp, 772 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_imm_mul
li sp, 0x686caf1d # initialize some value to sp 
c.addi4spn x10, sp, 776 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 804)

# Testcase cp_imm_mul
li sp, 0xfd266858 # initialize some value to sp 
c.addi4spn x10, sp, 780 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cp_imm_mul
li sp, 0xd9c11319 # initialize some value to sp 
c.addi4spn x13, sp, 784 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 812)

# Testcase cp_imm_mul
li sp, 0x315b6bed # initialize some value to sp 
c.addi4spn x12, sp, 788 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_imm_mul
li sp, 0xc05063cb # initialize some value to sp 
c.addi4spn x14, sp, 792 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 820)

# Testcase cp_imm_mul
li sp, 0xe78945a8 # initialize some value to sp 
c.addi4spn x13, sp, 796 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cp_imm_mul
li sp, 0xbcca54ff # initialize some value to sp 
c.addi4spn x10, sp, 800 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 828)

# Testcase cp_imm_mul
li sp, 0xdb7c4160 # initialize some value to sp 
c.addi4spn x15, sp, 804 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_imm_mul
li sp, 0x06034d06 # initialize some value to sp 
c.addi4spn x10, sp, 808 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 836)

# Testcase cp_imm_mul
li sp, 0xb9b0d08f # initialize some value to sp 
c.addi4spn x13, sp, 812 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cp_imm_mul
li sp, 0xb6c8c03b # initialize some value to sp 
c.addi4spn x13, sp, 816 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 844)

# Testcase cp_imm_mul
li sp, 0x47d90a83 # initialize some value to sp 
c.addi4spn x10, sp, 820 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cp_imm_mul
li sp, 0x4fb2f981 # initialize some value to sp 
c.addi4spn x10, sp, 824 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 852)

# Testcase cp_imm_mul
li sp, 0x0172f045 # initialize some value to sp 
c.addi4spn x11, sp, 828 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cp_imm_mul
li sp, 0x5b3bea1e # initialize some value to sp 
c.addi4spn x11, sp, 832 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 860)

# Testcase cp_imm_mul
li sp, 0xa2fc7776 # initialize some value to sp 
c.addi4spn x12, sp, 836 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cp_imm_mul
li sp, 0xf7a3bd0e # initialize some value to sp 
c.addi4spn x14, sp, 840 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 868)

# Testcase cp_imm_mul
li sp, 0x0c8e9ec4 # initialize some value to sp 
c.addi4spn x10, sp, 844 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cp_imm_mul
li sp, 0xf0da4647 # initialize some value to sp 
c.addi4spn x9, sp, 848 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 876)

# Testcase cp_imm_mul
li sp, 0x0525812d # initialize some value to sp 
c.addi4spn x13, sp, 852 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cp_imm_mul
li sp, 0x23d0886c # initialize some value to sp 
c.addi4spn x11, sp, 856 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 884)

# Testcase cp_imm_mul
li sp, 0x1bcb7499 # initialize some value to sp 
c.addi4spn x9, sp, 860 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cp_imm_mul
li sp, 0xa0a090be # initialize some value to sp 
c.addi4spn x12, sp, 864 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 892)

# Testcase cp_imm_mul
li sp, 0x2edc6648 # initialize some value to sp 
c.addi4spn x10, sp, 868 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cp_imm_mul
li sp, 0x1e8509c2 # initialize some value to sp 
c.addi4spn x9, sp, 872 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 900)

# Testcase cp_imm_mul
li sp, 0x6e2ecca2 # initialize some value to sp 
c.addi4spn x8, sp, 876 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cp_imm_mul
li sp, 0xa89187ae # initialize some value to sp 
c.addi4spn x9, sp, 880 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 908)

# Testcase cp_imm_mul
li sp, 0x48d81c1a # initialize some value to sp 
c.addi4spn x8, sp, 884 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_imm_mul
li sp, 0x114f587f # initialize some value to sp 
c.addi4spn x11, sp, 888 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 916)

# Testcase cp_imm_mul
li sp, 0x162bc772 # initialize some value to sp 
c.addi4spn x15, sp, 892 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_imm_mul
li sp, 0x165fd9ee # initialize some value to sp 
c.addi4spn x15, sp, 896 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 924)

# Testcase cp_imm_mul
li sp, 0x6383a130 # initialize some value to sp 
c.addi4spn x8, sp, 900 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cp_imm_mul
li sp, 0xb70b7d10 # initialize some value to sp 
c.addi4spn x10, sp, 904 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 932)

# Testcase cp_imm_mul
li sp, 0x9b761eb8 # initialize some value to sp 
c.addi4spn x9, sp, 908 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 936)

# Testcase cp_imm_mul
li sp, 0x9ad6752c # initialize some value to sp 
c.addi4spn x12, sp, 912 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 940)

# Testcase cp_imm_mul
li sp, 0x35a67bd7 # initialize some value to sp 
c.addi4spn x8, sp, 916 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_imm_mul
li sp, 0xf50f248d # initialize some value to sp 
c.addi4spn x13, sp, 920 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 948)

# Testcase cp_imm_mul
li sp, 0x82c4192b # initialize some value to sp 
c.addi4spn x9, sp, 924 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cp_imm_mul
li sp, 0x034a9f13 # initialize some value to sp 
c.addi4spn x11, sp, 928 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 956)

# Testcase cp_imm_mul
li sp, 0x2cce0b70 # initialize some value to sp 
c.addi4spn x14, sp, 932 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cp_imm_mul
li sp, 0x13dbdd43 # initialize some value to sp 
c.addi4spn x9, sp, 936 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 964)

# Testcase cp_imm_mul
li sp, 0xd3807c1f # initialize some value to sp 
c.addi4spn x9, sp, 940 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cp_imm_mul
li sp, 0x92316af4 # initialize some value to sp 
c.addi4spn x9, sp, 944 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 972)

# Testcase cp_imm_mul
li sp, 0x4a278632 # initialize some value to sp 
c.addi4spn x8, sp, 948 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 976)

# Testcase cp_imm_mul
li sp, 0xcc0c4747 # initialize some value to sp 
c.addi4spn x11, sp, 952 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 980)

# Testcase cp_imm_mul
li sp, 0xa3826361 # initialize some value to sp 
c.addi4spn x11, sp, 956 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 984)

# Testcase cp_imm_mul
li sp, 0xa67113df # initialize some value to sp 
c.addi4spn x12, sp, 960 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 988)

# Testcase cp_imm_mul
li sp, 0x1ef32905 # initialize some value to sp 
c.addi4spn x12, sp, 964 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_imm_mul
li sp, 0xbd3833da # initialize some value to sp 
c.addi4spn x12, sp, 968 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 996)

# Testcase cp_imm_mul
li sp, 0x761aaa4d # initialize some value to sp 
c.addi4spn x11, sp, 972 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_imm_mul
li sp, 0xe42ceaf8 # initialize some value to sp 
c.addi4spn x12, sp, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1004)

# Testcase cp_imm_mul
li sp, 0x3b57d626 # initialize some value to sp 
c.addi4spn x8, sp, 980 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1008)

# Testcase cp_imm_mul
li sp, 0xd7e37bde # initialize some value to sp 
c.addi4spn x13, sp, 984 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cp_imm_mul
li sp, 0x00e66ed0 # initialize some value to sp 
c.addi4spn x11, sp, 988 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cp_imm_mul
li sp, 0x8ad400cf # initialize some value to sp 
c.addi4spn x9, sp, 992 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1020)

# Testcase cp_imm_mul
li sp, 0xf310f7d3 # initialize some value to sp 
c.addi4spn x14, sp, 996 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cp_imm_mul
li sp, 0x1b1d7cf0 # initialize some value to sp 
c.addi4spn x12, sp, 1000 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1028)

# Testcase cp_imm_mul
li sp, 0x956fcad4 # initialize some value to sp 
c.addi4spn x12, sp, 1004 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cp_imm_mul
li sp, 0xedf656eb # initialize some value to sp 
c.addi4spn x9, sp, 1008 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1036)

# Testcase cp_imm_mul
li sp, 0x8363df9f # initialize some value to sp 
c.addi4spn x10, sp, 1012 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cp_imm_mul
li sp, 0x7f0b216f # initialize some value to sp 
c.addi4spn x9, sp, 1016 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1044)

# Testcase cp_imm_mul
li sp, 0xf9d09f28 # initialize some value to sp 
c.addi4spn x10, sp, 1020 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

.EQU SIGSIZE,1052


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
