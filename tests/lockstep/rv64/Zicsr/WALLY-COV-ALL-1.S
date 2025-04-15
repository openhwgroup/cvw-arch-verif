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
// Tests from: WALLY-COV-csrrsi.S
// ******************


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

#.EQU SIGSIZE,512


// ******************
// Tests from: WALLY-COV-csrrw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x00571323577480e6 # initialize rs1
csrrw x7, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x192085f742663488 # initialize rs1
csrrw x12, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x65e7ea298947ca07 # initialize rs1
csrrw x16, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb9d36cbfbb20efef # initialize rs1
csrrw x24, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf7f9ca3e82baef98 # initialize rs1
csrrw x30, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x508f1095a5a84919 # initialize rs1
csrrw x22, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x15366bbe1e3fa5fb # initialize rs1
csrrw x10, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x440bc1b895202bdf # initialize rs1
csrrw x21, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x356e94f9121cd403 # initialize rs1
csrrw x12, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x43cd608f2679771c # initialize rs1
csrrw x27, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xa182d8b115957412 # initialize rs1
csrrw x18, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0a103f85d3df3ba6 # initialize rs1
csrrw x28, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0481452c419390a4 # initialize rs1
csrrw x13, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x739802adc2a2fbf1 # initialize rs1
csrrw x18, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4e3c5cea02597596 # initialize rs1
csrrw x8, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x78a53cd8d6aefef2 # initialize rs1
csrrw x27, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x1dfc022aa861b010 # initialize rs1
csrrw x18, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x7eee832e4563af29 # initialize rs1
csrrw x31, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xab58d28a6d680f86 # initialize rs1
csrrw x13, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf8e653b8e10e0091 # initialize rs1
csrrw x2, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x544d7a4b08a905e6 # initialize rs1
csrrw x23, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x030851ccf22eb91b # initialize rs1
csrrw x20, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x22a37b224533f05f # initialize rs1
csrrw x23, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x85947eedf521b17d # initialize rs1
csrrw x20, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xae2b4d2d1cf65de0 # initialize rs1
csrrw x14, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x44dab9b3a167cb93 # initialize rs1
csrrw x14, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x41a1d9bfe0cb0e13 # initialize rs1
csrrw x10, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x38c112fbfb507ff0 # initialize rs1
csrrw x10, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb761e2763365956c # initialize rs1
csrrw x26, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xbf66603c33a68f6a # initialize rs1
csrrw x2, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x45116ec28bba479a # initialize rs1
csrrw x7, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x885df8ee9d5c90ca # initialize rs1
csrrw x10, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x562a1948b412800c # initialize rs1
csrrw x0, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x8d980693b609d9fc # initialize rs1
csrrw x1, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0x3ce1afa45e96ff90 # initialize rs1
csrrw x2, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0xa34b898d0d984e79 # initialize rs1
csrrw x3, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xeadeabf408ef477d # initialize rs1
csrrw x4, mscratch, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x213829839190a6c7 # initialize rs1
csrrw x5, mscratch, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x8be1e636dcb0f4d3 # initialize rs1
csrrw x6, mscratch, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xfce082d726853b9b # initialize rs1
csrrw x7, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0x3c793e7589f8af41 # initialize rs1
csrrw x8, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x16, 0xeaad49772a6f76cd # initialize rs1
csrrw x9, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x28, 0x7d38e649717ae11c # initialize rs1
csrrw x10, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x989ccb02ace5e333 # initialize rs1
csrrw x11, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0xee5f9b1bbc70f231 # initialize rs1
csrrw x12, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x4a61240a435bb154 # initialize rs1
csrrw x13, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x30, 0x39b2885f4046cb8d # initialize rs1
csrrw x14, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x26c04bce47189d8f # initialize rs1
csrrw x15, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0xd20ce6de1f8eea52 # initialize rs1
csrrw x16, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x8351f58745c27ea5 # initialize rs1
csrrw x17, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0x18e0f3b51a7f7081 # initialize rs1
csrrw x18, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0xc6775bde0091f09e # initialize rs1
csrrw x19, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x3922ac39263445b2 # initialize rs1
csrrw x20, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0xa3f56074fcd084fa # initialize rs1
csrrw x21, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xc2250b260a992f44 # initialize rs1
csrrw x22, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0xee7109a8951a9989 # initialize rs1
csrrw x23, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0xeef24ced92a86d92 # initialize rs1
csrrw x24, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x62d374d74f273862 # initialize rs1
csrrw x25, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x29845a07f3ef85ea # initialize rs1
csrrw x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0x124ebe888efb37b6 # initialize rs1
csrrw x27, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x1771d52ad0d4f142 # initialize rs1
csrrw x28, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xb8f4878b324505be # initialize rs1
csrrw x29, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x2, 0xe8aa4e108b71d68e # initialize rs1
csrrw x30, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x02d5d7d57803be22 # initialize rs1
csrrw x31, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x0000000000000000 # initialize rs1
csrrw x16, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x0000000000000001 # initialize rs1
csrrw x5, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
csrrw x25, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
csrrw x15, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
csrrw x5, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
csrrw x26, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
csrrw x1, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
csrrw x13, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
csrrw x16, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
csrrw x18, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
csrrw x1, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
csrrw x12, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
csrrw x25, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
csrrw x18, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
csrrw x21, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001 # initialize rs1
csrrw x7, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa60fdf4f1010b257 # initialize rs1
csrrw x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa642ae4550449f4b # initialize rs1
csrrw x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xda1b01db23e6a47c # initialize rs1
csrrw x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x91926cf608573fab # initialize rs1
csrrw x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9afc5613b596ba21 # initialize rs1
csrrw x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x74b5a5c4b4c350ac # initialize rs1
csrrw x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf30a681a4f465a15 # initialize rs1
csrrw x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcd5ff51d04db8c61 # initialize rs1
csrrw x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x89815c3ff25c3021 # initialize rs1
csrrw x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8cb6f19d208b8f7f # initialize rs1
csrrw x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x589e4731eb93e5dc # initialize rs1
csrrw x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa04d4b1069b5922a # initialize rs1
csrrw x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb352af2cae195150 # initialize rs1
csrrw x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x39b67980faacc296 # initialize rs1
csrrw x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x34dd3a57c9376b68 # initialize rs1
csrrw x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x977bf789ec1c5e57 # initialize rs1
csrrw x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x93915f59c1c07198 # initialize rs1
csrrw x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc0e1639a6dbad9ab # initialize rs1
csrrw x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2514d514e9502e3b # initialize rs1
csrrw x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6bb38cfa18172e66 # initialize rs1
csrrw x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd6c233c35615af31 # initialize rs1
csrrw x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8df354373c744793 # initialize rs1
csrrw x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa10960d3deef1767 # initialize rs1
csrrw x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5da7567fac580e37 # initialize rs1
csrrw x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6b22579806566610 # initialize rs1
csrrw x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x688ea50eee5cfa1b # initialize rs1
csrrw x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x990f00ddee909289 # initialize rs1
csrrw x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7c95ec1ef5e5b642 # initialize rs1
csrrw x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x32202631832d763a # initialize rs1
csrrw x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1e314aeb3261516f # initialize rs1
csrrw x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xfac7df901891873a # initialize rs1
csrrw x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2ad1de609ed33bda # initialize rs1
csrrw x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x2, x3 # perform first operation
csrrw x12, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x12, x16 # perform first operation
csrrw x11, mscratch, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x14 # perform first operation
csrrw x24, mscratch, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x22, x11 # perform first operation
csrrw x22, mscratch, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x8, x18 # perform first operation
csrrw x12, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x20, x17 # perform first operation
csrrw x20, mscratch, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x14, x3 # perform first operation
csrrw x30, mscratch, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x24, x28 # perform first operation
csrrw x9, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x6, x3 # perform first operation
csrrw x26, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x6, x10 # perform first operation
csrrw x6, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x14, x13 # perform first operation
csrrw x13, mscratch, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x23, x26 # perform first operation
csrrw x21, mscratch, x17 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-csrrs.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xcccd608f6b8bcccb # initialize rs1
csrrs x27, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x1edda16aa306e0d1 # initialize rs1
csrrs x9, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1fde4d75ba50d11a # initialize rs1
csrrs x24, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb76df976f3da2429 # initialize rs1
csrrs x31, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdae2d1e774bf138f # initialize rs1
csrrs x13, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1a750277f157b59a # initialize rs1
csrrs x4, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbdd673a42a3cf7a1 # initialize rs1
csrrs x14, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xca5db26312507ed3 # initialize rs1
csrrs x15, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x872853d5a0147803 # initialize rs1
csrrs x14, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xed2fe7c062bdc882 # initialize rs1
csrrs x13, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x091ffc722eed0aec # initialize rs1
csrrs x15, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7fa96afee9bf357b # initialize rs1
csrrs x8, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf616c8fc95ad73ea # initialize rs1
csrrs x30, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x34805c3f860db2da # initialize rs1
csrrs x5, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x73d68475d9593c31 # initialize rs1
csrrs x6, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xda797082dae15e45 # initialize rs1
csrrs x10, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x83145f966863e591 # initialize rs1
csrrs x9, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x75cc2b12d6f1602b # initialize rs1
csrrs x7, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1e3aa558a36dbd31 # initialize rs1
csrrs x22, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0f45208a472ed434 # initialize rs1
csrrs x21, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4ea1bccf94fba778 # initialize rs1
csrrs x27, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5431e81ada1f9f0a # initialize rs1
csrrs x13, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xce05e28be9b8b760 # initialize rs1
csrrs x23, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x31c2b08d6df8b454 # initialize rs1
csrrs x11, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0b79e783ebcd8fb4 # initialize rs1
csrrs x23, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcbec569fe076f432 # initialize rs1
csrrs x27, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x32a22f7a50296058 # initialize rs1
csrrs x10, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeb0c64cdce9572b2 # initialize rs1
csrrs x22, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xeb62ef2f1b29e171 # initialize rs1
csrrs x18, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x623612d01bb834cd # initialize rs1
csrrs x27, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xdbfe3deae4dd579e # initialize rs1
csrrs x15, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf45e78fcb9425052 # initialize rs1
csrrs x22, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0xab5f7ffafd2fdc67 # initialize rs1
csrrs x0, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x3f8ad2f9bbd7210f # initialize rs1
csrrs x1, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x28, 0xc5aaae35f9eb14d2 # initialize rs1
csrrs x2, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x307db8120d2b4b89 # initialize rs1
csrrs x3, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x2d26353718ef0ad9 # initialize rs1
csrrs x4, mscratch, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x6c2af6c7bfacad8f # initialize rs1
csrrs x5, mscratch, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x87eadf949b49d1e7 # initialize rs1
csrrs x6, mscratch, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xcf7146404ea2e9a9 # initialize rs1
csrrs x7, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x6d8f180446d0ef46 # initialize rs1
csrrs x8, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0xb613f4b7225d5316 # initialize rs1
csrrs x9, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0xaef9b654e58f7e82 # initialize rs1
csrrs x10, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x55d91e7562a80056 # initialize rs1
csrrs x11, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x31253d00db364375 # initialize rs1
csrrs x12, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x072efbfffeaa8108 # initialize rs1
csrrs x13, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x30, 0xb9d5fec4ccb7c729 # initialize rs1
csrrs x14, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xc177d615cfd3df7a # initialize rs1
csrrs x15, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x58cd044fd47b4952 # initialize rs1
csrrs x16, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x51a5f260866e5df2 # initialize rs1
csrrs x17, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x17e3921a0ece7fc7 # initialize rs1
csrrs x18, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0xc15858ef936c99d3 # initialize rs1
csrrs x19, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0xb6e397937c96aba7 # initialize rs1
csrrs x20, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x8ed8330e64c4a496 # initialize rs1
csrrs x21, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x212a3ab7e9d6827d # initialize rs1
csrrs x22, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0xde1cbc70a54d9483 # initialize rs1
csrrs x23, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x5a4c73e8f274e30d # initialize rs1
csrrs x24, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x521f1afc5fcccc85 # initialize rs1
csrrs x25, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x0af6323d0af1904b # initialize rs1
csrrs x26, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0xea5a1a5c92af2924 # initialize rs1
csrrs x27, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x574111f510f1fc9f # initialize rs1
csrrs x28, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd34817da297d3861 # initialize rs1
csrrs x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x6ba776e704473e71 # initialize rs1
csrrs x30, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x77500227c7da08e9 # initialize rs1
csrrs x31, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
csrrs x12, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
csrrs x20, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rs1
csrrs x20, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
csrrs x24, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
csrrs x18, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
csrrs x7, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
csrrs x19, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
csrrs x26, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
csrrs x26, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
csrrs x6, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
csrrs x6, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
csrrs x15, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
csrrs x25, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
csrrs x1, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x0000000100000000 # initialize rs1
csrrs x6, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
csrrs x17, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5560d0c7b67c8c19 # initialize rs1
csrrs x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x89beaa39dfd9a0a8 # initialize rs1
csrrs x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x91f7e41420a39736 # initialize rs1
csrrs x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0e6c44d8b6949d99 # initialize rs1
csrrs x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x83698b43c3e1e513 # initialize rs1
csrrs x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf001ea260a4fbd18 # initialize rs1
csrrs x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x99a26c6c91a48423 # initialize rs1
csrrs x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x517f6eabae8b1e73 # initialize rs1
csrrs x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x333c9205463af98b # initialize rs1
csrrs x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2aa24a43a20e6881 # initialize rs1
csrrs x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x03dfcf8e80b11f8b # initialize rs1
csrrs x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x257058aabf98cb38 # initialize rs1
csrrs x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfc483d30bdfd41ab # initialize rs1
csrrs x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2937519f9d691ffe # initialize rs1
csrrs x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbea2ffad90f68c3d # initialize rs1
csrrs x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1ce3c16bcf47de0b # initialize rs1
csrrs x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xba218ddb682123b0 # initialize rs1
csrrs x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x893cf34f81c6c3ef # initialize rs1
csrrs x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3720c57087acc5c6 # initialize rs1
csrrs x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf4995bd290d7b414 # initialize rs1
csrrs x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb6125cdcd09b1793 # initialize rs1
csrrs x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe04e573532ad840e # initialize rs1
csrrs x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x70dda30c5ed630fd # initialize rs1
csrrs x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb5c418def4adc9c2 # initialize rs1
csrrs x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0f80a7b2675e8fc6 # initialize rs1
csrrs x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaf9b4234d06f50f4 # initialize rs1
csrrs x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb2078d2c847ef60a # initialize rs1
csrrs x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3c26f747aa50a098 # initialize rs1
csrrs x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa490005da6e5754c # initialize rs1
csrrs x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3f6007d24d795424 # initialize rs1
csrrs x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1a5f77a98245606a # initialize rs1
csrrs x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xed9f5b76fc7be707 # initialize rs1
csrrs x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x20, x21 # perform first operation
csrrs x31, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x13, x15 # perform first operation
csrrs x10, mscratch, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x28, x18 # perform first operation
csrrs x6, mscratch, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x14, x1 # perform first operation
csrrs x3, mscratch, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x16 # perform first operation
csrrs x28, mscratch, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x16, x20 # perform first operation
csrrs x20, mscratch, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x1, x6 # perform first operation
csrrs x22, mscratch, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x31, x29 # perform first operation
csrrs x5, mscratch, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x14, x11 # perform first operation
csrrs x2, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x6, x25 # perform first operation
csrrs x6, mscratch, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x24, x28 # perform first operation
csrrs x28, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x24, x10 # perform first operation
csrrs x9, mscratch, x14 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-csrrc.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x71d8f5a071bef660 # initialize rs1
csrrc x22, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc209f1484e2ab397 # initialize rs1
csrrc x21, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x243b3f3d65e050be # initialize rs1
csrrc x8, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe86b97df6fe7f54c # initialize rs1
csrrc x23, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed9fae384bd950ad # initialize rs1
csrrc x30, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x70e356b5f97e2d52 # initialize rs1
csrrc x27, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x15e6198c73c7d989 # initialize rs1
csrrc x10, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xda93f4459d2e595f # initialize rs1
csrrc x14, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xc94cf5aa3c3cd53e # initialize rs1
csrrc x10, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x05815ca58f7811f3 # initialize rs1
csrrc x11, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8a61c3b50a1d13bb # initialize rs1
csrrc x3, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xaa3860e2805b870e # initialize rs1
csrrc x6, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe61b22901ecf3fdd # initialize rs1
csrrc x25, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x2701043e63a0faf1 # initialize rs1
csrrc x18, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6a0b4e507a4a6676 # initialize rs1
csrrc x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4ea84f67a40c4985 # initialize rs1
csrrc x21, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd5c07241ac0b05ba # initialize rs1
csrrc x22, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc7247854768fde47 # initialize rs1
csrrc x2, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfab5f7ea478e3ca4 # initialize rs1
csrrc x17, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x5bf17dc39eb49de6 # initialize rs1
csrrc x17, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x17b13428b7ea7739 # initialize rs1
csrrc x14, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x74c48fbe95809809 # initialize rs1
csrrc x17, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x7408abbef79d4e52 # initialize rs1
csrrc x7, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb710ebd3da09e1d8 # initialize rs1
csrrc x10, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6aaab7c345845467 # initialize rs1
csrrc x17, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7e66c2c8aa42321b # initialize rs1
csrrc x14, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe26741d4118bd1f5 # initialize rs1
csrrc x3, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x97f7c9875bdd24c5 # initialize rs1
csrrc x5, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x436dca2df2622de1 # initialize rs1
csrrc x6, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcde5248b58c5f8b9 # initialize rs1
csrrc x11, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa5dc5b2fab1ae11e # initialize rs1
csrrc x7, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6d64953d73e29e99 # initialize rs1
csrrc x1, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0x1061d0c7a7e2b232 # initialize rs1
csrrc x0, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x182ad5dd3845c247 # initialize rs1
csrrc x1, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x757c0b977a8c0a36 # initialize rs1
csrrc x2, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0xdeb3948fbb8df269 # initialize rs1
csrrc x3, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x61ec09dbc3e85dc6 # initialize rs1
csrrc x4, mscratch, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x9c1b8d8910b7f3c7 # initialize rs1
csrrc x5, mscratch, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x646ba46cc9a362a3 # initialize rs1
csrrc x6, mscratch, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x69d3210f955bf0d7 # initialize rs1
csrrc x7, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0x15d08bd6090aad96 # initialize rs1
csrrc x8, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0xc1857fd98caabf8f # initialize rs1
csrrc x9, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x2d36d340069bbb21 # initialize rs1
csrrc x10, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0xd8cdcb764353b01e # initialize rs1
csrrc x11, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x7ca25597611b8ed3 # initialize rs1
csrrc x12, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x54f0f2fe8bfde7ba # initialize rs1
csrrc x13, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x42fa775badca5362 # initialize rs1
csrrc x14, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x9277fd1152bdf7c8 # initialize rs1
csrrc x15, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x8ceb80addc77a08b # initialize rs1
csrrc x16, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x182eec404f74e177 # initialize rs1
csrrc x17, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb92b64a2fbbf7342 # initialize rs1
csrrc x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x018bef3f1119f3c2 # initialize rs1
csrrc x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0xc2a5cc6daffa3a0b # initialize rs1
csrrc x20, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x05698288b01a4d19 # initialize rs1
csrrc x21, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x032f31bde5a98b10 # initialize rs1
csrrc x22, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x0c78b1b828d3724c # initialize rs1
csrrc x23, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x10de966c27af5077 # initialize rs1
csrrc x24, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x1faeb3913c52aed0 # initialize rs1
csrrc x25, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0xe91a0651b3f695a7 # initialize rs1
csrrc x26, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xeac1807d26049d49 # initialize rs1
csrrc x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x56f8099a4e9f71bf # initialize rs1
csrrc x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0xae4ba38d5ec72119 # initialize rs1
csrrc x29, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x64f15b7b6418c87f # initialize rs1
csrrc x30, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0xa2ec76a11aecce95 # initialize rs1
csrrc x31, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x0000000000000000 # initialize rs1
csrrc x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
csrrc x12, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
csrrc x30, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
csrrc x29, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x29, 0x8000000000000001 # initialize rs1
csrrc x7, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
csrrc x9, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
csrrc x11, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
csrrc x23, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
csrrc x8, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
csrrc x21, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
csrrc x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
csrrc x7, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
csrrc x27, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
csrrc x24, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
csrrc x19, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
csrrc x3, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x507734a1ce0ad074 # initialize rs1
csrrc x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb1b83792e3d50329 # initialize rs1
csrrc x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3631061af0a2dadf # initialize rs1
csrrc x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0cd7cbd9f5394877 # initialize rs1
csrrc x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc23bba7ea7864817 # initialize rs1
csrrc x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdeb2cd7227ae0513 # initialize rs1
csrrc x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4e1dd7fc4de78dd7 # initialize rs1
csrrc x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8ab7b12297bd0b61 # initialize rs1
csrrc x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x364583cc8ec11011 # initialize rs1
csrrc x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xff6a4776a95337f8 # initialize rs1
csrrc x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9e31a9c175cab233 # initialize rs1
csrrc x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6d05a3d492ea25ee # initialize rs1
csrrc x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8b07260dbeb51589 # initialize rs1
csrrc x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd7e6ebabc30b2c10 # initialize rs1
csrrc x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x63a0a90f7fc2e1b7 # initialize rs1
csrrc x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x60bd3405659dab6c # initialize rs1
csrrc x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7e03eb2f54604b16 # initialize rs1
csrrc x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x74da35ede29a14c3 # initialize rs1
csrrc x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x46d8f916b67e7962 # initialize rs1
csrrc x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x531cf64db6cf1b28 # initialize rs1
csrrc x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd6cd845967ea80ad # initialize rs1
csrrc x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xcc2459dbdfc8302d # initialize rs1
csrrc x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xfcf8bfeb4b0c55ad # initialize rs1
csrrc x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xed4e82cbaf1e02f8 # initialize rs1
csrrc x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x22104f339fbe3823 # initialize rs1
csrrc x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3b905a682ad13ef9 # initialize rs1
csrrc x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf37d4933cdb6cd7e # initialize rs1
csrrc x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2c438270054b5c2d # initialize rs1
csrrc x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x153e35350f479de8 # initialize rs1
csrrc x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf2758f8e6c8d09d6 # initialize rs1
csrrc x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3eccf12e869be15c # initialize rs1
csrrc x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe1b2a5bc79d17b7d # initialize rs1
csrrc x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x18, x13 # perform first operation
csrrc x6, mscratch, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x1, x11 # perform first operation
csrrc x16, mscratch, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x9, x18 # perform first operation
csrrc x28, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x3, x5 # perform first operation
csrrc x5, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x9, x31 # perform first operation
csrrc x23, mscratch, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x18, x22 # perform first operation
csrrc x11, mscratch, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x5, x1 # perform first operation
csrrc x15, mscratch, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x5, x28 # perform first operation
csrrc x11, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x12, x31 # perform first operation
csrrc x8, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x1, x11 # perform first operation
csrrc x1, mscratch, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x2, x13 # perform first operation
csrrc x13, mscratch, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x21, x10 # perform first operation
csrrc x29, mscratch, x11 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-csrrci.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x0)
li x22, 0x490f4c653a64fad8 # initialize rs1
csrrci x0, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0x8d7183804e5f4349 # initialize rs1
csrrci x1, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x020c15aabfb4b459 # initialize rs1
csrrci x2, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x091d8259240e27d0 # initialize rs1
csrrci x3, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x2c28c232e817b579 # initialize rs1
csrrci x4, mscratch, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
li x25, 0x2bef3471590f801d # initialize rs1
csrrci x5, mscratch, 15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x8fd8a330663c8c18 # initialize rs1
csrrci x6, mscratch, 4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xd6402f75b3784c4b # initialize rs1
csrrci x7, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x88b816648604b5e1 # initialize rs1
csrrci x8, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7d1ab3352219a3f6 # initialize rs1
csrrci x9, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x8b98b78c9f8f84d4 # initialize rs1
csrrci x10, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x599136d86a405abc # initialize rs1
csrrci x11, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0xb1fc2559f48b7a3c # initialize rs1
csrrci x12, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x43d61406165f1ec8 # initialize rs1
csrrci x13, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
li x26, 0x47d32dd5ec9e2b07 # initialize rs1
csrrci x14, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xe1b47f8d488f9791 # initialize rs1
csrrci x15, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0xc523c9e8477fbd48 # initialize rs1
csrrci x16, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x4cbe414ad941dc0a # initialize rs1
csrrci x17, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x22d804ed5bb2d95d # initialize rs1
csrrci x18, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x7ca4a6734e9e6a7a # initialize rs1
csrrci x19, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x71cf009ece4437c5 # initialize rs1
csrrci x20, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x9a9fc0f66cdec391 # initialize rs1
csrrci x21, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x341d328989dcf733 # initialize rs1
csrrci x22, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0xd6047f193d9fae4c # initialize rs1
csrrci x23, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x0b20a37d9a77ac62 # initialize rs1
csrrci x24, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xae922cdd49f870e6 # initialize rs1
csrrci x25, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x2fba3293f3fadcff # initialize rs1
csrrci x26, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0xd184d6b38b25681d # initialize rs1
csrrci x27, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0x15789415115bbbe7 # initialize rs1
csrrci x28, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x3538f19088265be0 # initialize rs1
csrrci x29, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x8551ff5df25edbaa # initialize rs1
csrrci x30, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x818a59e3177dc33f # initialize rs1
csrrci x31, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_uimm_5 (Test bit = 0)
li x11, 0xc7088be55fe086b8 # initialize rs1
csrrci x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cp_uimm_5 (Test bit = 1)
li x13, 0xd1bd07b85f5433b1 # initialize rs1
csrrci x27, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cp_uimm_5 (Test bit = 2)
li x18, 0xed4b95109c9802d0 # initialize rs1
csrrci x11, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_uimm_5 (Test bit = 3)
li x16, 0xbb1069e8ae8ff70b # initialize rs1
csrrci x17, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cp_uimm_5 (Test bit = 4)
li x26, 0xbc1d6036aaf2c9b3 # initialize rs1
csrrci x15, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cp_uimm_5 (Test bit = 5)
li x24, 0x183761bd5d6778e2 # initialize rs1
csrrci x31, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cp_uimm_5 (Test bit = 6)
li x31, 0x494ef80ea02f6791 # initialize rs1
csrrci x16, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 304)

