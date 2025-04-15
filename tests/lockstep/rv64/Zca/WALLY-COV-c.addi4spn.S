///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.addi4spn.S
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
li sp, 0xca3ea34bd455149b # initialize some value to sp 
c.addi4spn x8, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rd (Test destination rd = x9)
li sp, 0x37c0d084a0dbda4c # initialize some value to sp 
c.addi4spn x9, sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rd (Test destination rd = x10)
li sp, 0xc257383031129188 # initialize some value to sp 
c.addi4spn x10, sp, 376 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rd (Test destination rd = x11)
li sp, 0x3d00d399431b68eb # initialize some value to sp 
c.addi4spn x11, sp, 120 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rd (Test destination rd = x12)
li sp, 0x232dfb690d515afd # initialize some value to sp 
c.addi4spn x12, sp, 252 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cp_rd (Test destination rd = x13)
li sp, 0xc8a96449e65c85af # initialize some value to sp 
c.addi4spn x13, sp, 816 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rd (Test destination rd = x14)
li sp, 0x2ad93134d31fea68 # initialize some value to sp 
c.addi4spn x14, sp, 568 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rd (Test destination rd = x15)
li sp, 0x11e685d5a2050714 # initialize some value to sp 
c.addi4spn x15, sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_imm_mul
li sp, 0xa41577fc33cd5c3f # initialize some value to sp 
c.addi4spn x8, sp, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_imm_mul
li sp, 0xcd68da7a2177a39b # initialize some value to sp 
c.addi4spn x11, sp, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_imm_mul
li sp, 0x47a7380461ba0c70 # initialize some value to sp 
c.addi4spn x10, sp, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_imm_mul
li sp, 0xf88299b3aee11f40 # initialize some value to sp 
c.addi4spn x13, sp, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_imm_mul
li sp, 0x3dff78ea2bcd455f # initialize some value to sp 
c.addi4spn x13, sp, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_imm_mul
li sp, 0x26312a46ed02f0d8 # initialize some value to sp 
c.addi4spn x11, sp, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_imm_mul
li sp, 0x21755bbeb22e564f # initialize some value to sp 
c.addi4spn x9, sp, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_imm_mul
li sp, 0x547c2dde23c774b3 # initialize some value to sp 
c.addi4spn x14, sp, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_imm_mul
li sp, 0xf2e48331ed8a09a2 # initialize some value to sp 
c.addi4spn x11, sp, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_imm_mul
li sp, 0x6d3356e88f2fb192 # initialize some value to sp 
c.addi4spn x14, sp, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_imm_mul
li sp, 0xfe6ced0246c5ae88 # initialize some value to sp 
c.addi4spn x14, sp, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_imm_mul
li sp, 0xc9aa7b5ee3c85272 # initialize some value to sp 
c.addi4spn x10, sp, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_imm_mul
li sp, 0x096e1f8746e0e88b # initialize some value to sp 
c.addi4spn x13, sp, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_imm_mul
li sp, 0x3e92bee548a14d11 # initialize some value to sp 
c.addi4spn x13, sp, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_imm_mul
li sp, 0xa3d535b3b971b958 # initialize some value to sp 
c.addi4spn x13, sp, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_imm_mul
li sp, 0xc122a9d1791c56b7 # initialize some value to sp 
c.addi4spn x12, sp, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_imm_mul
li sp, 0x628d33b6e8402dc0 # initialize some value to sp 
c.addi4spn x14, sp, 68 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_imm_mul
li sp, 0x811403ff64981df1 # initialize some value to sp 
c.addi4spn x11, sp, 72 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_imm_mul
li sp, 0x14743ff1aad8afff # initialize some value to sp 
c.addi4spn x11, sp, 76 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_imm_mul
li sp, 0xc1e68568ecd1f065 # initialize some value to sp 
c.addi4spn x8, sp, 80 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_imm_mul
li sp, 0xe9b0c74b4f4d14ed # initialize some value to sp 
c.addi4spn x8, sp, 84 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_imm_mul
li sp, 0x17432676380b7672 # initialize some value to sp 
c.addi4spn x8, sp, 88 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_imm_mul
li sp, 0xd51edc3008f8c164 # initialize some value to sp 
c.addi4spn x12, sp, 92 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_imm_mul
li sp, 0x1c0316ad001dd697 # initialize some value to sp 
c.addi4spn x8, sp, 96 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_imm_mul
li sp, 0x48bb97a51abd173a # initialize some value to sp 
c.addi4spn x12, sp, 100 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_imm_mul
li sp, 0xf6b7222435218092 # initialize some value to sp 
c.addi4spn x12, sp, 104 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_imm_mul
li sp, 0xfa75abf1c8fbc87c # initialize some value to sp 
c.addi4spn x10, sp, 108 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_imm_mul
li sp, 0x212f78addd9fea5d # initialize some value to sp 
c.addi4spn x14, sp, 112 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_imm_mul
li sp, 0x522bb3abb10f8186 # initialize some value to sp 
c.addi4spn x14, sp, 116 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cp_imm_mul
li sp, 0xfb1f5e723824c0bf # initialize some value to sp 
c.addi4spn x11, sp, 120 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_imm_mul
li sp, 0xd54c9020ee5d3325 # initialize some value to sp 
c.addi4spn x10, sp, 124 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 304)

