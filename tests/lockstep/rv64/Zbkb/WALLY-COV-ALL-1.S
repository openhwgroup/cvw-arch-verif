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
// Tests from: WALLY-COV-xnor.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x5c82f1ccc7baffc0 # initialize rs1
li x3, 0xad3814791b97ac06 # initialize rs2
xnor x1, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2b8e1f931a39b402 # initialize rs1
li x26, 0x39150fd83fb126ab # initialize rs2
xnor x30, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xd6fb386d93316946 # initialize rs1
li x6, 0xd54d62d7bd49b10c # initialize rs2
xnor x12, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x61b1047a02c0a162 # initialize rs1
li x15, 0x363fc73eae9d4e1c # initialize rs2
xnor x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x388351d3bfadc73d # initialize rs1
li x9, 0xb0c5604c1747770f # initialize rs2
xnor x16, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x57ef9e946b84f15d # initialize rs1
li x15, 0xfa8446f1ba16df8b # initialize rs2
xnor x3, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x70174b6ff0397234 # initialize rs1
li x22, 0xb44c42b6cc6c699a # initialize rs2
xnor x23, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5db66f5d5a4e2984 # initialize rs1
li x12, 0x063971aa126a8d5f # initialize rs2
xnor x6, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9b9ce8458a1ce232 # initialize rs1
li x11, 0xcda2a5baaf802c46 # initialize rs2
xnor x26, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xde9ea395fa70d5ea # initialize rs1
li x24, 0x80c3e1d20a50779b # initialize rs2
xnor x6, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7f9dbc16783759a7 # initialize rs1
li x30, 0x3abe4ada0204e0f7 # initialize rs2
xnor x29, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa7b7bedd677e3d3f # initialize rs1
li x25, 0x9af65411201b29ad # initialize rs2
xnor x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbf60494f2eee8377 # initialize rs1
li x3, 0x865887e0fa2bcb92 # initialize rs2
xnor x29, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7dc34c5efcc17018 # initialize rs1
li x29, 0x77bdbe8f345c24ea # initialize rs2
xnor x23, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xfcd2693d80eebead # initialize rs1
li x17, 0xdc6e542b59241a60 # initialize rs2
xnor x28, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x25ddfa35f1f16b8f # initialize rs1
li x3, 0xb870526f3fe5cbfa # initialize rs2
xnor x20, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x35276c62a49ee5a7 # initialize rs1
li x19, 0x379dfa302b48ae6b # initialize rs2
xnor x18, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xeb542194c37441fb # initialize rs1
li x1, 0xcddba2bf3792bc4d # initialize rs2
xnor x12, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb26b95afa1ea49cc # initialize rs1
li x20, 0x00aad9690c860cfd # initialize rs2
xnor x13, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe376b4681c14a3c9 # initialize rs1
li x25, 0xfd8b9f335d6903f3 # initialize rs2
xnor x15, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3a4236954021bb0a # initialize rs1
li x29, 0xf713eeaa2344c4b4 # initialize rs2
xnor x24, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xac577fdaca62327e # initialize rs1
li x27, 0x11c7c8eaae4be077 # initialize rs2
xnor x6, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x039757009c95e7ae # initialize rs1
li x7, 0xa2936e2627a2214d # initialize rs2
xnor x26, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7357ebbd815d5834 # initialize rs1
li x10, 0x5ab62c4f443a0eeb # initialize rs2
xnor x5, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8cac60fa9c9bd94c # initialize rs1
li x13, 0xaea6484fdafe8246 # initialize rs2
xnor x9, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xacd7998b85bc539c # initialize rs1
li x14, 0x58d879989daefd5a # initialize rs2
xnor x8, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x57427729f9e2c5de # initialize rs1
li x6, 0x2c195fe48275ba46 # initialize rs2
xnor x24, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5f439154c9fba8cf # initialize rs1
li x11, 0x25ad046e458e9dff # initialize rs2
xnor x3, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xba9da73dbf001fb3 # initialize rs1
li x10, 0x0920f264f55f8016 # initialize rs2
xnor x1, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xbcf168515d409e9c # initialize rs1
li x21, 0x549aa1ba6f81499b # initialize rs2
xnor x6, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x504924e2a38a4ea2 # initialize rs1
li x5, 0xc0d3f751016132a6 # initialize rs2
xnor x20, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2d1c5a55c0a657a2 # initialize rs1
li x14, 0x42e8153defabde05 # initialize rs2
xnor x24, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x10, 0x7eecdb16799e8247 # initialize rs1
li x0, 0x5805599fefe8be50 # initialize rs2
xnor x1, x10, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0x429defba8d0f0516 # initialize rs1
li x1, 0xc26802f7e598ccfe # initialize rs2
xnor x8, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x31, 0x551769ff223f26ec # initialize rs1
li x2, 0xe5fc0afbcfb39e4a # initialize rs2
xnor x29, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0x9ba962a7f0fd4104 # initialize rs1
li x3, 0x42a6be3a83a899eb # initialize rs2
xnor x10, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x09527ec35dabdb63 # initialize rs1
li x4, 0x91325eef48d1be5b # initialize rs2
xnor x12, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xdfaf1b2382c0a6af # initialize rs1
li x5, 0x7a67e593f76cad80 # initialize rs2
xnor x16, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xf497255fe8ce9b24 # initialize rs1
li x6, 0x946c26f47555bf2c # initialize rs2
xnor x26, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x4ab2cb5c3ee7a57b # initialize rs1
li x7, 0x7af9d7b643e35110 # initialize rs2
xnor x20, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0x29996c7fbe4c32d3 # initialize rs1
li x8, 0x8e37f41c04dc9dad # initialize rs2
xnor x22, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x15, 0x869ad9da90b631e8 # initialize rs1
li x9, 0x71bf2fea8ee391b0 # initialize rs2
xnor x24, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xf7970f231d749bc9 # initialize rs1
li x10, 0x590d7278ec612d6c # initialize rs2
xnor x18, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0xe45f33a3c7c8a9f7 # initialize rs1
li x11, 0x964d48ce0b3331d3 # initialize rs2
xnor x7, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x5c1f628d2519eca9 # initialize rs1
li x12, 0xc01e3386f30b1e68 # initialize rs2
xnor x17, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0x87cc1f23f16e060b # initialize rs1
li x13, 0xff31cf92108ac4d3 # initialize rs2
xnor x22, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0x8044cb83017d2453 # initialize rs1
li x14, 0x45a5b21cc74f9510 # initialize rs2
xnor x6, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0x0a187865e9220dd5 # initialize rs1
li x15, 0x7312831da0d8f7d6 # initialize rs2
xnor x23, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x21, 0x776edc58253c2501 # initialize rs1
li x16, 0x01317d36a82c44c8 # initialize rs2
xnor x6, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x558fb5eeaf6ca63f # initialize rs1
li x17, 0xff9cf049d5eccfd0 # initialize rs2
xnor x22, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x10, 0xa9ece83accac6e8c # initialize rs1
li x18, 0x1c4ed382e73c6b5e # initialize rs2
xnor x17, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x30, 0x78ec0bbfe8d60aa4 # initialize rs1
li x19, 0x6fe9463b6ad4440c # initialize rs2
xnor x1, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x27, 0x5ad0259ed054ddc9 # initialize rs1
li x20, 0xb45f4000ba89d3a2 # initialize rs2
xnor x29, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xd497ea739a078be4 # initialize rs1
li x21, 0xd91527a48b487dcf # initialize rs2
xnor x19, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x5, 0xe805e03f706cbf9e # initialize rs1
li x22, 0x31fb0dac05387281 # initialize rs2
xnor x27, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x27821109296bdbd7 # initialize rs1
li x23, 0x772b1757cd7694f7 # initialize rs2
xnor x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x7, 0x7d9fde1a154cc78a # initialize rs1
li x24, 0x1ac9f790692e0c10 # initialize rs2
xnor x5, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x5, 0xd55e1d723287c535 # initialize rs1
li x25, 0x2804a09c62716947 # initialize rs2
xnor x6, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0x4082d817ff42a919 # initialize rs1
li x26, 0x083e4fa1d1b43290 # initialize rs2
xnor x3, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x17, 0xfea4d64ff4239382 # initialize rs1
li x27, 0x9aa93f78ccbc643a # initialize rs2
xnor x26, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x7effba30c5ab5c49 # initialize rs1
li x28, 0x92e729f7f9f40573 # initialize rs2
xnor x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0x9c68c828177f1f8c # initialize rs1
li x29, 0x69d2b64da441807c # initialize rs2
xnor x2, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0x275d33c67f448a86 # initialize rs1
li x30, 0x8e08b9b743d06c2d # initialize rs2
xnor x29, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x20, 0xf9447cf7f878e7bd # initialize rs1
li x31, 0xc628e1bec73db83f # initialize rs2
xnor x6, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0x5952a4cbafa9b23b # initialize rs1
li x23, 0x99c0d3c3a5817a17 # initialize rs2
xnor x0, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0xc8bf57d9cb5d312b # initialize rs1
li x2, 0xc3b7dff91547226f # initialize rs2
xnor x1, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0xc57cc46e8ff1d3b9 # initialize rs1
li x1, 0xcb4c34b9b60521a4 # initialize rs2
xnor x2, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x9a929fd1f808a811 # initialize rs1
li x16, 0x558a7f916a281de5 # initialize rs2
xnor x3, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xa67fe76715b0871f # initialize rs1
li x3, 0xb644acb46ad39725 # initialize rs2
xnor x4, x28, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xe68ef501b928901e # initialize rs1
li x13, 0x50ea7bcc81b9f08e # initialize rs2
xnor x5, x28, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x1eb3abe71f9f6b39 # initialize rs1
li x11, 0x412b97f1cff939a7 # initialize rs2
xnor x6, x10, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0xcbf6c2834c9c72ee # initialize rs1
li x18, 0x215ec8203732320e # initialize rs2
xnor x7, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0x9a6e51bdbb7d7f1d # initialize rs1
li x25, 0xa8327f21fc7b8c24 # initialize rs2
xnor x8, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x71161a9521cdc521 # initialize rs1
li x27, 0xdaf7f5fbd0117e5a # initialize rs2
xnor x9, x3, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x445b615940cd1117 # initialize rs1
li x25, 0xe4e66c7a4287882b # initialize rs2
xnor x10, x1, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0xeaefd749390b68fe # initialize rs1
li x12, 0x082352c38dbe6c6c # initialize rs2
xnor x11, x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0xb0ac3edc5b7c0af1 # initialize rs1
li x17, 0xa72528f9f5a2a6cc # initialize rs2
xnor x12, x29, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x3, 0xa5afb16311c30476 # initialize rs1
li x30, 0x2892ae2ded18d687 # initialize rs2
xnor x13, x3, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x84410b7ef97b67db # initialize rs1
li x14, 0xaed0ec97fa0fceb3 # initialize rs2
xnor x14, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x352bf06e13a7ee93 # initialize rs1
li x24, 0xf1e8da14277dd8cd # initialize rs2
xnor x15, x17, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0x77620183eb4f7700 # initialize rs1
li x9, 0xaeff80a640f8bd07 # initialize rs2
xnor x16, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0x950a9a1fcd731542 # initialize rs1
li x13, 0xa1529bd18296ae88 # initialize rs2
xnor x17, x15, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x60556ca10b08e465 # initialize rs1
li x26, 0x4b53085bfa82c734 # initialize rs2
xnor x18, x13, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x93c71b31fdac64f5 # initialize rs1
li x10, 0x6faf5cad5ddd47f2 # initialize rs2
xnor x19, x27, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x7a5255604de18781 # initialize rs1
li x21, 0xb54fd22817db7e03 # initialize rs2
xnor x20, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x14, 0x8df61adedef69e34 # initialize rs1
li x1, 0xb7047ab19a3a4b2d # initialize rs2
xnor x21, x14, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x60c0160368c75ba4 # initialize rs1
li x13, 0x8ba69db646d90f5d # initialize rs2
xnor x22, x24, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0xe3f05248217c92aa # initialize rs1
li x24, 0x0f482d09e7139527 # initialize rs2
xnor x23, x18, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x862bbc823d2f94bf # initialize rs1
li x21, 0x2e2a4ce0332c6789 # initialize rs2
xnor x24, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x4826d3d29af404e9 # initialize rs1
li x10, 0xefc9c9193783f9d8 # initialize rs2
xnor x25, x14, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0xa641e6f51b4f2eea # initialize rs1
li x29, 0x49810ab44eabc038 # initialize rs2
xnor x26, x14, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x21a4f39d7f9571c1 # initialize rs1
li x7, 0x5e8160bd85c08032 # initialize rs2
xnor x27, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x7, 0xcca30208bbf7f30d # initialize rs1
li x20, 0xffa71c3d2e1bd245 # initialize rs2
xnor x28, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x256e179e52fa4bf7 # initialize rs1
li x21, 0xab4b5d48163878a3 # initialize rs2
xnor x29, x30, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x1a37861508656db9 # initialize rs1
li x4, 0x39ab3554eb87f148 # initialize rs2
xnor x30, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x33f09cfc109ddda5 # initialize rs1
li x7, 0xaff44aa7c1d7f3f3 # initialize rs2
xnor x31, x27, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x0000000000000000 # initialize rs1
li x24, 0x0e3ee785c15f7320 # initialize rs2
xnor x17, x10, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x12, 0x24babaad0fa24a24 # initialize rs2
xnor x20, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0000000000000002 # initialize rs1
li x31, 0x9b2853d41aff1985 # initialize rs2
xnor x15, x6, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x14, 0xb7ba988728f5c337 # initialize rs2
xnor x12, x15, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x2, 0x8000000000000001 # initialize rs1
li x27, 0x087490070628a5c9 # initialize rs2
xnor x16, x2, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x21, 0xb9cce7ca927240b6 # initialize rs2
xnor x4, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x18, 0x79c85937906d4b88 # initialize rs2
xnor x31, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x14, 0x3fbbd8c5cdd9f332 # initialize rs2
xnor x6, x24, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x21, 0xfffffffffffffffe # initialize rs1
li x25, 0x43861b2680862d41 # initialize rs2
xnor x18, x21, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x1f3e216345d7534d # initialize rs2
xnor x10, x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xb38a9ab450b60f11 # initialize rs2
xnor x24, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
li x6, 0xf302aaa99159f04e # initialize rs2
xnor x12, x19, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x12, 0x75a14f2718720124 # initialize rs2
xnor x23, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x23, 0x0dd09b97cd41cc66 # initialize rs2
xnor x12, x19, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x0000000100000000 # initialize rs1
li x26, 0x660fa711cc6154a9 # initialize rs2
xnor x18, x27, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
li x11, 0xc0f846c30047fc0f # initialize rs2
xnor x1, x8, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x8eafcf6a58b148ea # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
xnor x13, x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x62954c1407f339e0 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
xnor x7, x24, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0x02f718cf30e5f35c # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
xnor x9, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x3500b4ccac95a79b # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xnor x25, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x12, 0xcac0dda34ec28cca # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
xnor x31, x12, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0xd2687a046273166d # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
xnor x13, x2, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x25, 0x15f435b93c1ac6c8 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
xnor x15, x25, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x8, 0x4f87cd79f0948672 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xnor x30, x8, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xad3ae3016d4e8ab8 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
xnor x11, x13, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x9, 0x2ea7d5940aa2dce6 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
xnor x13, x9, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0x932b7188e3fa6bd2 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x7, x26, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x1a2a8ad931da667f # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
xnor x18, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x31, 0xc4ca672b0e7932e9 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
xnor x29, x31, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x4db0a3bd8cc42ffd # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
xnor x24, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x28, 0xd250baee879a4a5c # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xnor x31, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0x587d27ed164b9130 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
xnor x9, x10, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
xnor x15, x3, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
xnor x20, x11, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
xnor x7, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x10, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
xnor x12, x10, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x11, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
xnor x27, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
xnor x29, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
xnor x15, x16, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
xnor x14, x31, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x4, 0xfffffffffffffffe # initialize rs2
xnor x16, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
xnor x18, x22, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x25, x8, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x28, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
xnor x12, x28, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
xnor x10, x7, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
xnor x20, x3, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x6, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
xnor x17, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x19, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
xnor x16, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x12, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
xnor x13, x12, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
xnor x12, x24, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x16, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
xnor x28, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x8, 0x0000000000000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xnor x7, x8, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x9, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
xnor x8, x9, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x4, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
xnor x25, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
xnor x18, x23, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xnor x19, x20, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
xnor x18, x16, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
xnor x16, x9, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x3, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x3, 0x0000000000000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
xnor x7, x3, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
xnor x20, x15, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
xnor x31, x20, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x3, 0x0000000000000001 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
xnor x15, x3, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x29, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
xnor x20, x29, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x0000000000000002 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
xnor x12, x29, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
xnor x24, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
xnor x6, x3, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x3, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
xnor x26, x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x13, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
xnor x21, x13, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
xnor x27, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
xnor x7, x17, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
xnor x26, x30, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
xnor x10, x29, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
xnor x3, x1, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000002 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x29, x13, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
xnor x15, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
xnor x21, x17, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
xnor x10, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x30, 0x0000000000000002 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
xnor x3, x30, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x2, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
xnor x8, x2, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x7, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
xnor x30, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x17, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
xnor x4, x17, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x14, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
xnor x25, x14, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x23, 0x8000000000000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
xnor x26, x23, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x1, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
xnor x7, x1, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x2, 0x8000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
xnor x26, x2, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x30, 0x8000000000000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
xnor x25, x30, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
xnor x26, x21, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x4, 0x8000000000000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
xnor x9, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x8000000000000000 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
xnor x21, x8, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x8, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x19, 0x8000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xnor x14, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
xnor x9, x13, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
xnor x19, x10, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x27, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
xnor x21, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x12, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
xnor x6, x12, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x24, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
xnor x28, x24, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
xnor x7, x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x6, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
xnor x20, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x28, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
xnor x1, x28, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
xnor x22, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
xnor x4, x3, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x8, 0x8000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
xnor x17, x8, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xnor x15, x16, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
xnor x18, x2, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000001 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
xnor x31, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x22, x20, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x1, 0x8000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
xnor x14, x1, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
xnor x18, x1, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
xnor x10, x15, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x8000000000000001 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
xnor x14, x11, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0x8000000000000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
xnor x14, x11, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x6, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
xnor x13, x6, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x30, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
xnor x27, x30, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x7, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
xnor x28, x7, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
xnor x23, x11, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x6, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
xnor x28, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
xnor x25, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
xnor x11, x17, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xnor x2, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
xnor x30, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0x7fffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
xnor x21, x8, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7fffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x15, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x21, 0x7fffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
xnor x16, x21, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
xnor x22, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
xnor x10, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
xnor x13, x27, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x10, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
xnor x27, x10, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x3, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
xnor x22, x3, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x15, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
xnor x7, x15, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x30, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
xnor x6, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0x7ffffffffffffffe # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
xnor x14, x21, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0x7ffffffffffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
xnor x30, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
xnor x4, x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
xnor x8, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
xnor x28, x12, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
xnor x23, x29, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x7, 0x7ffffffffffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
xnor x29, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7ffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x12, x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
xnor x17, x3, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
xnor x31, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
xnor x26, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x15, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
xnor x4, x15, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x28, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
xnor x31, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xnor x17, x19, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x28, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
xnor x25, x28, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x6, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
xnor x21, x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
xnor x16, x2, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
xnor x6, x29, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
xnor x8, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0xffffffffffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
xnor x3, x31, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
xnor x19, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x4, 0xffffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
xnor x15, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0xffffffffffffffff # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
xnor x23, x26, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xffffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x29, x18, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xffffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
xnor x13, x24, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
xnor x6, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x10, 0xffffffffffffffff # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
xnor x18, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x13, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
xnor x10, x13, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x27, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
xnor x10, x27, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
xnor x28, x9, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x20, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
xnor x17, x20, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x27, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
xnor x9, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
xnor x21, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
xnor x25, x3, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
xnor x15, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
xnor x31, x28, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
xnor x10, x15, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
xnor x16, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0xfffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
xnor x15, x30, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xfffffffffffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x18, x19, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
xnor x8, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
xnor x11, x12, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
xnor x19, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
xnor x6, x31, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x4, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
xnor x27, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
xnor x7, x26, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
xnor x25, x21, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
xnor x21, x28, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
xnor x19, x15, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x4, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
xnor x10, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
xnor x24, x27, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
xnor x19, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
xnor x28, x31, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
xnor x30, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
xnor x20, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x23, x21, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
xnor x13, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
xnor x22, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
xnor x23, x7, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xnor x28, x2, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
xnor x7, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
xnor x31, x3, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
xnor x27, x25, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
xnor x1, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
xnor x30, x3, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
xnor x27, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
xnor x2, x9, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
xnor x26, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
xnor x18, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
xnor x29, x3, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
xnor x27, x6, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x22, x17, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
xnor x18, x31, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
xnor x1, x6, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
xnor x25, x11, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
xnor x26, x1, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
xnor x8, x3, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x1, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
xnor x31, x1, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x20, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
xnor x26, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x2, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
xnor x22, x2, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x20, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
xnor x31, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x16, 0x5555555555555555 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
xnor x22, x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
xnor x13, x8, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
xnor x21, x6, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
xnor x31, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
xnor x16, x30, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x17, 0x5555555555555555 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
xnor x8, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5555555555555555 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x29, x22, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
xnor x22, x31, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
xnor x27, x20, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x10, 0x5555555555555555 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
xnor x4, x10, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x15, 0x5555555555555555 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
xnor x17, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x3, 0x5555555555555555 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
xnor x14, x3, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x2, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
xnor x30, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
xnor x26, x31, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
xnor x15, x9, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
xnor x23, x12, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x16, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
xnor x2, x16, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x31, 0x00000000ffffffff # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xnor x16, x31, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
xnor x19, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
xnor x6, x18, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
xnor x9, x22, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000ffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
xnor x19, x29, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x00000000ffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x2, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x2, 0x00000000ffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
xnor x1, x2, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
xnor x15, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
xnor x2, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x20, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
xnor x27, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x13, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
xnor x26, x13, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x3, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
xnor x24, x3, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
xnor x1, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
xnor x28, x17, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x14, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
xnor x25, x14, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x19, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
xnor x29, x19, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
xnor x21, x15, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
xnor x4, x16, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
xnor x30, x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
xnor x23, x3, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x00000000fffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
xnor x15, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x00000000fffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x7, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x20, 0x00000000fffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xnor x15, x20, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x7, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
xnor x3, x7, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
xnor x21, x7, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x11, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
xnor x29, x11, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x13, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
xnor x21, x13, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x11, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
xnor x22, x11, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
xnor x1, x28, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x16, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
xnor x19, x16, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x24, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
xnor x14, x24, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
xnor x20, x23, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xnor x4, x16, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
xnor x6, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
xnor x13, x25, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
xnor x3, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
xnor x14, x25, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000100000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x30, x7, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
xnor x18, x19, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x17, 0x0000000100000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
xnor x10, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
xnor x10, x28, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x27, 0x0000000100000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
xnor x30, x27, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x20, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
xnor x13, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x10, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
xnor x30, x10, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x14, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
xnor x7, x14, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
xnor x12, x11, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xnor x9, x14, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
xnor x8, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
xnor x27, x6, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
xnor x18, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x26, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xnor x15, x26, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
xnor x14, x6, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x4, 0x0000000100000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
xnor x16, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x0000000100000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
xnor x8, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
xnor x2, x16, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
xnor x19, x20, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x31, 0x0000000100000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
xnor x14, x31, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x13, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
xnor x19, x13, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
xnor x7, x19, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x857ff315c51ed256 # initialize rs1
li x0, 0x59b18549bec5b3e0 # initialize rs2
xnor x10, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x065254108e84a4e4 # initialize rs1
li x1, 0x402b9ab675290f4d # initialize rs2
xnor x4, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x21b69fa88749d37d # initialize rs1
li x2, 0x177303c82f608091 # initialize rs2
xnor x4, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xb508cf103f847b63 # initialize rs1
li x3, 0xaeb1d040829ff905 # initialize rs2
xnor x13, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x73725e957d214a10 # initialize rs1
li x4, 0xc006fff86c1e8006 # initialize rs2
xnor x6, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9dbd744a01e260ac # initialize rs1
li x5, 0x46194f6aee1c35f7 # initialize rs2
xnor x13, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x228a51e0229cdcbf # initialize rs1
li x6, 0x1b3f5663948c59f1 # initialize rs2
xnor x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1fc03462ae9cdcc5 # initialize rs1
li x7, 0xafb41b1c132ef748 # initialize rs2
xnor x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x24ac27112c6d5299 # initialize rs1
li x8, 0xa7c1b59e35e42faa # initialize rs2
xnor x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe543a98909fb18d1 # initialize rs1
li x9, 0x79c60135e7b665c9 # initialize rs2
xnor x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf309c06848223a97 # initialize rs1
li x10, 0x0f31f8af6d9bab0e # initialize rs2
xnor x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x75faf06e6156ebf1 # initialize rs1
li x11, 0x5721073fa8352f15 # initialize rs2
xnor x22, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x86128a8a533b1e83 # initialize rs1
li x12, 0xfe1accb6e9e9f7b8 # initialize rs2
xnor x27, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x88fb29985d418771 # initialize rs1
li x13, 0x28d2778725fe4097 # initialize rs2
xnor x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7a86d2a652718c21 # initialize rs1
li x14, 0x760d3a3e1ce2407b # initialize rs2
xnor x1, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc4eb20d5832ece97 # initialize rs1
li x15, 0x8f392e1f9eb94ff0 # initialize rs2
xnor x2, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x0b2ed549f75b7aef # initialize rs1
li x16, 0xe914597d49612078 # initialize rs2
xnor x12, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x55f685c81924db84 # initialize rs1
li x17, 0xde2bb3d13ab59601 # initialize rs2
xnor x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x79e1776e619fc581 # initialize rs1
li x18, 0x2f4075fc6aa2154b # initialize rs2
xnor x31, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb4c12a1b11ac3647 # initialize rs1
li x19, 0x067052b569f153b0 # initialize rs2
xnor x12, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x16ed72813dfe9576 # initialize rs1
li x20, 0x7c8f8cfa52c34875 # initialize rs2
xnor x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe5508d57136905ee # initialize rs1
li x21, 0x72bf647d0b1212e4 # initialize rs2
xnor x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x4fe02a8182eb41a4 # initialize rs1
li x22, 0x9a7092bed228d781 # initialize rs2
xnor x27, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x9f55c086c15a1e03 # initialize rs1
li x23, 0xcbf2a2fd64c2168f # initialize rs2
xnor x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9d3fc29dc603d149 # initialize rs1
li x24, 0x608905f63cdd3f0b # initialize rs2
xnor x29, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x9d65a80c7be143dc # initialize rs1
li x25, 0xf329fe9ca9ccb155 # initialize rs2
xnor x3, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x807776718f842a89 # initialize rs1
li x26, 0x6344f623a3b079a9 # initialize rs2
xnor x22, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xaa935ae99f0a4bd3 # initialize rs1
li x27, 0x87ebcc4db42d264f # initialize rs2
xnor x16, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7ac430b49bbba95e # initialize rs1
li x28, 0xb29cf480002cf701 # initialize rs2
xnor x26, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf84178e11ad90f7d # initialize rs1
li x29, 0xb89bdaf13a57a358 # initialize rs2
xnor x28, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xfa89a9759ac7b8bc # initialize rs1
li x30, 0xb8ca58e632305b74 # initialize rs2
xnor x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xa0e064a7cd0e83c0 # initialize rs1
li x31, 0xa70ad0522691950d # initialize rs2
xnor x5, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa3d2a0e892a9fc8f # initialize rs1
li x17, 0xa6f10688104af547 # initialize rs2
xnor x0, x0, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x21349e4669a63039 # initialize rs1
li x29, 0x25ca70f77be6bdc1 # initialize rs2
xnor x1, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xaeeb2ed1051e1d65 # initialize rs1
li x9, 0x678548d4e087b94d # initialize rs2
xnor x2, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x07c4695bcdbb947e # initialize rs1
li x2, 0x200d914d9470ade8 # initialize rs2
xnor x3, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7c8d440b81b83bb1 # initialize rs1
li x27, 0x9852ae0094c172ee # initialize rs2
xnor x4, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa63e51e88509273d # initialize rs1
li x9, 0x1425c4894e0a7767 # initialize rs2
xnor x5, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x321487e1e15ed230 # initialize rs1
li x11, 0x2324440ab668b999 # initialize rs2
xnor x6, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa91eeeec49a1ee2 # initialize rs1
li x3, 0xd13e071486456723 # initialize rs2
xnor x7, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x909274c91c32c985 # initialize rs1
li x8, 0xcb8a29f211ded4f1 # initialize rs2
xnor x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8c1a1d8e481bc224 # initialize rs1
li x30, 0xe992907dc5d5a68a # initialize rs2
xnor x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc36178f6c452d455 # initialize rs1
li x26, 0x33326ed2a717c2aa # initialize rs2
xnor x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xc5a849218e26f3b8 # initialize rs1
li x25, 0xe70d21b5045e05c4 # initialize rs2
xnor x11, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1a2b60a9efc9b601 # initialize rs1
li x22, 0xd5271668dda70803 # initialize rs2
xnor x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf7e7443438694940 # initialize rs1
li x26, 0xe48463ebbb028aee # initialize rs2
xnor x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0973a61784e651d3 # initialize rs1
li x8, 0xa8c8e669476e6069 # initialize rs2
xnor x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x16eb4de6dbc00d21 # initialize rs1
li x22, 0x2af1d747cedf909c # initialize rs2
xnor x15, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xda60199c2c57f499 # initialize rs1
li x31, 0x3914735d27d53441 # initialize rs2
xnor x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x43b23a6a3c138d67 # initialize rs1
li x21, 0x22ca19d9d33b4678 # initialize rs2
xnor x17, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8b3a137eefebd72b # initialize rs1
li x8, 0xd723113ebc5fab99 # initialize rs2
xnor x18, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3224920938fc0d99 # initialize rs1
li x16, 0x9e53e6c975f1b5df # initialize rs2
xnor x19, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xda1707b630348cf6 # initialize rs1
li x1, 0x94fc3a2c1278e71a # initialize rs2
xnor x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x72ea76a151dd5f18 # initialize rs1
li x1, 0xae81cab9ce50851e # initialize rs2
xnor x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x4555545ea4875fd5 # initialize rs1
li x21, 0x5cff21ffb43f2413 # initialize rs2
xnor x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x967a46929562656b # initialize rs1
li x11, 0xba89a53cea2358e6 # initialize rs2
xnor x23, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x04e19b8e95b880ca # initialize rs1
li x7, 0xa20c8b493aec7ace # initialize rs2
xnor x24, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xce0d1bab33c500a1 # initialize rs1
li x26, 0x2d08f29dec727730 # initialize rs2
xnor x25, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb872cc4fd9ad4aac # initialize rs1
li x18, 0x851219580efb72d2 # initialize rs2
xnor x26, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x463f9cc85beb43af # initialize rs1
li x29, 0xed0765bac2f35ef7 # initialize rs2
xnor x27, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa7c916bee95756e7 # initialize rs1
li x12, 0x87e99da7c58c767d # initialize rs2
xnor x28, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x03166186dde3cc4b # initialize rs1
li x13, 0x68030d859d16ff9d # initialize rs2
xnor x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa37d500e773fc9b8 # initialize rs1
li x11, 0x4768b778ab7376dc # initialize rs2
xnor x30, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x96bab988f359c8de # initialize rs1
li x12, 0x2245a4fea30491af # initialize rs2
xnor x31, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0x3cfa5dfd63c2cbf7 # initialize rs1
li x0, 0x26e1c28c15ac110e # initialize rs2
xnor x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x3, 0xee7816f1e6f1fcad # initialize rs1
li x1, 0x0c701d417082d100 # initialize rs2
xnor x1, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0x68bffc9a293386be # initialize rs1
li x2, 0x9e5ba0b110a575a4 # initialize rs2
xnor x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x29, 0x7224305befcbafe7 # initialize rs1
li x3, 0xd9cdac91e93bc7da # initialize rs2
xnor x3, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x05e993b19bb7799b # initialize rs1
li x4, 0xef4c28b7e5e5c26f # initialize rs2
xnor x4, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x62fbb45fb6b22e0d # initialize rs1
li x5, 0x77d6505a355eecff # initialize rs2
xnor x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x535371c186181f5a # initialize rs1
li x6, 0x6f2f524b016b8865 # initialize rs2
xnor x6, x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x48dd81fc92f4ea2f # initialize rs1
li x7, 0x3c2f8886aa6dee14 # initialize rs2
xnor x7, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x16, 0x446e7799508500e0 # initialize rs1
li x8, 0xfb5281187ba77bc1 # initialize rs2
xnor x8, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0xa87984387dfddf56 # initialize rs1
li x9, 0x662310fb72561485 # initialize rs2
xnor x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x23, 0x2e9a1331b2fd1cfd # initialize rs1
li x10, 0x38dac5f344659838 # initialize rs2
xnor x10, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x10, 0x7ee4e2be89c2eb13 # initialize rs1
li x11, 0xe53121f07b25bb65 # initialize rs2
xnor x11, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x5, 0x880e266b8cf2948c # initialize rs1
li x12, 0x178fb98ce32afcc6 # initialize rs2
xnor x12, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x20, 0x309707b99159667b # initialize rs1
li x13, 0x71727a080e4a1c2b # initialize rs2
xnor x13, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0xdc4418046fc3d974 # initialize rs1
li x14, 0x7b9a1cd163d44b18 # initialize rs2
xnor x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x9, 0x6679f8841494b92f # initialize rs1
li x15, 0x8aeb0ab7f9a6fbd5 # initialize rs2
xnor x15, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0x22660a08a55bea8d # initialize rs1
li x16, 0xe95064c73346efed # initialize rs2
xnor x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x31, 0x23b6a27101e6f2df # initialize rs1
li x17, 0x278432661b0782ac # initialize rs2
xnor x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x2, 0x651e57a80f8dc0f3 # initialize rs1
li x18, 0x76fc033f9a049bac # initialize rs2
xnor x18, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0xac8d5134c08df571 # initialize rs1
li x19, 0x1db67628c39ca2fc # initialize rs2
xnor x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xa7947f4586ba10bd # initialize rs1
li x20, 0x747c1c9a10dbce5d # initialize rs2
xnor x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x26, 0xec471e24c8fdd9e9 # initialize rs1
li x21, 0x434370b4b3b6a595 # initialize rs2
xnor x21, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x20, 0x81ff6b7e21d5a094 # initialize rs1
li x22, 0x984b7639dd15e21a # initialize rs2
xnor x22, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0xb8ff6ba9188f177d # initialize rs1
li x23, 0xe588e13b1827ed29 # initialize rs2
xnor x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x2, 0x6276abea9fe59a1c # initialize rs1
li x24, 0x67d8d7184c6d0e35 # initialize rs2
xnor x24, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x8130e7c427555651 # initialize rs1
li x25, 0x439c7ea0b8ac449a # initialize rs2
xnor x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0x7d7e95737c5038ce # initialize rs1
li x26, 0xc1ccd1abd08d2660 # initialize rs2
xnor x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x21, 0xbb8e5ef88e886747 # initialize rs1
li x27, 0xb57e53e5f64c0192 # initialize rs2
xnor x27, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0x3e127707e7a6ec04 # initialize rs1
li x28, 0xf81ccc8540ac4a63 # initialize rs2
xnor x28, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x5, 0xe96dce4b22199702 # initialize rs1
li x29, 0x7f02afd4f924cdbc # initialize rs2
xnor x29, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x9, 0x5df9e423f021c64c # initialize rs1
li x30, 0x09f418a59ee21859 # initialize rs2
xnor x30, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x0a937f06ccd5bbec # initialize rs1
li x31, 0xa66dbca044a40a40 # initialize rs2
xnor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa8526e0a3aea2639 # initialize rs1
li x0, 0x710d0a303cd86cba # initialize rs2
xnor x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xea538b0f994eae60 # initialize rs1
li x1, 0x15345e58ca3f79c9 # initialize rs2
xnor x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9338a460de0ae10e # initialize rs1
li x2, 0xfd509dc9d1e7f576 # initialize rs2
xnor x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x10f4032de1fbe28d # initialize rs1
li x3, 0x790de0739ace8261 # initialize rs2
xnor x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7f65da7a07d281be # initialize rs1
li x4, 0xd2354891a2dc6c67 # initialize rs2
xnor x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x15a496905985bdbc # initialize rs1
li x5, 0xe545c52706ce98a3 # initialize rs2
xnor x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed5c1581a7e2a481 # initialize rs1
li x6, 0x6202c4d3dd022ea8 # initialize rs2
xnor x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x33f2491ee93a2300 # initialize rs1
li x7, 0x1ebc8cfa6ab179ad # initialize rs2
xnor x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x1e1a3d279de3b393 # initialize rs1
li x8, 0x257ec6d309c4c2a0 # initialize rs2
xnor x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4b8dbc18f3351eea # initialize rs1
li x9, 0xb963e7c635d2e297 # initialize rs2
xnor x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x536a498617b1e38a # initialize rs1
li x10, 0x20d0ff4776511a9d # initialize rs2
xnor x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7954205ca51697de # initialize rs1
li x11, 0xf2b141a63c5823e4 # initialize rs2
xnor x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xae81561eda1eb4ce # initialize rs1
li x12, 0x98562939e2bc0ef0 # initialize rs2
xnor x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x21ac270cd8ea210d # initialize rs1
li x13, 0xf71d2e5d69da4815 # initialize rs2
xnor x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf26cfa644465acad # initialize rs1
li x14, 0x60ad042e26c402e1 # initialize rs2
xnor x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x58137a75e1bf8c15 # initialize rs1
li x15, 0x7b9c87e902e82e35 # initialize rs2
xnor x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x99c3456ca202006a # initialize rs1
li x16, 0x1e332d916054eb2c # initialize rs2
xnor x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x9208acea8881c415 # initialize rs1
li x17, 0xbe92f69e2964cd3e # initialize rs2
xnor x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x3ed31712db9c395d # initialize rs1
li x18, 0x3b81da29f0b941c1 # initialize rs2
xnor x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc3d9545764d533e5 # initialize rs1
li x19, 0x4b0e3ef64e14fd2b # initialize rs2
xnor x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6996b7bd76bf4cee # initialize rs1
li x20, 0xe2467dbf0257921f # initialize rs2
xnor x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x791eaa13f2d4e31d # initialize rs1
li x21, 0xe6bc695824222921 # initialize rs2
xnor x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2484bf42f15e6faf # initialize rs1
li x22, 0x2ab1b686f575e947 # initialize rs2
xnor x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5ee5f181614e55a3 # initialize rs1
li x23, 0x6c613d10fb74d9b0 # initialize rs2
xnor x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x037b2a0616aee167 # initialize rs1
li x24, 0xf1d31b069135bbd4 # initialize rs2
xnor x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7c8e50d121286f5c # initialize rs1
li x25, 0xb27c10b01a978388 # initialize rs2
xnor x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x95b21c8abd1fdb0c # initialize rs1
li x26, 0xeda177d7e0e97268 # initialize rs2
xnor x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb707b6c345d747be # initialize rs1
li x27, 0xc6f2cde22efaf4a9 # initialize rs2
xnor x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5bdbf54f394226bc # initialize rs1
li x28, 0xe2572c1ee20fcf77 # initialize rs2
xnor x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x02bda9278e8ffcfc # initialize rs1
li x29, 0xf7e8819f8fbef9b2 # initialize rs2
xnor x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8cd6509532a1e9ad # initialize rs1
li x30, 0xd4908073c8adf278 # initialize rs2
xnor x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf703ba6c3f5b8ba1 # initialize rs1
li x31, 0xed593ef14a931699 # initialize rs2
xnor x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x14, x18 # perform first operation
xnor x1, x27, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x1, x10 # perform first operation
xnor x3, x20, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x19, x22 # perform first operation
xnor x11, x24, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x30, x13 # perform first operation
xnor x30, x8, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x2, x3 # perform first operation
xnor x2, x6, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x11, x1 # perform first operation
xnor x19, x13, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x24, x12 # perform first operation
xnor x8, x20, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x30, x17 # perform first operation
xnor x2, x10, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x26, x9 # perform first operation
xnor x2, x19, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x29, x9 # perform first operation
xnor x29, x31, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x13, x27 # perform first operation
xnor x27, x26, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x25, x7 # perform first operation
xnor x19, x10, x16 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-rol.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x750717fb3d81421c # initialize rs1
li x5, 0x766fc36daeba9655 # initialize rs2
rol x25, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5f411278b82e7449 # initialize rs1
li x19, 0x833a5356f414b925 # initialize rs2
rol x14, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcc79bcb1ae70e896 # initialize rs1
li x7, 0xab60ee60a9970b00 # initialize rs2
rol x5, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb4c086b263f8e100 # initialize rs1
li x20, 0x9dab9650385195fd # initialize rs2
rol x8, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3b6e9f7361af0eea # initialize rs1
li x22, 0x88fa4b72083c69f0 # initialize rs2
rol x12, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcae94555cc8eb5d7 # initialize rs1
li x4, 0xe499a1a5db62f092 # initialize rs2
rol x30, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x365b18dcfa45b4e5 # initialize rs1
li x15, 0xaafd7b165b6a17e2 # initialize rs2
rol x7, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xcd5013992be790ec # initialize rs1
li x31, 0xee5d4aeb185c51c0 # initialize rs2
rol x12, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf9cf6c79448ab370 # initialize rs1
li x9, 0x0cd6306c0a99e421 # initialize rs2
rol x25, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb7c5951084f43bd7 # initialize rs1
li x17, 0xd56dddf56254bce8 # initialize rs2
rol x25, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x45e282c5953e658c # initialize rs1
li x25, 0x8097e20274888436 # initialize rs2
rol x12, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x603a7cce49c465d1 # initialize rs1
li x6, 0xd46a60ddb7f7cbe4 # initialize rs2
rol x27, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc1781469ad77b9ee # initialize rs1
li x6, 0x7c364435ae765a06 # initialize rs2
rol x27, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x97cdbdb3cd5a20da # initialize rs1
li x23, 0xc97efcffab1d9e5e # initialize rs2
rol x19, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x44f89c1dd72eb7bd # initialize rs1
li x6, 0x0288f22f1e399174 # initialize rs2
rol x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6e5079f7b90bbc7e # initialize rs1
li x30, 0xfaaf58bfedace1fb # initialize rs2
rol x9, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x86630d897280817c # initialize rs1
li x1, 0x72dd4d88fd380e95 # initialize rs2
rol x22, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xbb4018360e413260 # initialize rs1
li x23, 0x28f2b6dea7f47351 # initialize rs2
rol x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcfb9ed015960ad49 # initialize rs1
li x15, 0x3a663a85eb03465f # initialize rs2
rol x28, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x39c67cc83cbcd519 # initialize rs1
li x7, 0xa2412c87e843a076 # initialize rs2
rol x17, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf4b06a72717b42ab # initialize rs1
li x18, 0xea407c7338971b1c # initialize rs2
rol x8, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc326c10febc02150 # initialize rs1
li x24, 0xf2a72bdf2f6eebf7 # initialize rs2
rol x5, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6bc660c9caed698a # initialize rs1
li x15, 0x9d614f561f7eb7b1 # initialize rs2
rol x1, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2ef0887bf18787b3 # initialize rs1
li x22, 0x60c4f0ac110a5b88 # initialize rs2
rol x21, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5a7cf9c53ada2771 # initialize rs1
li x1, 0xad21a5a8e18c53f4 # initialize rs2
rol x20, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xea85d8b89b890b15 # initialize rs1
li x13, 0x7ab068fb00785350 # initialize rs2
rol x5, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xcbd309950128c99f # initialize rs1
li x6, 0xec2745279f1f8bb5 # initialize rs2
rol x14, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5362835add37f284 # initialize rs1
li x30, 0xe866b3ada47a781c # initialize rs2
rol x14, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb763ff04af3c6298 # initialize rs1
li x21, 0x7f0508a13792b0c0 # initialize rs2
rol x26, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3e19ed8d58d0d91a # initialize rs1
li x20, 0xb6e7d7a3a3427569 # initialize rs2
rol x17, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x193db8038fae53d0 # initialize rs1
li x19, 0x742a5a4da7709298 # initialize rs2
rol x6, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6f9e1e05906b66f7 # initialize rs1
li x5, 0x1bf4cb3b75884270 # initialize rs2
rol x6, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x39fe612f85991955 # initialize rs1
li x0, 0x5a29a208e1462da7 # initialize rs2
rol x22, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x6b2a23667d92f2bd # initialize rs1
li x1, 0x62bea4dc8590c05a # initialize rs2
rol x26, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x18, 0xe18976ca96d1f035 # initialize rs1
li x2, 0xdce9122c7e2697cc # initialize rs2
rol x22, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x0ca5a6c4e2301b48 # initialize rs1
li x3, 0x5bf642bce15fcefe # initialize rs2
rol x8, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x6caa35b5a1fa463f # initialize rs1
li x4, 0x2758729b1621c3c3 # initialize rs2
rol x29, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x3aa03fb4031b8012 # initialize rs1
li x5, 0x1bf1dae7d2b75115 # initialize rs2
rol x3, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x46ee678a812de3a5 # initialize rs1
li x6, 0x8b4b449e3e3fb2b3 # initialize rs2
rol x20, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x7845804b3163ccd5 # initialize rs1
li x7, 0x822f3b279f177e9e # initialize rs2
rol x26, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0xa5a4372be337308c # initialize rs1
li x8, 0x18a9f3237d12fcd7 # initialize rs2
rol x24, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0xf56cee6ee2f345cd # initialize rs1
li x9, 0xba83f04dc87da6bf # initialize rs2
rol x14, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0xcec50d36353dea52 # initialize rs1
li x10, 0x9a37a101f4709285 # initialize rs2
rol x2, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0x6353b154c8ce742f # initialize rs1
li x11, 0x2e216180c55e921e # initialize rs2
rol x7, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x517cac5adbd1b79f # initialize rs1
li x12, 0x98a33289305aed72 # initialize rs2
rol x8, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x43406404b54d5b80 # initialize rs1
li x13, 0xfb57f2ab0060364d # initialize rs2
rol x18, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x275da8ba9c38e29f # initialize rs1
li x14, 0xd88912a79c14e26e # initialize rs2
rol x25, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xd0cd968ff3161b32 # initialize rs1
li x15, 0x81c08608415bdf66 # initialize rs2
rol x28, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x12, 0x64d56b431e3ae0c4 # initialize rs1
li x16, 0x0d382c0c67bb86b1 # initialize rs2
rol x5, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0x2f0c31cee276ffbb # initialize rs1
li x17, 0x18f1c0dde11b877c # initialize rs2
rol x11, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0x92dc209a8015a8b6 # initialize rs1
li x18, 0xf301e9adf67933b2 # initialize rs2
rol x26, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x926a047fc891ff1b # initialize rs1
li x19, 0xe2c6e61d755ea3ac # initialize rs2
rol x1, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0x655e6b0ad9eaf8ce # initialize rs1
li x20, 0x1a59a915f7e99487 # initialize rs2
rol x13, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x15, 0xf2c1cc9578942341 # initialize rs1
li x21, 0xc92b321cae84bdbd # initialize rs2
rol x3, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0x95490778703190f4 # initialize rs1
li x22, 0x89aa9cb509189079 # initialize rs2
rol x24, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0xbac6129329c20bc5 # initialize rs1
li x23, 0x27bee55916da1984 # initialize rs2
rol x16, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0xce0c0ca8901f5272 # initialize rs1
li x24, 0x8f26f7aaf6f88192 # initialize rs2
rol x18, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0x2de502c9f1907261 # initialize rs1
li x25, 0x55c9181942397223 # initialize rs2
rol x26, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0xfc562dbec1515e90 # initialize rs1
li x26, 0xba242900e6bc15e9 # initialize rs2
rol x23, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0xeee2da520f102640 # initialize rs1
li x27, 0xe48794af829cc93e # initialize rs2
rol x1, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xd6afb7f835e63709 # initialize rs1
li x28, 0xb78f2270f2f2bb70 # initialize rs2
rol x25, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0x64b0b2734ef29ff9 # initialize rs1
li x29, 0x97ccdfe07916d70c # initialize rs2
rol x18, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xfeaa86ebd6330295 # initialize rs1
li x30, 0x2271c95a108ec495 # initialize rs2
rol x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0xa3cc2f34982d63ac # initialize rs1
li x31, 0x8650a89d5a66fbbd # initialize rs2
rol x28, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x49867546befb3d54 # initialize rs1
li x7, 0xb91a266a74553a8f # initialize rs2
rol x0, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x8d7cd2621eff9235 # initialize rs1
li x28, 0xb409d46003646fcc # initialize rs2
rol x1, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0xcf397bde28ff2b2d # initialize rs1
li x22, 0xcbd8e3de64227ac0 # initialize rs2
rol x2, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0xd0ade9e792569773 # initialize rs1
li x6, 0xd1acb307cd8dd946 # initialize rs2
rol x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x49d280227a1be1e5 # initialize rs1
li x16, 0xd87297a1e354d07b # initialize rs2
rol x4, x21, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x78a6b41bbb190981 # initialize rs1
li x11, 0x98eff22bbc3dca87 # initialize rs2
rol x5, x13, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x4b3c21a59b4b326e # initialize rs1
li x26, 0x8979e8e17c5d37c9 # initialize rs2
rol x6, x2, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xb83e2950131f2e1a # initialize rs1
li x28, 0x29a1b7929e8dfabf # initialize rs2
rol x7, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0x391de803b9f2acc3 # initialize rs1
li x6, 0xd6cd46f982794c0c # initialize rs2
rol x8, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x2c03df3456c244d7 # initialize rs1
li x3, 0x2d9d21da8b16853f # initialize rs2
rol x9, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x4508773b6c6d4c44 # initialize rs1
li x8, 0xa0ddbc77f0136c82 # initialize rs2
rol x10, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x7c6b26796b9241ae # initialize rs1
li x3, 0xa1655fb2c6bddf70 # initialize rs2
rol x11, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x2b9b8496ce6625bc # initialize rs1
li x20, 0x297b1a7a0228a1bd # initialize rs2
rol x12, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x94022cd586b76a0c # initialize rs1
li x3, 0x06bb956ff29711e6 # initialize rs2
rol x13, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0xe5d06425ac4cf950 # initialize rs1
li x6, 0x3f91ba2035b5e0d1 # initialize rs2
rol x14, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x402433853a95b30d # initialize rs1
li x1, 0x7d6534c7c48e998e # initialize rs2
rol x15, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x17, 0x3311acafa52f1ba6 # initialize rs1
li x29, 0x7ff5f04f41fe110a # initialize rs2
rol x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x4a610dcafc7ad5ec # initialize rs1
li x2, 0x3ed141a2af22cb18 # initialize rs2
rol x17, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x18f1a2889a52c044 # initialize rs1
li x31, 0x5994316700a9d3d8 # initialize rs2
rol x18, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0xc48d067768980051 # initialize rs1
li x31, 0xff3761ef03e7ef3c # initialize rs2
rol x19, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0x9fa9ba939d8880b6 # initialize rs1
li x1, 0xaf1d34f0cc510cc7 # initialize rs2
rol x20, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xf1690a020e7b1152 # initialize rs1
li x9, 0x86661420a837c5f7 # initialize rs2
rol x21, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x76457c5e484d9658 # initialize rs1
li x13, 0x2d9d8ea4f75dd03a # initialize rs2
rol x22, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x6156e150a8fc250d # initialize rs1
li x8, 0x89d81b150ee71d16 # initialize rs2
rol x23, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xdb0d56373fa811c0 # initialize rs1
li x27, 0x6291bd0f8e58cebb # initialize rs2
rol x24, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xcae622491dc2f8ed # initialize rs1
li x14, 0xb1010430da871b83 # initialize rs2
rol x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0x312cc832f3b297eb # initialize rs1
li x21, 0x3feafcb6edaaf5da # initialize rs2
rol x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x24, 0xa49fe45dcaa84927 # initialize rs1
li x2, 0xbbad5fde601bed90 # initialize rs2
rol x27, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x05020d562b0a243b # initialize rs1
li x1, 0x18c5e84e06da52d3 # initialize rs2
rol x28, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xc9c42a6191d36392 # initialize rs1
li x7, 0xacd05a9687318f08 # initialize rs2
rol x29, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x710e3be9d8c5dfd9 # initialize rs1
li x31, 0x1deb1b42008ab3e6 # initialize rs2
rol x30, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0x840193e88b5f8aab # initialize rs1
li x22, 0xcf93fb7a80afa8f5 # initialize rs2
rol x31, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x30, 0xf4c909579be209f6 # initialize rs2
rol x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x16, 0x108badf59831d468 # initialize rs2
rol x25, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x2, 0xde034e5f70b03a3d # initialize rs2
rol x27, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x23, 0xa17f687f367ef240 # initialize rs2
rol x19, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x8, 0x2d75690cd3d6ccdf # initialize rs2
rol x10, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x16, 0x5d2a65854956a03e # initialize rs2
rol x22, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x9, 0x2b5f9e1abd5b5a3f # initialize rs2
rol x31, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x15, 0x7eee246ab9698ef8 # initialize rs2
rol x2, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0x475df3bb2fbc5b14 # initialize rs2
rol x19, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xbd1010bf5f0e3fae # initialize rs2
rol x8, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xadc75c0feda3b106 # initialize rs2
rol x28, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x3ff7b622e6592159 # initialize rs2
rol x5, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x28, 0x0f962414bc364a0e # initialize rs2
rol x31, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x12, 0x518a5bc277c5d1c7 # initialize rs2
rol x29, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x23, 0x6a837fc564cc4715 # initialize rs2
rol x8, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x3, 0x24483046878b54dd # initialize rs2
rol x11, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x2313e034f53f568b # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
rol x24, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0xaa3b044822aa0265 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
rol x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x6e57eb7c822297eb # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
rol x15, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xd7dc7f1894ec9fec # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
rol x3, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x26, 0xc7f6333b067070b8 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rol x10, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x551d9e2284b137b8 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rol x12, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0xb30620d5f53e3790 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rol x30, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0x6d5aaf1452d716f6 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
rol x28, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x25, 0xeacc46f03dc6af72 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rol x2, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0x4dabae7ca91315c2 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
rol x2, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xceeb20207fac4305 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x27, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x8c5c5cc1578472e1 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rol x31, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xf4c5fcee92ccbfeb # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
rol x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x84f160e8e0b9e89e # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
rol x17, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0xea0575cde7e775ff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
rol x17, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0xe74f9489153e0478 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
rol x24, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
rol x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
rol x16, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
rol x18, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
rol x15, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rol x24, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rol x1, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rol x29, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rol x8, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rol x30, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
rol x2, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x27, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rol x14, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
rol x11, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
rol x24, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x8, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
rol x6, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rol x13, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rol x6, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
rol x10, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
rol x1, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x3, 0x0000000000000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
rol x19, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x24, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
rol x28, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
rol x31, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rol x16, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
rol x23, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
rol x6, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
rol x7, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x13, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x18, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
rol x20, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x0000000000000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
rol x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
rol x7, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
rol x22, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
rol x12, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rol x7, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rol x28, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
rol x18, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
rol x18, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rol x13, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
rol x13, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rol x16, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
rol x23, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rol x1, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
rol x15, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x3, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
rol x21, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rol x31, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
rol x10, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x5, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
rol x13, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x8, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
rol x3, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x16, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
rol x17, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x3, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
rol x6, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
rol x22, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x26, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
rol x15, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x29, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rol x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
rol x10, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
rol x10, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
rol x8, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
rol x5, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x8000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
rol x29, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x27, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
rol x24, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
rol x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rol x30, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
rol x21, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x3, 0x8000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
rol x27, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x11, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rol x2, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x28, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
rol x16, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rol x17, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
rol x23, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
rol x26, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
rol x12, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
rol x12, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rol x18, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
rol x1, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
rol x29, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x22, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x23, 0x8000000000000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rol x10, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x29, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
rol x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
rol x24, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x2, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
rol x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x31, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
rol x16, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x7, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
rol x16, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rol x3, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x16, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
rol x13, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
rol x31, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
rol x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
rol x13, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
rol x28, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
rol x9, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
rol x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
rol x25, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7fffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x31, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x30, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
rol x8, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rol x11, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rol x6, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rol x18, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
rol x24, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
rol x21, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
rol x29, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
rol x30, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
rol x12, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
rol x3, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
rol x24, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
rol x18, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
rol x29, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
rol x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
rol x22, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x7ffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x15, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
rol x3, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rol x7, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
rol x14, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x30, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
rol x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x28, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
rol x29, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x23, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
rol x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
rol x18, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
rol x26, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
rol x11, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x14, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rol x23, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
rol x6, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
rol x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
rol x12, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
rol x5, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
rol x6, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xffffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x26, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x25, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rol x3, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
rol x14, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rol x13, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x20, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
rol x21, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rol x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x5, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
rol x24, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x10, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
rol x2, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rol x28, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
rol x6, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
rol x26, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rol x8, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
rol x19, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
rol x22, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
rol x21, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0xfffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
rol x16, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x20, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
rol x30, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
rol x27, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
rol x10, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x13, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
rol x2, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
rol x20, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rol x24, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
rol x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
rol x2, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
rol x22, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rol x8, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
rol x26, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
rol x28, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
rol x24, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
rol x11, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
rol x12, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x12, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
rol x6, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rol x16, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
rol x14, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
rol x28, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
rol x27, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
rol x15, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
rol x14, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rol x31, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
rol x2, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rol x11, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
rol x10, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
rol x3, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
rol x28, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rol x22, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
rol x18, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x20, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
rol x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
rol x17, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
rol x3, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
rol x6, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
rol x1, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x29, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
rol x30, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rol x31, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x7, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
rol x17, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x10, 0x5555555555555555 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
rol x23, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x27, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
rol x24, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rol x2, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
rol x8, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rol x19, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rol x1, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x30, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
rol x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x12, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
rol x5, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
rol x2, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
rol x3, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x16, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
rol x9, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x23, 0x5555555555555555 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
rol x18, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
rol x30, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
rol x11, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
rol x20, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
rol x18, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x3, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
rol x25, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
rol x27, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rol x20, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
rol x20, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rol x31, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0x00000000ffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
rol x3, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x25, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x24, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
rol x28, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
rol x25, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
rol x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x22, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rol x31, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x2, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
rol x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
rol x21, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
rol x21, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
rol x31, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x10, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
rol x3, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x3, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
rol x31, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
rol x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
rol x22, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
rol x28, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rol x13, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000fffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
rol x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x00000000fffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x19, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x15, 0x00000000fffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
rol x28, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rol x15, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
rol x18, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x15, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
rol x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
rol x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x26, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
rol x24, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
rol x8, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
rol x8, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x19, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
rol x29, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
rol x11, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
rol x8, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
rol x2, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x11, 0x0000000100000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
rol x24, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rol x24, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000100000000 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
rol x31, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x10, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0x0000000100000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
rol x1, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
rol x17, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rol x17, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x13, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
rol x11, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
rol x20, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x28, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rol x29, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x9, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rol x6, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
rol x30, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
rol x2, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x12, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
rol x11, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
rol x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rol x11, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
rol x21, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
rol x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
rol x13, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x24, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
rol x22, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
rol x7, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
rol x13, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x9, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
rol x22, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
rol x5, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xd37fb57d858bb801 # initialize rs1
li x0, 0xe908377ce7a52196 # initialize rs2
rol x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x55ab893db58d7bf8 # initialize rs1
li x1, 0x384e48945a24796d # initialize rs2
rol x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xff6eb8365748511f # initialize rs1
li x2, 0x73ada09284ff83be # initialize rs2
rol x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2804036377d693f1 # initialize rs1
li x3, 0x763f0282c4fd1184 # initialize rs2
rol x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe6620ffb5181acb3 # initialize rs1
li x4, 0x0178c2de79ff2013 # initialize rs2
rol x3, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2d32601c03e54a1a # initialize rs1
li x5, 0xa3b1e1276af0c539 # initialize rs2
rol x28, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x438b00dd96e007b9 # initialize rs1
li x6, 0x2739469cb62574d7 # initialize rs2
rol x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xec7a75e725d8a8e9 # initialize rs1
li x7, 0xd502e801ee490766 # initialize rs2
rol x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x17d1a75e9c0f3162 # initialize rs1
li x8, 0xce6511e2b16eaca9 # initialize rs2
rol x10, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4422d5fcb9736a4d # initialize rs1
li x9, 0x51bd6d8569e41e64 # initialize rs2
rol x19, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb31acb59d1f2b4eb # initialize rs1
li x10, 0x2344a95528500e2d # initialize rs2
rol x23, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbc7e41c84f025ea5 # initialize rs1
li x11, 0x9dd2a11215de0454 # initialize rs2
rol x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x53654c1ec4bc2e70 # initialize rs1
li x12, 0x6d3895f3465bd2a9 # initialize rs2
rol x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x1916d29679bf2c3c # initialize rs1
li x13, 0x3b05acb370b0ca17 # initialize rs2
rol x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe70bd9d1f11d2c0b # initialize rs1
li x14, 0xfd63e1b801741de0 # initialize rs2
rol x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd444ccdbf978bce2 # initialize rs1
li x15, 0xe21c03ccbb0b8590 # initialize rs2
rol x22, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xaa93fc6ac75fa8e1 # initialize rs1
li x16, 0x68eadaa0214882af # initialize rs2
rol x25, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe85d57cdddbf52ff # initialize rs1
li x17, 0x1d68ae63d68ab154 # initialize rs2
rol x7, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa8805a48eb997c1a # initialize rs1
li x18, 0xad77a0c64881f8ca # initialize rs2
rol x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5932e8b02175da03 # initialize rs1
li x19, 0x0a4eb475efa748bd # initialize rs2
rol x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd7750f2bff4773c3 # initialize rs1
li x20, 0x00da049fbb4a4fa8 # initialize rs2
rol x28, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1c8efb2d7c4f3996 # initialize rs1
li x21, 0x694cbfba217b09a3 # initialize rs2
rol x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x62588327323e4c7a # initialize rs1
li x22, 0x10cd9633c34106b3 # initialize rs2
rol x30, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5c92a28e3f1c4dda # initialize rs1
li x23, 0xbd5a238c93e68f9d # initialize rs2
rol x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xcae15dc18d1c6b7a # initialize rs1
li x24, 0xe75814d844126b64 # initialize rs2
rol x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4d9b82fdef9010d6 # initialize rs1
li x25, 0x286124b18bece440 # initialize rs2
rol x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x759bdfc4e709d9bd # initialize rs1
li x26, 0x3e0704a5962084fb # initialize rs2
rol x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x607c8310747c0403 # initialize rs1
li x27, 0x8c080df4d3cc36cb # initialize rs2
rol x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe4b0213caf7ca118 # initialize rs1
li x28, 0x227ec33a2ff315a9 # initialize rs2
rol x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa6850a23f72c2adf # initialize rs1
li x29, 0x491e6bb3d15bc741 # initialize rs2
rol x2, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x0c4f2258f10dfed2 # initialize rs1
li x30, 0x348b226635e7dce2 # initialize rs2
rol x20, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x819ef2dc0b77b5fc # initialize rs1
li x31, 0x2ac1098d051efba1 # initialize rs2
rol x15, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xde53ae2f8ff6b164 # initialize rs1
li x25, 0x84389744449683ad # initialize rs2
rol x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x8c26e626e011c968 # initialize rs1
li x28, 0x6b8a337426964a41 # initialize rs2
rol x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7487a5ecb4ce0b30 # initialize rs1
li x15, 0x65b042768e213f23 # initialize rs2
rol x2, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8bff50b3d693c3b8 # initialize rs1
li x20, 0x522c7d186e0e837c # initialize rs2
rol x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x812ba33282e96362 # initialize rs1
li x30, 0x92a50dd7944e3a40 # initialize rs2
rol x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6152b0cdb37d0cca # initialize rs1
li x3, 0x68654822f17872e6 # initialize rs2
rol x5, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8854dec001fda3c6 # initialize rs1
li x7, 0x1b4768c2b50d435f # initialize rs2
rol x6, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xd779f5aed563235e # initialize rs1
li x11, 0xc8118652fed5a49e # initialize rs2
rol x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x053a5b949c7054e9 # initialize rs1
li x5, 0xd7afb7237a6c6a3b # initialize rs2
rol x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x17750e3e94081701 # initialize rs1
li x30, 0x44d3f42366cb6880 # initialize rs2
rol x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6d137c1e426be509 # initialize rs1
li x21, 0xb139aeb9537ecba2 # initialize rs2
rol x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x94557bf1da862b8d # initialize rs1
li x11, 0x2b43e429406c5b71 # initialize rs2
rol x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x002e020c1be08874 # initialize rs1
li x17, 0xddec4a6d799dbc30 # initialize rs2
rol x12, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1aca9059b420ce27 # initialize rs1
li x1, 0x9ed77ca2da101867 # initialize rs2
rol x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x70e4fc1426c605f1 # initialize rs1
li x9, 0x567c85ca8ed5291a # initialize rs2
rol x14, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1fbadba3c08b3a31 # initialize rs1
li x31, 0x0120baabb2047aad # initialize rs2
rol x15, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x809a8d3e9e52ee21 # initialize rs1
li x19, 0xfa3bf159d52054c3 # initialize rs2
rol x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xec3335548ba63727 # initialize rs1
li x20, 0x04d0bae2ae79a2e5 # initialize rs2
rol x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x991750023df74f65 # initialize rs1
li x6, 0x7870784ebaebb9a3 # initialize rs2
rol x18, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x631c64e639b57bd8 # initialize rs1
li x26, 0x00efedabac231a26 # initialize rs2
rol x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3bbac340eaed6c02 # initialize rs1
li x9, 0xa540381deee26152 # initialize rs2
rol x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe3242c8073c46035 # initialize rs1
li x14, 0x9d877397c59f89f9 # initialize rs2
rol x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5cafb1ed449d9350 # initialize rs1
li x8, 0xa0143556b9eb41cf # initialize rs2
rol x22, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9a36abe9fa349716 # initialize rs1
li x2, 0x1539a80525cb40df # initialize rs2
rol x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x39f7657db10c626e # initialize rs1
li x31, 0x6027c0ae1db21f85 # initialize rs2
rol x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd9165ee59ea8ead2 # initialize rs1
li x20, 0x7e11d5e56be532c7 # initialize rs2
rol x25, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdfbad0472bf351a3 # initialize rs1
li x21, 0xffb7b57bfd4abb1e # initialize rs2
rol x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x34ed2fab21dfb13a # initialize rs1
li x21, 0xce98e62a73be811c # initialize rs2
rol x27, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x74ae43cd0cf9f67a # initialize rs1
li x13, 0xaaa7ad719cf7e24c # initialize rs2
rol x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfa94d5548e87bffc # initialize rs1
li x24, 0x095cb4ece3f1c053 # initialize rs2
rol x29, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x20c8745a99daa876 # initialize rs1
li x19, 0xffd5cc281fad6f5a # initialize rs2
rol x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe03796c09adc303c # initialize rs1
li x21, 0x2093130642e7c55c # initialize rs2
rol x31, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0x48189ea4754d7e5e # initialize rs1
li x0, 0x897e1b7521ef0615 # initialize rs2
rol x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x23, 0xf92f288e4b01beea # initialize rs1
li x1, 0xeb4b0c0328236588 # initialize rs2
rol x1, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x60226d827d0dfd06 # initialize rs1
li x2, 0xf75f8ffbe0864f2a # initialize rs2
rol x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xcd383d733b1e5e25 # initialize rs1
li x3, 0x66f9ac6b3e4988c8 # initialize rs2
rol x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x757c5298f867860d # initialize rs1
li x4, 0xabcd9f2560295d5b # initialize rs2
rol x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x936d3d443dc4b03b # initialize rs1
li x5, 0xc194256ba05fd496 # initialize rs2
rol x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x5a7565f4eabdbfc5 # initialize rs1
li x6, 0x054cb52724202aa8 # initialize rs2
rol x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x169e53616b10530e # initialize rs1
li x7, 0x4b00d8fb0fe61c06 # initialize rs2
rol x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0x8a288a213d11f783 # initialize rs1
li x8, 0xe0fffa3d8d041bfc # initialize rs2
rol x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0x760779ab6ed7a6dd # initialize rs1
li x9, 0x9e15d681c4dd099e # initialize rs2
rol x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x2f4c49ad49cbf7af # initialize rs1
li x10, 0x8c1a1f80f886a4b2 # initialize rs2
rol x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x97948a670ee35934 # initialize rs1
li x11, 0x09666724c480310f # initialize rs2
rol x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0xae6506a2d941a281 # initialize rs1
li x12, 0x5dc12f7b989b495e # initialize rs2
rol x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x16, 0x406215f6feb1ec27 # initialize rs1
li x13, 0x6f1b6acea26255f6 # initialize rs2
rol x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0xae7ba052190299f4 # initialize rs1
li x14, 0xd879b3a95629f467 # initialize rs2
rol x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x27, 0x1b05c541a0a98a05 # initialize rs1
li x15, 0x45e57b54ad180c9a # initialize rs2
rol x15, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xafb9a5d8ffd87737 # initialize rs1
li x16, 0x4b6bd3daa5994a6a # initialize rs2
rol x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x2, 0xd6fafeaba81d0de3 # initialize rs1
li x17, 0xde3dac3ea800a9e3 # initialize rs2
rol x17, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0x7ed410562e78af20 # initialize rs1
li x18, 0x0bdcdce97aacb8c9 # initialize rs2
rol x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0x0a2020c4edf6787a # initialize rs1
li x19, 0x34e67b8fa425d5a8 # initialize rs2
rol x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x31, 0x7ab33396d132b700 # initialize rs1
li x20, 0x7a56e7bffa556860 # initialize rs2
rol x20, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0x17bb21957b07d6c5 # initialize rs1
li x21, 0xf97843382595f135 # initialize rs2
rol x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xfb6339964cfe1f88 # initialize rs1
li x22, 0x1a70a9bd6005fcbe # initialize rs2
rol x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x13, 0x13ef3d21bed72f78 # initialize rs1
li x23, 0x6e65cef05635b776 # initialize rs2
rol x23, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0x49c175fb83d1bc08 # initialize rs1
li x24, 0x510bf5c3e2773a74 # initialize rs2
rol x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0xba054ef8956585af # initialize rs1
li x25, 0x0f02d7f0afad1f11 # initialize rs2
rol x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0x986be665aa199159 # initialize rs1
li x26, 0x9f76905fd249c373 # initialize rs2
rol x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x26, 0xf391573a1fcd4bad # initialize rs1
li x27, 0xf736138b4821f714 # initialize rs2
rol x27, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0x9921fed84efa4d32 # initialize rs1
li x28, 0x18b3f88c71f769c2 # initialize rs2
rol x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x10, 0x5d08e35650e2ce9e # initialize rs1
li x29, 0x5859c22e3be5da9c # initialize rs2
rol x29, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0xf1d1e9c8780a2571 # initialize rs1
li x30, 0x54e25bd6c3b4158c # initialize rs2
rol x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x11, 0x103e5932f78134c3 # initialize rs1
li x31, 0x2bbc4a89c6afe6cd # initialize rs2
rol x31, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7fc3c0d69e240b5 # initialize rs1
li x0, 0x133dd57ae433ec70 # initialize rs2
rol x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x660d6d38f1d5c5d3 # initialize rs1
li x1, 0x220259103c503bb7 # initialize rs2
rol x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x549c9d499ae58354 # initialize rs1
li x2, 0x68413d81d0beccb7 # initialize rs2
rol x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1c22221d68eca56d # initialize rs1
li x3, 0xc4a193000cc463ce # initialize rs2
rol x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe89b32f4b90fb8a8 # initialize rs1
li x4, 0x4f62b457016f9cbd # initialize rs2
rol x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb65e948b1453de37 # initialize rs1
li x5, 0x4ad9219a9f33c64d # initialize rs2
rol x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x17d60a8d9bd2af3c # initialize rs1
li x6, 0x442cb3f4a6fce777 # initialize rs2
rol x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc6ddc2b94c22fe47 # initialize rs1
li x7, 0xa28a290aff3873f4 # initialize rs2
rol x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x5b39232bc2206f4b # initialize rs1
li x8, 0xbdd91fb709033829 # initialize rs2
rol x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x22c5ed2349048a2b # initialize rs1
li x9, 0xf6eec6a31cbfaaee # initialize rs2
rol x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x848eadb6b7075b1d # initialize rs1
li x10, 0xff0c93f1327e3e36 # initialize rs2
rol x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xdcd9d25a1ba6e173 # initialize rs1
li x11, 0xda50e478b49d1009 # initialize rs2
rol x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4511182c453c92d6 # initialize rs1
li x12, 0xd8612d766991b670 # initialize rs2
rol x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xfafddb027e55a04e # initialize rs1
li x13, 0x409e5761165af0b9 # initialize rs2
rol x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd3a9368916910d56 # initialize rs1
li x14, 0x552fee7a973ec117 # initialize rs2
rol x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x2c41c2ad82a940f1 # initialize rs1
li x15, 0xc8e388cc72f79a66 # initialize rs2
rol x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc5d24040887d4f99 # initialize rs1
li x16, 0xc87219ad5023b6e1 # initialize rs2
rol x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x860a3ad7c369020e # initialize rs1
li x17, 0xc366fa4b0619f74d # initialize rs2
rol x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7aaffd39f5f4359c # initialize rs1
li x18, 0x60e872c7a0b47fed # initialize rs2
rol x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2162c99081beb00c # initialize rs1
li x19, 0x3b20fc39b368afda # initialize rs2
rol x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x12b01f1672c494b2 # initialize rs1
li x20, 0xa2f1f58dbf117ba3 # initialize rs2
rol x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd4018a1cce60727a # initialize rs1
li x21, 0x53e41637f56620eb # initialize rs2
rol x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0e3ae018bbc3a46f # initialize rs1
li x22, 0x44569623686e7f08 # initialize rs2
rol x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x54cf8dde7ad27fba # initialize rs1
li x23, 0x672c900f9fdd8dca # initialize rs2
rol x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb8f209fe72c7b2eb # initialize rs1
li x24, 0x56ffe894cf56534e # initialize rs2
rol x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd95f9a5240d7c8d8 # initialize rs1
li x25, 0xb3fbcd954d2de7bd # initialize rs2
rol x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x0b775a5de1161d7e # initialize rs1
li x26, 0x81e5f42a7e784a36 # initialize rs2
rol x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe5f677a6e1eb1c3a # initialize rs1
li x27, 0x6e079394c60286ea # initialize rs2
rol x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4c362afbee5900b7 # initialize rs1
li x28, 0x68f70dc3e1bf23b7 # initialize rs2
rol x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1e227ed2957f5e20 # initialize rs1
li x29, 0x114aa1994510de60 # initialize rs2
rol x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6d59c3872d946236 # initialize rs1
li x30, 0x756a28b578c2ec7f # initialize rs2
rol x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xdc4bbf4f38121062 # initialize rs1
li x31, 0xc5f4bcdea8142a8e # initialize rs2
rol x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x2 # perform first operation
rol x30, x22, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x16, x2 # perform first operation
rol x10, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x2, x13 # perform first operation
rol x12, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x31, x10 # perform first operation
rol x31, x19, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x19, x11 # perform first operation
rol x11, x29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x24, x2 # perform first operation
rol x16, x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x12, x23 # perform first operation
rol x7, x11, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x16, x10 # perform first operation
rol x30, x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x2, x27 # perform first operation
rol x23, x29, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x25, x23 # perform first operation
rol x25, x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x8, x1 # perform first operation
rol x1, x22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x25, x21 # perform first operation
rol x31, x18, x29 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-ror.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x811beef5e22ba3c7 # initialize rs1
li x24, 0xecdc9c20a32102d9 # initialize rs2
ror x14, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x47b47434453e0ec4 # initialize rs1
li x5, 0x6264859a2b1fec7b # initialize rs2
ror x27, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x616d738920fd5c17 # initialize rs1
li x15, 0x4d8f09ac6e4aa68d # initialize rs2
ror x31, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x749539b14067b3db # initialize rs1
li x18, 0xa4e382128b365974 # initialize rs2
ror x20, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x39afc4c45537e6ca # initialize rs1
li x22, 0x27cacf864e7831a4 # initialize rs2
ror x31, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4f26febddbd8a83b # initialize rs1
li x8, 0xb770dc2a025056cd # initialize rs2
ror x16, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x511b1d6627a5de7c # initialize rs1
li x27, 0xb53836e0d742a07a # initialize rs2
ror x2, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x99858ec4d0df8a1e # initialize rs1
li x17, 0xb2ee310b58d525df # initialize rs2
ror x31, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6475253089b492a7 # initialize rs1
li x31, 0x6cb9739e3e145bf4 # initialize rs2
ror x22, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x20c51c6ff40f1610 # initialize rs1
li x29, 0x5dedbf9aef12f35f # initialize rs2
ror x31, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2d58cb4fa413d7c7 # initialize rs1
li x5, 0x35b038e753762a6b # initialize rs2
ror x15, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xe8691b8565ca4a7f # initialize rs1
li x25, 0x2c16bda05aaa88ef # initialize rs2
ror x17, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1b7e604bb69e28b5 # initialize rs1
li x26, 0xa2d6282d61795cbc # initialize rs2
ror x21, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfcd22acfdfac3f4c # initialize rs1
li x29, 0x6a5bb9890c561f10 # initialize rs2
ror x23, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc7cb28d37c217ba9 # initialize rs1
li x10, 0x186a8bc8d5862539 # initialize rs2
ror x3, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x438ce9e77b3ec713 # initialize rs1
li x16, 0xe7a3027d27ef241c # initialize rs2
ror x31, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xff787e0c5ae5ff03 # initialize rs1
li x24, 0xbff77f13d75ff3d5 # initialize rs2
ror x2, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc90a8e22d1622d30 # initialize rs1
li x8, 0x81084f49f52fe589 # initialize rs2
ror x6, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x573ceccf9c634132 # initialize rs1
li x14, 0xd5c721c0f9a9d2f4 # initialize rs2
ror x17, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd5c09f1c79228ebb # initialize rs1
li x30, 0x44966b2ea6a4c1a0 # initialize rs2
ror x31, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xecede474dd3f0601 # initialize rs1
li x1, 0x0d15d61ecc0b71fb # initialize rs2
ror x9, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1af6ba400577494d # initialize rs1
li x18, 0xf10e499572cef1fd # initialize rs2
ror x22, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x84a236da3f08ea75 # initialize rs1
li x12, 0xe16b70eb2dceb34e # initialize rs2
ror x16, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc71fb8010f49fa78 # initialize rs1
li x20, 0xdd72771c2b90bb63 # initialize rs2
ror x10, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xfb7052a45dd47bd7 # initialize rs1
li x25, 0xdef444e28e61c770 # initialize rs2
ror x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x4d9c40dbe703199c # initialize rs1
li x29, 0xa329ffa0241c5bbb # initialize rs2
ror x5, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x5a8791a8c1b67888 # initialize rs1
li x12, 0xd108bae130bcb2a4 # initialize rs2
ror x27, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x8a55171666cb848f # initialize rs1
li x29, 0x2a29438ab3de07f5 # initialize rs2
ror x10, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xcb9a2d0e83f3d0c7 # initialize rs1
li x7, 0x3a7701de6a67e9f1 # initialize rs2
ror x26, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x574fdb007acc89d1 # initialize rs1
li x17, 0x16def10b3a5791ad # initialize rs2
ror x1, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1f6b124c2c8e3475 # initialize rs1
li x7, 0xf4ab577e03b5e266 # initialize rs2
ror x28, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc67627bf325f0fab # initialize rs1
li x20, 0x0971cf0d8b984b0b # initialize rs2
ror x15, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x70877e2d3a2a2c4b # initialize rs1
li x0, 0x7d17be56bbc51f67 # initialize rs2
ror x3, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x3a9ae8aa2acfe943 # initialize rs1
li x1, 0x3b367afa7db219d9 # initialize rs2
ror x31, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x7a86bb0cfeed7025 # initialize rs1
li x2, 0xb2b82754b892b1a1 # initialize rs2
ror x16, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0x8e8881fe04d86a83 # initialize rs1
li x3, 0x55c486d28d4922be # initialize rs2
ror x22, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0xad88db717b832d5e # initialize rs1
li x4, 0x48a9ef603442a46a # initialize rs2
ror x20, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xdb178b73bc53a008 # initialize rs1
li x5, 0x6f3ba13c6e8b0a7f # initialize rs2
ror x10, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x69b65d0a58b066d6 # initialize rs1
li x6, 0xefc663f0d2842334 # initialize rs2
ror x11, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x930fa7ea5d76339c # initialize rs1
li x7, 0xca82e82c4b45c145 # initialize rs2
ror x24, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x20, 0x73431c79a2cccc92 # initialize rs1
li x8, 0x778d0b528e032c7c # initialize rs2
ror x26, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0xcc507aae9c0e7f8b # initialize rs1
li x9, 0x85240fb6c57a2cc0 # initialize rs2
ror x3, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xebb7e3602db29fa6 # initialize rs1
li x10, 0x8acdd40432c7db01 # initialize rs2
ror x17, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x8, 0x9261170195af7bde # initialize rs1
li x11, 0x13ba42c985a063e1 # initialize rs2
ror x24, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0xaef5010486a2be91 # initialize rs1
li x12, 0xd56ddf7c24fa197a # initialize rs2
ror x14, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0xa7348c985c146176 # initialize rs1
li x13, 0x1b79a58bd6ce1abf # initialize rs2
ror x21, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0xda59c2e2ed8ad3ba # initialize rs1
li x14, 0xa458a2c13bf161ee # initialize rs2
ror x6, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x2fba46cf515abc30 # initialize rs1
li x15, 0x8fe247fcfa95a629 # initialize rs2
ror x24, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0xdf5bdb3118904df6 # initialize rs1
li x16, 0x67dc95ea022ffe1d # initialize rs2
ror x25, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0xf21fff3855c258e1 # initialize rs1
li x17, 0xa7d543c0c11913f8 # initialize rs2
ror x1, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x17, 0xaaf5cf9225d9a9dc # initialize rs1
li x18, 0xf0fb87b3920373d2 # initialize rs2
ror x19, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xa2cfbeb4aa1726b6 # initialize rs1
li x19, 0xfe4cf8fe8820b684 # initialize rs2
ror x12, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0x1b1b9fd174158213 # initialize rs1
li x20, 0xe23941584a089d11 # initialize rs2
ror x2, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0xfa1365812619c50c # initialize rs1
li x21, 0xd95663ff5bff9dc3 # initialize rs2
ror x17, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0xf11a468def900390 # initialize rs1
li x22, 0xfc0da72f2c67cddd # initialize rs2
ror x18, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x186a7232379fd2f9 # initialize rs1
li x23, 0x51b24b07c483c802 # initialize rs2
ror x11, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0x32b80f7352be776e # initialize rs1
li x24, 0x9b80309612601b35 # initialize rs2
ror x5, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0x390d1d0bae567d59 # initialize rs1
li x25, 0xdba178396396a6bb # initialize rs2
ror x16, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x13, 0x507b5cb5466b1eb9 # initialize rs1
li x26, 0x9a9ddb0ebd0931f7 # initialize rs2
ror x11, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x377cf21d18725d3c # initialize rs1
li x27, 0x45487a01500467fa # initialize rs2
ror x19, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x6, 0xa37b9974ccd15af0 # initialize rs1
li x28, 0xd7fcb3017184baa1 # initialize rs2
ror x18, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0xc51ae99d7b45ff82 # initialize rs1
li x29, 0x3688fe92482137e8 # initialize rs2
ror x20, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0xf7a098da786ab95e # initialize rs1
li x30, 0x82d2e50b7e690494 # initialize rs2
ror x7, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x660008bef5e2574c # initialize rs1
li x31, 0x053f6e57e4d5a929 # initialize rs2
ror x22, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0x5766e2aa315e4dee # initialize rs1
li x23, 0x449176d48a1e1ad9 # initialize rs2
ror x0, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xabdd914b09771454 # initialize rs1
li x24, 0x0088aab837574137 # initialize rs2
ror x1, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xb2a119203cdb651d # initialize rs1
li x27, 0xe87ac4a6f026aa26 # initialize rs2
ror x2, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0x8667ef37d7bb406d # initialize rs1
li x20, 0xb922dc5c00eab5e3 # initialize rs2
ror x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xe9660ff2aa4e07b5 # initialize rs1
li x5, 0x53ffabc62c81a6ac # initialize rs2
ror x4, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
li x14, 0x2207b8b928d4670b # initialize rs1
li x3, 0x68f2620192688c3c # initialize rs2
ror x5, x14, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x63234651a0a52925 # initialize rs1
li x25, 0x7eab9250f022c2d2 # initialize rs2
ror x6, x24, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xc1675876ec53e0ab # initialize rs1
li x6, 0x83ba5000e868a9ab # initialize rs2
ror x7, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x37dff12e2873201c # initialize rs1
li x8, 0x92c4f7864d46b630 # initialize rs2
ror x8, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x401a944d032eddb8 # initialize rs1
li x26, 0x64239889d84a9b46 # initialize rs2
ror x9, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0xeb875d65394b7705 # initialize rs1
li x25, 0x4e382275e7482cf6 # initialize rs2
ror x10, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x38be9010b8415c21 # initialize rs1
li x22, 0xa99fa22d224265c7 # initialize rs2
ror x11, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x27, 0x109a59fb17d5651b # initialize rs1
li x7, 0x3dac0244341da013 # initialize rs2
ror x12, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x712d46f68eee05e0 # initialize rs1
li x1, 0x250b370c8184dc1e # initialize rs2
ror x13, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x24, 0xef794a2eba62882c # initialize rs1
li x23, 0x2f1ac68250b1cb21 # initialize rs2
ror x14, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x6860cb4651d66c1f # initialize rs1
li x28, 0x844c5ce85fb58fb8 # initialize rs2
ror x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x8829f24fc04809b6 # initialize rs1
li x30, 0xdd6a71b38b8daf6f # initialize rs2
ror x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0xaca3d9a2bc433a27 # initialize rs1
li x15, 0xdd64fd239a104108 # initialize rs2
ror x17, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xd2edf53920e22a25 # initialize rs1
li x8, 0xa30674167a878db2 # initialize rs2
ror x18, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x18dafcf0f74b559e # initialize rs1
li x1, 0x04f6f62e7316b794 # initialize rs2
ror x19, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x2b8b167ea301451f # initialize rs1
li x8, 0xc078a3b5da41549b # initialize rs2
ror x20, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x2adb54fed9bcceb3 # initialize rs1
li x27, 0xe16cfa67b5e8d7ca # initialize rs2
ror x21, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x28903f2416a123ae # initialize rs1
li x9, 0x6012c07aef0664c1 # initialize rs2
ror x22, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x01360fdb1d3dfbee # initialize rs1
li x10, 0x252e5a523c4590ec # initialize rs2
ror x23, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x20c5560bdd077e71 # initialize rs1
li x12, 0x7fea2af3176731e5 # initialize rs2
ror x24, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xd16c939e69f84039 # initialize rs1
li x12, 0x027ba0a18acd4b77 # initialize rs2
ror x25, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x27, 0xf4b6954d2404da9b # initialize rs1
li x16, 0xc1fbd084a0adc024 # initialize rs2
ror x26, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x7065a670ba0b52bc # initialize rs1
li x18, 0x80be6219bb3f1ae5 # initialize rs2
ror x27, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x27, 0x41f7c7dcb26fb062 # initialize rs1
li x6, 0x759cc5b8c1bd7091 # initialize rs2
ror x28, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xb85529802ef67a09 # initialize rs1
li x11, 0x54da2fe8b78e23d7 # initialize rs2
ror x29, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0x4ffdac3c00024145 # initialize rs1
li x26, 0x6b81f3affd55936e # initialize rs2
ror x30, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x75eb76b0d442fbcc # initialize rs1
li x27, 0xe9f3c1b910dbdbac # initialize rs2
ror x31, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000 # initialize rs1
li x5, 0xd39bb4089f88b48c # initialize rs2
ror x25, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x20, 0x56dae833f0cdd394 # initialize rs2
ror x21, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
li x12, 0x9d10d6c0b7649c81 # initialize rs2
ror x9, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
li x25, 0xc1c89b5dfc48ce24 # initialize rs2
ror x27, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x5, 0xc508accd7d502958 # initialize rs2
ror x10, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
li x8, 0x74d87836fec5b295 # initialize rs2
ror x29, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x5, 0x71f243b5ab3c4827 # initialize rs2
ror x30, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x9, 0xcbd4368ed3ffe9b8 # initialize rs2
ror x22, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x26, 0xfa66d8bdbba0af4f # initialize rs2
ror x17, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x20c9007086b4a6f1 # initialize rs2
ror x24, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x538391a0cff47697 # initialize rs2
ror x12, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x7, 0x34dbf7ca360e86d5 # initialize rs2
ror x5, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x00000000ffffffff # initialize rs1
li x21, 0x306b6c71cc72f089 # initialize rs2
ror x22, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0x1a48d9ba0a0288db # initialize rs2
ror x11, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x27, 0xce345e15f7c8bd79 # initialize rs2
ror x31, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x6, 0x0000000100000001 # initialize rs1
li x27, 0x3cb1074dd25b8158 # initialize rs2
ror x12, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x16, 0x9edd4d9e185a5294 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
ror x25, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x6a05489cfde67438 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
ror x17, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0x040c6b16c779d988 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
ror x10, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0xaf703efaf2e3ee4b # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
ror x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xc1fe0912059fb4cd # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
ror x17, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0xa8cc4e9da114aea5 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
ror x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x13, 0x6bd951ef2f4d322d # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
ror x10, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x14, 0x17e45de430c9ef1b # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
ror x1, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x18, 0x7b8a2d6b3e58b83f # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
ror x27, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x5, 0x34a7f91b8d756151 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
ror x26, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x3, 0x08f6538b4fb90e77 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x7, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x18, 0x6373badc45cd7034 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
ror x17, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x9a3c8d6e1a01689e # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
ror x12, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x24, 0x8084e65188457294 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
ror x8, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x11, 0xd69a8b466c3525dc # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
ror x1, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x8, 0xf637d48127c89621 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
ror x9, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x21, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
ror x5, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
ror x12, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x22, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
ror x28, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x31, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
ror x24, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x8, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
ror x27, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
ror x19, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
ror x24, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
ror x7, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
ror x19, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000000 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
ror x29, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x9, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
ror x5, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
ror x24, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x18, 0x0000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
ror x21, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
ror x3, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x20, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
ror x5, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
ror x20, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
ror x29, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x1, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
ror x15, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x6, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
ror x20, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x10, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
ror x2, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
ror x11, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
ror x12, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
ror x23, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
ror x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
ror x10, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x22, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x30, 0x0000000000000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
ror x11, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
ror x21, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
ror x16, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x15, 0x0000000000000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
ror x11, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x28, 0x0000000000000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
ror x16, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
ror x15, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x10, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
ror x31, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x1, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
ror x10, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
ror x6, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x13, 0x0000000000000002 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
ror x30, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
ror x10, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
ror x10, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
ror x29, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
ror x15, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000002 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
ror x12, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000002 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x2, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x0000000000000002 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
ror x3, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
ror x11, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
ror x6, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x26, 0x0000000000000002 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
ror x14, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x2, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
ror x17, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x3, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
ror x27, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x25, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
ror x7, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x30, 0x8000000000000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
ror x24, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
ror x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
ror x7, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
ror x29, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
ror x9, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
ror x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
ror x11, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
ror x24, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x27, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x16, 0x8000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
ror x24, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
ror x9, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
ror x24, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x24, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
ror x11, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x23, 0x8000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
ror x28, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
ror x31, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x14, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
ror x31, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x6, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
ror x5, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x13, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
ror x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
ror x31, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
ror x30, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
ror x12, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
ror x21, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
ror x14, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x12, 0x8000000000000001 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
ror x31, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x8000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x7, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x10, 0x8000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
ror x23, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x10, 0x8000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
ror x23, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
ror x11, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x26, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
ror x18, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x6, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
ror x8, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
ror x7, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x16, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
ror x20, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
ror x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x30, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
ror x21, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
ror x26, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
ror x9, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
ror x22, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
ror x21, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x12, 0x7fffffffffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
ror x9, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0x7fffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
ror x18, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x12, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x1, 0x7fffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
ror x24, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
ror x12, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x12, 0x7fffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
ror x23, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
ror x25, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x25, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
ror x8, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
ror x13, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
ror x6, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
ror x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
ror x26, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
ror x24, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
ror x8, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
ror x3, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
ror x30, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
ror x21, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
ror x9, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x9, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
ror x22, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
ror x24, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
ror x18, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
ror x8, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
ror x20, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x17, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
ror x7, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x30, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
ror x29, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x22, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
ror x10, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x22, 0xffffffffffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
ror x1, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x12, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
ror x22, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
ror x5, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
ror x21, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
ror x12, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
ror x9, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x22, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
ror x30, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0xffffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x6, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x31, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
ror x1, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
ror x23, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
ror x6, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
ror x3, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x26, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
ror x8, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x11, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
ror x29, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x31, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
ror x13, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x22, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
ror x28, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
ror x11, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0xfffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
ror x5, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
ror x30, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
ror x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
ror x22, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
ror x17, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x5, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
ror x25, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x8, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
ror x14, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
ror x8, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
ror x22, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x17, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
ror x12, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
ror x1, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
ror x27, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
ror x8, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
ror x21, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
ror x30, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
ror x9, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
ror x21, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
ror x17, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
ror x27, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
ror x15, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
ror x11, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x7, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
ror x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
ror x9, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
ror x17, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
ror x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
ror x10, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
ror x14, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
ror x23, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
ror x16, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
ror x21, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
ror x3, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
ror x26, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
ror x25, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
ror x18, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
ror x26, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
ror x22, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x8, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
ror x7, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
ror x8, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
ror x15, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
ror x3, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
ror x15, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
ror x16, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x6, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
ror x15, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
ror x10, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0x5555555555555555 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
ror x23, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x2, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
ror x17, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
ror x14, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
ror x20, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
ror x1, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
ror x28, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x11, 0x5555555555555555 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
ror x28, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5555555555555555 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
ror x22, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x21, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
ror x8, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
ror x25, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x28, 0x5555555555555555 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
ror x7, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x14, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
ror x21, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
ror x21, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
ror x24, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
ror x23, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x6, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
ror x7, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
ror x24, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
ror x2, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x10, 0x00000000ffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
ror x24, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
ror x27, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x00000000ffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
ror x17, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x28, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
ror x18, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x00000000ffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x13, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x16, 0x00000000ffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
ror x20, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
ror x14, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0x00000000ffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
ror x11, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x2, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
ror x6, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x9, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
ror x11, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
ror x6, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
ror x10, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x9, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
ror x14, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x28, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
ror x8, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x29, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
ror x3, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
ror x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
ror x12, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x14, 0x00000000fffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
ror x28, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
ror x29, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0x00000000fffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
ror x27, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x14, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x24, 0x00000000fffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
ror x26, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
ror x26, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
ror x29, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x12, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
ror x26, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
ror x3, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
ror x23, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x13, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
ror x25, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
ror x21, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x2, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
ror x22, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x5, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
ror x26, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
ror x10, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
ror x24, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
ror x5, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
ror x24, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000100000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
ror x2, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x30, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
ror x10, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
ror x20, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
ror x29, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
ror x26, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x12, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
ror x28, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x8, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
ror x30, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x26, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
ror x21, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x16, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
ror x2, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x17, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
ror x31, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
ror x23, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
ror x1, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000100000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
ror x17, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
ror x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
ror x30, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000100000001 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
ror x25, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
ror x15, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x5, 0x0000000100000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
ror x21, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
ror x5, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x7, 0x0000000100000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
ror x1, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
ror x11, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
ror x18, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x908473a32596996f # initialize rs1
li x0, 0xf9dc2b910a8fe36e # initialize rs2
ror x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x26c3ca12df5ae525 # initialize rs1
li x1, 0x26077e165c36f8a1 # initialize rs2
ror x21, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x34e08a93f68efcb1 # initialize rs1
li x2, 0x1ddba94a55e19922 # initialize rs2
ror x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x71368bde1cb0c8dd # initialize rs1
li x3, 0x2a97713f20dbf7c8 # initialize rs2
ror x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa7abdd05c4c30029 # initialize rs1
li x4, 0x6a234efb952de020 # initialize rs2
ror x9, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5417d21350baef9e # initialize rs1
li x5, 0x8a6e507bd3d18877 # initialize rs2
ror x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd10e96ec30d0bab2 # initialize rs1
li x6, 0x443705ded66d50f1 # initialize rs2
ror x2, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8fe8d6526938e261 # initialize rs1
li x7, 0x4d29dca68fa08f32 # initialize rs2
ror x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xc16cd661db0cf555 # initialize rs1
li x8, 0xa039dddc4693b24b # initialize rs2
ror x17, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa9cbaeae8c727e40 # initialize rs1
li x9, 0x35dd400b4b97797a # initialize rs2
ror x19, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x781cdb65627ce160 # initialize rs1
li x10, 0x2dcd62e8a913f21d # initialize rs2
ror x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x35066170cfcf4ac2 # initialize rs1
li x11, 0x6d9efc94479b18fa # initialize rs2
ror x13, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3594d743055b0e89 # initialize rs1
li x12, 0x3350a40d796ac671 # initialize rs2
ror x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x4122ba0dfc898903 # initialize rs1
li x13, 0xe3d3d97f5b199e3e # initialize rs2
ror x12, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc5bfb5e420650b0d # initialize rs1
li x14, 0xc68942217481c347 # initialize rs2
ror x29, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa9db4755f2feedcd # initialize rs1
li x15, 0x80aec6e9119657c9 # initialize rs2
ror x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x5f4867f3b1039372 # initialize rs1
li x16, 0x73cb1b616d066faa # initialize rs2
ror x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc1944cddb7385338 # initialize rs1
li x17, 0x60b1814b477e987a # initialize rs2
ror x27, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x699dcd15472b0288 # initialize rs1
li x18, 0xdd7d4b713d229580 # initialize rs2
ror x21, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xffd3dd6d0cd35f5c # initialize rs1
li x19, 0x7a05547306d121df # initialize rs2
ror x16, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xaf99ba26108c47e3 # initialize rs1
li x20, 0xa8af1826912329d1 # initialize rs2
ror x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x9ec5783faf8f6f34 # initialize rs1
li x21, 0x898826d1bb7b69f3 # initialize rs2
ror x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xc1849e977d918f99 # initialize rs1
li x22, 0x2175bf420f90c185 # initialize rs2
ror x1, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x10c9d255cea7a16d # initialize rs1
li x23, 0x3c8e32976d542fd0 # initialize rs2
ror x9, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x14ea7a5ced21d456 # initialize rs1
li x24, 0x7f27b895a8908176 # initialize rs2
ror x12, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf7949fcc97117831 # initialize rs1
li x25, 0x4ecc2d3958ee1254 # initialize rs2
ror x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x507c6e7a3df4d03d # initialize rs1
li x26, 0xfecd433bc16a8f19 # initialize rs2
ror x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x776ea3f89855277a # initialize rs1
li x27, 0x49225beae06eae36 # initialize rs2
ror x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x48d5b8d97f3535ec # initialize rs1
li x28, 0xd74b723191ec812b # initialize rs2
ror x3, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x57d1d276d06808e5 # initialize rs1
li x29, 0x2b90c2d050c0c796 # initialize rs2
ror x9, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa33ec620cf1da49e # initialize rs1
li x30, 0xdde14f0a39ea4cb2 # initialize rs2
ror x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x789efafbadabdc07 # initialize rs1
li x31, 0x2b11eb0b2206c8b7 # initialize rs2
ror x27, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0d8c700f0370f81b # initialize rs1
li x16, 0x7f80b71c70e19b3b # initialize rs2
ror x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7e454d14bd9085b3 # initialize rs1
li x15, 0x09305d74b7d34929 # initialize rs2
ror x1, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x37a02e0d10d0e330 # initialize rs1
li x17, 0xfb5822f1c1a3286b # initialize rs2
ror x2, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x9bd50f46343d530f # initialize rs1
li x25, 0x4e68a22699bb1b46 # initialize rs2
ror x3, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x27bf5ff32668eb9e # initialize rs1
li x12, 0xa907cbc48d1567be # initialize rs2
ror x4, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2e0acd133992aee5 # initialize rs1
li x25, 0x8b30f66f011ec1b4 # initialize rs2
ror x5, x5, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3c04134f6375e5ce # initialize rs1
li x23, 0x95e9aa4083d7c8e6 # initialize rs2
ror x6, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa8960229f6770fcd # initialize rs1
li x9, 0xc21d4564c338e7e2 # initialize rs2
ror x7, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe169a21ed16bbe1d # initialize rs1
li x9, 0x07f47ee265e0191b # initialize rs2
ror x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xfdd83c56a952149e # initialize rs1
li x31, 0x8ec9d0406151dc61 # initialize rs2
ror x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x21720bf7608e693c # initialize rs1
li x24, 0x4e343799229c811e # initialize rs2
ror x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x41d197939652c393 # initialize rs1
li x2, 0x7c676aabd34431e1 # initialize rs2
ror x11, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0f1c68f719ea2299 # initialize rs1
li x22, 0x930c15ab3b6e0aab # initialize rs2
ror x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4fef05c7edb0ae4f # initialize rs1
li x22, 0xb44d2d0c53039560 # initialize rs2
ror x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7e94b4c9d3779103 # initialize rs1
li x19, 0xa9353e4d5592f84f # initialize rs2
ror x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x905a3e24e020e048 # initialize rs1
li x29, 0x49dfc49f1424b543 # initialize rs2
ror x15, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x924a2822184cc8f4 # initialize rs1
li x30, 0xc2af05f3d5197419 # initialize rs2
ror x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1f2e45a0f1d1d334 # initialize rs1
li x14, 0x2d12efd67e2af1a2 # initialize rs2
ror x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5aafce5643e301e6 # initialize rs1
li x7, 0x240fa6aaea4e3655 # initialize rs2
ror x18, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5421a183c919e249 # initialize rs1
li x16, 0x920951161820c1ab # initialize rs2
ror x19, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4449ebb1608ec87a # initialize rs1
li x25, 0xe0e6d6956a32a2b2 # initialize rs2
ror x20, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf87d815f6d329bbf # initialize rs1
li x19, 0x90f87bec47e7ef87 # initialize rs2
ror x21, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x107f04fdd4bab89b # initialize rs1
li x25, 0x2fbd55a84ad4f50a # initialize rs2
ror x22, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x6f09f5aba1971202 # initialize rs1
li x2, 0x89541faf216f72b7 # initialize rs2
ror x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x29ef04e9dbbfbb87 # initialize rs1
li x7, 0x1362ae7f95f47e29 # initialize rs2
ror x24, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xbf38266453da1a85 # initialize rs1
li x8, 0x56ad4672e1469133 # initialize rs2
ror x25, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x580f7767ae0f7c55 # initialize rs1
li x5, 0x92db48b7d24154a0 # initialize rs2
ror x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6fddf96e243f5641 # initialize rs1
li x22, 0xe5d557267fd1bd8b # initialize rs2
ror x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x55ce6e237604b568 # initialize rs1
li x1, 0x8a2dd6bda5c25d89 # initialize rs2
ror x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x65a068376a4978f9 # initialize rs1
li x13, 0xafff157d66ef55a7 # initialize rs2
ror x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa5d90e5b9108964c # initialize rs1
li x20, 0x6e38777e850c7d40 # initialize rs2
ror x30, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2278995927d1de4e # initialize rs1
li x5, 0xabda964382a6cfbb # initialize rs2
ror x31, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x9, 0x3b8f7af08d33d99f # initialize rs1
li x0, 0xb27fb6b87a8aa11e # initialize rs2
ror x0, x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0x15f1553871e52b98 # initialize rs1
li x1, 0x9a57f8db69bcb7ea # initialize rs2
ror x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0x6030f9ffc1f94aac # initialize rs1
li x2, 0xc5cfbed14e4e75c1 # initialize rs2
ror x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xbfd17e625ca52ca4 # initialize rs1
li x3, 0xb678731341cd6e8c # initialize rs2
ror x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x2107e5c94cd4e112 # initialize rs1
li x4, 0x7e9f26fac1ff2fb8 # initialize rs2
ror x4, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x75757523d7921911 # initialize rs1
li x5, 0x3b10c715b3f48975 # initialize rs2
ror x5, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x472ed954e67cb880 # initialize rs1
li x6, 0x93f619a99e62dd9a # initialize rs2
ror x6, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xfc057ef3572be101 # initialize rs1
li x7, 0xd2842ef0481bac9d # initialize rs2
ror x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x17, 0xcb3ade5f31711acb # initialize rs1
li x8, 0xbe9838db45ae3e18 # initialize rs2
ror x8, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x24, 0x31df0a443ce5b619 # initialize rs1
li x9, 0xc29161a0a363c027 # initialize rs2
ror x9, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0x7be7f8f0d9ea924d # initialize rs1
li x10, 0x628c4a7106490729 # initialize rs2
ror x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x31, 0xce298b25923bbd38 # initialize rs1
li x11, 0x992b08080364ee4f # initialize rs2
ror x11, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x26, 0xc7c8eba8699b0832 # initialize rs1
li x12, 0xfdd4f68cf9de7058 # initialize rs2
ror x12, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x16, 0xe2acca75c86ab5bd # initialize rs1
li x13, 0x4a5daa61abdcc32a # initialize rs2
ror x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x11, 0x4ec199f1062e5661 # initialize rs1
li x14, 0x05a5d18e0989e583 # initialize rs2
ror x14, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x7, 0x0541ff3207077c18 # initialize rs1
li x15, 0x880553e6bb5a1d17 # initialize rs2
ror x15, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0xc2c885fbdd72f64b # initialize rs1
li x16, 0x5df0256fe7b417ff # initialize rs2
ror x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0x840018ccf0fef60c # initialize rs1
li x17, 0xa4ca4e1f7fe53165 # initialize rs2
ror x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x5, 0x3df9c798bddaa92a # initialize rs1
li x18, 0x22ececca31424fe6 # initialize rs2
ror x18, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0xf99032e37a70cfcb # initialize rs1
li x19, 0x738729ccd8deb8a6 # initialize rs2
ror x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0x894ff1a55170f066 # initialize rs1
li x20, 0xcdbc415424574651 # initialize rs2
ror x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0xca75c38dfd29b598 # initialize rs1
li x21, 0x51faa3d9eae55e23 # initialize rs2
ror x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x30, 0xcd260578be4942af # initialize rs1
li x22, 0xc6206a25b6ae770e # initialize rs2
ror x22, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x13, 0x681495270d3acdf5 # initialize rs1
li x23, 0xaa7b87ada764ca47 # initialize rs2
ror x23, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0xea363a92da2bceb4 # initialize rs1
li x24, 0xd1c4bcdf8523a69c # initialize rs2
ror x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0xdbaf16ea09a75e2b # initialize rs1
li x25, 0x88d1b17990e192e4 # initialize rs2
ror x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x18, 0x8c8ada14c755ed7a # initialize rs1
li x26, 0x54a5d34784fcb986 # initialize rs2
ror x26, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x12, 0xfec7c53e4974fe29 # initialize rs1
li x27, 0xd38876535209811f # initialize rs2
ror x27, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0x48f70bb03a5f3177 # initialize rs1
li x28, 0x0ced8bfc8424c769 # initialize rs2
ror x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x10, 0xf78bc3447c88e4a0 # initialize rs1
li x29, 0x92c9b0a5e7a1cb1a # initialize rs2
ror x29, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0xd9c73480719f076e # initialize rs1
li x30, 0x9af6da9523a8f4b3 # initialize rs2
ror x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x6, 0xda67595c3c775218 # initialize rs1
li x31, 0xcae6b9b740d82559 # initialize rs2
ror x31, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe17728397e33ce73 # initialize rs1
li x0, 0x43f5ad5ede52f9c7 # initialize rs2
ror x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xab700fd99e347713 # initialize rs1
li x1, 0xe89c5bf1531ee977 # initialize rs2
ror x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1d64dd79a2449549 # initialize rs1
li x2, 0x92fc9589c806d5b3 # initialize rs2
ror x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1e700ad17945bc83 # initialize rs1
li x3, 0x6e4912d42149ca73 # initialize rs2
ror x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7ec855633aee4bc6 # initialize rs1
li x4, 0xe2cc5ddc493fc7be # initialize rs2
ror x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xff9c059de92bb936 # initialize rs1
li x5, 0x17e0e1fd7d321a92 # initialize rs2
ror x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0251cbdc833ef554 # initialize rs1
li x6, 0x99efd1e685b35f0a # initialize rs2
ror x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4af786460ea4c78c # initialize rs1
li x7, 0x10815f8bad06537f # initialize rs2
ror x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xfa173fd6125aa2c7 # initialize rs1
li x8, 0xf49730845da02010 # initialize rs2
ror x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x937e0a954b02cacb # initialize rs1
li x9, 0x87b0196026ab3890 # initialize rs2
ror x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5e61c4ba15990b54 # initialize rs1
li x10, 0x6e7f63732745d290 # initialize rs2
ror x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x17a283cf74b35c5f # initialize rs1
li x11, 0x38db3bb567575e0b # initialize rs2
ror x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x26ef93ac77152d09 # initialize rs1
li x12, 0xedfe74e8f166e925 # initialize rs2
ror x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x079f6cb556ed4825 # initialize rs1
li x13, 0xc4485e6e800ff1e2 # initialize rs2
ror x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x61ea523f53715d47 # initialize rs1
li x14, 0x0eb637c0ffef02f6 # initialize rs2
ror x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf4914da9bc6e033f # initialize rs1
li x15, 0xd51193a3883be9c8 # initialize rs2
ror x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xee57fd3ccb975c49 # initialize rs1
li x16, 0x2e25a1629a5a26bf # initialize rs2
ror x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x4bfff2881b7603ba # initialize rs1
li x17, 0x20e49e9d520c76b5 # initialize rs2
ror x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf23a0b4692353d39 # initialize rs1
li x18, 0xbfa7be71e56662a9 # initialize rs2
ror x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe3ff6a51ca918f69 # initialize rs1
li x19, 0xf66497ea0ad78b65 # initialize rs2
ror x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x76f31d446601b995 # initialize rs1
li x20, 0x39374becf970b986 # initialize rs2
ror x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x797d12e05c69639a # initialize rs1
li x21, 0xafdc7302a2fb1c89 # initialize rs2
ror x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x752279541099b937 # initialize rs1
li x22, 0x5e3fd12b08ac31af # initialize rs2
ror x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcc63e1eb3af57f48 # initialize rs1
li x23, 0x92b2776317f6f37b # initialize rs2
ror x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe8ddbf16f7db8680 # initialize rs1
li x24, 0x31f5f838665879cb # initialize rs2
ror x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xa7bd16ce51c34629 # initialize rs1
li x25, 0xcd4c94fbf68e64c7 # initialize rs2
ror x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x84880b79e7df525b # initialize rs1
li x26, 0xe1e60f40c5f7a73c # initialize rs2
ror x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x08bc01bd5736c3e2 # initialize rs1
li x27, 0x7d0ff76a3ccca2fe # initialize rs2
ror x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6b4ea1d33824e321 # initialize rs1
li x28, 0x1a971c9e4a6f09f0 # initialize rs2
ror x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x6fe09da0c026d1ab # initialize rs1
li x29, 0x93f57d8fd163b764 # initialize rs2
ror x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd90c3f8d66a443ad # initialize rs1
li x30, 0x72040f4f57998742 # initialize rs2
ror x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6106ad925f7af537 # initialize rs1
li x31, 0x012692f55ec84575 # initialize rs2
ror x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x16, x28 # perform first operation
ror x12, x24, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x18, x31 # perform first operation
ror x21, x28, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x8 # perform first operation
ror x22, x7, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x26, x9 # perform first operation
ror x19, x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x24, x22 # perform first operation
ror x22, x7, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x6, x16 # perform first operation
ror x30, x16, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x26, x31 # perform first operation
ror x17, x19, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x11, x16 # perform first operation
ror x13, x17, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x6, x21 # perform first operation
ror x16, x30, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x16, x29 # perform first operation
ror x16, x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x28, x5 # perform first operation
ror x5, x6, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x24, x27 # perform first operation
ror x22, x26, x20 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-pack.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x52c7373c9138f3df # initialize rs1
li x20, 0xac19368b0a4f925f # initialize rs2
pack x5, x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xeaa783af2db49809 # initialize rs1
li x19, 0x4f94fa701f6f388f # initialize rs2
pack x5, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5abb831e59bcceab # initialize rs1
li x6, 0xda66cecb3d14a42f # initialize rs2
pack x16, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0ef599995e095706 # initialize rs1
li x2, 0xd5a2018626c09229 # initialize rs2
pack x14, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaf5df4d07468740a # initialize rs1
li x8, 0x3d2e1a9c555379f5 # initialize rs2
pack x25, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8728e6ea7a590339 # initialize rs1
li x12, 0x8669032ac77e1913 # initialize rs2
pack x3, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0e9e97ef4b8d6f6a # initialize rs1
li x3, 0x90b6b8516713d366 # initialize rs2
pack x14, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf870feba26eb47f2 # initialize rs1
li x20, 0x22175fbed8fbe56a # initialize rs2
pack x17, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1bef9e5d6ddfe2bb # initialize rs1
li x17, 0xde909e5347e90d75 # initialize rs2
pack x12, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb443652471caaeaa # initialize rs1
li x7, 0x1d9a8a7fa4339c72 # initialize rs2
pack x29, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x91c9b9b2078c6763 # initialize rs1
li x26, 0x98c22ec13bce1cfb # initialize rs2
pack x16, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x063830f98a4bbab2 # initialize rs1
li x19, 0x43f7c0dd0e42f4ce # initialize rs2
pack x15, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf51f993ff77e7d61 # initialize rs1
li x11, 0xb902842325afb0ad # initialize rs2
pack x23, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x955394d60db7b684 # initialize rs1
li x15, 0xbc4d59d1f4306a89 # initialize rs2
pack x5, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf1ebd235e1bd2156 # initialize rs1
li x6, 0xc033d25cde9a2208 # initialize rs2
pack x13, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe88c0b097dc06616 # initialize rs1
li x10, 0x8c09d3dcd5205505 # initialize rs2
pack x20, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6c00f171acef9286 # initialize rs1
li x11, 0xba0879d5faa74fa7 # initialize rs2
pack x1, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x91a5470d959311a6 # initialize rs1
li x12, 0x70e9e3972e484ffe # initialize rs2
pack x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfc289b3c8e700a24 # initialize rs1
li x17, 0xdbd07abe15e483b3 # initialize rs2
pack x24, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb3d57feecd642d2e # initialize rs1
li x7, 0x8563a34e3fa1bb7b # initialize rs2
pack x30, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x54ae2036e5e68c13 # initialize rs1
li x30, 0xb0de92dde58f74d5 # initialize rs2
pack x27, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x65df71eb7001a60f # initialize rs1
li x24, 0x1573872f913e3a47 # initialize rs2
pack x16, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc7070c7c0ebeba52 # initialize rs1
li x7, 0x67537737873cebf3 # initialize rs2
pack x28, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1349b33b4556ceb8 # initialize rs1
li x19, 0xb97b71503192e974 # initialize rs2
pack x31, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x15d421ca42adb862 # initialize rs1
li x15, 0x00f015f7f62f3bc8 # initialize rs2
pack x9, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5058ea6ab34f7bd7 # initialize rs1
li x22, 0x9d2b4f241dbd1bdf # initialize rs2
pack x19, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6568a52f6c5a185a # initialize rs1
li x10, 0x8783a5aff7c7c080 # initialize rs2
pack x6, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x8fa0d4dc14ead4a5 # initialize rs1
li x9, 0x37ef310afb9efd89 # initialize rs2
pack x19, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x10cf65ad775fa27a # initialize rs1
li x31, 0x27da8befaf97e800 # initialize rs2
pack x15, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x6d6035a9ff79b898 # initialize rs1
li x18, 0x374e25199e141418 # initialize rs2
pack x23, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x26a6f0aae4ab72d3 # initialize rs1
li x18, 0x6776f6bbd56d90b5 # initialize rs2
pack x6, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xfca19bc33e5d19be # initialize rs1
li x8, 0xc8449984349410a6 # initialize rs2
pack x3, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rs2 (Test source rs2 = x1)
li x19, 0xaa39e0507c8923a5 # initialize rs1
li x1, 0x2de99755e5101494 # initialize rs2
pack x6, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_rs2 (Test source rs2 = x2)
li x20, 0xf4f751f506427d68 # initialize rs1
li x2, 0x9a328e6991b009c6 # initialize rs2
pack x1, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rs2 (Test source rs2 = x3)
li x20, 0xce9e6f949b2649a6 # initialize rs1
li x3, 0x8398ed88b2cb01c9 # initialize rs2
pack x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x85ec3e70b8bac766 # initialize rs1
li x4, 0xdfd032df04a4a73e # initialize rs2
pack x2, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xd79822154cf33281 # initialize rs1
li x5, 0x538750cb94af7eb4 # initialize rs2
pack x24, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 288)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x334b941ca8a699b3 # initialize rs1
li x6, 0x056bacccc6af944c # initialize rs2
pack x19, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x49c8c2c06b1604da # initialize rs1
li x7, 0x1e93df3dc5ef5dc9 # initialize rs2
pack x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cp_rs2 (Test source rs2 = x8)
li x11, 0x632abb3977d249e6 # initialize rs1
li x8, 0x99cce8ea98cb8a6d # initialize rs2
pack x27, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0xe5ac9148ef03f3f6 # initialize rs1
li x9, 0xde8ce567c9cc679c # initialize rs2
pack x11, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 320)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0x7f14bc7c02744dc8 # initialize rs1
li x10, 0xc28115acdc3bf8fe # initialize rs2
pack x12, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x11)
li x18, 0x93634316e8a1ee3b # initialize rs1
li x11, 0x7173f5499fc85e85 # initialize rs2
pack x5, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 336)

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x1f5ef26af41dfd65 # initialize rs1
li x12, 0xe38eb20f9b06f10b # initialize rs2
pack x24, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0x6b52544d71e598dd # initialize rs1
li x13, 0x38d12952bac8ae07 # initialize rs2
pack x15, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cp_rs2 (Test source rs2 = x14)
li x8, 0x87dceb923d4efc0f # initialize rs1
li x14, 0x6a45d17c4f804671 # initialize rs2
pack x13, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x01121d278e2be04e # initialize rs1
li x15, 0x1a734fa635a5a5de # initialize rs2
pack x12, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xc67aa2e87eef3cab # initialize rs1
li x16, 0x422acfcf70df738f # initialize rs2
pack x1, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x38ae5b746869c1e8 # initialize rs1
li x17, 0x63c417f42967a408 # initialize rs2
pack x7, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xca736b3eae6d09ec # initialize rs1
li x18, 0x507dece79c8dfcff # initialize rs2
pack x2, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0xaeb9c943aa30ed24 # initialize rs1
li x19, 0xe88b84e9dbd39f04 # initialize rs2
pack x8, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x01d4f1c962a07a78 # initialize rs1
li x20, 0x2181b5ce3cc7ceac # initialize rs2
pack x13, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0xb6bce448000bade9 # initialize rs1
li x21, 0x1e65c7358c8f5039 # initialize rs2
pack x7, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0xdd6c33d3e8f3c58e # initialize rs1
li x22, 0x1e0ff5114f07b497 # initialize rs2
pack x26, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0xdadff62381f89822 # initialize rs1
li x23, 0xd7e57ddffb0cab6f # initialize rs2
pack x2, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0xf887025d6028e25e # initialize rs1
li x24, 0x341c175d4ceab86b # initialize rs2
pack x16, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0x925436ee582e720c # initialize rs1
li x25, 0x4ab5620b6526062b # initialize rs2
pack x14, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x53faca505b88517c # initialize rs1
li x26, 0x69a7837dc69c9f41 # initialize rs2
pack x3, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2 (Test source rs2 = x27)
li x6, 0xcb814e08f059d7b9 # initialize rs1
li x27, 0x7729d54787554069 # initialize rs2
pack x10, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0x5a974109fd8c624d # initialize rs1
li x28, 0x2b243072de8bb503 # initialize rs2
pack x19, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x76eef01f059a3297 # initialize rs1
li x29, 0x17e572e36b8c6a9e # initialize rs2
pack x18, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 480)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0x2fcdb33f9247558a # initialize rs1
li x30, 0x7129c2b0c3d3a886 # initialize rs2
pack x25, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cp_rs2 (Test source rs2 = x31)
li x25, 0x8d722bb9f7f90205 # initialize rs1
li x31, 0xb1300d842af08c06 # initialize rs2
pack x9, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x293943c9dfd02163 # initialize rs1
li x19, 0x32b8dbcaef1eab8b # initialize rs2
pack x0, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 504)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xb00480ac298cfbda # initialize rs1
li x3, 0x88b9e012443994df # initialize rs2
pack x1, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x77769d5c50b75eb3 # initialize rs1
li x24, 0x472e9c16ed823b09 # initialize rs2
pack x2, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0x245d120d2afd7952 # initialize rs1
li x14, 0xf0a7eb3423519abc # initialize rs2
pack x3, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xd6d5a88593e28f49 # initialize rs1
li x30, 0xeaa53f4403685257 # initialize rs2
pack x4, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 536)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xa7e635fed57b106e # initialize rs1
li x31, 0xd85a619ee39dc830 # initialize rs2
pack x5, x20, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 544)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x02dcd5bd69f604cd # initialize rs1
li x5, 0xcdb3f9ee07fd306d # initialize rs2
pack x6, x21, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 552)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x9e7487b9e0b703d7 # initialize rs1
li x14, 0xd0b3dd45b9029f55 # initialize rs2
pack x7, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0xd3c8820835371fad # initialize rs1
li x21, 0xdf7e4d535d9bc51b # initialize rs2
pack x8, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0x22215d415bb66045 # initialize rs1
li x28, 0xcf3cedc17aa302d5 # initialize rs2
pack x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xb33a8484fa09f742 # initialize rs1
li x28, 0x4d44a0c70bb30ea9 # initialize rs2
pack x10, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x0b26fdae9cbe71b2 # initialize rs1
li x22, 0x36ecab6eb00ad6d3 # initialize rs2
pack x11, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x257854e65d83a7a7 # initialize rs1
li x25, 0x1f3b730d0b2fb6d9 # initialize rs2
pack x12, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0xeebae886edeefedc # initialize rs1
li x28, 0x36394bb5f6c1d625 # initialize rs2
pack x13, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x4757f77463a2a59c # initialize rs1
li x22, 0x7446313befbe2d05 # initialize rs2
pack x14, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x0d091d53ce5ab736 # initialize rs1
li x25, 0xb38d039092ed8f62 # initialize rs2
pack x15, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0x3be78923ebc91efe # initialize rs1
li x29, 0x2519a3713e8f0e0d # initialize rs2
pack x16, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x229deb9c4fc29528 # initialize rs1
li x23, 0x83b450407be72df1 # initialize rs2
pack x17, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 640)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x47a52805161428ee # initialize rs1
li x11, 0x083b99313ccac641 # initialize rs2
pack x18, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x4dfaef76c21fbba1 # initialize rs1
li x11, 0xb3aaa788c22b731e # initialize rs2
pack x19, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x92961595aef0a43f # initialize rs1
li x17, 0x7478ea3e8fa9e939 # initialize rs2
pack x20, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0xcf8854f0b34430d5 # initialize rs1
li x1, 0x46889c275b1ec5ee # initialize rs2
pack x21, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x080aeecd38e05850 # initialize rs1
li x17, 0x3914807f691a95e5 # initialize rs2
pack x22, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x7a95365a60d3acf2 # initialize rs1
li x19, 0x275ad4c4a87a0744 # initialize rs2
pack x23, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 688)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x35cac0ea27fc3f46 # initialize rs1
li x22, 0xdd4b52e41fa12454 # initialize rs2
pack x24, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x0b7747f70e3e69d9 # initialize rs1
li x17, 0x22056c805d21a30f # initialize rs2
pack x25, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 704)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0xfdf6b84cca80b2c6 # initialize rs1
li x2, 0x3edc14e315a863ed # initialize rs2
pack x26, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x7dc47439ed25d8c9 # initialize rs1
li x11, 0x336a1b54c3cc1f92 # initialize rs2
pack x27, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0xc4dd3162208c1281 # initialize rs1
li x10, 0x61712fb06e66a1b1 # initialize rs2
pack x28, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 728)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xc86689572d0849e3 # initialize rs1
li x5, 0xeba24f87fd920141 # initialize rs2
pack x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0x29b6f135a579b24e # initialize rs1
li x17, 0x62d83bc08c63aba6 # initialize rs2
pack x30, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0x1bd6a41d7598bb76 # initialize rs1
li x11, 0x93a90a7af41d83af # initialize rs2
pack x31, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 752)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x5, 0xb0355fc52ac506cd # initialize rs2
pack x16, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x17, 0xef7178ebffc1e533 # initialize rs2
pack x23, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rs1
li x18, 0x7212928290848a96 # initialize rs2
pack x19, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x3, 0x8000000000000000 # initialize rs1
li x17, 0xf986d6c8305d728d # initialize rs2
pack x1, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
li x14, 0x384cc996386ea6b5 # initialize rs2
pack x31, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x14, 0xae556886b57d3c5c # initialize rs2
pack x6, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x26, 0xe9b416b323b91d02 # initialize rs2
pack x3, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x8, 0x0cccf840a3a16149 # initialize rs2
pack x9, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x24, 0x2aec93934c542ac8 # initialize rs2
pack x16, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7b2545c753fb42da # initialize rs2
pack x28, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5c30d775738f9c8b # initialize rs2
pack x19, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0xe776f25c94de0c95 # initialize rs2
pack x2, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x23, 0x047863633c1feaaa # initialize rs2
pack x3, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x13, 0x8120f6260ebaf95f # initialize rs2
pack x2, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
li x18, 0x20a93379b31fe078 # initialize rs2
pack x7, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x8, 0x24e79e67c3103021 # initialize rs2
pack x10, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0x853ff5170c5090b0 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
pack x11, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0xb7e7c3878a01d836 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
pack x22, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x27, 0x945a9db909ebbfcc # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
pack x18, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xdc3a79fe699e5b5a # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
pack x13, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x18, 0x3f465cdf84483d84 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
pack x3, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0xd32bf2094408cd6f # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
pack x7, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x30, 0x5f626902b63fca45 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
pack x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0xd5c83a91099912ce # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
pack x25, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x10, 0x8b7af371babdd63d # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
pack x1, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0xe362e7aa71bc532e # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
pack x13, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0xab51af460e30e191 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x21, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x23, 0x7f099a74ebc8a2de # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
pack x25, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0x9a34c36e47d7b593 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
pack x22, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0xccb4d1aadd0ca500 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
pack x13, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x8, 0xa1c581652d70b90e # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
pack x6, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0xfda0dcd7824aaf6d # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
pack x10, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
pack x5, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x26, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
pack x16, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
pack x9, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x22, 0x0000000000000000 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
pack x11, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
pack x9, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
pack x31, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
pack x21, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
pack x27, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
pack x20, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
pack x2, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x3, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x20, 0x0000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
pack x2, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x21, 0x0000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
pack x11, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
pack x11, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
pack x5, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x0000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
pack x30, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
pack x28, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
pack x15, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x13, 0x0000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
pack x16, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x19, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
pack x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
pack x11, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
pack x16, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
pack x9, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
pack x9, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
pack x29, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000001 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x26, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x2, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
pack x23, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
pack x3, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
pack x26, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x28, 0x0000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x1, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x6, 0x0000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
pack x21, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
pack x28, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
pack x14, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
pack x18, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x27, 0x0000000000000002 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
pack x1, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
pack x31, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
pack x26, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
pack x8, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
pack x7, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
pack x22, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000002 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
pack x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000002 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x24, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
pack x26, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
pack x29, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
pack x13, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x1, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x10, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
pack x7, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x24, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
pack x21, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
pack x7, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x25, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
pack x21, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
pack x8, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x23, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
pack x26, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
pack x19, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
pack x27, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
pack x12, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x20, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
pack x30, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x27, 0x8000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
pack x18, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x24, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x24, 0x8000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
pack x29, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
pack x24, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
pack x26, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
pack x26, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
pack x26, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x8, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
pack x21, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
pack x7, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x31, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
pack x9, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x26, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
pack x11, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x7, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
pack x6, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
pack x17, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
pack x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
pack x9, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
pack x31, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
pack x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x23, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x3, 0x8000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
pack x18, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
pack x21, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
pack x31, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x24, 0x8000000000000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
pack x20, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
pack x10, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x2, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
pack x23, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x16, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
pack x11, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x5, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
pack x11, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
pack x6, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x17, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
pack x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
pack x21, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x7fffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
pack x11, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
pack x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
pack x23, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x7fffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
pack x25, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7fffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x31, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x24, 0x7fffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
pack x26, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
pack x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
pack x6, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
pack x24, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
pack x5, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
pack x9, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x24, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
pack x12, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
pack x29, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
pack x25, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0x7ffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
pack x12, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
pack x22, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
pack x28, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0x7ffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
pack x14, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
pack x31, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0x7ffffffffffffffe # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
pack x11, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x15, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
pack x29, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
pack x20, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
pack x12, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
pack x1, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
pack x6, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
pack x25, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
pack x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
pack x31, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
pack x10, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0xffffffffffffffff # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
pack x29, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
pack x10, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
pack x10, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
pack x24, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
pack x25, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
pack x20, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xffffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x30, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x27, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
pack x1, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
pack x16, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
pack x22, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x28, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
pack x17, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x6, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
pack x17, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
pack x20, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
pack x7, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x5, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
pack x27, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0xfffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
pack x1, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
pack x1, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0xfffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
pack x21, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
pack x12, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
pack x5, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
pack x24, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
pack x29, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xfffffffffffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x10, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
pack x22, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
pack x25, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
pack x2, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
pack x15, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x3, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
pack x8, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
pack x14, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
pack x2, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
pack x10, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
pack x7, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
pack x20, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
pack x19, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
pack x15, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
pack x24, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
pack x31, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
pack x12, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x15, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
pack x3, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
pack x15, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
pack x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
pack x9, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
pack x13, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
pack x22, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
pack x14, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
pack x24, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
pack x6, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
pack x28, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
pack x21, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
pack x14, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
pack x2, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
pack x29, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
pack x1, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x20, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
pack x11, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
pack x14, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
pack x17, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
pack x18, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
pack x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x15, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
pack x11, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
pack x5, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
pack x30, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x12, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
pack x30, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
pack x16, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
pack x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
pack x20, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
pack x30, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
pack x29, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x18, 0x5555555555555555 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
pack x24, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x5555555555555555 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x2, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
pack x3, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
pack x31, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
pack x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x30, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
pack x2, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x1, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
pack x20, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
pack x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x5, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
pack x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x27, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
pack x20, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x9, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
pack x19, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
pack x21, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
pack x30, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
pack x25, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
pack x27, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
pack x14, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0x00000000ffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
pack x23, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
pack x3, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
pack x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
pack x19, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x3, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
pack x29, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
pack x2, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x5, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
pack x28, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x7, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
pack x31, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
pack x9, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x27, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
pack x1, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x18, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
pack x1, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
pack x27, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
pack x1, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
pack x19, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
pack x14, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000fffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
pack x22, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000fffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x23, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x22, 0x00000000fffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
pack x20, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
pack x19, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
pack x13, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x12, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
pack x1, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x16, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
pack x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x7, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
pack x20, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
pack x1, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x21, 0x0000000100000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
pack x11, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x12, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
pack x8, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
pack x10, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
pack x11, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
pack x19, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
pack x12, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
pack x31, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
pack x29, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000100000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x14, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0x0000000100000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
pack x27, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
pack x15, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
pack x25, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
pack x1, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x29, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
pack x3, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x18, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
pack x31, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x16, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
pack x2, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
pack x17, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
pack x17, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x31, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
pack x15, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
pack x2, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
pack x13, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x15, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
pack x31, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
pack x20, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
pack x3, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000100000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
pack x15, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x11, 0x0000000100000001 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
pack x21, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
pack x31, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
pack x30, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
pack x23, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x25, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
pack x31, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9373134339a328c4 # initialize rs1
li x1, 0xd7e65a1003c2fccc # initialize rs2
pack x8, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe4a9959fd5f32758 # initialize rs1
li x2, 0xbfd86f2f4f11873b # initialize rs2
pack x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdd18c5a4f367bf64 # initialize rs1
li x3, 0xbee7c984d3c1b263 # initialize rs2
pack x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4c68ea9ce0327ed2 # initialize rs1
li x4, 0x737cd5252a45989e # initialize rs2
pack x6, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1420b0ccf0e7a931 # initialize rs1
li x5, 0x5901ed6ae6c27428 # initialize rs2
pack x9, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1e1dd9ab63f3156b # initialize rs1
li x6, 0x0fcecf63adf568d9 # initialize rs2
pack x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4ee1be240713d7a4 # initialize rs1
li x7, 0x4947208136f819aa # initialize rs2
pack x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xf592959321a6919a # initialize rs1
li x8, 0xe4107f16235c3d38 # initialize rs2
pack x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xb415b708009cf59f # initialize rs1
li x9, 0xe823c8b3bb48c61a # initialize rs2
pack x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x842c0cffee5e5b45 # initialize rs1
li x10, 0x812c6ac7212384de # initialize rs2
pack x15, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x572c84b0cac35f81 # initialize rs1
li x11, 0x6d4dd1e9cca900bf # initialize rs2
pack x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x20c58d22b08dbdd2 # initialize rs1
li x12, 0x56243defe51d82e1 # initialize rs2
pack x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x820cf30b4b8e7297 # initialize rs1
li x13, 0x0f518f3372445142 # initialize rs2
pack x18, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x0283b6bee05669b0 # initialize rs1
li x14, 0xc85f506900b7e9cd # initialize rs2
pack x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x7cb26c499c495fdb # initialize rs1
li x15, 0x84e604fdb1d10ae9 # initialize rs2
pack x11, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x678b33536dc2a37b # initialize rs1
li x16, 0xed0d43e7877a96a1 # initialize rs2
pack x20, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x98fc647859b9fd20 # initialize rs1
li x17, 0x4657b7d9ca1c4fb8 # initialize rs2
pack x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xbaa1a43fa4523c64 # initialize rs1
li x18, 0x105db4474b52c70a # initialize rs2
pack x5, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x21ca55bf0e0f6246 # initialize rs1
li x19, 0x2526bf693944dba1 # initialize rs2
pack x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf18fb20831f22846 # initialize rs1
li x20, 0xb5b2783f2aef1c8c # initialize rs2
pack x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x77698eb2b553633b # initialize rs1
li x21, 0x973f3586f4929068 # initialize rs2
pack x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1b5d4e9d954db390 # initialize rs1
li x22, 0x710d82c082b6b90f # initialize rs2
pack x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x29a565c5708abd71 # initialize rs1
li x23, 0x9bd34edbb83c35d7 # initialize rs2
pack x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xade6551dbfeef1c4 # initialize rs1
li x24, 0x5b75d40eb440bd77 # initialize rs2
pack x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x495474420f63d3dc # initialize rs1
li x25, 0xfe460b8b3ee35573 # initialize rs2
pack x12, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe9065c291df99096 # initialize rs1
li x26, 0x04f4d84f3e0ed8d3 # initialize rs2
pack x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0d45f09dfb8a5e2c # initialize rs1
li x27, 0x310eef81c9a62292 # initialize rs2
pack x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x1247c5cb4246fe4d # initialize rs1
li x28, 0x734340a23027b24d # initialize rs2
pack x31, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x1c4ce51b33d35c07 # initialize rs1
li x29, 0xfd70bb11350bf7d6 # initialize rs2
pack x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xbdd6c947a8bdf528 # initialize rs1
li x30, 0x77d8934ef2e310f8 # initialize rs2
pack x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3d3a925fb4a02ba3 # initialize rs1
li x31, 0x24517a85e46574e7 # initialize rs2
pack x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x1d1baffa1e674d36 # initialize rs1
li x1, 0x048c8cfa388e5189 # initialize rs2
pack x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x3, 0x9a1ebf0f210309e6 # initialize rs1
li x2, 0x356ab4f319124d6e # initialize rs2
pack x2, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x19, 0xb2b22f72004e1a5f # initialize rs1
li x3, 0x85a74170824b17dc # initialize rs2
pack x3, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1528)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xc8b0cd76e8ef3161 # initialize rs1
li x4, 0x33fa8f593794f5a8 # initialize rs2
pack x4, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1536)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x907fff77072f5c68 # initialize rs1
li x5, 0xc624e7a08a35b4d6 # initialize rs2
pack x5, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1544)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x7f20a796a8fdeedb # initialize rs1
li x6, 0x6ad5c49ceed776f1 # initialize rs2
pack x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1552)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x612c0bf2854602ee # initialize rs1
li x7, 0x081d0849acfc67e8 # initialize rs2
pack x7, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1560)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x2bf5fc38a62f4780 # initialize rs1
li x8, 0xb75bb69fc851d6f3 # initialize rs2
pack x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1568)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0xcea3fbb1ce1113de # initialize rs1
li x9, 0x0a1cc7d1401cfd28 # initialize rs2
pack x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1576)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x14, 0xbdbc2285150e5031 # initialize rs1
li x10, 0x064961cd9cf868e1 # initialize rs2
pack x10, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x31, 0x9d25d57b66410253 # initialize rs1
li x11, 0x5aed933978162573 # initialize rs2
pack x11, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x29, 0xfea2a338bc91c074 # initialize rs1
li x12, 0x6b3961ac1febedd0 # initialize rs2
pack x12, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1600)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x10, 0x6153c1168ae512b8 # initialize rs1
li x13, 0xfc1ae6e5625b3bdc # initialize rs2
pack x13, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1608)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x29, 0xf90f7ffec9e3df1f # initialize rs1
li x14, 0xfb72e39dcd5de851 # initialize rs2
pack x14, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1616)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0xf06f106968f1bdcf # initialize rs1
li x15, 0x8df88c154a12103c # initialize rs2
pack x15, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x3a3aa8e60ba8a6b6 # initialize rs1
li x16, 0x0c3804fd94d42010 # initialize rs2
pack x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1632)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x10, 0x84887d06b09da5b4 # initialize rs1
li x17, 0xa97c3a1606ec5082 # initialize rs2
pack x17, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1640)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x6, 0xdd1ffbe3bc76450e # initialize rs1
li x18, 0xcbf499e352a1fc37 # initialize rs2
pack x18, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0x41f42262e7cd7211 # initialize rs1
li x19, 0x409618cf945069ab # initialize rs2
pack x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1656)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x21, 0xd48850da37ae097e # initialize rs1
li x20, 0x6ce92af1cc2672e0 # initialize rs2
pack x20, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1664)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x964147b1fe18e443 # initialize rs1
li x21, 0xd43494f6df1d2b2a # initialize rs2
pack x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x14, 0x463c13f5e375d852 # initialize rs1
li x22, 0xa06949b20343879e # initialize rs2
pack x22, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1680)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0x229e53328f00b979 # initialize rs1
li x23, 0x0e0fa859d4e943f8 # initialize rs2
pack x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1688)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0xa460bf454e078b0f # initialize rs1
li x24, 0xb5f54fa35499c630 # initialize rs2
pack x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0x6693669a972048c2 # initialize rs1
li x25, 0x6ce3b8b568c736cf # initialize rs2
pack x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x23, 0x2a88267baa630bb0 # initialize rs1
li x26, 0x976a214c8d20803e # initialize rs2
pack x26, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1712)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x3be5c63b112f4ea5 # initialize rs1
li x27, 0x73849b9ae6c9a0a1 # initialize rs2
pack x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1720)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0x039a1ff9fb8fa0f0 # initialize rs1
li x28, 0x50b6d8cf7454de60 # initialize rs2
pack x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1728)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x42b280032c011f8d # initialize rs1
li x29, 0x3c091f5eefb62b49 # initialize rs2
pack x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1736)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x23, 0xa3da4853d6a794c8 # initialize rs1
li x30, 0x043d2b59d851e4b1 # initialize rs2
pack x30, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1744)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x22, 0x3f97c8b9d17bd2fb # initialize rs1
li x31, 0xd5a685b154e3196a # initialize rs2
pack x31, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1752)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5bad3768434e6262 # initialize rs1
li x1, 0x7043d0a5672f9cc3 # initialize rs2
pack x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1760)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x0d436c1fdeda57d0 # initialize rs1
li x2, 0xf76ba7880a5fe9f0 # initialize rs2
pack x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1768)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xef4c60a0ceb61f3c # initialize rs1
li x3, 0xc470200f0b9eed9c # initialize rs2
pack x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x28398ac3200e0fa6 # initialize rs1
li x4, 0xa8a7d6b2e0fb4fc2 # initialize rs2
pack x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1784)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14ac910ad40e9916 # initialize rs1
li x5, 0xbe72478eaec70c39 # initialize rs2
pack x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1792)
addi x6, x6, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf2ea900a0fb42ac6 # initialize rs1
li x6, 0x1ec3256d2349d7aa # initialize rs2
pack x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 0)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x37de2781c34647cc # initialize rs1
li x7, 0x1d49506c31763abb # initialize rs2
pack x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xde86f3098a8004aa # initialize rs1
li x8, 0x6d0094c09d8b5721 # initialize rs2
pack x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x9ab2b712dd5315db # initialize rs1
li x9, 0xe5316b5bd3fbce85 # initialize rs2
pack x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc196e91ce4cf579c # initialize rs1
li x10, 0xd48fab06967ebf41 # initialize rs2
pack x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5c9373b155874412 # initialize rs1
li x11, 0x63db0757d834b96a # initialize rs2
pack x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7713e34406d2dab1 # initialize rs1
li x12, 0xf7823eac4d582d09 # initialize rs2
pack x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb5dd665c53650a80 # initialize rs1
li x13, 0x0d6f50e60915fa8d # initialize rs2
pack x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x162b490e987397b7 # initialize rs1
li x14, 0xb21086786caf5291 # initialize rs2
pack x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4b203f500b55492e # initialize rs1
li x15, 0xebbe60b05787e8a5 # initialize rs2
pack x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xbab74ea3d81ca086 # initialize rs1
li x16, 0x5f054fea92553725 # initialize rs2
pack x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x604b27e75883b0a1 # initialize rs1
li x17, 0x8cf8b55aa28e9995 # initialize rs2
pack x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf8596b865d4d63ff # initialize rs1
li x18, 0xb6a123e4850cbc46 # initialize rs2
pack x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x859e751b4253552c # initialize rs1
li x19, 0x2988204978d4daf3 # initialize rs2
pack x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xc9481d1ad8e2e15d # initialize rs1
li x20, 0x11f88e70763d0fa8 # initialize rs2
pack x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa9e6e8546a9c0b7c # initialize rs1
li x21, 0x3620339c76e3dcf5 # initialize rs2
pack x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x4239abccfbeeacdf # initialize rs1
li x22, 0x70b141ff28c379cf # initialize rs2
pack x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x42d6e3f6d550828b # initialize rs1
li x23, 0xb06c08c5847cd43a # initialize rs2
pack x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4210acce7a5a6f14 # initialize rs1
li x24, 0xa04ea0daab703afe # initialize rs2
pack x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x409b0392e5d9de0d # initialize rs1
li x25, 0x4636e2226dfa0225 # initialize rs2
pack x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xdc10f6a6d9360895 # initialize rs1
li x26, 0x27cd6005fb2659ef # initialize rs2
pack x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xee288d0d3d682144 # initialize rs1
li x27, 0x96e1961a73209e93 # initialize rs2
pack x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x50c08cad39154c02 # initialize rs1
li x28, 0x74d3c3d7d2d54178 # initialize rs2
pack x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x44a5d0ee8e388222 # initialize rs1
li x29, 0xb00b78d2625ba82d # initialize rs2
pack x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x7f9bfc55fdc5ada3 # initialize rs1
li x30, 0x3f7a2c4bab7cb3bf # initialize rs2
pack x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xeeea76cfa6afb805 # initialize rs1
li x31, 0xde4cc115ea944f15 # initialize rs2
pack x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x13, x19 # perform first operation
pack x17, x29, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x22, x7 # perform first operation
pack x18, x17, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x28, x27 # perform first operation
pack x2, x3, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x5, x28 # perform first operation
pack x28, x12, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x3, x19 # perform first operation
pack x16, x3, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x30, x6 # perform first operation
pack x27, x25, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x27, x22 # perform first operation
pack x10, x15, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x21, x20 # perform first operation
pack x18, x28, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x31, x5 # perform first operation
pack x23, x16, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x10, x26 # perform first operation
pack x10, x18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x13, x11 # perform first operation
pack x11, x30, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x3, x15 # perform first operation
pack x28, x6, x11 # perform second (triggering) operation