# Testcase cp_uimm_5 (Test bit = 7)
li x3, 0x653caee59b5633a2 # initialize rs1
csrrci x6, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_uimm_5 (Test bit = 8)
li x1, 0x2d942520321b70c3 # initialize rs1
csrrci x24, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_uimm_5 (Test bit = 9)
li x3, 0x878a8960dbf55d4e # initialize rs1
csrrci x13, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_uimm_5 (Test bit = 10)
li x29, 0x74ae4684462c45a8 # initialize rs1
csrrci x3, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cp_uimm_5 (Test bit = 11)
li x19, 0x72c8d9ddad35daee # initialize rs1
csrrci x2, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cp_uimm_5 (Test bit = 12)
li x2, 0x805e548547739702 # initialize rs1
csrrci x9, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cp_uimm_5 (Test bit = 13)
li x15, 0x560717d00548d22e # initialize rs1
csrrci x22, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_uimm_5 (Test bit = 14)
li x14, 0xeaaf5aab445e7e64 # initialize rs1
csrrci x30, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cp_uimm_5 (Test bit = 15)
li x30, 0x4a1b76769e0a3397 # initialize rs1
csrrci x9, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_uimm_5 (Test bit = 16)
li x11, 0x885263408e9d541f # initialize rs1
csrrci x22, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cp_uimm_5 (Test bit = 17)
li x28, 0xa0a9df6a8c45251c # initialize rs1
csrrci x30, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cp_uimm_5 (Test bit = 18)
li x26, 0x3569db925a774ff7 # initialize rs1
csrrci x2, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_uimm_5 (Test bit = 19)
li x22, 0x85debce10b069716 # initialize rs1
csrrci x21, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_uimm_5 (Test bit = 20)
li x12, 0xe676d6fc22ae6aa5 # initialize rs1
csrrci x8, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cp_uimm_5 (Test bit = 21)
li x26, 0x90800f03a95c7305 # initialize rs1
csrrci x21, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_uimm_5 (Test bit = 22)
li x7, 0x06ac2851741d6ceb # initialize rs1
csrrci x26, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 432)