# Testcase cp_imm_mul
li sp, 0xa5ee3f0cf7135971 # initialize some value to sp 
c.addi4spn x13, sp, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_imm_mul
li sp, 0xa2c48c54f9f54b58 # initialize some value to sp 
c.addi4spn x13, sp, 132 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 320)

# Testcase cp_imm_mul
li sp, 0x251128c35eb0793f # initialize some value to sp 
c.addi4spn x13, sp, 136 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_imm_mul
li sp, 0x8d2c4e214936c18d # initialize some value to sp 
c.addi4spn x11, sp, 140 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_imm_mul
li sp, 0x253bc3de183ca2a1 # initialize some value to sp 
c.addi4spn x14, sp, 144 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cp_imm_mul
li sp, 0xb2a9f58b2606cb8a # initialize some value to sp 
c.addi4spn x15, sp, 148 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cp_imm_mul
li sp, 0x8a0aba47336a4566 # initialize some value to sp 
c.addi4spn x8, sp, 152 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_imm_mul
li sp, 0x2ac353bf0cc5d0ea # initialize some value to sp 
c.addi4spn x14, sp, 156 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_imm_mul
li sp, 0xe83fa9ac38f880c8 # initialize some value to sp 
c.addi4spn x8, sp, 160 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 376)

# Testcase cp_imm_mul
li sp, 0xac1be4cd7e19bfac # initialize some value to sp 
c.addi4spn x11, sp, 164 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_imm_mul
li sp, 0x1631ceefeb53ffc2 # initialize some value to sp 
c.addi4spn x14, sp, 168 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_imm_mul
li sp, 0xfafbdbb71023f00b # initialize some value to sp 
c.addi4spn x10, sp, 172 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_imm_mul
li sp, 0xd7838481ef52e0e6 # initialize some value to sp 
c.addi4spn x13, sp, 176 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_imm_mul
li sp, 0x29cb38aae6f9f5f1 # initialize some value to sp 
c.addi4spn x9, sp, 180 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_imm_mul
li sp, 0x6c43340c59aa299e # initialize some value to sp 
c.addi4spn x15, sp, 184 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cp_imm_mul
li sp, 0x770f0bd56c040b6d # initialize some value to sp 
c.addi4spn x9, sp, 188 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_imm_mul
li sp, 0xfaeeba8e581f5ae2 # initialize some value to sp 
c.addi4spn x11, sp, 192 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_imm_mul
li sp, 0xb58a63b0eec3ac5f # initialize some value to sp 
c.addi4spn x14, sp, 196 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_imm_mul
li sp, 0xa0ed90d187018a7b # initialize some value to sp 
c.addi4spn x10, sp, 200 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_imm_mul
li sp, 0xa8028915b8d286b7 # initialize some value to sp 
c.addi4spn x13, sp, 204 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_imm_mul
li sp, 0xf09ef6e98d8b6e17 # initialize some value to sp 
c.addi4spn x10, sp, 208 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_imm_mul
li sp, 0x1e1b3be633340bcf # initialize some value to sp 
c.addi4spn x12, sp, 212 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cp_imm_mul
li sp, 0x0d25e484e1ad3f1f # initialize some value to sp 
c.addi4spn x13, sp, 216 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cp_imm_mul
li sp, 0xce2f296f5eb7933c # initialize some value to sp 
c.addi4spn x10, sp, 220 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_imm_mul
li sp, 0xcdff9557da54f24d # initialize some value to sp 
c.addi4spn x10, sp, 224 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_imm_mul
li sp, 0x903acfdeb2f193a5 # initialize some value to sp 
c.addi4spn x15, sp, 228 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cp_imm_mul
li sp, 0xe2becca6ac867e61 # initialize some value to sp 
c.addi4spn x10, sp, 232 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_imm_mul
li sp, 0x6e12f376eecdaf9c # initialize some value to sp 
c.addi4spn x15, sp, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cp_imm_mul
li sp, 0xe6bbb591a91c55aa # initialize some value to sp 
c.addi4spn x15, sp, 240 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cp_imm_mul
li sp, 0xe206a9d619332560 # initialize some value to sp 
c.addi4spn x15, sp, 244 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_imm_mul
li sp, 0xe70aca640af06980 # initialize some value to sp 
c.addi4spn x10, sp, 248 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_imm_mul
li sp, 0x6385ce4da6b74384 # initialize some value to sp 
c.addi4spn x13, sp, 252 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 560)