#.EQU SIGSIZE,3808


// ******************
// Tests from: WALLY-COV-brev8.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x589413fefc9c0d76 # initialize rs1
brev8 x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xdc9d486e64fd88b3 # initialize rs1
brev8 x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3011af1c6a5bec2c # initialize rs1
brev8 x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd6b98dd5548d7e81 # initialize rs1
brev8 x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7f5b83d395cde5e1 # initialize rs1
brev8 x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6db834ce1c717604 # initialize rs1
brev8 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xf925c5966638fb3e # initialize rs1
brev8 x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x042e06a8b2b98934 # initialize rs1
brev8 x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6cb4a58a515fccd2 # initialize rs1
brev8 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x53bbdbee8c1f89be # initialize rs1
brev8 x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe05ad3ef625ca4c4 # initialize rs1
brev8 x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x6e3dbff5833c34a0 # initialize rs1
brev8 x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x662e4d6b3f498981 # initialize rs1
brev8 x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x52233cc8c623aa9f # initialize rs1
brev8 x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9cdd1cbf2a03b7fc # initialize rs1
brev8 x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x42a6f643c0b5fb1d # initialize rs1
brev8 x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x15b17036a580240b # initialize rs1
brev8 x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe62fb65f786b32b9 # initialize rs1
brev8 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x556fdc6fea8869e1 # initialize rs1
brev8 x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7e3675069cd22d70 # initialize rs1
brev8 x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3f0f318dfd647caa # initialize rs1
brev8 x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2e6a6e3e0a7a8b25 # initialize rs1
brev8 x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3ad809f1936ad42e # initialize rs1
brev8 x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x3d2c0dbb24b1cb91 # initialize rs1
brev8 x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf208a4355d8a1dc8 # initialize rs1
brev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x44fee0305946bdda # initialize rs1
brev8 x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xcdb8f0392adb445b # initialize rs1
brev8 x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa758af546a61b77a # initialize rs1
brev8 x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x31c39d8dc66bf7f1 # initialize rs1
brev8 x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x241ba5b9fdca2546 # initialize rs1
brev8 x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7cfc0bec73820aff # initialize rs1
brev8 x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8cbf879737cb720b # initialize rs1
brev8 x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0xc88c65b84ea85e46 # initialize rs1
brev8 x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0xdf64bc9d307c670f # initialize rs1
brev8 x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xbffaeaa8a3428e5c # initialize rs1
brev8 x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0xdcfe4748cbf53b50 # initialize rs1
brev8 x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x4796f7ac90d69063 # initialize rs1
brev8 x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x88143f31332359ba # initialize rs1
brev8 x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x4ebd668e90d19c6b # initialize rs1
brev8 x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x48f649adf2c69a0e # initialize rs1
brev8 x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x8841a8cd1ae7aaba # initialize rs1
brev8 x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x62679abe9a3ef45e # initialize rs1
brev8 x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x3a3d73ec38f2c008 # initialize rs1
brev8 x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x78451b7cc3f54a65 # initialize rs1
brev8 x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x17, 0xd28b7c0478d651e8 # initialize rs1
brev8 x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x529e0d9ac70bd8d2 # initialize rs1
brev8 x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x33644d7f5831c492 # initialize rs1
brev8 x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0x528aaced7975e161 # initialize rs1
brev8 x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0xe61cf87eb93a21d1 # initialize rs1
brev8 x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x0f4a4fc7e2b6e5f7 # initialize rs1
brev8 x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3e36836d1ea352f1 # initialize rs1
brev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x3d774eee8986148e # initialize rs1
brev8 x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x4d8d2df73e3ceddf # initialize rs1
brev8 x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0x385836a78493b67e # initialize rs1
brev8 x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x3a09a3efa474a234 # initialize rs1
brev8 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xbe1bd5b5408975ed # initialize rs1
brev8 x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0xd6b73cb38eb831f2 # initialize rs1
brev8 x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0xb843adf3c6b2bd5f # initialize rs1
brev8 x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x4ca927a199272696 # initialize rs1
brev8 x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0xd12c85cf2708ecb4 # initialize rs1
brev8 x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x9ceb1ddba7886423 # initialize rs1
brev8 x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0x7fae93ceb647a989 # initialize rs1
brev8 x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x788ae386ccbb6aec # initialize rs1
brev8 x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x76a779428ea8b07a # initialize rs1
brev8 x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000 # initialize rs1
brev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
brev8 x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
brev8 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
brev8 x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x5, 0x8000000000000001 # initialize rs1
brev8 x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
brev8 x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
brev8 x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
brev8 x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
brev8 x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
brev8 x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
brev8 x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
brev8 x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
brev8 x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
brev8 x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
brev8 x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
brev8 x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa67418e0e1c8b8e3 # initialize rs1
brev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7c1e164b9405c984 # initialize rs1
brev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf6309dce0b52cf7b # initialize rs1
brev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6ed171b98e52f2d0 # initialize rs1
brev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba2fe64c7c68d85a # initialize rs1
brev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4d4309e81fe6d046 # initialize rs1
brev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2b8b79769513e31f # initialize rs1
brev8 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2011dd887c338f5b # initialize rs1
brev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf37a7d5aceba8570 # initialize rs1
brev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x02d67bb5902fa1eb # initialize rs1
brev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4981ed59e80faf18 # initialize rs1
brev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaef3ef52e31ebc8b # initialize rs1
brev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x02ea33030ad00709 # initialize rs1
brev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe97a409da3943fab # initialize rs1
brev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x65307b439067c460 # initialize rs1
brev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa431af47e0e50274 # initialize rs1
brev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xcfad0c4449f6962e # initialize rs1
brev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa7e2c679c3c1aca2 # initialize rs1
brev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0608f9db01fa4701 # initialize rs1
brev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe6ffade90d346d4c # initialize rs1
brev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf8036838493976f8 # initialize rs1
brev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfd8eaf48b7ba6e3e # initialize rs1
brev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2a0a66c323e19be3 # initialize rs1
brev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb06ce09738e50939 # initialize rs1
brev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc3e4cc8cd2d7d047 # initialize rs1
brev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe2e0e00a807af7e0 # initialize rs1
brev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x52248416b43fe299 # initialize rs1
brev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa92588e26ae89c02 # initialize rs1
brev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa62877b15fab7154 # initialize rs1
brev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xbec04f9ae9692570 # initialize rs1
brev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xdaa79b1d2a930e3b # initialize rs1
brev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x00bc3bb9c11a22be # initialize rs1
brev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x15, x18 # perform first operation
brev8 x17, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x16, x5 # perform first operation
brev8 x18, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x18, x29 # perform first operation
brev8 x17, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x6, x25 # perform first operation
brev8 x25, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x25, x15 # perform first operation
brev8 x27, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x25, x16 # perform first operation
brev8 x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x31, x20 # perform first operation
brev8 x24, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x12, x9 # perform first operation
brev8 x7, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x29, x3 # perform first operation
brev8 x8, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x15, x13 # perform first operation
brev8 x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x14, x15 # perform first operation
brev8 x15, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x17, x5 # perform first operation
brev8 x12, x3 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-rori.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x6adf7c1edc3eeb32 # initialize rs1
rori x22, x0, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2694ab0fae43a90d # initialize rs1
rori x14, x1, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4a9fd4394759be11 # initialize rs1
rori x10, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x864b59e6fd21717b # initialize rs1
rori x29, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5ba437a467693c93 # initialize rs1
rori x3, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x13e4ae47a5ca6db1 # initialize rs1
rori x12, x5, 38 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x20c64779f3d3c0a4 # initialize rs1
rori x22, x6, 56 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x695f4971de3875f2 # initialize rs1
rori x4, x7, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9552f34fc4e76769 # initialize rs1
rori x20, x8, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4f937986e81225c8 # initialize rs1
rori x11, x9, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x923c8bcc0a4f7b04 # initialize rs1
rori x8, x10, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc08ca471785f403e # initialize rs1
rori x9, x11, 37 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6e034b3eafddca88 # initialize rs1
rori x29, x12, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x24e37dc845ca4f9f # initialize rs1
rori x25, x13, 39 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xda2e39b403ece6ef # initialize rs1
rori x2, x14, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x01c070fbd3587460 # initialize rs1
rori x25, x15, 35 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa04d717654c748dc # initialize rs1
rori x11, x16, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8c9d8cd51976c0ce # initialize rs1
rori x12, x17, 47 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xf3d65a88003ba424 # initialize rs1
rori x11, x18, 33 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xeac1c7419602416c # initialize rs1
rori x29, x19, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x5ae0b2aee3b2fb37 # initialize rs1
rori x7, x20, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x015140ba701ebe08 # initialize rs1
rori x22, x21, 44 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x07596c3d742493d3 # initialize rs1
rori x27, x22, 43 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb4c446b24768ffb2 # initialize rs1
rori x25, x23, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x810b984f2313039c # initialize rs1
rori x16, x24, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9d0a9842aa9ad75b # initialize rs1
rori x1, x25, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2515f1395675f61c # initialize rs1
rori x11, x26, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xdb633a4ecce471b9 # initialize rs1
rori x7, x27, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xda97e42415fe340f # initialize rs1
rori x14, x28, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0b688c082c3a606f # initialize rs1
rori x23, x29, 41 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x145953be2f558181 # initialize rs1
rori x25, x30, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x001673d2440691b0 # initialize rs1
rori x30, x31, 35 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x0)
li x4, 0x2a34df351dff7d03 # initialize rs1
rori x0, x4, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x12, 0xf2c32b4b3aa267ac # initialize rs1
rori x1, x12, 45 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x4, 0x92bdc795fb0207b3 # initialize rs1
rori x2, x4, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x4cc2c552736f8361 # initialize rs1
rori x3, x30, 11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x8, 0x3dbd19919e5fb210 # initialize rs1
rori x4, x8, 7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x498dde952c4a2be1 # initialize rs1
rori x5, x29, 4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xbba7c31fbd19ad1e # initialize rs1
rori x6, x23, 42 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xcb45b3c1b750cf75 # initialize rs1
rori x7, x23, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x08a28d70911dd46f # initialize rs1
rori x8, x13, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x0a35f22e20d8a4ff # initialize rs1
rori x9, x28, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xb63ffaff03fc3c7f # initialize rs1
rori x10, x31, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x1254415ae99c2e26 # initialize rs1
rori x11, x3, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0xaeb7053cef8ab89e # initialize rs1
rori x12, x5, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x3, 0xcb6a8ecba18df7ac # initialize rs1
rori x13, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x3a82a15924a11599 # initialize rs1
rori x14, x21, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xdc3831e0b4fe65f7 # initialize rs1
rori x15, x12, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x21, 0xe83dd08411dff7a1 # initialize rs1
rori x16, x21, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xb2a377302916b425 # initialize rs1
rori x17, x10, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0xd6c221c2a63c8473 # initialize rs1
rori x18, x2, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0xa9427f155426c6d7 # initialize rs1
rori x19, x8, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xdfae320df83c870f # initialize rs1
rori x20, x30, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0xd8345d343a1a6456 # initialize rs1
rori x21, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xd7b4c9c7a8e12a17 # initialize rs1
rori x22, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x4f9e368117594c05 # initialize rs1
rori x23, x9, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x551fa16d0203f384 # initialize rs1
rori x24, x13, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x29518994994e9932 # initialize rs1
rori x25, x6, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x0b06b274611fb91f # initialize rs1
rori x26, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0xaa9896d41460f3b5 # initialize rs1
rori x27, x1, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x61a83736ef387566 # initialize rs1
rori x28, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x04bdcade835a0ad3 # initialize rs1
rori x29, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x75a855f01ef78ae9 # initialize rs1
rori x30, x18, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0xfef5c18c56726d2d # initialize rs1
rori x31, x21, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rs1
rori x28, x3, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
rori x26, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
rori x15, x16, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
rori x11, x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
rori x15, x31, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
rori x25, x31, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
rori x12, x25, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
rori x1, x21, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
rori x30, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
rori x12, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
rori x14, x23, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
rori x24, x13, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
rori x26, x18, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
rori x18, x3, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
rori x3, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
rori x24, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xafccc1378cc5f0f4 # initialize rs1
rori x0, x0, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc69f6b250424b4cd # initialize rs1
rori x1, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xea6bd4ea04499fa6 # initialize rs1
rori x2, x2, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x536c498944b4bf71 # initialize rs1
rori x3, x3, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb5c32a7bb763bb53 # initialize rs1
rori x4, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd2478bbff3a20a78 # initialize rs1
rori x5, x5, 29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa7d8a3f76089fa5c # initialize rs1
rori x6, x6, 23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc7cf39e56d06a0c8 # initialize rs1
rori x7, x7, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcadd9e7dacdbc348 # initialize rs1
rori x8, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x175a993ed1e04372 # initialize rs1
rori x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf236ce2a5857dd25 # initialize rs1
rori x10, x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4b9bb266d103574c # initialize rs1
rori x11, x11, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5c5a805142d5eeaf # initialize rs1
rori x12, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x60933c65b84729f8 # initialize rs1
rori x13, x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x33326956325e02f3 # initialize rs1
rori x14, x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6c097d2458d887e4 # initialize rs1
rori x15, x15, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe8ed2bab5691c80d # initialize rs1
rori x16, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfdca88224fb260b6 # initialize rs1
rori x17, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd9ad8ff009ff638f # initialize rs1
rori x18, x18, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd31cc36c4254356f # initialize rs1
rori x19, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8a94c194ca6211de # initialize rs1
rori x20, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x00c66c383ed8dd83 # initialize rs1
rori x21, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe55766cc341ca22b # initialize rs1
rori x22, x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0e9f37f5da20bfb5 # initialize rs1
rori x23, x23, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa5907ce88fcbbf66 # initialize rs1
rori x24, x24, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x915febad775f9b79 # initialize rs1
rori x25, x25, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3fcefbc0a5feb08a # initialize rs1
rori x26, x26, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1bcdeca1ee5fc538 # initialize rs1
rori x27, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4bf8efe429c8f11a # initialize rs1
rori x28, x28, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1d65b1c831b83088 # initialize rs1
rori x29, x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6a43e1f25583c492 # initialize rs1
rori x30, x30, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa28562489fb76c9a # initialize rs1
rori x31, x31, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x28, 0x159809464c473c80 # initialize rs1
rori x8, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cp_uimm (Test bit = 1)
li x1, 0xcf26035e7fc4b360 # initialize rs1
rori x19, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cp_uimm (Test bit = 2)
li x14, 0x461494d08949a1a5 # initialize rs1
rori x16, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_uimm (Test bit = 3)
li x21, 0x791246b44a2fe6d4 # initialize rs1
rori x6, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

