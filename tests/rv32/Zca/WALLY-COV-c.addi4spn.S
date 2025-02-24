///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.addi4spn.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.482887
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf194395f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 840 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xca103305 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 428 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xdc8962ae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 200 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x565b447b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 48 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x55cba932 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 376 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9adff43f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 760 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd7b66521 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 516 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x400c8a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 764 # perform operation

# Testcase cp_imm_mul
li x16, 0xa1e145de # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 4 # perform operation

# Testcase cp_imm_mul
li x14, 0x15da27e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 8 # perform operation

# Testcase cp_imm_mul
li x21, 0xb87fce37 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 12 # perform operation

# Testcase cp_imm_mul
li x10, 0x42795c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 16 # perform operation

# Testcase cp_imm_mul
li x18, 0x9fca846d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 20 # perform operation

# Testcase cp_imm_mul
li x20, 0x650cf5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 24 # perform operation

# Testcase cp_imm_mul
li x12, 0x3f7c5ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 28 # perform operation

# Testcase cp_imm_mul
li x4, 0x8f53f5af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 32 # perform operation

# Testcase cp_imm_mul
li x4, 0x43b31b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 36 # perform operation

# Testcase cp_imm_mul
li x21, 0x28741b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 40 # perform operation

# Testcase cp_imm_mul
li x6, 0xc327c5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 44 # perform operation

# Testcase cp_imm_mul
li x4, 0x30996189 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 48 # perform operation

# Testcase cp_imm_mul
li x4, 0x4fdd5b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 52 # perform operation

# Testcase cp_imm_mul
li x26, 0x98b454c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 56 # perform operation

# Testcase cp_imm_mul
li x18, 0x3fa43019 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 60 # perform operation

# Testcase cp_imm_mul
li x17, 0x2bb0f66a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 64 # perform operation

# Testcase cp_imm_mul
li x17, 0x83fc6d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 68 # perform operation

# Testcase cp_imm_mul
li x23, 0xf15035ed # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 72 # perform operation

# Testcase cp_imm_mul
li x12, 0x58cf411f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 76 # perform operation

# Testcase cp_imm_mul
li x23, 0x06db0ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 80 # perform operation

# Testcase cp_imm_mul
li x13, 0xa728952b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 84 # perform operation

# Testcase cp_imm_mul
li x18, 0x590626d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 88 # perform operation

# Testcase cp_imm_mul
li x19, 0xfec86924 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 92 # perform operation

# Testcase cp_imm_mul
li x15, 0x308054af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 96 # perform operation

# Testcase cp_imm_mul
li x11, 0x00c5d15e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 100 # perform operation

# Testcase cp_imm_mul
li x31, 0x0c3280bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 104 # perform operation

# Testcase cp_imm_mul
li x16, 0x98a4226d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 108 # perform operation

# Testcase cp_imm_mul
li x26, 0x856c64d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 112 # perform operation

# Testcase cp_imm_mul
li x26, 0x3e4a1a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 116 # perform operation

# Testcase cp_imm_mul
li x3, 0x8d00cd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 120 # perform operation

# Testcase cp_imm_mul
li x27, 0x27fcb06a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 124 # perform operation

# Testcase cp_imm_mul
li x11, 0x3cb5773b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 128 # perform operation

# Testcase cp_imm_mul
li x2, 0x2302021b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 132 # perform operation

# Testcase cp_imm_mul
li x30, 0xa9d7c060 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 136 # perform operation

# Testcase cp_imm_mul
li x27, 0x6bde2839 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 140 # perform operation

# Testcase cp_imm_mul
li x6, 0xd382d991 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 144 # perform operation

# Testcase cp_imm_mul
li x31, 0x899ccfd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 148 # perform operation

# Testcase cp_imm_mul
li x8, 0x68af232d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 152 # perform operation

# Testcase cp_imm_mul
li x6, 0x177375fc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 156 # perform operation