# Testcase cp_imm_mul
li sp, 0x90f84de384e9a268 # initialize some value to sp 
c.addi4spn x10, sp, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cp_imm_mul
li sp, 0xd68581f84c20a4ef # initialize some value to sp 
c.addi4spn x8, sp, 260 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_imm_mul
li sp, 0x80308e5256ed1d27 # initialize some value to sp 
c.addi4spn x12, sp, 264 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_imm_mul
li sp, 0x9840b3956cf4ebc4 # initialize some value to sp 
c.addi4spn x12, sp, 268 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cp_imm_mul
li sp, 0xd74b06c33d6a7993 # initialize some value to sp 
c.addi4spn x10, sp, 272 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 600)

# Testcase cp_imm_mul
li sp, 0x2c62d8a1fe6b7f09 # initialize some value to sp 
c.addi4spn x10, sp, 276 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cp_imm_mul
li sp, 0xab19a9c50fdd1c28 # initialize some value to sp 
c.addi4spn x9, sp, 280 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cp_imm_mul
li sp, 0x26b209567f1288af # initialize some value to sp 
c.addi4spn x8, sp, 284 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cp_imm_mul
li sp, 0xf2cb7c2fafa1ce02 # initialize some value to sp 
c.addi4spn x15, sp, 288 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_imm_mul
li sp, 0x0acd32d549d332cd # initialize some value to sp 
c.addi4spn x13, sp, 292 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 640)

# Testcase cp_imm_mul
li sp, 0x8da19f8b497809cf # initialize some value to sp 
c.addi4spn x8, sp, 296 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cp_imm_mul
li sp, 0x871a710d644e560c # initialize some value to sp 
c.addi4spn x8, sp, 300 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cp_imm_mul
li sp, 0xa94911edf1238c55 # initialize some value to sp 
c.addi4spn x8, sp, 304 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cp_imm_mul
li sp, 0x64c61e11e9b1d414 # initialize some value to sp 
c.addi4spn x12, sp, 308 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cp_imm_mul
li sp, 0x861cee63418423c1 # initialize some value to sp 
c.addi4spn x11, sp, 312 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cp_imm_mul
li sp, 0xce17ac0cfb450a08 # initialize some value to sp 
c.addi4spn x10, sp, 316 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 688)

# Testcase cp_imm_mul
li sp, 0xa83986199d072b1d # initialize some value to sp 
c.addi4spn x12, sp, 320 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cp_imm_mul
li sp, 0x6e7df16575c1a373 # initialize some value to sp 
c.addi4spn x9, sp, 324 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cp_imm_mul
li sp, 0x56503bb42f93e68b # initialize some value to sp 
c.addi4spn x12, sp, 328 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cp_imm_mul
li sp, 0xae376bea4ee97c69 # initialize some value to sp 
c.addi4spn x12, sp, 332 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cp_imm_mul
li sp, 0xd76df16be0b1cf6a # initialize some value to sp 
c.addi4spn x15, sp, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 728)

# Testcase cp_imm_mul
li sp, 0xef281ffbdd1e2835 # initialize some value to sp 
c.addi4spn x10, sp, 340 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 736)

# Testcase cp_imm_mul
li sp, 0xacb85c1109d596ab # initialize some value to sp 
c.addi4spn x11, sp, 344 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 744)

# Testcase cp_imm_mul
li sp, 0xb359d81d47c4b021 # initialize some value to sp 
c.addi4spn x14, sp, 348 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cp_imm_mul
li sp, 0xe81374dc7ca6b234 # initialize some value to sp 
c.addi4spn x10, sp, 352 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

# Testcase cp_imm_mul
li sp, 0xbd3390ea765a721c # initialize some value to sp 
c.addi4spn x8, sp, 356 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cp_imm_mul
li sp, 0x442778c6e1a1d239 # initialize some value to sp 
c.addi4spn x14, sp, 360 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cp_imm_mul
li sp, 0xb2fa032a4af5fd31 # initialize some value to sp 
c.addi4spn x9, sp, 364 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cp_imm_mul
li sp, 0x62936e992a4062e4 # initialize some value to sp 
c.addi4spn x10, sp, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 792)