# Testcase cp_uimm (Test bit = 4)
li x19, 0xdcd168ba3fd68058 # initialize rs1
rori x15, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cp_uimm (Test bit = 5)
li x2, 0x7df72db3396b69a4 # initialize rs1
rori x20, x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

# Testcase cp_uimm (Test bit = 6)
li x21, 0x8e13f8555db826b5 # initialize rs1
rori x15, x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_uimm (Test bit = 7)
li x14, 0x1ee18bd89c1dd822 # initialize rs1
rori x16, x14, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_uimm (Test bit = 8)
li x23, 0xd4d8bd8208dfb90e # initialize rs1
rori x7, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_uimm (Test bit = 9)
li x20, 0xe502f3c57f5ccbbb # initialize rs1
rori x6, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cp_uimm (Test bit = 10)
li x27, 0xb219e544f2dfa696 # initialize rs1
rori x15, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_uimm (Test bit = 11)
li x26, 0x8e7217fe4b6f3a38 # initialize rs1
rori x5, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cp_uimm (Test bit = 12)
li x16, 0x3ca7c33c7aa3f2c0 # initialize rs1
rori x7, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cp_uimm (Test bit = 13)
li x15, 0x63178ecdfc8cb06c # initialize rs1
rori x11, x15, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_uimm (Test bit = 14)
li x29, 0xe79c2716ed731cf7 # initialize rs1
rori x22, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cp_uimm (Test bit = 15)
li x10, 0x1a36820f186a295f # initialize rs1
rori x2, x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1016)

