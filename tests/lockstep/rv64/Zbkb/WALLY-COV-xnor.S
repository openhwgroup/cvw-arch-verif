///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkb/WALLY-COV-xnor.S
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

.EQU SIGSIZE,4096


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