# Testcase cp_imm_mul
li sp, 0x320b10b76826b774 # initialize some value to sp 
c.addi4spn x11, sp, 372 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cp_imm_mul
li sp, 0x0a140371237d4cad # initialize some value to sp 
c.addi4spn x8, sp, 376 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cp_imm_mul
li sp, 0xc7a7256c00425342 # initialize some value to sp 
c.addi4spn x12, sp, 380 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cp_imm_mul
li sp, 0x4da5dca4f9a02ac6 # initialize some value to sp 
c.addi4spn x12, sp, 384 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cp_imm_mul
li sp, 0xa642833a214fee2f # initialize some value to sp 
c.addi4spn x9, sp, 388 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cp_imm_mul
li sp, 0x185777940aee6788 # initialize some value to sp 
c.addi4spn x10, sp, 392 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cp_imm_mul
li sp, 0xb5da72d7c5b0d996 # initialize some value to sp 
c.addi4spn x10, sp, 396 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 848)

# Testcase cp_imm_mul
li sp, 0x8b2ec8649daccf99 # initialize some value to sp 
c.addi4spn x12, sp, 400 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cp_imm_mul
li sp, 0x4de796112a010880 # initialize some value to sp 
c.addi4spn x13, sp, 404 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cp_imm_mul
li sp, 0xdbd3f9df331be277 # initialize some value to sp 
c.addi4spn x15, sp, 408 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_imm_mul
li sp, 0xa84ec834679d8311 # initialize some value to sp 
c.addi4spn x8, sp, 412 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_imm_mul
li sp, 0x7143a2c12dc292da # initialize some value to sp 
c.addi4spn x8, sp, 416 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cp_imm_mul
li sp, 0xab046c7cc528afcd # initialize some value to sp 
c.addi4spn x11, sp, 420 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cp_imm_mul
li sp, 0xc84ebb86ce943458 # initialize some value to sp 
c.addi4spn x10, sp, 424 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_imm_mul
li sp, 0xde19bf058dc22886 # initialize some value to sp 
c.addi4spn x8, sp, 428 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_imm_mul
li sp, 0x0644f96341f25cc5 # initialize some value to sp 
c.addi4spn x12, sp, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cp_imm_mul
li sp, 0x211b1637ce3edfdb # initialize some value to sp 
c.addi4spn x9, sp, 436 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_imm_mul
li sp, 0x4395cdca994aeef5 # initialize some value to sp 
c.addi4spn x11, sp, 440 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 936)

# Testcase cp_imm_mul
li sp, 0x5af4902d6dea5359 # initialize some value to sp 
c.addi4spn x15, sp, 444 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_imm_mul
li sp, 0x8f50fd1c94e17f05 # initialize some value to sp 
c.addi4spn x13, sp, 448 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cp_imm_mul
li sp, 0x6981bd0c4463ea9c # initialize some value to sp 
c.addi4spn x14, sp, 452 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cp_imm_mul
li sp, 0xc278dead14b536b4 # initialize some value to sp 
c.addi4spn x15, sp, 456 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_imm_mul
li sp, 0xedc74c212d00d875 # initialize some value to sp 
c.addi4spn x12, sp, 460 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cp_imm_mul
li sp, 0x2163e9c5a775db86 # initialize some value to sp 
c.addi4spn x8, sp, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_imm_mul
li sp, 0xb54877b916f5537a # initialize some value to sp 
c.addi4spn x8, sp, 468 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_imm_mul
li sp, 0xd0b8c47dcae69fad # initialize some value to sp 
c.addi4spn x9, sp, 472 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cp_imm_mul
li sp, 0x4cf56662e6b28286 # initialize some value to sp 
c.addi4spn x13, sp, 476 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cp_imm_mul
li sp, 0xf4f1ece5b6c52475 # initialize some value to sp 
c.addi4spn x9, sp, 480 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cp_imm_mul
li sp, 0x88b0507e839aea5b # initialize some value to sp 
c.addi4spn x14, sp, 484 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cp_imm_mul
li sp, 0xe9e04695205810f6 # initialize some value to sp 
c.addi4spn x10, sp, 488 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_imm_mul
li sp, 0xa9d699f551d8782d # initialize some value to sp 
c.addi4spn x14, sp, 492 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cp_imm_mul
li sp, 0x34111482c3410839 # initialize some value to sp 
c.addi4spn x15, sp, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cp_imm_mul
li sp, 0x9b0a9a40c1e2174a # initialize some value to sp 
c.addi4spn x12, sp, 500 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cp_imm_mul
li sp, 0x810eb5154c47a342 # initialize some value to sp 
c.addi4spn x15, sp, 504 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cp_imm_mul
li sp, 0xec1b58bb60d3b0b8 # initialize some value to sp 
c.addi4spn x9, sp, 508 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_imm_mul
li sp, 0xc6a78bf9c1044c64 # initialize some value to sp 
c.addi4spn x15, sp, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cp_imm_mul
li sp, 0xed50eb130858ef18 # initialize some value to sp 
c.addi4spn x11, sp, 516 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cp_imm_mul
li sp, 0xd95d220a100f6331 # initialize some value to sp 
c.addi4spn x9, sp, 520 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cp_imm_mul
li sp, 0x90a1938f3ff8ce8d # initialize some value to sp 
c.addi4spn x12, sp, 524 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1104)