# Testcase cp_uimm (Test bit = 16)
li x2, 0x847e7a4366b42ec0 # initialize rs1
rori x25, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cp_uimm (Test bit = 17)
li x28, 0x8b79d551050e0cef # initialize rs1
rori x10, x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_uimm (Test bit = 18)
li x30, 0x2d9d5be03d8d7c82 # initialize rs1
rori x24, x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cp_uimm (Test bit = 19)
li x31, 0xaab0c7677b46ae01 # initialize rs1
rori x10, x31, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cp_uimm (Test bit = 20)
li x3, 0xecf1b194241b42ed # initialize rs1
rori x10, x3, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cp_uimm (Test bit = 21)
li x27, 0x313f909c95d64750 # initialize rs1
rori x11, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cp_uimm (Test bit = 22)
li x31, 0xccb07d3c326e7b23 # initialize rs1
rori x6, x31, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1072)

# Testcase cp_uimm (Test bit = 23)
li x6, 0x97707b33c90be31d # initialize rs1
rori x18, x6, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cp_uimm (Test bit = 24)
li x18, 0xa8cc712ffb396777 # initialize rs1
rori x15, x18, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cp_uimm (Test bit = 25)
li x29, 0x265aef0f5cc47be4 # initialize rs1
rori x24, x29, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cp_uimm (Test bit = 26)
li x23, 0x358cfde6703ef245 # initialize rs1
rori x14, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cp_uimm (Test bit = 27)
li x19, 0xf48d5293954f67ac # initialize rs1
rori x12, x19, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cp_uimm (Test bit = 28)
li x26, 0x6cf8e667571792ea # initialize rs1
rori x1, x26, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cp_uimm (Test bit = 29)
li x12, 0x34335c08075d53d5 # initialize rs1
rori x15, x12, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cp_uimm (Test bit = 30)
li x16, 0x4a3dd500100c0ff7 # initialize rs1
rori x13, x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cp_uimm (Test bit = 31)
li x15, 0xceb0df92017b835c # initialize rs1
rori x2, x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cp_uimm (Test bit = 32)
li x15, 0x8d09b8d5d3eeb740 # initialize rs1
rori x13, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cp_uimm (Test bit = 33)
li x3, 0xad6ee2fa284ab67d # initialize rs1
rori x30, x3, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cp_uimm (Test bit = 34)
li x1, 0x0c75ed9fd7981caa # initialize rs1
rori x11, x1, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cp_uimm (Test bit = 35)
li x20, 0x6b3997d9fbf4759f # initialize rs1
rori x15, x20, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cp_uimm (Test bit = 36)
li x7, 0xb7f4b08bfef0891e # initialize rs1
rori x1, x7, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cp_uimm (Test bit = 37)
li x8, 0x878968c71e8747b4 # initialize rs1
rori x24, x8, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cp_uimm (Test bit = 38)
li x22, 0x174a63a5d28f674b # initialize rs1
rori x5, x22, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cp_uimm (Test bit = 39)
li x14, 0x89a0abc01c6e1f09 # initialize rs1
rori x27, x14, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cp_uimm (Test bit = 40)
li x18, 0x5d0e844efa35bc06 # initialize rs1
rori x22, x18, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cp_uimm (Test bit = 41)
li x26, 0x66eb0a451c38634b # initialize rs1
rori x17, x26, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cp_uimm (Test bit = 42)
li x30, 0x2f253993b15ba446 # initialize rs1
rori x29, x30, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cp_uimm (Test bit = 43)
li x18, 0x5334728cbbaeb00e # initialize rs1
rori x11, x18, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cp_uimm (Test bit = 44)
li x22, 0xb7bf5f91b2d402c4 # initialize rs1
rori x23, x22, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cp_uimm (Test bit = 45)
li x31, 0x76b9b7d0551afba1 # initialize rs1
rori x6, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1256)