# Testcase cp_imm_mul
li x27, 0x38ffeb44 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 160 # perform operation

# Testcase cp_imm_mul
li x5, 0x7f553e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 164 # perform operation

# Testcase cp_imm_mul
li x22, 0xaa77598d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 168 # perform operation

# Testcase cp_imm_mul
li x22, 0x0636ab01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 172 # perform operation

# Testcase cp_imm_mul
li x11, 0x72bda829 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 176 # perform operation

# Testcase cp_imm_mul
li x9, 0x3a368532 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 180 # perform operation

# Testcase cp_imm_mul
li x29, 0xd9c0fd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 184 # perform operation

# Testcase cp_imm_mul
li x20, 0x009578c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 188 # perform operation

# Testcase cp_imm_mul
li x24, 0xf8133071 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 192 # perform operation

# Testcase cp_imm_mul
li x31, 0xa083febf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 196 # perform operation

# Testcase cp_imm_mul
li x26, 0xdc89fc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 200 # perform operation

# Testcase cp_imm_mul
li x11, 0x876ffba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 204 # perform operation

# Testcase cp_imm_mul
li x26, 0x09822929 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 208 # perform operation

# Testcase cp_imm_mul
li x8, 0x1a443dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 212 # perform operation

# Testcase cp_imm_mul
li x25, 0x533d4b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 216 # perform operation

# Testcase cp_imm_mul
li x6, 0xbb6cb592 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 220 # perform operation

# Testcase cp_imm_mul
li x28, 0x9fecbd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 224 # perform operation

# Testcase cp_imm_mul
li x12, 0x1848aeda # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 228 # perform operation

# Testcase cp_imm_mul
li x30, 0xec54bee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 232 # perform operation

# Testcase cp_imm_mul
li x22, 0x758b70da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 236 # perform operation

# Testcase cp_imm_mul
li x21, 0x84fb3a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 240 # perform operation

# Testcase cp_imm_mul
li x3, 0xad360d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 244 # perform operation

# Testcase cp_imm_mul
li x26, 0xd04fb0a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 248 # perform operation

# Testcase cp_imm_mul
li x22, 0x9f9b8d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 252 # perform operation

# Testcase cp_imm_mul
li x6, 0x4e4e92f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 256 # perform operation

# Testcase cp_imm_mul
li x29, 0x27fd3f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 260 # perform operation

# Testcase cp_imm_mul
li x25, 0x7cc2fc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 264 # perform operation

# Testcase cp_imm_mul
li x14, 0x4493b1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 268 # perform operation

# Testcase cp_imm_mul
li x23, 0x902124a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 272 # perform operation

# Testcase cp_imm_mul
li x4, 0xa7db2c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 276 # perform operation

# Testcase cp_imm_mul
li x30, 0x04a167a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 280 # perform operation

# Testcase cp_imm_mul
li x25, 0xb5ebd5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 284 # perform operation

# Testcase cp_imm_mul
li x7, 0x1b4b330e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 288 # perform operation

# Testcase cp_imm_mul
li x30, 0x02b0b939 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 292 # perform operation

# Testcase cp_imm_mul
li x14, 0xdf086697 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 296 # perform operation

# Testcase cp_imm_mul
li x9, 0xf4ced899 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 300 # perform operation

# Testcase cp_imm_mul
li x31, 0x9a438d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 304 # perform operation

# Testcase cp_imm_mul
li x24, 0x0b08e601 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 308 # perform operation

# Testcase cp_imm_mul
li x21, 0x365705ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 312 # perform operation

# Testcase cp_imm_mul
li x5, 0x983da305 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 316 # perform operation

# Testcase cp_imm_mul
li x22, 0xc9ecb5f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 320 # perform operation

# Testcase cp_imm_mul
li x18, 0xeceb4043 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 324 # perform operation

# Testcase cp_imm_mul
li x19, 0x09239ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 328 # perform operation