# Testcase cp_imm_mul
li sp, 0xe0deee50f983ed68 # initialize some value to sp 
c.addi4spn x8, sp, 528 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cp_imm_mul
li sp, 0xae9fb6647ab73a77 # initialize some value to sp 
c.addi4spn x11, sp, 532 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cp_imm_mul
li sp, 0x41ec62aac5c2e5ce # initialize some value to sp 
c.addi4spn x15, sp, 536 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cp_imm_mul
li sp, 0xd6e582171c2f09fe # initialize some value to sp 
c.addi4spn x14, sp, 540 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cp_imm_mul
li sp, 0xa4a577692eab5093 # initialize some value to sp 
c.addi4spn x12, sp, 544 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cp_imm_mul
li sp, 0xc6edd6a189ce7741 # initialize some value to sp 
c.addi4spn x15, sp, 548 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cp_imm_mul
li sp, 0xbdab47523d5a970b # initialize some value to sp 
c.addi4spn x15, sp, 552 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cp_imm_mul
li sp, 0xb69a21cf6ad4cbbd # initialize some value to sp 
c.addi4spn x8, sp, 556 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cp_imm_mul
li sp, 0x3028fb32fbda4a88 # initialize some value to sp 
c.addi4spn x12, sp, 560 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cp_imm_mul
li sp, 0x85c83de41d629518 # initialize some value to sp 
c.addi4spn x11, sp, 564 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cp_imm_mul
li sp, 0x7fe23a5c679e330c # initialize some value to sp 
c.addi4spn x12, sp, 568 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cp_imm_mul
li sp, 0xb994687cceda1af8 # initialize some value to sp 
c.addi4spn x12, sp, 572 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cp_imm_mul
li sp, 0xf4e9404295b3eedb # initialize some value to sp 
c.addi4spn x12, sp, 576 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cp_imm_mul
li sp, 0x6a7d21c4b065e677 # initialize some value to sp 
c.addi4spn x9, sp, 580 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cp_imm_mul
li sp, 0x686caf1d28028c43 # initialize some value to sp 
c.addi4spn x11, sp, 584 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cp_imm_mul
li sp, 0x1788b27b50660ddf # initialize some value to sp 
c.addi4spn x10, sp, 588 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

# Testcase cp_imm_mul
li sp, 0x8721706e52293bd1 # initialize some value to sp 
c.addi4spn x14, sp, 592 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cp_imm_mul
li sp, 0x5e68e8c05d347153 # initialize some value to sp 
c.addi4spn x10, sp, 596 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cp_imm_mul
li sp, 0xf67ad0331d87cf57 # initialize some value to sp 
c.addi4spn x9, sp, 600 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cp_imm_mul
li sp, 0xbcfc4000c53ad715 # initialize some value to sp 
c.addi4spn x15, sp, 604 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cp_imm_mul
li sp, 0x0621eaf25cdc8c57 # initialize some value to sp 
c.addi4spn x15, sp, 608 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cp_imm_mul
li sp, 0x9eb5c17ddc59ba0f # initialize some value to sp 
c.addi4spn x11, sp, 612 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cp_imm_mul
li sp, 0x88e73410743a17df # initialize some value to sp 
c.addi4spn x15, sp, 616 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)

# Testcase cp_imm_mul
li sp, 0x0172f0459729c4ea # initialize some value to sp 
c.addi4spn x8, sp, 620 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cp_imm_mul
li sp, 0x25ca265d5d89514d # initialize some value to sp 
c.addi4spn x13, sp, 624 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1304)

# Testcase cp_imm_mul
li sp, 0x31c4c29eb6c8b3ae # initialize some value to sp 
c.addi4spn x14, sp, 628 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1312)

# Testcase cp_imm_mul
li sp, 0xbe6e70634ca73339 # initialize some value to sp 
c.addi4spn x10, sp, 632 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cp_imm_mul
li sp, 0x54be57d70a5aa9c0 # initialize some value to sp 
c.addi4spn x15, sp, 636 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1328)