# Testcase cp_uimm_5 (Test bit = 23)
li x25, 0x4e35cfb84b9d0384 # initialize rs1
csrrci x7, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cp_uimm_5 (Test bit = 24)
li x11, 0xb3961e17c9bbdc06 # initialize rs1
csrrci x27, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cp_uimm_5 (Test bit = 25)
li x8, 0xf904de35e3f98e65 # initialize rs1
csrrci x18, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 456)

# Testcase cp_uimm_5 (Test bit = 26)
li x5, 0x19664813067f3d43 # initialize rs1
csrrci x17, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_uimm_5 (Test bit = 27)
li x15, 0x1bf2d017a2688468 # initialize rs1
csrrci x27, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_uimm_5 (Test bit = 28)
li x1, 0x096dd53c5594c4d3 # initialize rs1
csrrci x19, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_uimm_5 (Test bit = 29)
li x26, 0x90d4706bc1ea9088 # initialize rs1
csrrci x14, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cp_uimm_5 (Test bit = 30)
li x8, 0xe70cf4a5f505274a # initialize rs1
csrrci x12, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_uimm_5 (Test bit = 31)
li x23, 0x7749183ff9d0ed6c # initialize rs1
csrrci x2, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x9, x26 # perform first operation
csrrci x25, mscratch, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x6, x26 # perform first operation
csrrci x21, mscratch, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x27, x14 # perform first operation
csrrci x23, mscratch, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x5, x27 # perform first operation
csrrci x10, mscratch, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x17, x9 # perform first operation
csrrci x5, mscratch, 22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x20, x26 # perform first operation
csrrci x24, mscratch, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x9, x31 # perform first operation
csrrci x9, mscratch, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x9, x14 # perform first operation
csrrci x14, mscratch, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x31, x9 # perform first operation
csrrci x8, mscratch, 10 # perform second (triggering) operation