# Testcase cp_imm_mul
li x29, 0xa657918f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 332 # perform operation

# Testcase cp_imm_mul
li x15, 0xcba6cac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 336 # perform operation

# Testcase cp_imm_mul
li x28, 0x8aec940a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 340 # perform operation

# Testcase cp_imm_mul
li x25, 0x2494bebb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 344 # perform operation

# Testcase cp_imm_mul
li x14, 0x7405f641 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 348 # perform operation

# Testcase cp_imm_mul
li x10, 0xf825f867 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 352 # perform operation

# Testcase cp_imm_mul
li x27, 0x0bbab16f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 356 # perform operation

# Testcase cp_imm_mul
li x12, 0x1ef9e453 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 360 # perform operation

# Testcase cp_imm_mul
li x2, 0x8808d496 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 364 # perform operation

# Testcase cp_imm_mul
li x3, 0x9d010969 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 368 # perform operation

# Testcase cp_imm_mul
li x19, 0x711156f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 372 # perform operation

# Testcase cp_imm_mul
li x4, 0x18d0c9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 376 # perform operation

# Testcase cp_imm_mul
li x12, 0x3420b71f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 380 # perform operation

# Testcase cp_imm_mul
li x30, 0x1d2b68df # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 384 # perform operation

# Testcase cp_imm_mul
li x25, 0xcc224e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 388 # perform operation

# Testcase cp_imm_mul
li x17, 0xb0eb98c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 392 # perform operation

# Testcase cp_imm_mul
li x6, 0x8f72a0db # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 396 # perform operation

# Testcase cp_imm_mul
li x5, 0x19cfd415 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 400 # perform operation

# Testcase cp_imm_mul
li x30, 0xbfb22588 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 404 # perform operation

# Testcase cp_imm_mul
li x13, 0x8d80b89f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 408 # perform operation

# Testcase cp_imm_mul
li x20, 0x53f4d260 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 412 # perform operation

# Testcase cp_imm_mul
li x30, 0xf3e3e73b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 416 # perform operation

# Testcase cp_imm_mul
li x21, 0x25092b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 420 # perform operation

# Testcase cp_imm_mul
li x4, 0x34c9392f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 424 # perform operation

# Testcase cp_imm_mul
li x20, 0x9213e2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 428 # perform operation

# Testcase cp_imm_mul
li x11, 0x0672b3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 432 # perform operation

# Testcase cp_imm_mul
li x7, 0x79da5e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 436 # perform operation

# Testcase cp_imm_mul
li x25, 0x30643c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 440 # perform operation

# Testcase cp_imm_mul
li x11, 0x440366ae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 444 # perform operation

# Testcase cp_imm_mul
li x20, 0x3bfe838d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 448 # perform operation

# Testcase cp_imm_mul
li x10, 0x8510036b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 452 # perform operation

# Testcase cp_imm_mul
li x5, 0xe36f8620 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 456 # perform operation

# Testcase cp_imm_mul
li x20, 0xa141c175 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 460 # perform operation

# Testcase cp_imm_mul
li x15, 0x413b95f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 464 # perform operation

# Testcase cp_imm_mul
li x26, 0x1cec97e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 468 # perform operation

# Testcase cp_imm_mul
li x29, 0x0b710ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 472 # perform operation

# Testcase cp_imm_mul
li x22, 0xf42d5b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 476 # perform operation

# Testcase cp_imm_mul
li x18, 0xb3cdbde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 480 # perform operation

# Testcase cp_imm_mul
li x7, 0xe5413602 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 484 # perform operation

# Testcase cp_imm_mul
li x13, 0x4649786c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 488 # perform operation

# Testcase cp_imm_mul
li x5, 0x8ec3acb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 492 # perform operation

# Testcase cp_imm_mul
li x24, 0x6c8742cf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 496 # perform operation

# Testcase cp_imm_mul
li x3, 0x42820ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 500 # perform operation