# Testcase cp_uimm (Test bit = 46)
li x30, 0x126b61e04b5a08a0 # initialize rs1
rori x18, x30, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1264)

# Testcase cp_uimm (Test bit = 47)
li x26, 0xd1d75a1b1fe6f9a9 # initialize rs1
rori x16, x26, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cp_uimm (Test bit = 48)
li x23, 0xcbfab8214bab9308 # initialize rs1
rori x12, x23, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

# Testcase cp_uimm (Test bit = 49)
li x16, 0x02cb7c3f62ac97c4 # initialize rs1
rori x14, x16, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cp_uimm (Test bit = 50)
li x14, 0x06f35a73a4dd3232 # initialize rs1
rori x20, x14, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cp_uimm (Test bit = 51)
li x28, 0xf0de176b68febe79 # initialize rs1
rori x9, x28, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cp_uimm (Test bit = 52)
li x17, 0xe1b3d3516828a84b # initialize rs1
rori x18, x17, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1312)

# Testcase cp_uimm (Test bit = 53)
li x26, 0xb00b0a4a75cac4ab # initialize rs1
rori x27, x26, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1320)

# Testcase cp_uimm (Test bit = 54)
li x14, 0x345b8b375e392eaa # initialize rs1
rori x13, x14, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1328)

# Testcase cp_uimm (Test bit = 55)
li x8, 0x15c55119d186d277 # initialize rs1
rori x7, x8, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cp_uimm (Test bit = 56)
li x27, 0x50961a4186e21e00 # initialize rs1
rori x7, x27, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cp_uimm (Test bit = 57)
li x18, 0x6177ce8e049fcd59 # initialize rs1
rori x26, x18, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1352)

# Testcase cp_uimm (Test bit = 58)
li x18, 0x09619b454d6f9dbc # initialize rs1
rori x10, x18, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1360)

# Testcase cp_uimm (Test bit = 59)
li x25, 0xf4266c111760c7df # initialize rs1
rori x19, x25, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cp_uimm (Test bit = 60)
li x24, 0x68e0fec6ad2a4a20 # initialize rs1
rori x19, x24, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cp_uimm (Test bit = 61)
li x27, 0x6f376577d40930c4 # initialize rs1
rori x8, x27, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cp_uimm (Test bit = 62)
li x3, 0x757f7bcdc11f29d0 # initialize rs1
rori x26, x3, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cp_uimm (Test bit = 63)
li x1, 0x66bbcf6cc3aa9d70 # initialize rs1
rori x13, x1, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x10, x21 # perform first operation
rori x5, x20, 54 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x22, x8 # perform first operation
rori x10, x30, 53 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x8 # perform first operation
rori x9, x20, 56 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x18, x15 # perform first operation
rori x18, x6, 57 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x28, x13 # perform first operation
rori x9, x28, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x19, x5 # perform first operation
rori x1, x29, 51 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x24, x5 # perform first operation
rori x2, x22, 59 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x6, x1 # perform first operation
rori x13, x19, 53 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x27, x24 # perform first operation
rori x6, x2, 50 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x14, x13 # perform first operation
rori x14, x3, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x17, x26 # perform first operation
rori x26, x3, 58 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x8, x27 # perform first operation
rori x20, x6, 36 # perform second (triggering) operation

#.EQU SIGSIZE,1408