#.EQU SIGSIZE,512


// ******************
// Tests from: WALLY-COV-csrrwi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x0)
li x8, 0xaebe03419518555f # initialize rs1
csrrwi x0, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0x95c09471693336f5 # initialize rs1
csrrwi x1, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rd (Test destination rd = x2)
li x1, 0x4423de1eae66d27c # initialize rs1
csrrwi x2, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x4b859908b4ede354 # initialize rs1
csrrwi x3, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x2cc74c3efa799fbc # initialize rs1
csrrwi x4, mscratch, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x4a496daf0473e08f # initialize rs1
csrrwi x5, mscratch, 18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 40)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xaeaef161e2f07c1e # initialize rs1
csrrwi x6, mscratch, 30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 48)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xef700d8f5d24f7eb # initialize rs1
csrrwi x7, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 56)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0xc6770df788567a59 # initialize rs1
csrrwi x8, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 64)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x5153e42b65a81140 # initialize rs1
csrrwi x9, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x899510d87fce3649 # initialize rs1
csrrwi x10, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0xdad274cdc5c60ee1 # initialize rs1
csrrwi x11, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rd (Test destination rd = x12)
li x19, 0xff337da5d54790a9 # initialize rs1
csrrwi x12, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x3d03e281a4c29854 # initialize rs1
csrrwi x13, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0x17bb39121b598b54 # initialize rs1
csrrwi x14, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0xb80fda7cc9aef6a2 # initialize rs1
csrrwi x15, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x976f51635bb7fde8 # initialize rs1
csrrwi x16, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xcc206a5434ed7a18 # initialize rs1
csrrwi x17, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x408ab3f616cd797a # initialize rs1
csrrwi x18, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0xbe2cf4c2e9769691 # initialize rs1
csrrwi x19, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0xc9ba8301d81373a1 # initialize rs1
csrrwi x20, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xeae350722c50fdcb # initialize rs1
csrrwi x21, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0xf0063af4d68473bf # initialize rs1
csrrwi x22, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xa11a42396e6c2983 # initialize rs1
csrrwi x23, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x1e8a39d14a0228ee # initialize rs1
csrrwi x24, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x50f7948132aee512 # initialize rs1
csrrwi x25, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 200)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x6b984e9cbe510cd2 # initialize rs1
csrrwi x26, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 208)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x8a862eeced278ea5 # initialize rs1
csrrwi x27, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0xc6b80d67dac45236 # initialize rs1
csrrwi x28, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x584115afd4b9ead9 # initialize rs1
csrrwi x29, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 232)

