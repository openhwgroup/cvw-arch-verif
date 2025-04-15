///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicsr/WALLY-COV-csrrsi.S
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

    
# Testcase cp_rd (Test destination rd = x0)
li x14, 0x3f9735034ae0d906 # initialize rs1
csrrsi x0, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0xca5347d0781dabab # initialize rs1
csrrsi x1, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x9844084deb63fbb6 # initialize rs1
csrrsi x2, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
li x5, 0xb8487c83c7ec253a # initialize rs1
csrrsi x3, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x9fccc501c2f650a4 # initialize rs1
csrrsi x4, mscratch, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x613880199d787f19 # initialize rs1
csrrsi x5, mscratch, 26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xe10490ebde6ddd1c # initialize rs1
csrrsi x6, mscratch, 4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x3995803b59982c38 # initialize rs1
csrrsi x7, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0xc7d097d1859d2b72 # initialize rs1
csrrsi x8, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xfcd57e586d13a329 # initialize rs1
csrrsi x9, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x53ac907f0a118588 # initialize rs1
csrrsi x10, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0xe01f7ed088d9d341 # initialize rs1
csrrsi x11, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x3495ec4c7dde7281 # initialize rs1
csrrsi x12, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0xaa4cd02461bc82b3 # initialize rs1
csrrsi x13, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x99c96c55290945e2 # initialize rs1
csrrsi x14, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xe11cabd9fe420546 # initialize rs1
csrrsi x15, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x40174629c556ce28 # initialize rs1
csrrsi x16, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
li x8, 0xa7edea041e462fe5 # initialize rs1
csrrsi x17, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x4f44eeecf0f144d1 # initialize rs1
csrrsi x18, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x0183f4afe66c427e # initialize rs1
csrrsi x19, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x5f2283e7d0c03407 # initialize rs1
csrrsi x20, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x954983be8e51b91a # initialize rs1
csrrsi x21, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
li x12, 0x012d7b484e9ddab6 # initialize rs1
csrrsi x22, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0xfbf250d61e960425 # initialize rs1
csrrsi x23, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0x16db96053509637c # initialize rs1
csrrsi x24, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x9914942e40f4a6ed # initialize rs1
csrrsi x25, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x86941a82d7f9b4e0 # initialize rs1
csrrsi x26, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0x64b35f498c1631c6 # initialize rs1
csrrsi x27, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xf468a3e5eb71d0da # initialize rs1
csrrsi x28, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xb5fac9577df1cdf2 # initialize rs1
csrrsi x29, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x905cc1c54383cbbe # initialize rs1
csrrsi x30, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x03217f416a432f38 # initialize rs1
csrrsi x31, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_uimm_5 (Test bit = 0)
li x13, 0x72469de9c2bd6380 # initialize rs1
csrrsi x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cp_uimm_5 (Test bit = 1)
li x2, 0xbb544d73c6de2d11 # initialize rs1
csrrsi x25, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cp_uimm_5 (Test bit = 2)
li x10, 0x9383f393919c20f9 # initialize rs1
csrrsi x19, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_uimm_5 (Test bit = 3)
li x26, 0x3f6b3fe7ca161ad6 # initialize rs1
csrrsi x10, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cp_uimm_5 (Test bit = 4)
li x14, 0xb8333e5e7e45f8c4 # initialize rs1
csrrsi x18, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 288)

# Testcase cp_uimm_5 (Test bit = 5)
li x18, 0xb99c270ee3f5c585 # initialize rs1
csrrsi x3, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cp_uimm_5 (Test bit = 6)
li x19, 0x91ccc60eb6c2ef2e # initialize rs1
csrrsi x1, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cp_uimm_5 (Test bit = 7)
li x18, 0x751c7c35c84a023d # initialize rs1
csrrsi x29, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cp_uimm_5 (Test bit = 8)
li x11, 0xfce4b6c43cb64326 # initialize rs1
csrrsi x6, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 320)

# Testcase cp_uimm_5 (Test bit = 9)
li x21, 0x0f8ef18a0f19514d # initialize rs1
csrrsi x5, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_uimm_5 (Test bit = 10)
li x5, 0x646a1bf1ba1a4d6d # initialize rs1
csrrsi x6, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cp_uimm_5 (Test bit = 11)
li x23, 0x3c65e674b545110c # initialize rs1
csrrsi x17, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cp_uimm_5 (Test bit = 12)
li x14, 0x765cfea914fff226 # initialize rs1
csrrsi x30, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 352)

# Testcase cp_uimm_5 (Test bit = 13)
li x19, 0x75de4ea161c1eae9 # initialize rs1
csrrsi x3, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cp_uimm_5 (Test bit = 14)
li x13, 0xef7b940322da2147 # initialize rs1
csrrsi x27, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_uimm_5 (Test bit = 15)
li x29, 0x28c1795c62a58a10 # initialize rs1
csrrsi x30, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_uimm_5 (Test bit = 16)
li x18, 0x7907cb0641cd94c1 # initialize rs1
csrrsi x6, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_uimm_5 (Test bit = 17)
li x6, 0x6c22fc1c3c25fd56 # initialize rs1
csrrsi x25, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cp_uimm_5 (Test bit = 18)
li x8, 0x131a632defd8d1ff # initialize rs1
csrrsi x23, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_uimm_5 (Test bit = 19)
li x16, 0x649e232d4114a013 # initialize rs1
csrrsi x11, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_uimm_5 (Test bit = 20)
li x16, 0x08f8e16194549dc7 # initialize rs1
csrrsi x1, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_uimm_5 (Test bit = 21)
li x5, 0x5677387396e8d8f1 # initialize rs1
csrrsi x6, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_uimm_5 (Test bit = 22)
li x30, 0xbb85f24933a6a192 # initialize rs1
csrrsi x26, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_uimm_5 (Test bit = 23)
li x27, 0x7ccc02b3ee825414 # initialize rs1
csrrsi x9, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_uimm_5 (Test bit = 24)
li x30, 0x3edbb56e5587c9dd # initialize rs1
csrrsi x1, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cp_uimm_5 (Test bit = 25)
li x24, 0x98b263276a6c529f # initialize rs1
csrrsi x27, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_uimm_5 (Test bit = 26)
li x17, 0x808c491497fd9a40 # initialize rs1
csrrsi x21, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 464)

# Testcase cp_uimm_5 (Test bit = 27)
li x26, 0x032fa44c6d6ed43c # initialize rs1
csrrsi x3, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_uimm_5 (Test bit = 28)
li x30, 0x644012bfe26006d1 # initialize rs1
csrrsi x9, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_uimm_5 (Test bit = 29)
li x31, 0xd943ec4739f1c7fc # initialize rs1
csrrsi x30, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_uimm_5 (Test bit = 30)
li x24, 0x8b738d892f68bc2b # initialize rs1
csrrsi x25, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cp_uimm_5 (Test bit = 31)
li x16, 0x0072a851ded24f97 # initialize rs1
csrrsi x9, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x23, x25 # perform first operation
csrrsi x21, mscratch, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x25, x22 # perform first operation
csrrsi x14, mscratch, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x11, x29 # perform first operation
csrrsi x19, mscratch, 17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x1, x19 # perform first operation
csrrsi x21, mscratch, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x28, x8 # perform first operation
csrrsi x6, mscratch, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x12, x29 # perform first operation
csrrsi x19, mscratch, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x22, x18 # perform first operation
csrrsi x22, mscratch, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x31, x8 # perform first operation
csrrsi x8, mscratch, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x30, x1 # perform first operation
csrrsi x24, mscratch, 9 # perform second (triggering) operation

.EQU SIGSIZE,512


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