# Testcase cp_imm_mul
li sp, 0xea90ec6d2cddd913 # initialize some value to sp 
c.addi4spn x11, sp, 640 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cp_imm_mul
li sp, 0xb70edc7653bff227 # initialize some value to sp 
c.addi4spn x8, sp, 644 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cp_imm_mul
li sp, 0x7082756ae525da1d # initialize some value to sp 
c.addi4spn x14, sp, 648 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cp_imm_mul
li sp, 0xf9aaea420c6c8475 # initialize some value to sp 
c.addi4spn x9, sp, 652 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1360)

# Testcase cp_imm_mul
li sp, 0x3c30f2ad336c59d9 # initialize some value to sp 
c.addi4spn x14, sp, 656 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cp_imm_mul
li sp, 0x9c490bda422184d0 # initialize some value to sp 
c.addi4spn x9, sp, 660 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1376)

# Testcase cp_imm_mul
li sp, 0xee4e2c336767dd64 # initialize some value to sp 
c.addi4spn x8, sp, 664 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cp_imm_mul
li sp, 0x069e799bf932dd92 # initialize some value to sp 
c.addi4spn x14, sp, 668 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cp_imm_mul
li sp, 0xbfcdf1b999bb32a8 # initialize some value to sp 
c.addi4spn x14, sp, 672 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cp_imm_mul
li sp, 0x6b7cf411e55fdd35 # initialize some value to sp 
c.addi4spn x9, sp, 676 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cp_imm_mul
li sp, 0xda71edbd97b090fe # initialize some value to sp 
c.addi4spn x8, sp, 680 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1416)

# Testcase cp_imm_mul
li sp, 0x9b761eb8e79b07ca # initialize some value to sp 
c.addi4spn x14, sp, 684 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1424)

# Testcase cp_imm_mul
li sp, 0x282fb970c78407c7 # initialize some value to sp 
c.addi4spn x12, sp, 688 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cp_imm_mul
li sp, 0x8f2228068b406152 # initialize some value to sp 
c.addi4spn x14, sp, 692 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cp_imm_mul
li sp, 0x9e147445001df264 # initialize some value to sp 
c.addi4spn x15, sp, 696 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cp_imm_mul
li sp, 0x38e7458c4b20c1af # initialize some value to sp 
c.addi4spn x10, sp, 700 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cp_imm_mul
li sp, 0x188fc11c0c43a14f # initialize some value to sp 
c.addi4spn x15, sp, 704 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1464)

# Testcase cp_imm_mul
li sp, 0x8e5592a4237e5756 # initialize some value to sp 
c.addi4spn x13, sp, 708 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cp_imm_mul
li sp, 0xafb9c1999e1dbf4c # initialize some value to sp 
c.addi4spn x8, sp, 712 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cp_imm_mul
li sp, 0xcc0c474734f501ab # initialize some value to sp 
c.addi4spn x13, sp, 716 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cp_imm_mul
li sp, 0xd8696a7a684ae2fa # initialize some value to sp 
c.addi4spn x14, sp, 720 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cp_imm_mul
li sp, 0x836a3bb19462e654 # initialize some value to sp 
c.addi4spn x15, sp, 724 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cp_imm_mul
li sp, 0xf89e92273a224d75 # initialize some value to sp 
c.addi4spn x9, sp, 728 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cp_imm_mul
li sp, 0xc670a6e84f1781f2 # initialize some value to sp 
c.addi4spn x15, sp, 732 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cp_imm_mul
li sp, 0x00e66ed0d44926ed # initialize some value to sp 
c.addi4spn x10, sp, 736 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1528)

# Testcase cp_imm_mul
li sp, 0x5de9421fd9713ba8 # initialize some value to sp 
c.addi4spn x15, sp, 740 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1536)

# Testcase cp_imm_mul
li sp, 0x05d17cba9645a341 # initialize some value to sp 
c.addi4spn x14, sp, 744 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1544)

# Testcase cp_imm_mul
li sp, 0x4a02a741e6d50d2e # initialize some value to sp 
c.addi4spn x9, sp, 748 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1552)

# Testcase cp_imm_mul
li sp, 0xc475f4d2ffd5358a # initialize some value to sp 
c.addi4spn x15, sp, 752 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1560)

# Testcase cp_imm_mul
li sp, 0x52f647ffa849e9b4 # initialize some value to sp 
c.addi4spn x11, sp, 756 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1568)

# Testcase cp_imm_mul
li sp, 0x6ed1d73a89d08d4e # initialize some value to sp 
c.addi4spn x10, sp, 760 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