# Testcase cp_rd (Test destination rd = x30)
li x15, 0xdbd709ea8c87aa70 # initialize rs1
csrrwi x30, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x19cd8566b64bccad # initialize rs1
csrrwi x31, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cp_uimm_5 (Test bit = 0)
li x16, 0xf4369069e464fd7d # initialize rs1
csrrwi x20, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_uimm_5 (Test bit = 1)
li x25, 0xc372b6741c655a48 # initialize rs1
csrrwi x18, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_uimm_5 (Test bit = 2)
li x22, 0xc85f80ea9c5adb2f # initialize rs1
csrrwi x8, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_uimm_5 (Test bit = 3)
li x31, 0xcd6d80282ee43b39 # initialize rs1
csrrwi x9, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_uimm_5 (Test bit = 4)
li x5, 0x4cebb8e6dc3e6154 # initialize rs1
csrrwi x31, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cp_uimm_5 (Test bit = 5)
li x7, 0xdc9ad19474ea3c11 # initialize rs1
csrrwi x10, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_uimm_5 (Test bit = 6)
li x16, 0x4d06c7fee3891330 # initialize rs1
csrrwi x7, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_uimm_5 (Test bit = 7)
li x8, 0x775a67608765bd2d # initialize rs1
csrrwi x5, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_uimm_5 (Test bit = 8)
li x11, 0xf17eba3f2fc70003 # initialize rs1
csrrwi x17, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_uimm_5 (Test bit = 9)
li x8, 0x18072d54d44c96c3 # initialize rs1
csrrwi x22, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cp_uimm_5 (Test bit = 10)
li x6, 0x276e5665010a57ca # initialize rs1
csrrwi x19, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 336)