# Testcase cp_imm_mul
li x6, 0x30399d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 504 # perform operation

# Testcase cp_imm_mul
li x22, 0x13014f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 508 # perform operation

# Testcase cp_imm_mul
li x4, 0x3204e02a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 512 # perform operation

# Testcase cp_imm_mul
li x11, 0xc5558d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 516 # perform operation

# Testcase cp_imm_mul
li x13, 0x97f5c499 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 520 # perform operation

# Testcase cp_imm_mul
li x5, 0x0b5de13a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 524 # perform operation

# Testcase cp_imm_mul
li x7, 0xc273253c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 528 # perform operation

# Testcase cp_imm_mul
li x15, 0x365f7763 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 532 # perform operation

# Testcase cp_imm_mul
li x18, 0x65d59801 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 536 # perform operation

# Testcase cp_imm_mul
li x7, 0xfb690124 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 540 # perform operation

# Testcase cp_imm_mul
li x8, 0x2f163837 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 544 # perform operation

# Testcase cp_imm_mul
li x19, 0x73887341 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 548 # perform operation

# Testcase cp_imm_mul
li x9, 0x8e738134 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 552 # perform operation

# Testcase cp_imm_mul
li x28, 0x6a57465d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 556 # perform operation

# Testcase cp_imm_mul
li x27, 0x4c352d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 560 # perform operation

# Testcase cp_imm_mul
li x1, 0x89e35910 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 564 # perform operation

# Testcase cp_imm_mul
li x27, 0x39897e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 568 # perform operation

# Testcase cp_imm_mul
li x28, 0x8ca32364 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 572 # perform operation

# Testcase cp_imm_mul
li x30, 0xab31ea3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 576 # perform operation

# Testcase cp_imm_mul
li x4, 0xce712790 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 580 # perform operation

# Testcase cp_imm_mul
li x3, 0x209a8308 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 584 # perform operation

# Testcase cp_imm_mul
li x16, 0x109e090e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 588 # perform operation

# Testcase cp_imm_mul
li x28, 0x9b6a3ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 592 # perform operation

# Testcase cp_imm_mul
li x11, 0xcca4d29e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 596 # perform operation

# Testcase cp_imm_mul
li x10, 0xba89a581 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 600 # perform operation

# Testcase cp_imm_mul
li x20, 0xa57e93d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 604 # perform operation

# Testcase cp_imm_mul
li x13, 0xc69f85fb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 608 # perform operation

# Testcase cp_imm_mul
li x6, 0x316355b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 612 # perform operation

# Testcase cp_imm_mul
li x24, 0x8a76fbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 616 # perform operation

# Testcase cp_imm_mul
li x30, 0xc1964299 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 620 # perform operation

# Testcase cp_imm_mul
li x11, 0xc333b870 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 624 # perform operation

# Testcase cp_imm_mul
li x8, 0xda903add # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 628 # perform operation

# Testcase cp_imm_mul
li x6, 0x89687fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 632 # perform operation

# Testcase cp_imm_mul
li x8, 0xda94ecd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 636 # perform operation

# Testcase cp_imm_mul
li x26, 0x425e7e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 640 # perform operation

# Testcase cp_imm_mul
li x6, 0xedef4eef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 644 # perform operation

# Testcase cp_imm_mul
li x1, 0xb6f5291e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 648 # perform operation

# Testcase cp_imm_mul
li x31, 0x9442808d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 652 # perform operation

# Testcase cp_imm_mul
li x8, 0x6042babd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 656 # perform operation

# Testcase cp_imm_mul
li x6, 0xee1846d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 660 # perform operation

# Testcase cp_imm_mul
li x7, 0xcec11cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 664 # perform operation

# Testcase cp_imm_mul
li x23, 0xf530fcf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 668 # perform operation

# Testcase cp_imm_mul
li x1, 0xc858dbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 672 # perform operation

# Testcase cp_imm_mul
li x9, 0x40e619ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 676 # perform operation