# Testcase cp_imm_mul
li sp, 0x8c98f63f7fca7cf5 # initialize some value to sp 
c.addi4spn x9, sp, 764 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cp_imm_mul
li sp, 0x58548ec7228418c7 # initialize some value to sp 
c.addi4spn x10, sp, 768 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1592)

# Testcase cp_imm_mul
li sp, 0x7a93aef1e259f0e4 # initialize some value to sp 
c.addi4spn x8, sp, 772 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cp_imm_mul
li sp, 0xbc8f5497ae95a6f0 # initialize some value to sp 
c.addi4spn x8, sp, 776 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1608)

# Testcase cp_imm_mul
li sp, 0xc270cd75972a29bb # initialize some value to sp 
c.addi4spn x15, sp, 780 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1616)

# Testcase cp_imm_mul
li sp, 0xb7749ee590cd3c3f # initialize some value to sp 
c.addi4spn x15, sp, 784 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cp_imm_mul
li sp, 0xb2c8d325276472b9 # initialize some value to sp 
c.addi4spn x10, sp, 788 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cp_imm_mul
li sp, 0x25067ae2475740da # initialize some value to sp 
c.addi4spn x11, sp, 792 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cp_imm_mul
li sp, 0x089cdaac447dcd12 # initialize some value to sp 
c.addi4spn x8, sp, 796 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cp_imm_mul
li sp, 0x67cf03308a23d83d # initialize some value to sp 
c.addi4spn x11, sp, 800 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cp_imm_mul
li sp, 0xbde088aa395f538c # initialize some value to sp 
c.addi4spn x11, sp, 804 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cp_imm_mul
li sp, 0x3c08f191e99238f0 # initialize some value to sp 
c.addi4spn x12, sp, 808 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cp_imm_mul
li sp, 0xe58c8e507c56bba7 # initialize some value to sp 
c.addi4spn x10, sp, 812 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1680)

# Testcase cp_imm_mul
li sp, 0xb39d19fc82e27ac7 # initialize some value to sp 
c.addi4spn x14, sp, 816 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1688)

# Testcase cp_imm_mul
li sp, 0x42658667defd6d26 # initialize some value to sp 
c.addi4spn x15, sp, 820 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1696)

# Testcase cp_imm_mul
li sp, 0xa2425f98711d8844 # initialize some value to sp 
c.addi4spn x15, sp, 824 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cp_imm_mul
li sp, 0x25f631aefaa38361 # initialize some value to sp 
c.addi4spn x10, sp, 828 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

# Testcase cp_imm_mul
li sp, 0xdbba94e4ab71e89b # initialize some value to sp 
c.addi4spn x10, sp, 832 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cp_imm_mul
li sp, 0x1c7ea6580fda073c # initialize some value to sp 
c.addi4spn x8, sp, 836 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1728)

# Testcase cp_imm_mul
li sp, 0xe459fde8ecfece65 # initialize some value to sp 
c.addi4spn x9, sp, 840 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1736)

# Testcase cp_imm_mul
li sp, 0x90cfc2d5d533b3dc # initialize some value to sp 
c.addi4spn x13, sp, 844 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1744)

# Testcase cp_imm_mul
li sp, 0x8b1a9d974cddb31d # initialize some value to sp 
c.addi4spn x10, sp, 848 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1752)

# Testcase cp_imm_mul
li sp, 0xa7cd8072149a1b16 # initialize some value to sp 
c.addi4spn x8, sp, 852 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cp_imm_mul
li sp, 0x1576ebaaa58c4a65 # initialize some value to sp 
c.addi4spn x12, sp, 856 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1768)

# Testcase cp_imm_mul
li sp, 0x0a7b5e0d153ca42b # initialize some value to sp 
c.addi4spn x13, sp, 860 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1776)

# Testcase cp_imm_mul
li sp, 0x65fe75ae04b9b3eb # initialize some value to sp 
c.addi4spn x14, sp, 864 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1784)