# Testcase cp_uimm_5 (Test bit = 11)
li x29, 0x2e44c88d6937c27d # initialize rs1
csrrwi x28, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 344)

# Testcase cp_uimm_5 (Test bit = 12)
li x30, 0x97c857bb7a5acaea # initialize rs1
csrrwi x18, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cp_uimm_5 (Test bit = 13)
li x9, 0x4e4004c6e071cb0d # initialize rs1
csrrwi x19, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 360)

# Testcase cp_uimm_5 (Test bit = 14)
li x3, 0x413b6a852883e2de # initialize rs1
csrrwi x8, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cp_uimm_5 (Test bit = 15)
li x6, 0x045792f58eeb6202 # initialize rs1
csrrwi x3, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_uimm_5 (Test bit = 16)
li x9, 0x9d8676ef88a76653 # initialize rs1
csrrwi x2, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_uimm_5 (Test bit = 17)
li x10, 0xecfd745b35d205ba # initialize rs1
csrrwi x14, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cp_uimm_5 (Test bit = 18)
li x24, 0x7e2d479b80fde1e9 # initialize rs1
csrrwi x1, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 400)

# Testcase cp_uimm_5 (Test bit = 19)
li x25, 0xd80489d3f57b3f3e # initialize rs1
csrrwi x26, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_uimm_5 (Test bit = 20)
li x7, 0x9f58420d7a97cb8a # initialize rs1
csrrwi x21, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_uimm_5 (Test bit = 21)
li x11, 0x173e8b8daa6c41b5 # initialize rs1
csrrwi x21, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_uimm_5 (Test bit = 22)
li x29, 0xb71e3abda4e80db4 # initialize rs1
csrrwi x2, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_uimm_5 (Test bit = 23)
li x15, 0xdf91fcbc7c1a8117 # initialize rs1
csrrwi x16, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_uimm_5 (Test bit = 24)
li x2, 0x266765635b90233e # initialize rs1
csrrwi x5, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_uimm_5 (Test bit = 25)
li x31, 0x1c38188c3a4854e7 # initialize rs1
csrrwi x5, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_uimm_5 (Test bit = 26)
li x20, 0x721cecfe6a51ef6b # initialize rs1
csrrwi x28, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_uimm_5 (Test bit = 27)
li x25, 0x30dc021e3962031e # initialize rs1
csrrwi x7, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cp_uimm_5 (Test bit = 28)
li x12, 0x3e62d6387833cf9d # initialize rs1
csrrwi x1, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cp_uimm_5 (Test bit = 29)
li x25, 0x64189bcf6d1de088 # initialize rs1
csrrwi x18, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cp_uimm_5 (Test bit = 30)
li x8, 0xb4dd9636131f4689 # initialize rs1
csrrwi x9, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_uimm_5 (Test bit = 31)
li x22, 0x44833c3933f48987 # initialize rs1
csrrwi x19, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x28, x22 # perform first operation
csrrwi x29, mscratch, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x26, x1 # perform first operation
csrrwi x12, mscratch, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x6, x2 # perform first operation
csrrwi x22, mscratch, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x25, x23 # perform first operation
csrrwi x26, mscratch, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x8 # perform first operation
csrrwi x3, mscratch, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x7, x29 # perform first operation
csrrwi x27, mscratch, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x5, x16 # perform first operation
csrrwi x5, mscratch, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x31, x14 # perform first operation
csrrwi x14, mscratch, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x9, x1 # perform first operation
csrrwi x2, mscratch, 16 # perform second (triggering) operation

#.EQU SIGSIZE,512
.EQU SIGSIZE,4224 #combined


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