# Testcase cp_imm_mul
li x7, 0x8e947faa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 680 # perform operation

# Testcase cp_imm_mul
li x24, 0xee362bba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 684 # perform operation

# Testcase cp_imm_mul
li x9, 0xab9fbf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 688 # perform operation

# Testcase cp_imm_mul
li x23, 0x3b946ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 692 # perform operation

# Testcase cp_imm_mul
li x5, 0x48ca7a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 696 # perform operation

# Testcase cp_imm_mul
li x23, 0x4f0cd09a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 700 # perform operation

# Testcase cp_imm_mul
li x10, 0x726721b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 704 # perform operation

# Testcase cp_imm_mul
li x27, 0xf09f5083 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 708 # perform operation

# Testcase cp_imm_mul
li x5, 0xb2192db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 712 # perform operation

# Testcase cp_imm_mul
li x15, 0x02376a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 716 # perform operation

# Testcase cp_imm_mul
li x20, 0xd24c65c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 720 # perform operation

# Testcase cp_imm_mul
li x8, 0x304bd809 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 724 # perform operation

# Testcase cp_imm_mul
li x15, 0x146b23fb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 728 # perform operation

# Testcase cp_imm_mul
li x9, 0x6170bf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 732 # perform operation

# Testcase cp_imm_mul
li x21, 0x619cbc56 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 736 # perform operation

# Testcase cp_imm_mul
li x16, 0xfe6f1fae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 740 # perform operation

# Testcase cp_imm_mul
li x23, 0x9f14e72b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 744 # perform operation

# Testcase cp_imm_mul
li x19, 0x15057831 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 748 # perform operation

# Testcase cp_imm_mul
li x5, 0x03e435e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 752 # perform operation

# Testcase cp_imm_mul
li x21, 0x7ce9f85b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 756 # perform operation

# Testcase cp_imm_mul
li x10, 0xcabaa011 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 760 # perform operation

# Testcase cp_imm_mul
li x3, 0xfd50feb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 764 # perform operation

# Testcase cp_imm_mul
li x17, 0x4def6793 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 768 # perform operation

# Testcase cp_imm_mul
li x20, 0xaa53a456 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 772 # perform operation

# Testcase cp_imm_mul
li x3, 0x4e8e1bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 776 # perform operation

# Testcase cp_imm_mul
li x15, 0x004f1300 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 780 # perform operation

# Testcase cp_imm_mul
li x18, 0x05c96f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 784 # perform operation

# Testcase cp_imm_mul
li x12, 0x7d16d409 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 788 # perform operation

# Testcase cp_imm_mul
li x13, 0xd324956c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 792 # perform operation

# Testcase cp_imm_mul
li x28, 0x176f14f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 796 # perform operation

# Testcase cp_imm_mul
li x11, 0xae8d3bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 800 # perform operation

# Testcase cp_imm_mul
li x3, 0x59d3dda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 804 # perform operation

# Testcase cp_imm_mul
li x29, 0xff5e595f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 808 # perform operation

# Testcase cp_imm_mul
li x22, 0xee8da233 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 812 # perform operation

# Testcase cp_imm_mul
li x23, 0x629baf65 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 816 # perform operation

# Testcase cp_imm_mul
li x26, 0x9284cc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 820 # perform operation

# Testcase cp_imm_mul
li x16, 0xc3765f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 824 # perform operation

# Testcase cp_imm_mul
li x13, 0x879068a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 828 # perform operation

# Testcase cp_imm_mul
li x29, 0xb0e53626 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 832 # perform operation

# Testcase cp_imm_mul
li x12, 0x83c8cef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 836 # perform operation

# Testcase cp_imm_mul
li x15, 0x2919a36d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 840 # perform operation

# Testcase cp_imm_mul
li x3, 0x34fe2dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 844 # perform operation

# Testcase cp_imm_mul
li x9, 0x97196a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 848 # perform operation