// ******************
// Tests from: WALLY-COV-rev8.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xc8f8e77c7492caa3 # initialize rs1
rev8 x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8fa4c0b6cdbd3651 # initialize rs1
rev8 x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb279f2d3938795aa # initialize rs1
rev8 x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x57de5f49ff4680cf # initialize rs1
rev8 x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x65ec6fe6dc8668e5 # initialize rs1
rev8 x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87b4127b8ee567e3 # initialize rs1
rev8 x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf480d032ef0b87f6 # initialize rs1
rev8 x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7d0f93cbee7445cc # initialize rs1
rev8 x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd39c313f6b0ce6bd # initialize rs1
rev8 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc18dbc553c339514 # initialize rs1
rev8 x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xda5d6843b7dc1b69 # initialize rs1
rev8 x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc42e02018ebdc717 # initialize rs1
rev8 x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0713d836c41ae045 # initialize rs1
rev8 x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x19b3902fe1ff7bdb # initialize rs1
rev8 x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4dfe1f95ec782126 # initialize rs1
rev8 x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x105a51b00d0b37be # initialize rs1
rev8 x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x203a230f38c86cfd # initialize rs1
rev8 x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xcd3e92e6c22d8f96 # initialize rs1
rev8 x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5192c307e504f053 # initialize rs1
rev8 x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x41c87355bcfb1d44 # initialize rs1
rev8 x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbacfb07de5f1ea64 # initialize rs1
rev8 x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9601a8f9d0d48f22 # initialize rs1
rev8 x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6e967132170213bf # initialize rs1
rev8 x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x545514ca89f8ccf7 # initialize rs1
rev8 x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdb86d101c7b2390e # initialize rs1
rev8 x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1a13d08250492c54 # initialize rs1
rev8 x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x57ca57294b265978 # initialize rs1
rev8 x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x9ce0ac1e37726f6b # initialize rs1
rev8 x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3db648cedff80278 # initialize rs1
rev8 x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x83196f421855fa9e # initialize rs1
rev8 x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x25910460fbb86d2d # initialize rs1
rev8 x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf12cb0070edb7d84 # initialize rs1
rev8 x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0xd7f3ca901cf94273 # initialize rs1
rev8 x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x14, 0xb05ec906fb6065b3 # initialize rs1
rev8 x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x151cbd4368539e57 # initialize rs1
rev8 x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0x7db88350b452e60e # initialize rs1
rev8 x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x7bd579ca08060bda # initialize rs1
rev8 x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x73652f33d259176b # initialize rs1
rev8 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xfd031bdc02521ce8 # initialize rs1
rev8 x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0x53e567d1b1814abb # initialize rs1
rev8 x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0x5bbf20c612fb8132 # initialize rs1
rev8 x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x3990b0d39746cafa # initialize rs1
rev8 x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x49a5998f2bf4e193 # initialize rs1
rev8 x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0xdc99c5d64bef85d5 # initialize rs1
rev8 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x467209a6e555c818 # initialize rs1
rev8 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x185ff1f3a1912af0 # initialize rs1
rev8 x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x153d19d0525a8679 # initialize rs1
rev8 x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0xc42795b06a23b6ea # initialize rs1
rev8 x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0x8db39887345c456f # initialize rs1
rev8 x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xc8e79694a7e875b8 # initialize rs1
rev8 x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0xcd415e74d69156ce # initialize rs1
rev8 x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x84f6b6744e826a51 # initialize rs1
rev8 x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x3605f91991ad6675 # initialize rs1
rev8 x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0x6f7e7661970295e7 # initialize rs1
rev8 x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x59d2474f4c7505da # initialize rs1
rev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0x4d1654ab586d87b9 # initialize rs1
rev8 x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x8924ef5176bd0ff5 # initialize rs1
rev8 x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0xe5951ba2bcfe92d8 # initialize rs1
rev8 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0x1a86de213c8284b5 # initialize rs1
rev8 x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xbd2c14a71e32831c # initialize rs1
rev8 x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x2c3ebc9d822f967a # initialize rs1
rev8 x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xa43bcabd85ba645e # initialize rs1
rev8 x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xe23c05156c172f0e # initialize rs1
rev8 x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x8260f56ef5e341e7 # initialize rs1
rev8 x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
rev8 x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
rev8 x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x0000000000000002 # initialize rs1
rev8 x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
rev8 x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
rev8 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
rev8 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
rev8 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
rev8 x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
rev8 x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
rev8 x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
rev8 x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
rev8 x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
rev8 x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x00000000fffffffe # initialize rs1
rev8 x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
rev8 x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
rev8 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x594defced976f0ff # initialize rs1
rev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5a207e22f6ffb14e # initialize rs1
rev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4f752906b50b52c5 # initialize rs1
rev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8b9f3c384e9d44b1 # initialize rs1
rev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xddbf298055caf8fb # initialize rs1
rev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x179b0c1373d5fcc3 # initialize rs1
rev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe05aad1746f92cb9 # initialize rs1
rev8 x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x2534941157940e70 # initialize rs1
rev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6525dddc3a5a95e2 # initialize rs1
rev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x61f251a552880e73 # initialize rs1
rev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x71acc993893b70a4 # initialize rs1
rev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf5ba1e0ed5094af1 # initialize rs1
rev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4dad240528351516 # initialize rs1
rev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x69410b097743e7a9 # initialize rs1
rev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x54b5c641bce270b6 # initialize rs1
rev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x77664a6a0238982a # initialize rs1
rev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8a0f71cee739a8f5 # initialize rs1
rev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x03fd08ca2a74e14b # initialize rs1
rev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x22d293529c8ca904 # initialize rs1
rev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xecd76e0d2b314062 # initialize rs1
rev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3974dd5dd923fd26 # initialize rs1
rev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x04487bc1019ce16c # initialize rs1
rev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x83941e89c35586fb # initialize rs1
rev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9898d6408f51c1e1 # initialize rs1
rev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9c62dd4a853acb60 # initialize rs1
rev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa7757656bcd7ed9c # initialize rs1
rev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5e14cd6d0b102e5e # initialize rs1
rev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3ad3085377cbeb93 # initialize rs1
rev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x64f22da5c3ee99ee # initialize rs1
rev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x7f8047e4645412df # initialize rs1
rev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf0d476f960ec1077 # initialize rs1
rev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x92964167131dd4b9 # initialize rs1
rev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x29, x6 # perform first operation
rev8 x21, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x11, x24 # perform first operation
rev8 x8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x16, x8 # perform first operation
rev8 x17, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x29, x6 # perform first operation
rev8 x29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x2, x30 # perform first operation
rev8 x11, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x28, x2 # perform first operation
rev8 x2, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x7, x25 # perform first operation
rev8 x12, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x13, x21 # perform first operation
rev8 x17, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x26, x23 # perform first operation
rev8 x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x26, x12 # perform first operation
rev8 x26, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x2, x1 # perform first operation
rev8 x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x7, x2 # perform first operation
rev8 x31, x10 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-packh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xfc52593aa9f3d515 # initialize rs1
li x7, 0x91e6978b084d7e87 # initialize rs2
packh x24, x0, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x77dfe790a5b64a17 # initialize rs1
li x22, 0x348f2f2611acf566 # initialize rs2
packh x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf2e1e95866063e4a # initialize rs1
li x14, 0x08bbaa1d2d1c18b0 # initialize rs2
packh x20, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xcf4661af306e71fb # initialize rs1
li x28, 0x0104fc94eb37810b # initialize rs2
packh x15, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x633b6ce5a1d19831 # initialize rs1
li x16, 0xc1b3799fd3a16d4c # initialize rs2
packh x27, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc1a53156483e7b25 # initialize rs1
li x7, 0x6db1f2c888cebc07 # initialize rs2
packh x19, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6996e7ab7439adaa # initialize rs1
li x16, 0x626e6e2090135445 # initialize rs2
packh x9, x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x41697796f49d4ff0 # initialize rs1
li x28, 0x9101e60f2ac650b7 # initialize rs2
packh x6, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xabfaa0219b10b345 # initialize rs1
li x22, 0x707b450c231e7ae8 # initialize rs2
packh x19, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x48f2841d8c90c60b # initialize rs1
li x16, 0x4a4c0a934fb71f7b # initialize rs2
packh x31, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb32c18433fa03a08 # initialize rs1
li x1, 0x6afbd124ffaaa4c2 # initialize rs2
packh x24, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa9726378e268ced7 # initialize rs1
li x9, 0xf140952fd2713232 # initialize rs2
packh x3, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x30e5f1740f435795 # initialize rs1
li x2, 0x7f745160aff561dc # initialize rs2
packh x24, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8660a93db1f560de # initialize rs1
li x30, 0x0edbb3553be8c592 # initialize rs2
packh x8, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7190d8edc1001b72 # initialize rs1
li x15, 0x5c44c35c60d0aca9 # initialize rs2
packh x21, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7f27fe1cb8c7bb71 # initialize rs1
li x13, 0xf7adc5eeeca266cf # initialize rs2
packh x29, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x8a3d98bc0995091b # initialize rs1
li x20, 0x269df7b1aa71fef7 # initialize rs2
packh x1, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa9d46062e40d7dd7 # initialize rs1
li x30, 0x5d6adea24a81e5c8 # initialize rs2
packh x8, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa648c2b638298027 # initialize rs1
li x29, 0xc548a54b72cec3f4 # initialize rs2
packh x15, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0584395b46e22b42 # initialize rs1
li x9, 0x1798f73e54fd2467 # initialize rs2
packh x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xec96cc58a7a6c369 # initialize rs1
li x22, 0xe57f9c2dd79681d2 # initialize rs2
packh x26, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3deffbaab78f1a0c # initialize rs1
li x7, 0x14689de5014768a1 # initialize rs2
packh x8, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x22c69904542d0da5 # initialize rs1
li x10, 0x538e5557f0d23d15 # initialize rs2
packh x27, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2907b14b6e8eee98 # initialize rs1
li x1, 0xd5822f20512265e1 # initialize rs2
packh x3, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x69275f09deef6b87 # initialize rs1
li x13, 0xcb843fef78589dbe # initialize rs2
packh x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x588057a87dd6c6db # initialize rs1
li x19, 0x4ad5e94d8c6918d3 # initialize rs2
packh x15, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x49a09c0ccc582d1c # initialize rs1
li x11, 0x1b671a33272c13dd # initialize rs2
packh x13, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6f69df16ad99be4b # initialize rs1
li x24, 0x2060adeeff0c371f # initialize rs2
packh x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa41f64c420601148 # initialize rs1
li x18, 0x43a9c3664b942827 # initialize rs2
packh x3, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x23f4aeeb001f2375 # initialize rs1
li x19, 0x5a00abef17ddce3f # initialize rs2
packh x10, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x04fd8bf12e4c331b # initialize rs1
li x14, 0xb5ae8ff66af3ecbc # initialize rs2
packh x10, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb4d8e5605db0d4ba # initialize rs1
li x21, 0xd0377fed050cb453 # initialize rs2
packh x13, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0xf022d64c2421d7ed # initialize rs1
li x0, 0x3072232aa00ac97a # initialize rs2
packh x10, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0x15b8e432e2e67d3f # initialize rs1
li x1, 0x6e1d6f7b96ad45ee # initialize rs2
packh x23, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0xec8af5defcfee673 # initialize rs1
li x2, 0xb99c69ba35308eb4 # initialize rs2
packh x20, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x998188e2b79fccfe # initialize rs1
li x3, 0x7e4294cceaffb142 # initialize rs2
packh x25, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x4f8f29fde4b154a3 # initialize rs1
li x4, 0x5fd8165ceed789cc # initialize rs2
packh x18, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x2298aa8d866bbaf8 # initialize rs1
li x5, 0x7b0cead04fae83d9 # initialize rs2
packh x12, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xed727bf41f476d16 # initialize rs1
li x6, 0x9d81d462e0f5fd29 # initialize rs2
packh x10, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x7d52e115fbf5581b # initialize rs1
li x7, 0xbd7aff1d6abe6afa # initialize rs2
packh x11, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xb42bf35dddd323ca # initialize rs1
li x8, 0xf676252977aca69a # initialize rs2
packh x31, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0xf67ed2e68f91306e # initialize rs1
li x9, 0x9e7658121db2087b # initialize rs2
packh x27, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0x2568b8710b6819ee # initialize rs1
li x10, 0x689ff326ab312234 # initialize rs2
packh x16, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x8, 0x5c85dca51f5223f5 # initialize rs1
li x11, 0x68531e2f33cf64f7 # initialize rs2
packh x18, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0x4bcf7f8ed22d3617 # initialize rs1
li x12, 0xfec109ea8b6c1f66 # initialize rs2
packh x1, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x3376e4513f65ae03 # initialize rs1
li x13, 0x4d57219f376377f6 # initialize rs2
packh x12, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0xf30d883cb87d622b # initialize rs1
li x14, 0x715c0bb6339d641d # initialize rs2
packh x17, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0x08d414b569d476d5 # initialize rs1
li x15, 0x83c8175b06509c5d # initialize rs2
packh x6, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x12520b80a7df7887 # initialize rs1
li x16, 0x507747215114d272 # initialize rs2
packh x25, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x16, 0x6b0f39990fe05e63 # initialize rs1
li x17, 0x65bdf529709cd390 # initialize rs2
packh x15, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0xf018646cbbaab2c2 # initialize rs1
li x18, 0xd8d4ba24ee3abbe5 # initialize rs2
packh x13, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x24020c1cc7b1fe9c # initialize rs1
li x19, 0x079355c6050969b2 # initialize rs2
packh x9, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xa25026e6b53d3c4c # initialize rs1
li x20, 0xce06bf189fcd0fb2 # initialize rs2
packh x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x15, 0xce692f62732e2263 # initialize rs1
li x21, 0x0e69bafa5c3a9674 # initialize rs2
packh x3, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x20, 0x77bc8096fe1a8e53 # initialize rs1
li x22, 0x280a578756d968bd # initialize rs2
packh x21, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x11, 0x3f645a75226805c0 # initialize rs1
li x23, 0x72767aa6712d44d5 # initialize rs2
packh x21, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x3125063bd5c427fd # initialize rs1
li x24, 0xe1bd1da70d38cccf # initialize rs2
packh x31, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0xdfdff838d0bbbfa1 # initialize rs1
li x25, 0x7567a91b7660bae7 # initialize rs2
packh x19, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xa059bd2b597acf9b # initialize rs1
li x26, 0x67a92c3912ebfd0a # initialize rs2
packh x30, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x49c5b502dff9f1db # initialize rs1
li x27, 0x57d1cf4c5186dd3b # initialize rs2
packh x1, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0x279bc99d9065b2e1 # initialize rs1
li x28, 0xd863539505b9f8d6 # initialize rs2
packh x5, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x3, 0x4eca0bca8cd369dd # initialize rs1
li x29, 0xe46dc272ebc2fc0b # initialize rs2
packh x31, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x21, 0x8e010de104145cfc # initialize rs1
li x30, 0x67807f64fe6ee3d7 # initialize rs2
packh x25, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0xe7faf5371734afc9 # initialize rs1
li x31, 0x6bc9b2b60d30524b # initialize rs2
packh x29, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cp_rd (Test destination rd = x0)
li x19, 0xed88b8cb82b40cb8 # initialize rs1
li x24, 0x9c91f1361131f666 # initialize rs2
packh x0, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0xa059bdca9f128e89 # initialize rs1
li x13, 0x847c23328ce5b815 # initialize rs2
packh x1, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0xac5bdf511b7bab53 # initialize rs1
li x12, 0x6996e743c4ad85b0 # initialize rs2
packh x2, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x2, 0x465356be1728a29f # initialize rs1
li x6, 0x58f415934d7026ea # initialize rs2
packh x3, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x00d5b7871122512e # initialize rs1
li x31, 0x73a52c6478216a44 # initialize rs2
packh x4, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x21befbc17a499c0a # initialize rs1
li x26, 0x451be2164b715f0d # initialize rs2
packh x5, x18, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xcf866a561fbd44f0 # initialize rs1
li x4, 0x21bd67a18f5810a9 # initialize rs2
packh x6, x3, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xba7aa272e24b48e3 # initialize rs1
li x17, 0xeb259f27c90f579f # initialize rs2
packh x7, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xa74c9c519a539da4 # initialize rs1
li x20, 0xec43a115e0f93aa0 # initialize rs2
packh x8, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x6138a9a472c2eb8c # initialize rs1
li x7, 0xf7866087bba7913f # initialize rs2
packh x9, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x22e3c4097c45125c # initialize rs1
li x12, 0x435c300640b76704 # initialize rs2
packh x10, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0xb56e593316813b4f # initialize rs1
li x14, 0x99b480f9b9724cff # initialize rs2
packh x11, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x16, 0x387851793e4f36c3 # initialize rs1
li x26, 0x018979412e2ec3b3 # initialize rs2
packh x12, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x2f2f17a935f413ba # initialize rs1
li x13, 0xfd15d483ada27c52 # initialize rs2
packh x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xcc8ff1f7c8ea0752 # initialize rs1
li x25, 0xc0f09b9f8dc95efc # initialize rs2
packh x14, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xc0c1d3a2e0309c98 # initialize rs1
li x26, 0x835b69b2f20bca29 # initialize rs2
packh x15, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x17, 0xdbddb4d46fbb7c0c # initialize rs1
li x20, 0x945d367646dde5d9 # initialize rs2
packh x16, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x2cc4f8d5d360fa46 # initialize rs1
li x10, 0x23f7cb25efe4557e # initialize rs2
packh x17, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0xf1367a09b30ce92c # initialize rs1
li x13, 0x738d1aaeb5fc4163 # initialize rs2
packh x18, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0xf6acbcbac17ec573 # initialize rs1
li x17, 0x15a5e791677f0148 # initialize rs2
packh x19, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xa92a04672de59125 # initialize rs1
li x14, 0xef24dd9b8b6b152d # initialize rs2
packh x20, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0xa97af365b31d20c2 # initialize rs1
li x30, 0xa8992915f71024c7 # initialize rs2
packh x21, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x6eaf734b698b63d4 # initialize rs1
li x8, 0x938fb95ac5704580 # initialize rs2
packh x22, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x16c99e334e8e6782 # initialize rs1
li x28, 0x338429b022e70b8a # initialize rs2
packh x23, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xef8e037a5211ab66 # initialize rs1
li x27, 0xa70605cc07de0116 # initialize rs2
packh x24, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x22, 0x470c03d268617809 # initialize rs1
li x27, 0xd434f1b89ac08e2d # initialize rs2
packh x25, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0x300d857354d9d8af # initialize rs1
li x29, 0x2f70fbf1dfcb19ef # initialize rs2
packh x26, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x0bac6911f5ba9910 # initialize rs1
li x31, 0x43df93e45edfa3aa # initialize rs2
packh x27, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xb6427d464a081e9f # initialize rs1
li x31, 0xbf92a73851bd75e0 # initialize rs2
packh x28, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x41b2a962d022306c # initialize rs1
li x24, 0x7c4b9e2fafde7049 # initialize rs2
packh x29, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0xd607c6ca2ea294b1 # initialize rs1
li x17, 0x66158ebfca09f7fe # initialize rs2
packh x30, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0xc29f74f5cb69a060 # initialize rs1
li x28, 0x5b1b954470c47690 # initialize rs2
packh x31, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x9, 0xb2da47f93c14f020 # initialize rs2
packh x18, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x15, 0x8ffcf8a5ed595ad9 # initialize rs2
packh x2, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
li x6, 0x40f7147b8584c1b6 # initialize rs2
packh x29, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs1
li x8, 0xdffd8ba6d075515c # initialize rs2
packh x22, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x7, 0x8000000000000001 # initialize rs1
li x27, 0x6e16b6bd2c88c4be # initialize rs2
packh x29, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x31, 0x168b2e61881b75df # initialize rs2
packh x5, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0x292d3d46677343e6 # initialize rs2
packh x23, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0xdf9fd30a862545c1 # initialize rs2
packh x2, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0xb732519c3d67d7d3 # initialize rs2
packh x17, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0bab5cf3d513b3dc # initialize rs2
packh x20, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xab0ce385a4c5d865 # initialize rs2
packh x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x31, 0xfd4c7ed3e4c0a8d8 # initialize rs2
packh x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x7, 0xab8191ebf56cef42 # initialize rs2
packh x1, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x9, 0x809145747c74903f # initialize rs2
packh x15, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x5, 0xf2e3320f37d85c87 # initialize rs2
packh x31, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x14, 0x0000000100000001 # initialize rs1
li x1, 0x9a0446a7922fa221 # initialize rs2
packh x20, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xa772aa6240b7a5b5 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
packh x23, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x05a711a1c49efe68 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
packh x14, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x46f73b72a8502cd3 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
packh x27, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x29, 0x8fdead08e846be22 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
packh x2, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0xdd342aa382060e84 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
packh x6, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x13, 0x6211a4bf62ccbd05 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
packh x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0x9b5c0bb1a97d88d7 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
packh x11, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x28, 0x76077dfea7f9aa81 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
packh x7, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0x13e3f2db0364f637 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
packh x8, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x6, 0x2dff5598a982e00a # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
packh x26, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x24, 0x19968cdd590d3903 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xc692482a13a0b7a4 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
packh x5, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x2, 0x1f5c6c862a5dcd0f # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
packh x22, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x38a236117924b71e # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
packh x23, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x23, 0x4d2012f05a027200 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
packh x31, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x510eee3f7062f5dd # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
packh x8, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
packh x26, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
packh x28, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
packh x31, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x26, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
packh x22, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x12, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
packh x28, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
packh x1, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
packh x25, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
packh x26, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
packh x21, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000000 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
packh x6, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x13, 0x0000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
packh x31, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
packh x16, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
packh x14, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x10, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
packh x5, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x12, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
packh x26, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
packh x20, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
packh x26, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x0000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
packh x20, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x17, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
packh x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
packh x27, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
packh x14, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
packh x8, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
packh x25, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
packh x18, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
packh x23, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x30, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x14, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x13, 0x0000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
packh x30, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
packh x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x26, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
packh x10, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x15, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
packh x27, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
packh x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
packh x26, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
packh x13, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
packh x25, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x8, 0x0000000000000002 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
packh x31, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
packh x26, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
packh x16, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
packh x2, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
packh x1, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
packh x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000002 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
packh x14, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
packh x28, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
packh x28, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x11, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
packh x29, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x0000000000000002 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
packh x9, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x10, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
packh x8, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x13, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
packh x28, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
packh x16, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
packh x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x7, 0x8000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
packh x22, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
packh x29, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
packh x19, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
packh x31, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
packh x20, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x22, 0x8000000000000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
packh x19, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x6, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x27, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
packh x2, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x25, 0x8000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
packh x21, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
packh x21, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x30, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
packh x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x5, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
packh x25, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x24, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
packh x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
packh x14, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x24, 0x8000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
packh x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
packh x30, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x8, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
packh x13, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
packh x3, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
packh x17, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
packh x8, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
packh x21, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x19, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x31, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
packh x21, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
packh x13, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
packh x9, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x25, 0x8000000000000001 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
packh x18, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
packh x17, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
packh x1, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
packh x1, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
packh x18, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x18, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
packh x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x15, 0x7fffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
packh x20, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
packh x6, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x7fffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
packh x3, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
packh x20, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
packh x21, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0x7fffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
packh x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7fffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x10, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x22, 0x7fffffffffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
packh x15, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
packh x8, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
packh x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x26, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
packh x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
packh x11, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x29, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
packh x7, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x22, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
packh x26, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x5, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
packh x19, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
packh x6, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
packh x1, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
packh x19, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
packh x25, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
packh x13, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
packh x3, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
packh x26, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x15, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x6, 0x7ffffffffffffffe # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
packh x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
packh x10, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
packh x12, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x17, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
packh x6, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
packh x17, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x16, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
packh x25, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x17, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
packh x19, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x16, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
packh x20, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x9, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
packh x27, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
packh x11, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
packh x6, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
packh x31, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
packh x19, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
packh x30, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x7, 0xffffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
packh x10, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x19, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xffffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
packh x23, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x1, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
packh x6, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
packh x5, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x12, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
packh x23, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x27, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
packh x30, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
packh x24, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x18, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
packh x28, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
packh x18, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
packh x16, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
packh x31, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
packh x1, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
packh x7, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
packh x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
packh x26, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x22, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
packh x14, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x23, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
packh x19, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
packh x26, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
packh x30, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
packh x30, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
packh x28, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
packh x9, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
packh x14, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
packh x17, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
packh x19, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
packh x29, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
packh x27, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
packh x18, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
packh x11, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x15, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x3, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
packh x22, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
packh x1, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
packh x21, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
packh x15, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
packh x20, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
packh x7, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
packh x31, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
packh x18, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
packh x10, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
packh x22, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
packh x14, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
packh x7, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
packh x19, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
packh x8, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x23, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
packh x16, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x15, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
packh x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
packh x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
packh x25, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
packh x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x11, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
packh x5, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x18, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
packh x27, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
packh x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x5555555555555555 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
packh x8, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x17, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
packh x2, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
packh x22, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
packh x7, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
packh x26, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
packh x8, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x8, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
packh x13, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x26, 0x5555555555555555 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
packh x11, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
packh x8, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x31, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
packh x12, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
packh x7, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
packh x15, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x16, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
packh x30, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x11, 0x00000000ffffffff # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
packh x20, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x5, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
packh x22, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x25, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
packh x27, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
packh x3, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
packh x5, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
packh x8, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
packh x12, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
packh x8, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x00000000ffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x3, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x6, 0x00000000ffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
packh x21, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
packh x30, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
packh x9, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
packh x27, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x30, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
packh x26, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x3, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
packh x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x22, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
packh x19, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
packh x21, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x23, 0x00000000fffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
packh x7, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
packh x11, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
packh x28, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
packh x19, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
packh x7, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
packh x11, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
packh x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x14, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x10, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
packh x30, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
packh x10, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
packh x30, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x13, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
packh x16, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
packh x11, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x15, 0x0000000100000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
packh x25, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x31, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
packh x11, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
packh x7, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x31, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
packh x18, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x11, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
packh x16, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
packh x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
packh x8, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
packh x23, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
packh x21, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
packh x24, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x5, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x0000000100000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
packh x18, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
packh x29, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
packh x25, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
packh x24, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x19, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
packh x24, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x15, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
packh x12, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x9, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
packh x28, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x18, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
packh x29, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
packh x24, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x5, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
packh x8, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
packh x20, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000100000001 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
packh x12, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
packh x16, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
packh x3, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
packh x28, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
packh x8, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
packh x14, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
packh x9, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
packh x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x31, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
packh x30, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x11, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
packh x17, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x8375f940ececa6e9 # initialize rs1
li x0, 0xf2d4f1470eec409e # initialize rs2
packh x29, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xf2c63845d2f7200f # initialize rs1
li x1, 0x106d3010b6219e36 # initialize rs2
packh x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x6947f90f593ece07 # initialize rs1
li x2, 0x359c3a9c1500e0ae # initialize rs2
packh x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfd50d14565763dd2 # initialize rs1
li x3, 0x43719c807e056516 # initialize rs2
packh x8, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x07c2d3c160e11cdf # initialize rs1
li x4, 0xb0fdd2b5c2da809a # initialize rs2
packh x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x807c572e516dd28b # initialize rs1
li x5, 0x9cfd4e41e7061962 # initialize rs2
packh x15, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x73890e962c171e80 # initialize rs1
li x6, 0x7ee5bfc9ba0eea63 # initialize rs2
packh x22, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbd952c9fd96b0c9d # initialize rs1
li x7, 0xfce05de74642d028 # initialize rs2
packh x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x44f34732ba3e6828 # initialize rs1
li x8, 0x5fc6f2e41480d936 # initialize rs2
packh x14, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4a3ddf1843183acb # initialize rs1
li x9, 0xe75b65de06abe6c5 # initialize rs2
packh x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6bc90f0fda7ea98c # initialize rs1
li x10, 0xbdee0131e8e26c25 # initialize rs2
packh x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8ae459c9787281fd # initialize rs1
li x11, 0x1afe537bf34f4ea2 # initialize rs2
packh x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd9a44e1393c77212 # initialize rs1
li x12, 0xa16f26ce41f2e1f2 # initialize rs2
packh x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0e391cea3d85fcb8 # initialize rs1
li x13, 0x74f875174a238d83 # initialize rs2
packh x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe0d35892d186f539 # initialize rs1
li x14, 0x82e4f0022c7faf8c # initialize rs2
packh x27, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc16fd4a22c36c814 # initialize rs1
li x15, 0x81bf8ecc31bee7ff # initialize rs2
packh x17, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x7367c09736e91a63 # initialize rs1
li x16, 0x759c6e92da4027a4 # initialize rs2
packh x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x617fef45c5252096 # initialize rs1
li x17, 0xcc20677f2a0e98f2 # initialize rs2
packh x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xaa1083cb85cea662 # initialize rs1
li x18, 0x768327e898e6581a # initialize rs2
packh x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf8455622440b2fa1 # initialize rs1
li x19, 0x0f24b18bc20708de # initialize rs2
packh x15, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x601335595f9be79b # initialize rs1
li x20, 0xf0cebc85b48c6f5a # initialize rs2
packh x2, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd623eddfd4efdb6f # initialize rs1
li x21, 0xca2f41976cce0fd5 # initialize rs2
packh x20, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd296e096d639c9fb # initialize rs1
li x22, 0x14dc31b374f41443 # initialize rs2
packh x7, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xebec3338ce7509d9 # initialize rs1
li x23, 0xacfea0c912fe98b6 # initialize rs2
packh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xd7425735238b713c # initialize rs1
li x24, 0xfbd83a34834ac465 # initialize rs2
packh x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x668ad3a1707a82c9 # initialize rs1
li x25, 0xa6954657c80541ac # initialize rs2
packh x3, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9dd1f763d7a50aae # initialize rs1
li x26, 0x4b6f0f16bb12d19b # initialize rs2
packh x31, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x37155daaee203f79 # initialize rs1
li x27, 0x015186dd703e955a # initialize rs2
packh x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x426e5a000c70e073 # initialize rs1
li x28, 0xab5dc6c04140d9bb # initialize rs2
packh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x02978186cfff9f52 # initialize rs1
li x29, 0xaa12a4d063ec2c41 # initialize rs2
packh x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xcf66d86448ceda0c # initialize rs1
li x30, 0x76640b88495f7f76 # initialize rs2
packh x8, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xf82904711b713c76 # initialize rs1
li x31, 0xdfd9b13b779a770f # initialize rs2
packh x28, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd8f09d0748b90334 # initialize rs1
li x27, 0x6ada05fad1abd60e # initialize rs2
packh x0, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x609718c4c41b14fd # initialize rs1
li x8, 0xbdc4680dffbfe2c3 # initialize rs2
packh x1, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6a3153f97f5fc608 # initialize rs1
li x10, 0x2f7f5f1dcc2484f4 # initialize rs2
packh x2, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x20050dc20a4ee8b2 # initialize rs1
li x13, 0x5ea883cc3636702e # initialize rs2
packh x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd9236652e7b66670 # initialize rs1
li x31, 0xa2f4785599aef9f5 # initialize rs2
packh x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xabe7862609c49aa4 # initialize rs1
li x21, 0x1985aabf7ccd99cd # initialize rs2
packh x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x91d092b43e767d2e # initialize rs1
li x3, 0xb7dba1b5f2046317 # initialize rs2
packh x6, x6, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x72f4cc8bb17bccb5 # initialize rs1
li x11, 0x6e8637d7075a3685 # initialize rs2
packh x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe2fbeb07866901fb # initialize rs1
li x11, 0xf44c36974452fc1d # initialize rs2
packh x8, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x304bf04214972c9b # initialize rs1
li x24, 0x0157af1fd4db3310 # initialize rs2
packh x9, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd09e07e07009877c # initialize rs1
li x24, 0xfa51c1470ba39b1f # initialize rs2
packh x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x036debdd233c5cd2 # initialize rs1
li x27, 0xfc2f66d55fccd0a0 # initialize rs2
packh x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x32a6920e815b0348 # initialize rs1
li x23, 0x3c5523918c067b58 # initialize rs2
packh x12, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x26f8de8d30180aa9 # initialize rs1
li x22, 0x6b796341bb5ab3b3 # initialize rs2
packh x13, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd939ad657441ac1a # initialize rs1
li x24, 0xb3aeafb37baed6d9 # initialize rs2
packh x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe0adaf52199ca520 # initialize rs1
li x1, 0x831796810d587018 # initialize rs2
packh x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x33317d3581ea2b20 # initialize rs1
li x3, 0x7e606a72712015e9 # initialize rs2
packh x16, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa813fdfbb8bac3b6 # initialize rs1
li x7, 0xa29271bc46c15d48 # initialize rs2
packh x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x540a0332a75c709e # initialize rs1
li x31, 0x447efa78c81fdc1c # initialize rs2
packh x18, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x23483aa83165b306 # initialize rs1
li x22, 0xe55393ea7869bffd # initialize rs2
packh x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x39f61d98ecfd0f61 # initialize rs1
li x9, 0xb0a195b5a3b4fe42 # initialize rs2
packh x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa3c273632f96e70f # initialize rs1
li x1, 0x43bf86ad97e6caca # initialize rs2
packh x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6da50f4d59d285e0 # initialize rs1
li x1, 0x2f1e8252087cec82 # initialize rs2
packh x22, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8f49815ec8465a7a # initialize rs1
li x24, 0x184d1d7b2a470c9e # initialize rs2
packh x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1bb1143aa15bf65b # initialize rs1
li x22, 0x41544b802182cf53 # initialize rs2
packh x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0c424b5ee1235078 # initialize rs1
li x30, 0x5781cfd9221f67a4 # initialize rs2
packh x25, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x50da4d75194091b0 # initialize rs1
li x3, 0x507f020d2a4c71dc # initialize rs2
packh x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3b9eef140984e22b # initialize rs1
li x5, 0x719ad48dc415d7f9 # initialize rs2
packh x27, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3298c1084a3c6e6f # initialize rs1
li x7, 0xb105a5c0b13c92e5 # initialize rs2
packh x28, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc53caa73cb12a3e6 # initialize rs1
li x7, 0x7a391b67131206a6 # initialize rs2
packh x29, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4ae482ac16c05b69 # initialize rs1
li x10, 0xe460a05d83e9f632 # initialize rs2
packh x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x24a1f895deec67b3 # initialize rs1
li x27, 0xd46ada0fe2f93a8a # initialize rs2
packh x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x18954cb26f30a37e # initialize rs1
li x0, 0xc4edb2f26c6d825f # initialize rs2
packh x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x7, 0x1efa03147d4766f4 # initialize rs1
li x1, 0xd8dffa775f059bd1 # initialize rs2
packh x1, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0x69ae46c79d8327d5 # initialize rs1
li x2, 0x57ae0347f173cef6 # initialize rs2
packh x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x27, 0x20c12065a7bc3ae3 # initialize rs1
li x3, 0x8f5f13e1c0a16150 # initialize rs2
packh x3, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xd64ba43ef5af7089 # initialize rs1
li x4, 0x1f4d05c93f5d1deb # initialize rs2
packh x4, x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x302bd0f9331fd37c # initialize rs1
li x5, 0x81b945a09f47bd33 # initialize rs2
packh x5, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xbb8ccca8e31581e1 # initialize rs1
li x6, 0xa021e1f86a1d1cfa # initialize rs2
packh x6, x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x761718c1aace41ff # initialize rs1
li x7, 0xebfa8498fe4938b6 # initialize rs2
packh x7, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0x4ee231b28f422e67 # initialize rs1
li x8, 0xcf94c8d41514dbe6 # initialize rs2
packh x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0xf355d6c3d04b1ebd # initialize rs1
li x9, 0x45fcffa30007d208 # initialize rs2
packh x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0x7bf9124b52870c68 # initialize rs1
li x10, 0x37ab03bae6b466a4 # initialize rs2
packh x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x30, 0x3c5dce0a60cbabc7 # initialize rs1
li x11, 0x80d18cfc5b7ab09b # initialize rs2
packh x11, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0x2a755b536fcfc54e # initialize rs1
li x12, 0x5a1114e1b8ea857a # initialize rs2
packh x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x24, 0xc70ecaba426c9540 # initialize rs1
li x13, 0xbe4a4e50ee59a330 # initialize rs2
packh x13, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x29, 0xb09fc1c205b15064 # initialize rs1
li x14, 0xe3e761d06e5df2e9 # initialize rs2
packh x14, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x18, 0x97fd3f22eebad675 # initialize rs1
li x15, 0xb9c2582bc3751444 # initialize rs2
packh x15, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0xefaaf6add53ccea2 # initialize rs1
li x16, 0x726e39d05efa9f8b # initialize rs2
packh x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0xb177679e9a179765 # initialize rs1
li x17, 0x13cf09566e61e701 # initialize rs2
packh x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x29, 0xf3af099ade42b37b # initialize rs1
li x18, 0xc38e3341eb14fd68 # initialize rs2
packh x18, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x8, 0xb0227fcd6880a004 # initialize rs1
li x19, 0xd59f48f0f83ca57e # initialize rs2
packh x19, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x10, 0xd1126a7becfd67f8 # initialize rs1
li x20, 0xc26dbb7aa4418207 # initialize rs2
packh x20, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x87f8b79a3a4cdecc # initialize rs1
li x21, 0xbd89bd868e3eb9eb # initialize rs2
packh x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0xddd41c17f55bb4c9 # initialize rs1
li x22, 0xc78fb0f6bc847326 # initialize rs2
packh x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0xf783e34841abbd7b # initialize rs1
li x23, 0x6bb926f1b03050c3 # initialize rs2
packh x23, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0xbe721fa6eba18119 # initialize rs1
li x24, 0x036ca959e7ad3b57 # initialize rs2
packh x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x6, 0x18fa6ac9b1a1c40e # initialize rs1
li x25, 0x66df63829798e690 # initialize rs2
packh x25, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0x0e261bfadaaf2bcd # initialize rs1
li x26, 0x73f713d843932a60 # initialize rs2
packh x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x28, 0xa9b9705c5a78ed53 # initialize rs1
li x27, 0xb353b62cf485e517 # initialize rs2
packh x27, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x21, 0x8718896a6988b1c7 # initialize rs1
li x28, 0xbcefd7389d0473cb # initialize rs2
packh x28, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0xb59443392fc503a3 # initialize rs1
li x29, 0x40e28c0ae8078ec3 # initialize rs2
packh x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x10, 0x390019e187fd5aad # initialize rs1
li x30, 0xe63dfb07bd183268 # initialize rs2
packh x30, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0x3595637835d2afbc # initialize rs1
li x31, 0xd94f1e8fa0761398 # initialize rs2
packh x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x4c6f4048819691c2 # initialize rs1
li x0, 0xb58058894aaa789e # initialize rs2
packh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd47ad301d6750b4d # initialize rs1
li x1, 0x3b9f6d556e63c354 # initialize rs2
packh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xccfaa5e31df8d9f8 # initialize rs1
li x2, 0xfdf58536877bba95 # initialize rs2
packh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x904ce7bb4c07b32b # initialize rs1
li x3, 0xf83de4fa015d0def # initialize rs2
packh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9b116b3dacc46abd # initialize rs1
li x4, 0xe9b8f97976142ef7 # initialize rs2
packh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6fe4fb087fb1737c # initialize rs1
li x5, 0x616c156585fa5a92 # initialize rs2
packh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7d3ba550d69b13c9 # initialize rs1
li x6, 0x82a41cf50942e787 # initialize rs2
packh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x93227ecc35823da9 # initialize rs1
li x7, 0x10f993e73c865443 # initialize rs2
packh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xe73949367cd91929 # initialize rs1
li x8, 0x2e48e192933ddc49 # initialize rs2
packh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xab024e9be67701de # initialize rs1
li x9, 0x8ff7295366b213e4 # initialize rs2
packh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x6ff64856632023fb # initialize rs1
li x10, 0x74455733916cf936 # initialize rs2
packh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x28e6e3506f47aca0 # initialize rs1
li x11, 0x2f2e66556352e3b8 # initialize rs2
packh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd1a7db0794b57cd0 # initialize rs1
li x12, 0x997ef5331bb6e71d # initialize rs2
packh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x0167125847e03ce7 # initialize rs1
li x13, 0x4baec1e44f857448 # initialize rs2
packh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6008d426c31609e0 # initialize rs1
li x14, 0x5906d31e2b86051b # initialize rs2
packh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3d91c1a3bef9bbab # initialize rs1
li x15, 0x8f5dd55920cd25f3 # initialize rs2
packh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6236d5feefcf3062 # initialize rs1
li x16, 0xa3b93f87abb2611d # initialize rs2
packh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x26db7282d327e3e6 # initialize rs1
li x17, 0x5fd64506260123f8 # initialize rs2
packh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x0375c62792df8f33 # initialize rs1
li x18, 0xd63e932ea7d71c63 # initialize rs2
packh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8129806616e0fc42 # initialize rs1
li x19, 0x9fd9a08715f8517f # initialize rs2
packh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9610e1a0453626c8 # initialize rs1
li x20, 0xdbdb19903e81bb2f # initialize rs2
packh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc86573b40bff7b3c # initialize rs1
li x21, 0x316a76e2634ce40d # initialize rs2
packh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc5df6384d21727eb # initialize rs1
li x22, 0x233c24ba5fb10d53 # initialize rs2
packh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfbdc56f77c2ff26e # initialize rs1
li x23, 0x617f07c9164e6439 # initialize rs2
packh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd9b844248245e85d # initialize rs1
li x24, 0x1479d4de08ef1a3e # initialize rs2
packh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3c0bfca988240a63 # initialize rs1
li x25, 0x3da9b47b226cd0bd # initialize rs2
packh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xadf3a1d60046acd9 # initialize rs1
li x26, 0xaa846eacce66ac5c # initialize rs2
packh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd68807d3a98790d0 # initialize rs1
li x27, 0x04b1959b850e4c20 # initialize rs2
packh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x99b456bd065043ff # initialize rs1
li x28, 0xd984135ec301762d # initialize rs2
packh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x7d76dd88123c828d # initialize rs1
li x29, 0x2d3cd4a44d64addf # initialize rs2
packh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc8ee3dc95208596f # initialize rs1
li x30, 0xd75f972edb3fb066 # initialize rs2
packh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5cd294ee8d621419 # initialize rs1
li x31, 0xd4e5fbf66cf8a97f # initialize rs2
packh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x6, x30 # perform first operation
packh x20, x12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x9, x10 # perform first operation
packh x12, x27, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x27, x17 # perform first operation
packh x23, x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x30, x31 # perform first operation
packh x29, x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x17, x16 # perform first operation
packh x16, x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x16, x23 # perform first operation
packh x23, x22, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x24, x15 # perform first operation
packh x26, x25, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x25, x21 # perform first operation
packh x8, x10, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x22, x16 # perform first operation
packh x1, x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x22, x27 # perform first operation
packh x22, x13, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x17, x9 # perform first operation
packh x9, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x29, x28 # perform first operation
packh x17, x14, x21 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-andn.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x972908c2ef77b5eb # initialize rs1
li x25, 0xc847043899ea5785 # initialize rs2
andn x6, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x748a6b77ccda3396 # initialize rs1
li x7, 0x55ea8b05988ab33b # initialize rs2
andn x24, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x49803e6c6fe3fd09 # initialize rs1
li x22, 0x259c640ea303cdd7 # initialize rs2
andn x26, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x383988ad481416b4 # initialize rs1
li x1, 0xa0d8db53c4e00a7e # initialize rs2
andn x12, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf322386f8c5c724e # initialize rs1
li x3, 0xdb0d0d2ffa388130 # initialize rs2
andn x16, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc2ece96427a5b508 # initialize rs1
li x31, 0x51b594b00945fc65 # initialize rs2
andn x15, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb9e296b1e5d72066 # initialize rs1
li x3, 0x5a8ccec9398ab823 # initialize rs2
andn x7, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xf09ea32a9ccaacf0 # initialize rs1
li x12, 0x40c67a4821b2c765 # initialize rs2
andn x22, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9cec0ca9e892039d # initialize rs1
li x5, 0xd580f0f2823c269d # initialize rs2
andn x6, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6c46f4d7a43a3ec4 # initialize rs1
li x27, 0xc160529fbbd36efa # initialize rs2
andn x30, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xfd482d70b73c8243 # initialize rs1
li x28, 0x1705e389e71a2bc1 # initialize rs2
andn x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0d6252f27ff4ca2f # initialize rs1
li x10, 0x19419512e56dca46 # initialize rs2
andn x29, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3d8025d64b89607d # initialize rs1
li x15, 0x4a4cd147e4fd905f # initialize rs2
andn x23, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x01ef40a3956efa09 # initialize rs1
li x17, 0xe83a7082bc300b7d # initialize rs2
andn x22, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6dfe9791abf5e818 # initialize rs1
li x12, 0xb101de81c92d697d # initialize rs2
andn x15, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x3901840a42236fa5 # initialize rs1
li x29, 0xd7464595651ab7f9 # initialize rs2
andn x27, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6febefb97ea4f30b # initialize rs1
li x10, 0xa08f785d32551ba3 # initialize rs2
andn x9, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xcc892321077b9cb7 # initialize rs1
li x15, 0x788bec80fe8f7720 # initialize rs2
andn x16, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x72de831c1ffdc298 # initialize rs1
li x9, 0x4e956a9939bb9459 # initialize rs2
andn x5, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd518b68e8d7568a4 # initialize rs1
li x8, 0x3db79b4cdf18811c # initialize rs2
andn x20, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x66a9503806aa97d5 # initialize rs1
li x12, 0x77e3826a1441244a # initialize rs2
andn x18, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x057ac83aa57a05d3 # initialize rs1
li x17, 0x9d7e67b642f872a1 # initialize rs2
andn x13, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x15d94885a53744f3 # initialize rs1
li x24, 0xc2fb5ac6d4a75250 # initialize rs2
andn x23, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd5524b8c185fdaf5 # initialize rs1
li x2, 0x6470bc90349ecaa3 # initialize rs2
andn x5, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdde100997e0717af # initialize rs1
li x5, 0x475ddc84f279f992 # initialize rs2
andn x29, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x39cf5d461fbe7916 # initialize rs1
li x1, 0xef7fa27684569e25 # initialize rs2
andn x2, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xcb13c17afa43c3c6 # initialize rs1
li x28, 0xd2207ef488866551 # initialize rs2
andn x20, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbf76a0c613a68632 # initialize rs1
li x31, 0x6968f283855411cb # initialize rs2
andn x30, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x585e95563599eb28 # initialize rs1
li x31, 0x569d03694bf71290 # initialize rs2
andn x21, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x66413919519ddcaa # initialize rs1
li x24, 0xdfab0fcfbc862c74 # initialize rs2
andn x27, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x231d60e40d61fe93 # initialize rs1
li x23, 0xbf5b3a74458037c2 # initialize rs2
andn x3, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb02cbf92a1d4559c # initialize rs1
li x2, 0x1e045994a85b67db # initialize rs2
andn x30, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x21, 0x3a78e51366135d02 # initialize rs1
li x0, 0x7bc8c0b08595cfca # initialize rs2
andn x16, x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x6823928ded7a109f # initialize rs1
li x1, 0x7e6458d6b3ba5be9 # initialize rs2
andn x9, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x5, 0x4454464615969df9 # initialize rs1
li x2, 0x55ed10d21e9b8b09 # initialize rs2
andn x30, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x12, 0x984a026aa7ef9c45 # initialize rs1
li x3, 0xd337beb102b6eaaa # initialize rs2
andn x6, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x7d0a9576ae33e084 # initialize rs1
li x4, 0x7a985f5f4a8fc15b # initialize rs2
andn x11, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x30, 0xa50a84a7ad8d2dfa # initialize rs1
li x5, 0xc1b563285b6c4454 # initialize rs2
andn x2, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x7d80cd63ef4e3fea # initialize rs1
li x6, 0x7d8cb48b92bb33f8 # initialize rs2
andn x3, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x67414d6f41aa707e # initialize rs1
li x7, 0xc5d0f9669a53174c # initialize rs2
andn x27, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xfe8050d38e46f7e8 # initialize rs1
li x8, 0x84bd7a11bfb976d1 # initialize rs2
andn x9, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x072e58538875fbe0 # initialize rs1
li x9, 0x29a0c3461ba73a4e # initialize rs2
andn x28, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x8258e9e9bfbfd4f0 # initialize rs1
li x10, 0x1e80fc8970453e5d # initialize rs2
andn x8, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0xc51eb8345a4b2301 # initialize rs1
li x11, 0x05191c4381090ae2 # initialize rs2
andn x20, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x5997371977882944 # initialize rs1
li x12, 0x6c8be576db1e90d5 # initialize rs2
andn x19, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x12, 0x1e67808ef65fdc41 # initialize rs1
li x13, 0x7219812ed99a81e5 # initialize rs2
andn x9, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x0ab54919f16ccc12 # initialize rs1
li x14, 0xd8ae4ebe938ec849 # initialize rs2
andn x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0x5dd5d3dbcf83adc0 # initialize rs1
li x15, 0x40c40cde7597fb51 # initialize rs2
andn x23, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x61482766ac6a5ab6 # initialize rs1
li x16, 0xd54bfb7a86b77077 # initialize rs2
andn x14, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0xd7fc13d62a50965b # initialize rs1
li x17, 0xbe9ba9ec7744694f # initialize rs2
andn x30, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x93229a16bf930a8a # initialize rs1
li x18, 0x863f00db196b8f1b # initialize rs2
andn x25, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x914b0db27ceff01c # initialize rs1
li x19, 0x56e55f3a0043f0da # initialize rs2
andn x3, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0x602785db71bfb299 # initialize rs1
li x20, 0x940938ec4b85398e # initialize rs2
andn x22, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0xff9a43b98763b749 # initialize rs1
li x21, 0x6ad8201fc1d8fa8e # initialize rs2
andn x1, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x302790f7054dc614 # initialize rs1
li x22, 0x8986418a752c8a06 # initialize rs2
andn x15, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0x20f692de2659f026 # initialize rs1
li x23, 0x85b072d3e45eac77 # initialize rs2
andn x18, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x23, 0x9385d56c8ae66098 # initialize rs1
li x24, 0x65753807545d5e90 # initialize rs2
andn x5, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0xa7c494842c846701 # initialize rs1
li x25, 0x04ec3cb4d1ef1e48 # initialize rs2
andn x9, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x178cc3d68f795fbd # initialize rs1
li x26, 0xa4822fa63d6e546e # initialize rs2
andn x11, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x9c2635b6b9aa7422 # initialize rs1
li x27, 0xe08c84cac5a7afeb # initialize rs2
andn x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0xb429b15982dec439 # initialize rs1
li x28, 0x206e61cea9da03eb # initialize rs2
andn x3, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0xc3da79a3d85f09a5 # initialize rs1
li x29, 0xd7157bd8efc595de # initialize rs2
andn x20, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x1, 0xb0a59b96f4ee59db # initialize rs1
li x30, 0xf47c90b1f9c0cd9a # initialize rs2
andn x2, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x17, 0x9e5864b89d1d392f # initialize rs1
li x31, 0x86d69b4e41761a44 # initialize rs2
andn x15, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xa8d152d29b3d9f41 # initialize rs1
li x29, 0xe5fd2295ad53b175 # initialize rs2
andn x0, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x02ad4ddf07abac3f # initialize rs1
li x5, 0x536ba05ad13b767b # initialize rs2
andn x1, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0xd49cdab51e895ece # initialize rs1
li x25, 0x1eeea22b198cf713 # initialize rs2
andn x2, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0xfb27294d2aff4faf # initialize rs1
li x28, 0xb4eef9d78df528bc # initialize rs2
andn x3, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x83aea0ad99bf5d7e # initialize rs1
li x19, 0x08db53f3518370ab # initialize rs2
andn x4, x21, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xc4a5216706559229 # initialize rs1
li x30, 0x6a1caa97cfc5612a # initialize rs2
andn x5, x25, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xfb08eaa9657fa6c1 # initialize rs1
li x9, 0x2a1a904f973285c3 # initialize rs2
andn x6, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x23, 0x2d4f968d9d8c5a9d # initialize rs1
li x20, 0xde8ab7364765e63f # initialize rs2
andn x7, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x19, 0x6644224b28be5b01 # initialize rs1
li x17, 0x3d47010a1bada8b0 # initialize rs2
andn x8, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xc919d06b8c6ebe17 # initialize rs1
li x22, 0x982d05b65719372c # initialize rs2
andn x9, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x22, 0x64dd4011bf9fc544 # initialize rs1
li x10, 0x62dde3ffceadfd7e # initialize rs2
andn x10, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x8bb57af438947379 # initialize rs1
li x2, 0x0a406d88387144b8 # initialize rs2
andn x11, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0xda2402d5e9d0501a # initialize rs1
li x3, 0x590e72ab52dae01a # initialize rs2
andn x12, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0xca90cc86d50c9de3 # initialize rs1
li x19, 0x834870998421c090 # initialize rs2
andn x13, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xfc0141078455434c # initialize rs1
li x11, 0xb29be8bb1f694253 # initialize rs2
andn x14, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xb2e22531cb119bb8 # initialize rs1
li x20, 0xec2708ab49180cf4 # initialize rs2
andn x15, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x6353db39a7117a2c # initialize rs1
li x13, 0x865c47178759a2bc # initialize rs2
andn x16, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x5d04378b5723ce47 # initialize rs1
li x23, 0xb5518095c996fa90 # initialize rs2
andn x17, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x3283d9931ebd15c4 # initialize rs1
li x21, 0xca6cb7a770de0315 # initialize rs2
andn x18, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0x5a302a5e8077a02a # initialize rs1
li x26, 0xb1da5da2c457240d # initialize rs2
andn x19, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x10e83d2c764a2d03 # initialize rs1
li x6, 0x0ab0871d24618d1c # initialize rs2
andn x20, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0x85cadd515a68e91c # initialize rs1
li x22, 0x7148a4311d72dea7 # initialize rs2
andn x21, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0xc8714e1bc2f07535 # initialize rs1
li x22, 0x8701681cdb7ac732 # initialize rs2
andn x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0xf4f529729510d8b3 # initialize rs1
li x15, 0x379a1287f77a804a # initialize rs2
andn x23, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xf8816e08a37e45e0 # initialize rs1
li x20, 0xa3898b2dd7237885 # initialize rs2
andn x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0xc87f334e92b0ad17 # initialize rs1
li x22, 0x310b3c7716e9032f # initialize rs2
andn x25, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x166f9294eb264cae # initialize rs1
li x25, 0x489e8fabcf83d1bc # initialize rs2
andn x26, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x18, 0x59e969424e23c29a # initialize rs1
li x1, 0x11c51dfb89048230 # initialize rs2
andn x27, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x7709c388b1833b14 # initialize rs1
li x27, 0x3ce33b5352d70c03 # initialize rs2
andn x28, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0xbac629f0b5ccf7c5 # initialize rs1
li x20, 0x441393821b2481a2 # initialize rs2
andn x29, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x1bc3fe2ff8230815 # initialize rs1
li x28, 0xa0b2e80fa4760d83 # initialize rs2
andn x30, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x5d14911f2ed796d2 # initialize rs1
li x12, 0x55d35caa5aa1e672 # initialize rs2
andn x31, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0x0000000000000000 # initialize rs1
li x1, 0x6f22914f12011b36 # initialize rs2
andn x18, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x2, 0x3166518c73ab6ab9 # initialize rs2
andn x27, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0x6ff908e0c9780f1c # initialize rs2
andn x22, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
li x29, 0x72322228d2564dd3 # initialize rs2
andn x18, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x20, 0x545c14874187450f # initialize rs2
andn x31, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x30, 0x805b4e1a72e240a4 # initialize rs2
andn x7, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0x4bfcf86c860ce262 # initialize rs2
andn x29, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x14, 0x8116c7f40594f8cd # initialize rs2
andn x10, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x31, 0x0fed0d80b63db04a # initialize rs2
andn x22, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x2edb40eb5ee28e2d # initialize rs2
andn x18, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x416549517226dcde # initialize rs2
andn x24, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
li x13, 0x1487645044f12260 # initialize rs2
andn x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x30, 0xe5a056086f726dfe # initialize rs2
andn x26, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x09db2f4b96a80bdc # initialize rs2
andn x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x1, 0xbf52e11b2e69dfdf # initialize rs2
andn x11, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x18, 0x9808dba7188a0d4c # initialize rs2
andn x20, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x33e4a64a59c60b8f # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
andn x3, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0x31594d3cbfb33b92 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
andn x17, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0xeed3c558b1614636 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
andn x7, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0x222cdd3891627957 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
andn x15, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x23af3dfa1d6bd2e7 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
andn x7, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x22, 0x0cb1e164e8e6915f # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
andn x27, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0xa9b81b985146f743 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
andn x19, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xf5e337d09cb6b9a6 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
andn x24, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0x966c2ad2a89815ba # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
andn x24, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x30, 0x9d977fb94f6945c9 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
andn x1, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xc70488e574caf41d # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x29, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x31, 0x37855de5be532eb8 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
andn x1, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0x4a2eece16d402fc5 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
andn x20, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x5, 0x95e87b5257a2cc0d # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
andn x21, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x051e1a9eefb070a5 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
andn x3, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0xce4d2773c990aca9 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
andn x27, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
andn x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
andn x8, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x6, 0x0000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
andn x27, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x7, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
andn x24, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
andn x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
andn x5, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
andn x12, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
andn x3, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000000000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
andn x3, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
andn x27, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x24, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x30, 0x0000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
andn x22, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
andn x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
andn x6, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x15, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
andn x31, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x5, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
andn x30, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
andn x14, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
andn x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
andn x24, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
andn x23, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x29, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
andn x27, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
andn x7, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
andn x23, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
andn x1, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
andn x11, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
andn x13, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x19, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x20, 0x0000000000000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
andn x14, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
andn x11, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x26, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
andn x8, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x0000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
andn x3, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x25, 0x0000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
andn x29, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
andn x17, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
andn x17, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x18, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
andn x14, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x28, 0x0000000000000002 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
andn x20, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x27, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
andn x26, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000002 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
andn x11, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
andn x29, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x31, 0x0000000000000002 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
andn x3, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
andn x21, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000002 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
andn x18, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000002 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x22, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
andn x14, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
andn x21, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
andn x20, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x21, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
andn x28, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x28, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
andn x18, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
andn x14, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x21, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
andn x13, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x7, 0x8000000000000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
andn x14, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
andn x9, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
andn x6, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
andn x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
andn x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
andn x10, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
andn x9, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
andn x30, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x1, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x23, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
andn x12, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
andn x23, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
andn x7, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
andn x2, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
andn x16, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
andn x31, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x12, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
andn x22, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x24, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
andn x28, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x23, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
andn x29, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
andn x19, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
andn x31, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
andn x14, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
andn x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x20, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
andn x16, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
andn x29, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x28, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x12, 0x8000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
andn x28, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
andn x12, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
andn x31, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x6, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
andn x30, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x8, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
andn x18, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
andn x28, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x7, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
andn x20, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x6, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
andn x11, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
andn x25, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
andn x31, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
andn x22, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0x7fffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
andn x14, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
andn x20, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
andn x10, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x7fffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
andn x12, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x7fffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x17, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
andn x11, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
andn x16, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x12, 0x7fffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
andn x16, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
andn x20, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
andn x10, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x26, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
andn x28, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
andn x13, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x19, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
andn x24, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
andn x20, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
andn x14, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
andn x7, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
andn x7, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
andn x8, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
andn x25, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
andn x28, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7ffffffffffffffe # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x21, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
andn x16, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
andn x22, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
andn x30, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x19, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
andn x26, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
andn x11, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x21, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
andn x9, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x7, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x1, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
andn x30, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x14, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
andn x6, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x2, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
andn x13, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
andn x5, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
andn x23, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
andn x7, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
andn x19, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0xffffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
andn x31, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0xffffffffffffffff # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x15, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
andn x25, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
andn x6, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
andn x9, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
andn x3, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x31, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
andn x22, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
andn x11, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x9, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x5, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x29, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
andn x3, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
andn x20, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x31, 0xfffffffffffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
andn x22, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
andn x3, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
andn x17, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
andn x6, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
andn x27, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
andn x28, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xfffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x20, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
andn x22, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
andn x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
andn x20, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
andn x23, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
andn x11, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
andn x12, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
andn x18, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
andn x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
andn x7, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
andn x23, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
andn x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
andn x15, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
andn x31, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
andn x14, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
andn x23, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x25, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
andn x31, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
andn x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
andn x30, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
andn x25, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
andn x27, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
andn x6, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
andn x21, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
andn x8, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
andn x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
andn x21, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
andn x31, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
andn x19, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
andn x28, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
andn x14, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
andn x12, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x6, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
andn x27, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
andn x9, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
andn x20, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
andn x31, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
andn x31, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
andn x7, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
andn x18, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
andn x24, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
andn x25, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
andn x21, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
andn x15, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
andn x9, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
andn x6, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
andn x13, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5555555555555555 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
andn x13, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5555555555555555 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x11, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x11, 0x5555555555555555 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
andn x20, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
andn x24, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
andn x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
andn x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x31, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
andn x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
andn x20, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
andn x30, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
andn x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x8, 0x00000000ffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
andn x2, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
andn x8, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
andn x27, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
andn x1, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
andn x31, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x7, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
andn x27, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000ffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
andn x30, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x18, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x27, 0x00000000ffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
andn x25, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
andn x8, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
andn x16, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x7, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
andn x10, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x6, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
andn x31, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
andn x27, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x14, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x30, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
andn x10, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x9, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
andn x16, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x5, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
andn x29, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x00000000fffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
andn x28, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x00000000fffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
andn x21, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
andn x22, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
andn x27, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x12, 0x00000000fffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
andn x9, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x15, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x12, 0x00000000fffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
andn x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
andn x19, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
andn x9, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
andn x9, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
andn x16, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
andn x10, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x2, 0x0000000100000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
andn x23, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
andn x17, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x11, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
andn x22, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x27, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
andn x30, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
andn x1, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
andn x23, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
andn x9, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
andn x6, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
andn x20, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x28, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x21, 0x0000000100000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
andn x26, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
andn x27, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
andn x13, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x27, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
andn x11, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x1, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
andn x9, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x31, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
andn x10, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x20, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
andn x24, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x21, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
andn x1, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
andn x8, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
andn x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
andn x12, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
andn x20, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
andn x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
andn x20, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
andn x22, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x0000000100000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
andn x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x19, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
andn x28, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
andn x29, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
andn x12, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x17, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
andn x5, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x29, 0x0000000100000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
andn x17, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x02fea0a18208faf8 # initialize rs1
li x0, 0x2bb3b9bbb96a597d # initialize rs2
andn x23, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xbb95030cc499804b # initialize rs1
li x1, 0xe6a95c41cfaba60a # initialize rs2
andn x15, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x94406c90e20d94b9 # initialize rs1
li x2, 0x1bd3606641a8b489 # initialize rs2
andn x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbe0aee26011e1a82 # initialize rs1
li x3, 0x92b24d2ce59c2d8a # initialize rs2
andn x27, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8373952da413303b # initialize rs1
li x4, 0x7e59b847bf877d72 # initialize rs2
andn x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x38257e9a27f59ea5 # initialize rs1
li x5, 0xf2406d50ba059217 # initialize rs2
andn x4, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x426db8187b15e1dc # initialize rs1
li x6, 0x4e6a5c6001aa561b # initialize rs2
andn x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x622f35f5099d77bb # initialize rs1
li x7, 0x0905b5ad7e3fa3d5 # initialize rs2
andn x29, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x2d31ab38e73c9ad4 # initialize rs1
li x8, 0xe36df470c195f4ec # initialize rs2
andn x30, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1aebbe18cc630a34 # initialize rs1
li x9, 0x4480f5b950e9d7da # initialize rs2
andn x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8f6aed53035f0b90 # initialize rs1
li x10, 0x5cd35023d3812914 # initialize rs2
andn x23, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x242b016e72fcc720 # initialize rs1
li x11, 0xe2af22a68354cbf1 # initialize rs2
andn x19, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xf3f3a9a3a7acab77 # initialize rs1
li x12, 0xe03713d928d87123 # initialize rs2
andn x11, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7b70b23f0042c9cb # initialize rs1
li x13, 0x0a50dea2367ef7de # initialize rs2
andn x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7dc6dddccc64dceb # initialize rs1
li x14, 0x45db21600364db3f # initialize rs2
andn x26, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x658d6c406347715e # initialize rs1
li x15, 0x34df3bad990b6997 # initialize rs2
andn x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x325ee2e5ae3e0187 # initialize rs1
li x16, 0x22a4b8e844bf1582 # initialize rs2
andn x28, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xad3fe7b4517e5ece # initialize rs1
li x17, 0xd27f0f8bf9e2a577 # initialize rs2
andn x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x34f2ae021048942c # initialize rs1
li x18, 0x83a725d6b483a854 # initialize rs2
andn x16, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x261142594d0f6b46 # initialize rs1
li x19, 0xc097295b4857614b # initialize rs2
andn x16, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb911eb0aa2b36c62 # initialize rs1
li x20, 0x1dca10e732871ac4 # initialize rs2
andn x25, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x43aefce617c48d8a # initialize rs1
li x21, 0xd63c226e5a983b30 # initialize rs2
andn x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7b3abf715609071b # initialize rs1
li x22, 0x0bde2bffbd659e9b # initialize rs2
andn x27, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xd25be7c95b824eb6 # initialize rs1
li x23, 0xa3411d89801445ef # initialize rs2
andn x25, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xb820bb9ec004951a # initialize rs1
li x24, 0x7cbf13ade2f94509 # initialize rs2
andn x30, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbb25974b4cbca297 # initialize rs1
li x25, 0x5973b8372ba46695 # initialize rs2
andn x13, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x93f25eb0afcd2c83 # initialize rs1
li x26, 0xd557839c49c48c38 # initialize rs2
andn x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc5ec12115eda9ad5 # initialize rs1
li x27, 0x467620efa469b76f # initialize rs2
andn x6, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8ac34ccd8c4a17a2 # initialize rs1
li x28, 0x4033459b75d05ea5 # initialize rs2
andn x13, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x6624b951e0b87e64 # initialize rs1
li x29, 0x4fc8630cee3380ea # initialize rs2
andn x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4dc5fbe0561711ad # initialize rs1
li x30, 0x5ecdae9bddbf4ae0 # initialize rs2
andn x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x48cd5ec16a97bf2e # initialize rs1
li x31, 0x7a162619637b4f4f # initialize rs2
andn x9, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1ef4d36caf7b190e # initialize rs1
li x30, 0xab4bece9de5a1525 # initialize rs2
andn x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x998b5f53df3f99ec # initialize rs1
li x3, 0x6afd44c990b45dcb # initialize rs2
andn x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x101e7891ac4d8588 # initialize rs1
li x5, 0xbd9582579e48e25a # initialize rs2
andn x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x79fed4a2f18d228f # initialize rs1
li x22, 0x02572817b7c8b7ab # initialize rs2
andn x3, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x09be9c931bdedb8d # initialize rs1
li x2, 0x8dd46ba3b6f2e8ca # initialize rs2
andn x4, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x841966527ab4b28c # initialize rs1
li x31, 0xc98a590298564e0e # initialize rs2
andn x5, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x571c6acc6c2e8166 # initialize rs1
li x25, 0x6e690554cc6e94b7 # initialize rs2
andn x6, x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x0bd76fd8c63f654f # initialize rs1
li x4, 0x7ea1273c44594c10 # initialize rs2
andn x7, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0fbebe787536ccd6 # initialize rs1
li x21, 0x41501f632ae09ac0 # initialize rs2
andn x8, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0f3c53132e146b36 # initialize rs1
li x21, 0x6b28ab8ae1e903b8 # initialize rs2
andn x9, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x871cba19a9a9aab9 # initialize rs1
li x4, 0x76d9682df111075b # initialize rs2
andn x10, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcef771e8506482df # initialize rs1
li x31, 0xac55adbe44589e0a # initialize rs2
andn x11, x11, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb2616854cbba5fa6 # initialize rs1
li x23, 0x3800642ccabf3863 # initialize rs2
andn x12, x12, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x214c8c7f0d2374f7 # initialize rs1
li x7, 0xa646bf5adeffd4ec # initialize rs2
andn x13, x13, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4467f3e57ab33d83 # initialize rs1
li x21, 0x4ba706a02b636c99 # initialize rs2
andn x14, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8346bece5702793b # initialize rs1
li x14, 0x340c606514e4fcf2 # initialize rs2
andn x15, x15, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x71518ebcdc72aace # initialize rs1
li x25, 0x10500de785a7ccba # initialize rs2
andn x16, x16, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4d638747d2b3da44 # initialize rs1
li x17, 0x7616c4313a23d232 # initialize rs2
andn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5dbb6eb9cca57eb7 # initialize rs1
li x12, 0x88ce25a8ddf84638 # initialize rs2
andn x18, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc5588ca2e344403b # initialize rs1
li x24, 0x2aa67dd676df703b # initialize rs2
andn x19, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9fc60e78e67203e4 # initialize rs1
li x29, 0xc79ba43563c30ae3 # initialize rs2
andn x20, x20, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfe55d4d23d2030e3 # initialize rs1
li x10, 0x5a3f73f1dcd6ac20 # initialize rs2
andn x21, x21, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3db54cfa30bd5397 # initialize rs1
li x31, 0x1048ac18390f27d7 # initialize rs2
andn x22, x22, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1d85b55c183ab099 # initialize rs1
li x10, 0xa50b5ff0205623af # initialize rs2
andn x23, x23, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7504e88c7a5b3ab4 # initialize rs1
li x18, 0x7868082eaeb9dca9 # initialize rs2
andn x24, x24, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x435a845c3019d14f # initialize rs1
li x23, 0xb84ce3487ceef62d # initialize rs2
andn x25, x25, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1b0e90d7713947aa # initialize rs1
li x16, 0xd50a4e1178bc03cb # initialize rs2
andn x26, x26, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf05dfd7135ea2928 # initialize rs1
li x30, 0xa1c1a696b5991dc7 # initialize rs2
andn x27, x27, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x825400859912ec0c # initialize rs1
li x13, 0xc36e9419e9592323 # initialize rs2
andn x28, x28, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa62838c909314d25 # initialize rs1
li x19, 0x32421d9aebd6bf1f # initialize rs2
andn x29, x29, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcce382e416a10ce6 # initialize rs1
li x7, 0x9db08c500291b7bc # initialize rs2
andn x30, x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0d56dcf0f0dd1384 # initialize rs1
li x19, 0x9805d262a8bd0d23 # initialize rs2
andn x31, x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x6, 0x69d4da683bd70899 # initialize rs1
li x0, 0x61bbb4caa5ca7ab2 # initialize rs2
andn x0, x6, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x16, 0xae9016d370ce3eed # initialize rs1
li x1, 0x5764c27cbf710682 # initialize rs2
andn x1, x16, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x7b605c09b4725b9e # initialize rs1
li x2, 0xbb570ff94b7b0130 # initialize rs2
andn x2, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0xe98c337c585f560d # initialize rs1
li x3, 0x1b5759db70a053bd # initialize rs2
andn x3, x6, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x10, 0x66c1a64f7dbacc29 # initialize rs1
li x4, 0xba3da9201e4a0979 # initialize rs2
andn x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0xa52b810e16095753 # initialize rs1
li x5, 0xc9c03f5b44f7b884 # initialize rs2
andn x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x0e7bde41e50d919f # initialize rs1
li x6, 0x26d2f381f2111ab7 # initialize rs2
andn x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x862d77e79b1bf54c # initialize rs1
li x7, 0xef0feb6186e1f456 # initialize rs2
andn x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x12, 0x567f0dff2c54c0d1 # initialize rs1
li x8, 0x23e2174a3a2ae39e # initialize rs2
andn x8, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0xa36dd079ee9d3f85 # initialize rs1
li x9, 0x73fe91e76f2fe2c3 # initialize rs2
andn x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x23, 0x0dbfa3d3520fb6e8 # initialize rs1
li x10, 0x89a9180980470665 # initialize rs2
andn x10, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0xe937db0222d2d785 # initialize rs1
li x11, 0x5220083edd259984 # initialize rs2
andn x11, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x29, 0x89ded47748f69556 # initialize rs1
li x12, 0x516b52653dcc31fb # initialize rs2
andn x12, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x200afa302d49b7d1 # initialize rs1
li x13, 0xce7a1fec422fb919 # initialize rs2
andn x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x9, 0x4c31fdae2ac91b26 # initialize rs1
li x14, 0x187a3c1a81b3b7a7 # initialize rs2
andn x14, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x23, 0xee46de62118c7aee # initialize rs1
li x15, 0x14a304fca100719c # initialize rs2
andn x15, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x17, 0xb99f943d025858c0 # initialize rs1
li x16, 0x71ced8fa5867abc8 # initialize rs2
andn x16, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xfbf6d9f16e32fa39 # initialize rs1
li x17, 0x5476e5be605897d5 # initialize rs2
andn x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x3, 0x2b0571ddf41a9318 # initialize rs1
li x18, 0xc553915d70cd88a0 # initialize rs2
andn x18, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x6, 0xdbdcd8ba07800859 # initialize rs1
li x19, 0x5adc024f36efcef6 # initialize rs2
andn x19, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0xfce918df574ce687 # initialize rs1
li x20, 0xffde951f1464dfc0 # initialize rs2
andn x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0x57e491672080c051 # initialize rs1
li x21, 0xb5bf7ccda1ff6046 # initialize rs2
andn x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x1, 0x5e3375952f1307c0 # initialize rs1
li x22, 0x6e1e636a89b2d95c # initialize rs2
andn x22, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x8, 0x328c13137aecbd49 # initialize rs1
li x23, 0xcccdea706b7482d2 # initialize rs2
andn x23, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xc886d5f3fe16ddb9 # initialize rs1
li x24, 0x306d2d5239e310d6 # initialize rs2
andn x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x10, 0xb000a9eb86d45005 # initialize rs1
li x25, 0xdaad4d7a438abb95 # initialize rs2
andn x25, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x15, 0xec77db90057402ba # initialize rs1
li x26, 0x14e55f8f665ee036 # initialize rs2
andn x26, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x29, 0xbfb93e6d583f9dc8 # initialize rs1
li x27, 0xb40f5d07969deeab # initialize rs2
andn x27, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0x1e3724f712e9fd90 # initialize rs1
li x28, 0x2fcc365d54597d26 # initialize rs2
andn x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x160c4856d5809279 # initialize rs1
li x29, 0xc50ffd3d1378050c # initialize rs2
andn x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x28, 0x9ed69e46268f8e6d # initialize rs1
li x30, 0x9890205238bd69db # initialize rs2
andn x30, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x21, 0xee06b2802f1803c2 # initialize rs1
li x31, 0x7122ddd2e9426b37 # initialize rs2
andn x31, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x48c3f701b5a5eeb5 # initialize rs1
li x0, 0x5e0eec702450bdb0 # initialize rs2
andn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4b5d9f3533de5ce7 # initialize rs1
li x1, 0xae4142eb19b07dea # initialize rs2
andn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x1d85cce7f60ad694 # initialize rs1
li x2, 0xb9fdc53fd85aaa87 # initialize rs2
andn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4c4d4d1e4250acfe # initialize rs1
li x3, 0x89085c4453912c43 # initialize rs2
andn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe81d596d4173db50 # initialize rs1
li x4, 0x9f9537c9f77a9133 # initialize rs2
andn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5255fa3d4e523383 # initialize rs1
li x5, 0x2663a81c5fb6c747 # initialize rs2
andn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9cff643e0468067a # initialize rs1
li x6, 0x1ff9dd84c00a819e # initialize rs2
andn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56bd9bf6cdbca640 # initialize rs1
li x7, 0x0461c221f67c840c # initialize rs2
andn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xd3798f97e32a32b9 # initialize rs1
li x8, 0xa632faadbd0caa07 # initialize rs2
andn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf91df037fafd0bf0 # initialize rs1
li x9, 0x8c742f33a64f6290 # initialize rs2
andn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5aa20816780466aa # initialize rs1
li x10, 0xe30894f83db3534e # initialize rs2
andn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xd85ae56ab1855875 # initialize rs1
li x11, 0x52fb898f67512066 # initialize rs2
andn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xbd0c4e7f2b33f3d8 # initialize rs1
li x12, 0xe604c96877157690 # initialize rs2
andn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa6bffa2f75019a73 # initialize rs1
li x13, 0xeaf3307b9b708b37 # initialize rs2
andn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd83293463f0c4d8f # initialize rs1
li x14, 0x8818a83e077abc5a # initialize rs2
andn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x63c3aa96422d7abb # initialize rs1
li x15, 0xb49ccedaf0f142e6 # initialize rs2
andn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x0107b2a8a97e7c6c # initialize rs1
li x16, 0xd43ff1da136f7e24 # initialize rs2
andn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc5d3acaf3fa52e88 # initialize rs1
li x17, 0x77c4d307f5406ae6 # initialize rs2
andn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x19ea32626dc5db23 # initialize rs1
li x18, 0x93f155dfa87cb66d # initialize rs2
andn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xae30cce0693ea5ab # initialize rs1
li x19, 0xa5aba7d811485699 # initialize rs2
andn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x113909d8d2b97664 # initialize rs1
li x20, 0x9e18e3bb7b0bf3ef # initialize rs2
andn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2665cf5d84a8a7f9 # initialize rs1
li x21, 0x1937e2018a5da3dd # initialize rs2
andn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xae802ecca6c0141b # initialize rs1
li x22, 0x45725c9cd1426fbc # initialize rs2
andn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x806002fe3a04be21 # initialize rs1
li x23, 0xc796058f50b1fd13 # initialize rs2
andn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa701509d320d1dd0 # initialize rs1
li x24, 0x1d1917ee1021437c # initialize rs2
andn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1a36ef42d8bef6de # initialize rs1
li x25, 0x8a12b028e7196905 # initialize rs2
andn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x333df859558a8889 # initialize rs1
li x26, 0x3afb85b0dff2d09b # initialize rs2
andn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd3fb1b74172c9eed # initialize rs1
li x27, 0x00528e239b02cf02 # initialize rs2
andn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xed6eda32ac7c583e # initialize rs1
li x28, 0x51478f198ef1502e # initialize rs2
andn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xe326d720e502ec8e # initialize rs1
li x29, 0xa4ab9a5a941b4e75 # initialize rs2
andn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9c53fbbc1c954212 # initialize rs1
li x30, 0xf0676026200094c0 # initialize rs2
andn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xf1e5710b798d3cb4 # initialize rs1
li x31, 0x2beaef2476328fe9 # initialize rs2
andn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x5, x31 # perform first operation
andn x7, x3, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x11, x30 # perform first operation
andn x14, x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x10, x25 # perform first operation
andn x16, x13, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x5 # perform first operation
andn x14, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x29, x17 # perform first operation
andn x17, x12, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x10, x18 # perform first operation
andn x18, x21, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x12, x28 # perform first operation
andn x22, x24, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x2, x30 # perform first operation
andn x14, x13, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x5, x26 # perform first operation
andn x12, x3, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x14, x2 # perform first operation
andn x14, x11, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x6, x1 # perform first operation
andn x1, x25, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x12, x15 # perform first operation
andn x26, x25, x9 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-orn.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x4b553a0e60e9eb24 # initialize rs1
li x15, 0x4a5a453c5940ea44 # initialize rs2
orn x1, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x708cc69dac64f405 # initialize rs1
li x15, 0xf68544034612269a # initialize rs2
orn x25, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8f892144a26e0ac0 # initialize rs1
li x25, 0x53ad0d69a4f5b85b # initialize rs2
orn x1, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2d779896a4da99c1 # initialize rs1
li x16, 0x81877e5aa6c264f2 # initialize rs2
orn x27, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x990393dee4cca341 # initialize rs1
li x9, 0x996fcaa8cdfa8c51 # initialize rs2
orn x25, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3486a40c25b27d69 # initialize rs1
li x9, 0x18691d437eee6538 # initialize rs2
orn x8, x5, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa64b1c8462ea9f95 # initialize rs1
li x7, 0xfefcf47d1c016939 # initialize rs2
orn x29, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xb5e5636a25d33ca7 # initialize rs1
li x22, 0xda1f6277d88a0044 # initialize rs2
orn x24, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x28c5d27cb6d3af74 # initialize rs1
li x6, 0x450ea0e063ca44e4 # initialize rs2
orn x21, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x04b66c7dfe360c60 # initialize rs1
li x16, 0x1730752aa960b4b5 # initialize rs2
orn x2, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xcf5c5b2c78bbf8d4 # initialize rs1
li x27, 0xfe0e38522f7f8897 # initialize rs2
orn x6, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x10c4d450ac4164ba # initialize rs1
li x27, 0x894b59f7c1f2cba4 # initialize rs2
orn x16, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd895456304e40734 # initialize rs1
li x29, 0x65c755a7acb630b0 # initialize rs2
orn x5, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb98d857b576df6b1 # initialize rs1
li x25, 0xf4ec2885b66a310d # initialize rs2
orn x31, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0243771d86c2dcdb # initialize rs1
li x5, 0x14cdfa4bba1ade56 # initialize rs2
orn x16, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xd58b5f0ee179033b # initialize rs1
li x3, 0x6bb4e5cb7af0c7f1 # initialize rs2
orn x11, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x262da683571a0d08 # initialize rs1
li x20, 0x7c17cc6ff9c27a6a # initialize rs2
orn x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc04ccf967035970d # initialize rs1
li x20, 0x97653bf32bd8f906 # initialize rs2
orn x30, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe4586fcb4d8d8c1d # initialize rs1
li x5, 0xede1f5f687bca8eb # initialize rs2
orn x2, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x9bfff6480a3045f3 # initialize rs1
li x15, 0xa40f189bc61a0263 # initialize rs2
orn x6, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xa1a0c9c411bb548f # initialize rs1
li x24, 0x05604bdaa6c1b9d5 # initialize rs2
orn x19, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x564d165fb597c333 # initialize rs1
li x24, 0x179e32ed75c7de6b # initialize rs2
orn x13, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6161ba2fc04b8efb # initialize rs1
li x27, 0x299dcf535bb859eb # initialize rs2
orn x25, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe799f71a5be75232 # initialize rs1
li x2, 0x75b809410b9a3709 # initialize rs2
orn x8, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x92022e92481e0760 # initialize rs1
li x1, 0x81ee184795a2755b # initialize rs2
orn x8, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf0ce8e6b0fd9a9ba # initialize rs1
li x18, 0x218dd7d8b0a0f3da # initialize rs2
orn x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x56bbb3325cab60cb # initialize rs1
li x3, 0x7c6e3de4d324bb63 # initialize rs2
orn x10, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeb7374b6ee36b58a # initialize rs1
li x10, 0x7792f5b5d92bfd1e # initialize rs2
orn x3, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7d37c1263aa9fe87 # initialize rs1
li x12, 0x4909aa1ebd4bab6b # initialize rs2
orn x22, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9f77b579d911f3c9 # initialize rs1
li x23, 0x006fc671d3929a31 # initialize rs2
orn x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcd9e2dc362d34025 # initialize rs1
li x7, 0xeccb7f4f0e507745 # initialize rs2
orn x31, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x293afb8e0e62c4f9 # initialize rs1
li x1, 0xa6a4027b3013a7b2 # initialize rs2
orn x22, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0xe08c4a16b9acf7a1 # initialize rs1
li x0, 0xb5de5839b9d889ec # initialize rs2
orn x11, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x30, 0xfbebb82b01e10aed # initialize rs1
li x1, 0x2658fac69779e938 # initialize rs2
orn x5, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x98ab8c4f744de612 # initialize rs1
li x2, 0xe3de2d9c1248fa42 # initialize rs2
orn x13, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x11dcbfb54e07c282 # initialize rs1
li x3, 0xac8c57152caf4920 # initialize rs2
orn x7, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x3aa38a00ce66c311 # initialize rs1
li x4, 0x0b1f6d3f6fef5201 # initialize rs2
orn x15, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x9351e0fffedc4a1b # initialize rs1
li x5, 0xf8f197461e5e0c7b # initialize rs2
orn x31, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xd73a8d871c5734d3 # initialize rs1
li x6, 0xdadc3d97ff0a66e2 # initialize rs2
orn x3, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x326b1f759757ca59 # initialize rs1
li x7, 0xdbeb92c6dcf48f21 # initialize rs2
orn x4, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x400082d0ba882323 # initialize rs1
li x8, 0x5384986029547214 # initialize rs2
orn x15, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0x1bc95154d2cf6d59 # initialize rs1
li x9, 0x05ebbebbdb01ebe6 # initialize rs2
orn x10, x30, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0xd16ec2bfe2304872 # initialize rs1
li x10, 0x7b0e4ccf51b2ba17 # initialize rs2
orn x25, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0xee9c67e751b874be # initialize rs1
li x11, 0xc23ac0d4716a9704 # initialize rs2
orn x24, x7, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x75a401a35b35ce40 # initialize rs1
li x12, 0xc801e693d2c58157 # initialize rs2
orn x29, x25, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0x3831b0520c2abf7e # initialize rs1
li x13, 0x4add3c5feca853f2 # initialize rs2
orn x1, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0xa2c29b13fae69a0a # initialize rs1
li x14, 0x4b228ace9eba8884 # initialize rs2
orn x9, x28, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0xb130f14af622b730 # initialize rs1
li x15, 0x9bcfa1636f3e1a49 # initialize rs2
orn x14, x12, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xcecd5a6f3033337a # initialize rs1
li x16, 0xfe36c5263d5ce9c6 # initialize rs2
orn x30, x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0x277d4e6ab38536a6 # initialize rs1
li x17, 0xf0f90b5d0d6bbde9 # initialize rs2
orn x15, x30, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xc6c8fa175a55f6c5 # initialize rs1
li x18, 0xfffae18ed92adf0f # initialize rs2
orn x3, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x20, 0x34e5029fc091cd73 # initialize rs1
li x19, 0x55b4edc2c855d9d4 # initialize rs2
orn x13, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x4ef288770512af09 # initialize rs1
li x20, 0x7fcc73ba2594d0e7 # initialize rs2
orn x18, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x7e7181591c25db71 # initialize rs1
li x21, 0xfce4aeb5bcacafb1 # initialize rs2
orn x6, x18, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x9, 0x1113db6612c7644f # initialize rs1
li x22, 0x772e4a8f3de8f2c1 # initialize rs2
orn x18, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x0f5c5b0cdb7e0954 # initialize rs1
li x23, 0x310cf06a48267dcc # initialize rs2
orn x25, x17, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x3e529610db3b17d0 # initialize rs1
li x24, 0x28a6bd53a9d95697 # initialize rs2
orn x22, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x023e3da4973dc2bd # initialize rs1
li x25, 0xdbb50ea8e06f3af2 # initialize rs2
orn x17, x21, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x729f4cda0cc03ca5 # initialize rs1
li x26, 0xe6872b60d9eabe93 # initialize rs2
orn x29, x10, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x085531a9a2833f14 # initialize rs1
li x27, 0x29fd70f710e6ee87 # initialize rs2
orn x14, x2, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0x3ccbdf372389363d # initialize rs1
li x28, 0x412795818779296e # initialize rs2
orn x14, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x11, 0xa6d18ab36140761c # initialize rs1
li x29, 0x6b458275413ee837 # initialize rs2
orn x7, x11, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0xa157895b43d0c01e # initialize rs1
li x30, 0x4f7b60454eecf381 # initialize rs2
orn x7, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x9d2ec6efe20eaee0 # initialize rs1
li x31, 0x4d1d9ef81a33cad0 # initialize rs2
orn x12, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x5bbdae9a1d9b5538 # initialize rs1
li x24, 0x41c8f7dbb8a10e22 # initialize rs2
orn x0, x6, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xe093cad17b09d424 # initialize rs1
li x1, 0x842309d004b8cd74 # initialize rs2
orn x1, x15, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0xe1d1a18c1ab5bdb5 # initialize rs1
li x16, 0x3e38512a1da8082c # initialize rs2
orn x2, x21, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3f6c7537de01a673 # initialize rs1
li x15, 0x14febcd8df21574d # initialize rs2
orn x3, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
li x14, 0xdb860515580c778b # initialize rs1
li x27, 0x6c45be7ccb5cfef4 # initialize rs2
orn x4, x14, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x0940323a0c23f9ca # initialize rs1
li x26, 0x745da229bf382ecf # initialize rs2
orn x5, x2, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x94c9a7c565638d29 # initialize rs1
li x29, 0x42311d5faa5c1329 # initialize rs2
orn x6, x10, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xe2cb8beec41f2a8b # initialize rs1
li x27, 0x77d323f04aaa41b6 # initialize rs2
orn x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0x9217be8a8085f2d0 # initialize rs1
li x30, 0x689f8b953aab3d04 # initialize rs2
orn x8, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0da450d350e6e558 # initialize rs1
li x30, 0x617ce6e22e5206cc # initialize rs2
orn x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0xb8626d3efad952b7 # initialize rs1
li x25, 0x3f9fff1d9b67134c # initialize rs2
orn x10, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x4949f1e047a7dfee # initialize rs1
li x8, 0xfa327ce0313c6b7f # initialize rs2
orn x11, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0xda447e391bca64cf # initialize rs1
li x6, 0x837c034c024d7282 # initialize rs2
orn x12, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x44f34fe5700d65fd # initialize rs1
li x27, 0x7d83f0023a24f983 # initialize rs2
orn x13, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0x171698e62b4c9678 # initialize rs1
li x31, 0x53ab5dd8155cfd10 # initialize rs2
orn x14, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x32a81a0c967ace3c # initialize rs1
li x15, 0xf93f0ed9a7d7890a # initialize rs2
orn x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0xc2232f9298048225 # initialize rs1
li x26, 0x4134b6f6fe067f95 # initialize rs2
orn x16, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x29f17d5bc39acf75 # initialize rs1
li x7, 0x72dd3274ff10b5ec # initialize rs2
orn x17, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x8309970a9b0b0469 # initialize rs1
li x10, 0x6411b3e0ee96cea6 # initialize rs2
orn x18, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xdec544a1230d9241 # initialize rs1
li x17, 0x8c9c54dc5a501df9 # initialize rs2
orn x19, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xb0d2f739db7d084b # initialize rs1
li x1, 0xdfa1abb10042313c # initialize rs2
orn x20, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xde862b5d2dd5ce6f # initialize rs1
li x9, 0xda16018108a48857 # initialize rs2
orn x21, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x6ae6db2b3fcba014 # initialize rs1
li x10, 0xea8c7144b93e8c03 # initialize rs2
orn x22, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x389cc2d6751d1d37 # initialize rs1
li x5, 0x0b8f497083c77af8 # initialize rs2
orn x23, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xcd94cb60870b923f # initialize rs1
li x5, 0x03eef8843ad76ff2 # initialize rs2
orn x24, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x7b5eee680615e4e7 # initialize rs1
li x9, 0x2489f7bca3962503 # initialize rs2
orn x25, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x6b3fa7b344517bee # initialize rs1
li x17, 0x21beeb7c6dc869fc # initialize rs2
orn x26, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x9664ecd7b4707aab # initialize rs1
li x18, 0xb9a32e2a9de4305b # initialize rs2
orn x27, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0x375b1585e31c8808 # initialize rs1
li x13, 0x220ab1d488f935e6 # initialize rs2
orn x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x8ad24dd70565da84 # initialize rs1
li x2, 0x7a9724f783f4db8a # initialize rs2
orn x29, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x1d9a4ff795a0627a # initialize rs1
li x27, 0xdee687379d726c95 # initialize rs2
orn x30, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x6aaebcdc7b4032bc # initialize rs1
li x15, 0xb6cd3913bc30c00a # initialize rs2
orn x31, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x18, 0x0000000000000000 # initialize rs1
li x7, 0x44886199e94e5f48 # initialize rs2
orn x6, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x0000000000000001 # initialize rs1
li x23, 0x2dda84226706ac5b # initialize rs2
orn x13, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x15, 0xf4d357f397f4365e # initialize rs2
orn x24, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x29, 0xb06ab5da3e32e21d # initialize rs2
orn x31, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rs1
li x16, 0xc75cc18189ce5aa1 # initialize rs2
orn x13, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0xe56913d82524aaa9 # initialize rs2
orn x2, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x12, 0xc0d02a6894f85a75 # initialize rs2
orn x8, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0xfaef7c5f2ab02e90 # initialize rs2
orn x26, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x25, 0x14a30b452ca86e5e # initialize rs2
orn x26, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xf376bda82a2b5c98 # initialize rs2
orn x16, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x6585b04ddb872d56 # initialize rs2
orn x1, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x1, 0x5555555555555555 # initialize rs1
li x13, 0x43f4c1f2fa64b713 # initialize rs2
orn x7, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x16, 0x69ecafa860412a56 # initialize rs2
orn x20, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x27, 0x7cfe5c6826256b3d # initialize rs2
orn x21, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x24, 0x6c24d2974db7f769 # initialize rs2
orn x26, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x18, 0x64f90da496c67c81 # initialize rs2
orn x30, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x39db1ea322960db0 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
orn x16, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0xc68dab4df62c847d # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
orn x16, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x1, 0xa42c4dafab6b3adf # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
orn x14, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xc7379302681907ec # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
orn x31, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x977ee08f704c0532 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
orn x22, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x15, 0x46b1607f92ef8b9e # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
orn x2, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0xfc92a1098512f19a # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
orn x12, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xa3485f514fdf450a # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
orn x7, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0xb22e988ae28b95c1 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
orn x27, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x2, 0x038c98821c3979e8 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
orn x11, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x08506fe2e6936746 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x29, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x670814ce9add2bfd # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
orn x23, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xb3e78f4db75d46e8 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
orn x22, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0xfec02f5bdad21218 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
orn x19, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x25, 0x8b5841ca6a44bff8 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
orn x21, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0x444db9df9b351aac # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
orn x19, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x13, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
orn x20, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
orn x9, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
orn x1, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x17, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
orn x3, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
orn x27, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
orn x30, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
orn x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
orn x27, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
orn x18, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
orn x25, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x26, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x11, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
orn x31, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
orn x18, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
orn x28, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x27, 0x0000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
orn x26, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x7, 0x0000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
orn x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x16, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
orn x2, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
orn x30, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x20, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
orn x5, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
orn x13, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x1, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
orn x21, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
orn x30, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
orn x25, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
orn x8, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
orn x11, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
orn x21, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x9, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
orn x21, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
orn x30, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
orn x16, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x17, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
orn x2, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x28, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
orn x29, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x18, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
orn x8, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
orn x11, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x5, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
orn x16, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
orn x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x13, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
orn x2, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
orn x31, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
orn x8, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
orn x25, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
orn x22, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000000000002 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
orn x25, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x23, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x6, 0x0000000000000002 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
orn x17, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x28, 0x0000000000000002 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
orn x7, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
orn x20, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x19, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
orn x21, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x5, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
orn x27, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
orn x29, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
orn x3, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x18, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
orn x6, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
orn x8, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x24, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
orn x15, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
orn x9, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
orn x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
orn x10, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x30, 0x8000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
orn x6, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x5, 0x8000000000000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
orn x15, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x8000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x10, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x10, 0x8000000000000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
orn x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x1, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
orn x11, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x24, 0x8000000000000000 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
orn x19, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x29, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
orn x7, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
orn x26, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x17, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
orn x5, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
orn x13, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x3, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
orn x14, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x27, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
orn x22, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
orn x1, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
orn x14, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x8000000000000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
orn x26, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
orn x9, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
orn x15, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
orn x16, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x30, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x6, 0x8000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
orn x27, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
orn x13, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
orn x12, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x15, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
orn x20, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x27, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
orn x30, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
orn x24, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
orn x28, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
orn x18, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
orn x11, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
orn x11, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
orn x15, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
orn x21, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
orn x5, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x7fffffffffffffff # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
orn x29, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x26, 0x7fffffffffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
orn x10, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x7fffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x14, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x30, 0x7fffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
orn x23, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
orn x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
orn x7, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x23, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
orn x12, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
orn x1, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
orn x5, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x28, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
orn x29, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
orn x31, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0x7ffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
orn x31, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0x7ffffffffffffffe # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
orn x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
orn x30, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
orn x28, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
orn x23, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
orn x24, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
orn x20, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7ffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x28, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
orn x9, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
orn x1, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
orn x10, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
orn x12, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
orn x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x13, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
orn x3, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
orn x3, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
orn x6, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
orn x7, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
orn x2, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
orn x27, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0xffffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
orn x22, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
orn x18, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
orn x8, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0xffffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
orn x28, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xffffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x7, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
orn x22, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
orn x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
orn x20, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
orn x31, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
orn x3, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
orn x12, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x22, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
orn x14, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
orn x5, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
orn x1, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
orn x6, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
orn x28, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
orn x10, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
orn x31, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
orn x22, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0xfffffffffffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
orn x10, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x26, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xfffffffffffffffe # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
orn x30, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
orn x30, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
orn x14, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x20, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
orn x10, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x21, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
orn x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
orn x15, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
orn x6, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
orn x29, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
orn x20, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
orn x26, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
orn x21, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
orn x15, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
orn x25, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
orn x30, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
orn x2, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
orn x20, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
orn x1, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
orn x17, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
orn x30, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
orn x18, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
orn x21, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
orn x3, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
orn x20, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
orn x3, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
orn x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
orn x2, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
orn x31, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
orn x10, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
orn x7, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
orn x2, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x3, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
orn x25, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
orn x7, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
orn x14, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
orn x14, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
orn x5, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x14, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
orn x26, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x15, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
orn x22, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x19, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
orn x1, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x13, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
orn x10, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x16, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
orn x9, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
orn x18, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
orn x15, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
orn x15, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
orn x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5555555555555555 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
orn x14, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x5555555555555555 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x13, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
orn x31, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
orn x12, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x26, 0x5555555555555555 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
orn x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x21, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
orn x25, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
orn x27, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
orn x5, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x14, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
orn x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x14, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
orn x22, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x29, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
orn x14, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x8, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
orn x6, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
orn x25, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
orn x3, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
orn x25, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
orn x8, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0x00000000ffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
orn x16, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x00000000ffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x5, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x1, 0x00000000ffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
orn x23, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
orn x12, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
orn x17, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x26, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
orn x28, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x25, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
orn x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
orn x27, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
orn x29, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
orn x23, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
orn x26, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x31, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
orn x30, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
orn x13, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
orn x27, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x24, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
orn x9, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
orn x5, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
orn x28, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000fffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x30, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
orn x24, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
orn x8, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
orn x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x10, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
orn x3, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
orn x30, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
orn x9, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
orn x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x14, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
orn x26, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x11, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
orn x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
orn x3, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
orn x7, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
orn x16, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
orn x20, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
orn x12, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
orn x20, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x26, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
orn x3, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
orn x29, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
orn x9, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
orn x17, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x24, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
orn x12, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
orn x27, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x23, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
orn x22, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x23, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
orn x15, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
orn x21, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x20, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
orn x10, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
orn x23, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
orn x19, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
orn x12, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
orn x23, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
orn x16, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000001 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
orn x18, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
orn x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
orn x12, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
orn x3, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
orn x1, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x29, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
orn x21, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb57fd498afc237ff # initialize rs1
li x0, 0x5bb675da3774dead # initialize rs2
orn x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xdb86c1c7075ce1b5 # initialize rs1
li x1, 0x4fd2929c55e21322 # initialize rs2
orn x28, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x56357d5a3a7da833 # initialize rs1
li x2, 0xdef73ce7e6c0bdb9 # initialize rs2
orn x28, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x6350163d2538f13a # initialize rs1
li x3, 0x9da9e6921ca1420e # initialize rs2
orn x23, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc9e4a0448959764b # initialize rs1
li x4, 0x49a5164655f350f6 # initialize rs2
orn x28, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x55e60f8d7f708fc9 # initialize rs1
li x5, 0x1f264fe4f15a4d96 # initialize rs2
orn x14, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x782b9f9bc5ae08d8 # initialize rs1
li x6, 0x4ca3fa428311f4aa # initialize rs2
orn x3, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3d720bea5550c073 # initialize rs1
li x7, 0x52f54e8047716b1e # initialize rs2
orn x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x24f2768fcd0b42ca # initialize rs1
li x8, 0x7af45594f1b215de # initialize rs2
orn x28, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6dee222a0046542f # initialize rs1
li x9, 0x97cca2f5c3b3cd19 # initialize rs2
orn x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9dc18c55b3b938cf # initialize rs1
li x10, 0x36aaaf67236bc160 # initialize rs2
orn x17, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xa8e99f8a0b6eaede # initialize rs1
li x11, 0x00078ebf06c22483 # initialize rs2
orn x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x22af51067f8737da # initialize rs1
li x12, 0xc2ede0e3f3fd8f5e # initialize rs2
orn x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xeb48a13108a2c484 # initialize rs1
li x13, 0x50c0546dfed6a45a # initialize rs2
orn x30, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf367752bc9cc7f33 # initialize rs1
li x14, 0xce40d856df31f4f3 # initialize rs2
orn x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9bc928c9e05d8505 # initialize rs1
li x15, 0xa243688ab03aa573 # initialize rs2
orn x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x05a27ed5b0b3401b # initialize rs1
li x16, 0x7a924baf2ffc15a3 # initialize rs2
orn x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xca8b23aaca4f4426 # initialize rs1
li x17, 0xd0da4d89e47fc405 # initialize rs2
orn x15, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x56e96363dbae1850 # initialize rs1
li x18, 0x6ac3735e7e59ca7d # initialize rs2
orn x7, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xe68518bebe63d9ba # initialize rs1
li x19, 0xc7152f84ade86816 # initialize rs2
orn x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb41639c461b625a8 # initialize rs1
li x20, 0xab785f63cd523700 # initialize rs2
orn x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x441d2e1a053089ca # initialize rs1
li x21, 0xc02bacb3bb86e11b # initialize rs2
orn x31, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd6fb829d1ea7f706 # initialize rs1
li x22, 0x0c49f7f3ca690a62 # initialize rs2
orn x5, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x47dcf000a6ec85af # initialize rs1
li x23, 0x9d295a2daa2b67e4 # initialize rs2
orn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7e579c8283982e0b # initialize rs1
li x24, 0xc7104624702dab8d # initialize rs2
orn x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb6b05b6af6e36e2b # initialize rs1
li x25, 0x8bb0db81c7cb18ca # initialize rs2
orn x18, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8508fca11e0908a8 # initialize rs1
li x26, 0xf2167b30375a2336 # initialize rs2
orn x29, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x2572ef48db7084f1 # initialize rs1
li x27, 0x08d96669290bc68d # initialize rs2
orn x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x49f8bb4ae13608c2 # initialize rs1
li x28, 0xc2b3f2605a65aa37 # initialize rs2
orn x7, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcc05c935cc16922a # initialize rs1
li x29, 0x68e879b086736084 # initialize rs2
orn x25, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa8f04e343e7ff65e # initialize rs1
li x30, 0xaea5741871b81d6a # initialize rs2
orn x23, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x25b7ab71fd401718 # initialize rs1
li x31, 0x65387ee3a95af890 # initialize rs2
orn x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x02829167ba505e1b # initialize rs1
li x28, 0xfee29350f6b9fd4c # initialize rs2
orn x0, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa30a3b4892167b9d # initialize rs1
li x27, 0xc177d161c574b0fd # initialize rs2
orn x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb97919c5f4481028 # initialize rs1
li x31, 0x81572259a959d297 # initialize rs2
orn x2, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf9309aa987cf77fd # initialize rs1
li x18, 0xbc38c55edae3baba # initialize rs2
orn x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22a58bb4d7bc18bf # initialize rs1
li x19, 0x00ce81e39f966cb8 # initialize rs2
orn x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb7535685eeb22d33 # initialize rs1
li x29, 0x0fd78f5335b2ad03 # initialize rs2
orn x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd65eae7307343b63 # initialize rs1
li x18, 0x0da298304f789d2c # initialize rs2
orn x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb1b6bfe919a02315 # initialize rs1
li x19, 0xf88534c452329e48 # initialize rs2
orn x7, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xce27f9ed5151c3ad # initialize rs1
li x18, 0x2610dcd9e1083b7e # initialize rs2
orn x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8a9ea4e8cfc88bcd # initialize rs1
li x1, 0x0fe76b0087b0aeb9 # initialize rs2
orn x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x29aa61334bb291d6 # initialize rs1
li x17, 0x8b3285205dca784c # initialize rs2
orn x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x88342c1902e6dee1 # initialize rs1
li x20, 0x9d02bac19107be50 # initialize rs2
orn x11, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x397c5de29874ed11 # initialize rs1
li x9, 0x36598cc9e8966406 # initialize rs2
orn x12, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x71665850ca598966 # initialize rs1
li x13, 0xb3e5a9d2bd1ec39d # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbcf85b615d7ae42a # initialize rs1
li x28, 0x6ba5f87ff1428a55 # initialize rs2
orn x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4e0f5cf263b43717 # initialize rs1
li x5, 0x049e543a59ae3d98 # initialize rs2
orn x15, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x109495da651098f5 # initialize rs1
li x22, 0x693e50e32300e007 # initialize rs2
orn x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x70add216b0cf74e8 # initialize rs1
li x23, 0x7e5f5409371487d2 # initialize rs2
orn x17, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6679607bfc7401ea # initialize rs1
li x5, 0x179498d4e32071c2 # initialize rs2
orn x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb0b2fff8477c89a4 # initialize rs1
li x1, 0xe492125c90a85c35 # initialize rs2
orn x19, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa36f7ecf71222518 # initialize rs1
li x3, 0x7e7c0cb03c8deadf # initialize rs2
orn x20, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7ad4b783d74de42a # initialize rs1
li x18, 0x9ff2763187182307 # initialize rs2
orn x21, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb098cb13c048b593 # initialize rs1
li x3, 0x8c2124ae298db000 # initialize rs2
orn x22, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa80699ab6956a450 # initialize rs1
li x27, 0x47e0468d92d68e86 # initialize rs2
orn x23, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9d3df4c9a7d0d78b # initialize rs1
li x14, 0x7000abb73ee2ec96 # initialize rs2
orn x24, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x63aefd09b45b1ca1 # initialize rs1
li x7, 0x38d7a11d784cee40 # initialize rs2
orn x25, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa75e708da79a35f2 # initialize rs1
li x24, 0xeb85511f5aa2572a # initialize rs2
orn x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x069e722b008c2d8c # initialize rs1
li x15, 0x41a2b939389eb224 # initialize rs2
orn x27, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbef9343fb8703947 # initialize rs1
li x31, 0xa5f9bb6205476e3f # initialize rs2
orn x28, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa58efeb51bea79f6 # initialize rs1
li x26, 0x51889e1369e8944c # initialize rs2
orn x29, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2ad0430697f7247c # initialize rs1
li x25, 0x5948feaa29c1149c # initialize rs2
orn x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x311b5dca8eb99a17 # initialize rs1
li x24, 0xf2ef705ce0a1e264 # initialize rs2
orn x31, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0xa3e7d8fe20825703 # initialize rs1
li x0, 0x46dcd47994b9445e # initialize rs2
orn x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x26, 0x9af3038687ce3749 # initialize rs1
li x1, 0xf775dda2c4b98766 # initialize rs2
orn x1, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0xdddb429dffd357f3 # initialize rs1
li x2, 0x374c961e41a12274 # initialize rs2
orn x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x2, 0x4d6c1ce598436a76 # initialize rs1
li x3, 0x326cf1286afb7359 # initialize rs2
orn x3, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x6919b4d3a218171e # initialize rs1
li x4, 0x6c7d712a4ea7cfab # initialize rs2
orn x4, x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xe68a1fba1851b0c0 # initialize rs1
li x5, 0x91dc58029b686c11 # initialize rs2
orn x5, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x9932c65ea0ce0fee # initialize rs1
li x6, 0xa4680e0c865bf95f # initialize rs2
orn x6, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xc736efec6d1421b2 # initialize rs1
li x7, 0x7bf22414d0336684 # initialize rs2
orn x7, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x29, 0xa5679b638a94b38c # initialize rs1
li x8, 0xc3897d913d739767 # initialize rs2
orn x8, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x3, 0x6aa4bfa67b5ad3c4 # initialize rs1
li x9, 0x85a05a472293dafe # initialize rs2
orn x9, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x25, 0x14cd286ae6938da1 # initialize rs1
li x10, 0x7691145ac5f1d951 # initialize rs2
orn x10, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x5, 0xd7ee127588d58f25 # initialize rs1
li x11, 0xd3c0192a6c4ee4d2 # initialize rs2
orn x11, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x143e4f3e23920858 # initialize rs1
li x12, 0x5f694d8808b2a6f8 # initialize rs2
orn x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x791e5329519136e3 # initialize rs1
li x13, 0xb75d1ec06789aea5 # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x978ab36c87a129eb # initialize rs1
li x14, 0x5dc8b8c40e53a979 # initialize rs2
orn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x22, 0x2c6f9fcbe09bd3da # initialize rs1
li x15, 0x12d200922d761a51 # initialize rs2
orn x15, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x20, 0xd30065d5289c29fa # initialize rs1
li x16, 0xceb4fa4024f6dd5b # initialize rs2
orn x16, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x31743500f19e6747 # initialize rs1
li x17, 0xfeb33c3ceb2b1353 # initialize rs2
orn x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x10, 0xcc3b2073cbc072ce # initialize rs1
li x18, 0xae19ab0a2adc8ea6 # initialize rs2
orn x18, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0xd9a8c62d3db75fdb # initialize rs1
li x19, 0x07f8be1046b6908b # initialize rs2
orn x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0x6b61dc107a4e68ca # initialize rs1
li x20, 0x79d053a26d53988e # initialize rs2
orn x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x17, 0x2014de1f05c18c55 # initialize rs1
li x21, 0x4fe019d708aa1cf2 # initialize rs2
orn x21, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0x69ed180d6125e87f # initialize rs1
li x22, 0x86262dc6ee359198 # initialize rs2
orn x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0xc71fdd20d7efaa72 # initialize rs1
li x23, 0x5d65ecc356955978 # initialize rs2
orn x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0xb101abbc57c349ac # initialize rs1
li x24, 0x711a67e032f7c9e3 # initialize rs2
orn x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0xdf4c576d8b40b497 # initialize rs1
li x25, 0xf012a104ceb29842 # initialize rs2
orn x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0xc5b9e0cd838da2a8 # initialize rs1
li x26, 0x82cbe6607d474be9 # initialize rs2
orn x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x19, 0x86e6c962cd476592 # initialize rs1
li x27, 0x012a3d881140c767 # initialize rs2
orn x27, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x23, 0xd917a7ffc4ac58db # initialize rs1
li x28, 0x285d07d851b20c98 # initialize rs2
orn x28, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x8, 0x9b86b57189816e7b # initialize rs1
li x29, 0x840d34e8ca2aa674 # initialize rs2
orn x29, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x20, 0x94b71e0c9fa84ac3 # initialize rs1
li x30, 0x8083c31044074ccc # initialize rs2
orn x30, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0x208a4b9456695cac # initialize rs1
li x31, 0xf19f5a171143fdcc # initialize rs2
orn x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x20a7d72c336a687f # initialize rs1
li x0, 0x6caae38e86b52f58 # initialize rs2
orn x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb5fd024f5842c804 # initialize rs1
li x1, 0x9e5e7c2e1614b597 # initialize rs2
orn x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x403622978e8edd7a # initialize rs1
li x2, 0xe7bfbb0732912b75 # initialize rs2
orn x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x56a54c001f1ccb1d # initialize rs1
li x3, 0xb4287ad734e19115 # initialize rs2
orn x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3a8e9fd092039a90 # initialize rs1
li x4, 0x9ebe17fcd7b64a16 # initialize rs2
orn x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0750490d083d7d70 # initialize rs1
li x5, 0x0a059964e4e1cb62 # initialize rs2
orn x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0aa6a3f4de46e370 # initialize rs1
li x6, 0xc8d2acc4dd99568f # initialize rs2
orn x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf1e3b6e9b6d92f51 # initialize rs1
li x7, 0xf08f9456b4c9257a # initialize rs2
orn x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa53812ca82848864 # initialize rs1
li x8, 0x6dd722f6f356ddeb # initialize rs2
orn x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x0e607c1d9d92c538 # initialize rs1
li x9, 0x0405b31535445da8 # initialize rs2
orn x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e8cb028862603bd # initialize rs1
li x10, 0x1f4bb1bedc315207 # initialize rs2
orn x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x91661b79bab23e6b # initialize rs1
li x11, 0xd22bfb55abb1ed6f # initialize rs2
orn x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe235f63880faec83 # initialize rs1
li x12, 0xe693aa2b4bddbdfe # initialize rs2
orn x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x34296f0140e50534 # initialize rs1
li x13, 0x00b16cd8b8a38387 # initialize rs2
orn x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x39a2556a0ed1bff2 # initialize rs1
li x14, 0xa1b28daf670f318f # initialize rs2
orn x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x56802cb4029e19c9 # initialize rs1
li x15, 0x3c316876b41e7b50 # initialize rs2
orn x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa80214abdd771968 # initialize rs1
li x16, 0x7a0cc90930b36bf1 # initialize rs2
orn x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x252e153b02626027 # initialize rs1
li x17, 0x01d95fbbd3c7c4c0 # initialize rs2
orn x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4e6a1329f74c0010 # initialize rs1
li x18, 0x4a2754b717b84a40 # initialize rs2
orn x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xb7b4fbbdf261775b # initialize rs1
li x19, 0x1b65f3d3be137e44 # initialize rs2
orn x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x50ea252e78689364 # initialize rs1
li x20, 0x916ded658f612d08 # initialize rs2
orn x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x1161e9d664583985 # initialize rs1
li x21, 0x7ab9f88debb721a4 # initialize rs2
orn x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x154e3bf55a2801ad # initialize rs1
li x22, 0x4c3eb7e93e232716 # initialize rs2
orn x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x53639fdacae2e53a # initialize rs1
li x23, 0x0dc95308174282e7 # initialize rs2
orn x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc71c0062c01e5e66 # initialize rs1
li x24, 0x6cb1ecfd75a809d0 # initialize rs2
orn x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x6e7bafbeaf54b13b # initialize rs1
li x25, 0x301adefd7187aae0 # initialize rs2
orn x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x41b36f9ce6985e11 # initialize rs1
li x26, 0xcd3ea7a30d336d94 # initialize rs2
orn x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x69cacae9f123f1a6 # initialize rs1
li x27, 0x5ea1f1c7dac3f5ca # initialize rs2
orn x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd8fc22285738331b # initialize rs1
li x28, 0xfa2c07e90d5ddf1b # initialize rs2
orn x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x19d977c673c50cf3 # initialize rs1
li x29, 0x7a55b6c227c3db5c # initialize rs2
orn x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x280e253a0aa0b759 # initialize rs1
li x30, 0x0f0138e4fb47e9ea # initialize rs2
orn x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x777bbc0fb7cb9c67 # initialize rs1
li x31, 0xa96ac62872570b09 # initialize rs2
orn x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x26, x2 # perform first operation
orn x1, x21, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x8, x26 # perform first operation
orn x10, x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x20, x7 # perform first operation
orn x25, x27, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x31, x29 # perform first operation
orn x29, x3, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x27, x29 # perform first operation
orn x23, x7, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x13, x2 # perform first operation
orn x16, x14, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x30, x11 # perform first operation
orn x25, x22, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x9, x10 # perform first operation
orn x18, x30, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x2, x26 # perform first operation
orn x16, x23, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x26, x9 # perform first operation
orn x26, x13, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x19, x24 # perform first operation
orn x24, x18, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x29, x6 # perform first operation
orn x14, x24, x19 # perform second (triggering) operation

#.EQU SIGSIZE,4096
.EQU SIGSIZE,31584 #combined


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