# Testcase cp_imm_mul
li sp, 0xedd4e084e806bf53 # initialize some value to sp 
c.addi4spn x9, sp, 868 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_mul
li sp, 0x2cb0f4a89bfde154 # initialize some value to sp 
c.addi4spn x9, sp, 872 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_imm_mul
li sp, 0x685301411c6df313 # initialize some value to sp 
c.addi4spn x13, sp, 876 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_imm_mul
li sp, 0xd769985442b0eb36 # initialize some value to sp 
c.addi4spn x10, sp, 880 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_imm_mul
li sp, 0x4b394092acaa57be # initialize some value to sp 
c.addi4spn x14, sp, 884 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_imm_mul
li sp, 0x2b8fe5a0e44d6c26 # initialize some value to sp 
c.addi4spn x13, sp, 888 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_imm_mul
li sp, 0xd6b2cbad6d7fb88d # initialize some value to sp 
c.addi4spn x12, sp, 892 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_imm_mul
li sp, 0x98a02409be0539e4 # initialize some value to sp 
c.addi4spn x11, sp, 896 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cp_imm_mul
li sp, 0xd24418f0d4345f4b # initialize some value to sp 
c.addi4spn x8, sp, 900 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_imm_mul
li sp, 0x4e860cdba3f6c329 # initialize some value to sp 
c.addi4spn x15, sp, 904 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_imm_mul
li sp, 0x7bca0fb4b4abe8a1 # initialize some value to sp 
c.addi4spn x14, sp, 908 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_imm_mul
li sp, 0x28162a6028dba82f # initialize some value to sp 
c.addi4spn x9, sp, 912 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_imm_mul
li sp, 0x3d03f4ab57284654 # initialize some value to sp 
c.addi4spn x8, sp, 916 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_imm_mul
li sp, 0x2844c11f18ad3851 # initialize some value to sp 
c.addi4spn x11, sp, 920 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_imm_mul
li sp, 0xdca003baab80cd0c # initialize some value to sp 
c.addi4spn x11, sp, 924 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cp_imm_mul
li sp, 0x79fd4d79952a5fb0 # initialize some value to sp 
c.addi4spn x11, sp, 928 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_imm_mul
li sp, 0x48d90678d3da1507 # initialize some value to sp 
c.addi4spn x12, sp, 932 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_imm_mul
li sp, 0x6483cb327907c89d # initialize some value to sp 
c.addi4spn x14, sp, 936 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_imm_mul
li sp, 0xa5bf2cc23e453a6c # initialize some value to sp 
c.addi4spn x10, sp, 940 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_imm_mul
li sp, 0x06c308e567d2d348 # initialize some value to sp 
c.addi4spn x11, sp, 944 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_imm_mul
li sp, 0x4686a866242b8bd5 # initialize some value to sp 
c.addi4spn x15, sp, 948 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_imm_mul
li sp, 0xca5ea22b286f7f6b # initialize some value to sp 
c.addi4spn x13, sp, 952 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_imm_mul
li sp, 0xdc2bd3496eb01dd4 # initialize some value to sp 
c.addi4spn x8, sp, 956 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_imm_mul
li sp, 0x4e57a88be8ef08a3 # initialize some value to sp 
c.addi4spn x12, sp, 960 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_imm_mul
li sp, 0x85a888ecacd4bc04 # initialize some value to sp 
c.addi4spn x15, sp, 964 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_imm_mul
li sp, 0xe8337ea42aa9e753 # initialize some value to sp 
c.addi4spn x12, sp, 968 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cp_imm_mul
li sp, 0x605fdc4c8b5827d1 # initialize some value to sp 
c.addi4spn x15, sp, 972 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_imm_mul
li sp, 0x22e06e79da541108 # initialize some value to sp 
c.addi4spn x12, sp, 976 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_imm_mul
li sp, 0x65e6277f94e4b06f # initialize some value to sp 
c.addi4spn x11, sp, 980 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_imm_mul
li sp, 0x3e89630740e30273 # initialize some value to sp 
c.addi4spn x9, sp, 984 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_imm_mul
li sp, 0xa58f5e6f4908f06d # initialize some value to sp 
c.addi4spn x14, sp, 988 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_imm_mul
li sp, 0x287ef59a937d59d4 # initialize some value to sp 
c.addi4spn x13, sp, 992 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_imm_mul
li sp, 0x458222b29e72aa7f # initialize some value to sp 
c.addi4spn x9, sp, 996 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_imm_mul
li sp, 0x1a5ddb39e45c247a # initialize some value to sp 
c.addi4spn x14, sp, 1000 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_imm_mul
li sp, 0x42ef24c0c30e9cea # initialize some value to sp 
c.addi4spn x10, sp, 1004 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cp_imm_mul
li sp, 0x12228c4dd5034112 # initialize some value to sp 
c.addi4spn x14, sp, 1008 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_imm_mul
li sp, 0xc61dc95da000705d # initialize some value to sp 
c.addi4spn x14, sp, 1012 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cp_imm_mul
li sp, 0xca080691d0ed5bc7 # initialize some value to sp 
c.addi4spn x9, sp, 1016 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cp_imm_mul
li sp, 0x71341159758b2632 # initialize some value to sp 
c.addi4spn x14, sp, 1020 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

.EQU SIGSIZE,2104


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