# Testcase cp_imm_mul
li x26, 0x758937bd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 852 # perform operation

# Testcase cp_imm_mul
li x5, 0x05be08c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 856 # perform operation

# Testcase cp_imm_mul
li x25, 0xb3cf2f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 860 # perform operation

# Testcase cp_imm_mul
li x9, 0x3a669084 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 864 # perform operation

# Testcase cp_imm_mul
li x5, 0x83cc9510 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 868 # perform operation

# Testcase cp_imm_mul
li x5, 0xe98085d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 872 # perform operation

# Testcase cp_imm_mul
li x30, 0xa626d1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 876 # perform operation

# Testcase cp_imm_mul
li x10, 0x09141e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 880 # perform operation

# Testcase cp_imm_mul
li x3, 0xa61f3f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 884 # perform operation

# Testcase cp_imm_mul
li x27, 0xfbb825bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 888 # perform operation

# Testcase cp_imm_mul
li x26, 0xdd4dd9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 892 # perform operation

# Testcase cp_imm_mul
li x30, 0x97c47380 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 896 # perform operation

# Testcase cp_imm_mul
li x4, 0x30a1beaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 900 # perform operation

# Testcase cp_imm_mul
li x27, 0x381f8b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 904 # perform operation

# Testcase cp_imm_mul
li x4, 0xc07eb209 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 908 # perform operation

# Testcase cp_imm_mul
li x14, 0xe987d562 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 912 # perform operation

# Testcase cp_imm_mul
li x3, 0xa6d1d0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 916 # perform operation

# Testcase cp_imm_mul
li x26, 0x7a0e3ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 920 # perform operation

# Testcase cp_imm_mul
li x25, 0xd5f9f4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 924 # perform operation

# Testcase cp_imm_mul
li x7, 0xbbecc654 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 928 # perform operation

# Testcase cp_imm_mul
li x1, 0x73f4d8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 932 # perform operation

# Testcase cp_imm_mul
li x6, 0xd21028e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 936 # perform operation

# Testcase cp_imm_mul
li x3, 0x5df73ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 940 # perform operation

# Testcase cp_imm_mul
li x14, 0xb5e4016c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 944 # perform operation

# Testcase cp_imm_mul
li x26, 0x43ae8c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 948 # perform operation

# Testcase cp_imm_mul
li x29, 0x4eb8699d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 952 # perform operation

# Testcase cp_imm_mul
li x2, 0x5af938d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 956 # perform operation

# Testcase cp_imm_mul
li x9, 0xbec9e30d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 960 # perform operation

# Testcase cp_imm_mul
li x23, 0xdee42967 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 964 # perform operation

# Testcase cp_imm_mul
li x14, 0xca485a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 968 # perform operation

# Testcase cp_imm_mul
li x29, 0x61869b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 972 # perform operation

# Testcase cp_imm_mul
li x25, 0x4c9b0bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 976 # perform operation

# Testcase cp_imm_mul
li x5, 0x5dc10400 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 980 # perform operation

# Testcase cp_imm_mul
li x19, 0x5d288c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 984 # perform operation

# Testcase cp_imm_mul
li x6, 0x01c59c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 988 # perform operation

# Testcase cp_imm_mul
li x23, 0x682dd1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 992 # perform operation

# Testcase cp_imm_mul
li x5, 0xa935a8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 996 # perform operation

# Testcase cp_imm_mul
li x2, 0x6390b1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 1000 # perform operation

# Testcase cp_imm_mul
li x1, 0xfc62783e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 1004 # perform operation

# Testcase cp_imm_mul
li x16, 0x1cf6a096 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 1008 # perform operation

# Testcase cp_imm_mul
li x16, 0x2a1df5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 1012 # perform operation

# Testcase cp_imm_mul
li x20, 0xbb39a5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 1016 # perform operation

# Testcase cp_imm_mul
li x7, 0x259e0beb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 1020 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
