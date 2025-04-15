///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sltu.S
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
li x0, 0xab31e68360fa8cfc # initialize rs1
li x22, 0xd1fe3dc67979f708 # initialize rs2
sltu x9, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb52812201c06fac7 # initialize rs1
li x29, 0x627f2a68cfd9c30f # initialize rs2
sltu x27, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd4f54ace01311f2 # initialize rs1
li x21, 0x9fc9760440268614 # initialize rs2
sltu x16, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x7d46ad05799543c1 # initialize rs1
li x23, 0xc536e9f760b311a5 # initialize rs2
sltu x21, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4c88457fd51a0b4e # initialize rs1
li x9, 0x6aea8413a1e0ac99 # initialize rs2
sltu x15, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe14566e2de151ab8 # initialize rs1
li x13, 0xee7fffe5f379294b # initialize rs2
sltu x22, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x34f6be9bccc2ecd0 # initialize rs1
li x27, 0xafb87e4ac36ab031 # initialize rs2
sltu x15, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3a89c9a8d0ec5171 # initialize rs1
li x11, 0x79ba110e83357a27 # initialize rs2
sltu x22, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe5745bf590719066 # initialize rs1
li x2, 0x159cbfa03c691560 # initialize rs2
sltu x18, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xaca26578dfc328c6 # initialize rs1
li x30, 0x35ac2b691b1daea5 # initialize rs2
sltu x27, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0f40d55da13aa46c # initialize rs1
li x13, 0xa5ad807ac4ccc099 # initialize rs2
sltu x25, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0e5a6c3233474463 # initialize rs1
li x14, 0xd42d03a1fa72fd11 # initialize rs2
sltu x31, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x4ba77e37c9a579a8 # initialize rs1
li x27, 0xb3397f52951f828d # initialize rs2
sltu x5, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5dd0fd7d9e856cc3 # initialize rs1
li x20, 0xe83969d562491eeb # initialize rs2
sltu x1, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb3135b5efbb99f8d # initialize rs1
li x10, 0xcb19c6c97440a9e2 # initialize rs2
sltu x29, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xba5099f9dfeaeca1 # initialize rs1
li x26, 0x49ea1002931b4602 # initialize rs2
sltu x29, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5b579c4371775b58 # initialize rs1
li x9, 0x61c1223483183882 # initialize rs2
sltu x3, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6351da1bfcc6a167 # initialize rs1
li x25, 0xacc0d9e5a0e94dc7 # initialize rs2
sltu x7, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x009d14c3062b0644 # initialize rs1
li x14, 0x6e8bc7dc57d19523 # initialize rs2
sltu x13, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xea741ed9649ce6dc # initialize rs1
li x8, 0x4805c352018c9f52 # initialize rs2
sltu x9, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x78583e9dcbf780f7 # initialize rs1
li x25, 0xa4f0fbd56ce7d264 # initialize rs2
sltu x24, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb2c54933ce0c6883 # initialize rs1
li x9, 0x24f8aabfceb72614 # initialize rs2
sltu x2, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa7398d2ccb929d3a # initialize rs1
li x20, 0xe6eb2a9a07a104d4 # initialize rs2
sltu x5, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf656b11931cd27fb # initialize rs1
li x5, 0x5cd792689ced223f # initialize rs2
sltu x20, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x06937951443f2b26 # initialize rs1
li x21, 0x0cfbc38634597fc8 # initialize rs2
sltu x16, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd94d37a2f8348ef5 # initialize rs1
li x16, 0x114fc61132852528 # initialize rs2
sltu x7, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf2bde61a59649838 # initialize rs1
li x17, 0xbd91bbef443684b0 # initialize rs2
sltu x28, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x907d4b34d3ddc332 # initialize rs1
li x16, 0x32b61d1fcf92291c # initialize rs2
sltu x24, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xdc06b1d970fb690a # initialize rs1
li x31, 0xda56bf0ee3c8fa7b # initialize rs2
sltu x13, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x7647187b1cee6204 # initialize rs1
li x27, 0x9917d24abad3a42c # initialize rs2
sltu x11, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1609d986a1d6c306 # initialize rs1
li x23, 0x796332cd39fd9fa0 # initialize rs2
sltu x28, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xbf317a2bcc3b4732 # initialize rs1
li x25, 0x685f3b622884df74 # initialize rs2
sltu x16, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x367f844ec1fc3c36 # initialize rs1
li x0, 0x81effa217e310aa1 # initialize rs2
sltu x1, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x24, 0xed86305eddddb762 # initialize rs1
li x1, 0x255d2e3c068a5c46 # initialize rs2
sltu x5, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0x6f74dc6331c5fd9b # initialize rs1
li x2, 0x8dbcd5a8659d7af2 # initialize rs2
sltu x22, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x15, 0xc498ef67a7c055ad # initialize rs1
li x3, 0x2dde7569a91d6451 # initialize rs2
sltu x22, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x7a2f3b2ef32d3e3d # initialize rs1
li x4, 0xcdad6d7265b23b01 # initialize rs2
sltu x12, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x51fe91cc7e88b494 # initialize rs1
li x5, 0x19ac6fd7fd4f9d20 # initialize rs2
sltu x10, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xf2d5cd21fa6fc867 # initialize rs1
li x6, 0x1439744e63184cdc # initialize rs2
sltu x28, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x75472c1291794d88 # initialize rs1
li x7, 0xd2dd6825c7d00e58 # initialize rs2
sltu x23, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xf11e3df3a732cfe6 # initialize rs1
li x8, 0x940c7393d158a49b # initialize rs2
sltu x1, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x30, 0xfc0ee000cf26eb13 # initialize rs1
li x9, 0x2aef4d82df9a0bc3 # initialize rs2
sltu x13, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x15, 0x94b630db91e5905d # initialize rs1
li x10, 0x3eaeae45aed864e9 # initialize rs2
sltu x31, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x82aad0792dbcbb1d # initialize rs1
li x11, 0xb8a1605812b29984 # initialize rs2
sltu x9, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xb8a4f5446e94966f # initialize rs1
li x12, 0x6a1849c57f4f1df0 # initialize rs2
sltu x21, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x1dda2d5ab2c1ceea # initialize rs1
li x13, 0x99ecf2080c4a1a77 # initialize rs2
sltu x30, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0xb34d3f453f29e804 # initialize rs1
li x14, 0xf0d3edf52e297490 # initialize rs2
sltu x15, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xae05ed05d980b984 # initialize rs1
li x15, 0xe5c1639b4ed64346 # initialize rs2
sltu x11, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0x9195cb7d4ed64f85 # initialize rs1
li x16, 0x9053154c31c9e2e4 # initialize rs2
sltu x31, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x6f9e69cc2b0004ed # initialize rs1
li x17, 0x54359a82f9782133 # initialize rs2
sltu x16, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x7, 0x1ae5475b5708c6fa # initialize rs1
li x18, 0x0ca84bab3e6ff18f # initialize rs2
sltu x21, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0x5404625f806cd6ac # initialize rs1
li x19, 0x2864cd24ac1adaf0 # initialize rs2
sltu x2, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x5, 0x97a9322237646ae5 # initialize rs1
li x20, 0xe9f67a6d3a71df32 # initialize rs2
sltu x8, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x5, 0x5568fcee587b9fe4 # initialize rs1
li x21, 0x64580790b687d05d # initialize rs2
sltu x16, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0x3d5f5ab3afb3aa44 # initialize rs1
li x22, 0x1c916b062e22de59 # initialize rs2
sltu x27, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0x9cc64f35c8697259 # initialize rs1
li x23, 0x53270d6421d94049 # initialize rs2
sltu x30, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x16, 0x657d9ef1e5f48220 # initialize rs1
li x24, 0xb087da5f0d190545 # initialize rs2
sltu x21, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0x69ea05bb91c95079 # initialize rs1
li x25, 0x27d8a11bdeff7883 # initialize rs2
sltu x16, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0x7b0dbcf535c71150 # initialize rs1
li x26, 0xad91b745a802487c # initialize rs2
sltu x20, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x20, 0xf07315e05007fda6 # initialize rs1
li x27, 0x58080c36e2a7b721 # initialize rs2
sltu x2, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x7, 0xd4dc2e39c129473b # initialize rs1
li x28, 0xec244d6bf2a14d89 # initialize rs2
sltu x31, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xd485cac5e9eb65d9 # initialize rs1
li x29, 0x9ce16badb795e1fe # initialize rs2
sltu x1, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0x868351c1bb47abde # initialize rs1
li x30, 0x4be5d6c4ac269a2c # initialize rs2
sltu x11, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x21, 0x0d59ddc3051aa964 # initialize rs1
li x31, 0x3840ec60ae747903 # initialize rs2
sltu x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cp_rd (Test destination rd = x0)
li x30, 0x8fb265be7395e0b5 # initialize rs1
li x31, 0xef68463076b326b0 # initialize rs2
sltu x0, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x30, 0x3e08c5b5429e20e0 # initialize rs1
li x19, 0x521a4f8f13a4be3b # initialize rs2
sltu x1, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x0330bae4858a8b46 # initialize rs1
li x9, 0xa5054d0d23c0f2ed # initialize rs2
sltu x2, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x4729c31fe8c9e3fc # initialize rs1
li x16, 0x296ded18bd8a8b27 # initialize rs2
sltu x3, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x343f8369e34361da # initialize rs1
li x6, 0x3b8d0b62ff6a0142 # initialize rs2
sltu x4, x18, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x96f9e9b311829edd # initialize rs1
li x17, 0xe96c76400d10dd97 # initialize rs2
sltu x5, x28, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x8deeafb7f9e2ef83 # initialize rs1
li x15, 0x27913e2a89bbb1f6 # initialize rs2
sltu x6, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x15, 0xb4edc2deeba8a845 # initialize rs1
li x6, 0xe9e6fd7203bba3ac # initialize rs2
sltu x7, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0xfcf18bd365722cc6 # initialize rs1
li x2, 0x1eeb2527d9dd9fd7 # initialize rs2
sltu x8, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0xb8c0a376ae24da92 # initialize rs1
li x3, 0x0026bee76914b3e9 # initialize rs2
sltu x9, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x6, 0xbbbeb2e12f510ebc # initialize rs1
li x28, 0xadb84c2df606b639 # initialize rs2
sltu x10, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x9, 0x2fa907d5f54c23ab # initialize rs1
li x7, 0x6a797c88898daddb # initialize rs2
sltu x11, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0xbf70c06c80663625 # initialize rs1
li x18, 0xaf1c44de7a79d40b # initialize rs2
sltu x12, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xbfbcde93ac23911b # initialize rs1
li x11, 0x1ad57c91ef359fbb # initialize rs2
sltu x13, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0xac9666bbbeeac1f7 # initialize rs1
li x10, 0xf9defb20f113b70f # initialize rs2
sltu x14, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xe0c4609a412d235d # initialize rs1
li x7, 0x94e082cd9c1ef154 # initialize rs2
sltu x15, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x5d0d4a2d6234d76e # initialize rs1
li x7, 0x4634e887424af8b4 # initialize rs2
sltu x16, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0xe1459ea940f09cd0 # initialize rs1
li x14, 0x85f84f0004245f67 # initialize rs2
sltu x17, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0xbac532784912440b # initialize rs1
li x18, 0x9af724a87caf5380 # initialize rs2
sltu x18, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0x42b3485fb75cf77a # initialize rs1
li x21, 0x4c9554f3dc3eac39 # initialize rs2
sltu x19, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0x903d3e9f42051d49 # initialize rs1
li x31, 0xeb1c224450122d26 # initialize rs2
sltu x20, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xe37873f768f9ddc6 # initialize rs1
li x25, 0x22292a4ad72b4503 # initialize rs2
sltu x21, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x34617985081014c7 # initialize rs1
li x7, 0x62a4676246ebd8f2 # initialize rs2
sltu x22, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0xfad7fc3b2d5c980b # initialize rs1
li x7, 0x0b7debedfd04e1d5 # initialize rs2
sltu x23, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0x2cbed45e45670c54 # initialize rs1
li x26, 0xf7ba7f7d62c06a40 # initialize rs2
sltu x24, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x0b3a11749a0229d6 # initialize rs1
li x30, 0x6c49ad6719b958dd # initialize rs2
sltu x25, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x18, 0x05e73040af97194d # initialize rs1
li x30, 0xd7189133a948926d # initialize rs2
sltu x26, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x25, 0xee860af41cda3064 # initialize rs1
li x9, 0x877041dceffeb2c6 # initialize rs2
sltu x27, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x7b4392c475feb298 # initialize rs1
li x25, 0x7d8015c75c177b50 # initialize rs2
sltu x28, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0xbe9bbbbac408b2bb # initialize rs1
li x8, 0x340591e42fa1ff1a # initialize rs2
sltu x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0x30f787a2dc4fa1ac # initialize rs1
li x23, 0xf56f793198335c8c # initialize rs2
sltu x30, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0x80567d99f1737a65 # initialize rs1
li x15, 0xcc9c58891dd9bc76 # initialize rs2
sltu x31, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x27, 0xe667d0c95a1529fa # initialize rs2
sltu x22, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x19, 0x4df9a977ed280dfc # initialize rs2
sltu x9, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x16, 0xebd266b5050bd5fe # initialize rs2
sltu x19, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
li x2, 0x2b15c861c70dacea # initialize rs2
sltu x28, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x23, 0x605ab51dc7f5d523 # initialize rs2
sltu x21, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x25, 0x790e23ecf3404758 # initialize rs2
sltu x13, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5afff76599592c2b # initialize rs2
sltu x25, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x7, 0xa4df569b7de20d04 # initialize rs2
sltu x13, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x12, 0x169178373f9ee7c6 # initialize rs2
sltu x17, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xfc8c6350a1927287 # initialize rs2
sltu x11, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x00f23fd85f3887e7 # initialize rs2
sltu x20, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
li x6, 0x55bf81f7ac9ac708 # initialize rs2
sltu x27, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x5, 0xd73f902b02c39641 # initialize rs2
sltu x18, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x3, 0x50e7479af74fd63c # initialize rs2
sltu x13, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x11, 0x938caca9ea79e155 # initialize rs2
sltu x21, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x28, 0x7954af0dd156a558 # initialize rs2
sltu x19, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x28, 0x6fd9120f19e5e023 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sltu x13, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x354d4dd8bb670860 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sltu x24, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0x4c026a39b604d86b # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sltu x8, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x12, 0x34f36b5430bbdc98 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sltu x18, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x7c526a233ff730a0 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sltu x21, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x3d8298254b096c3e # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sltu x21, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x7, 0x2c93df9a9c0220ee # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sltu x19, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0xd7a16029c615c95a # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sltu x30, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x11, 0x97187c5fde1ed6de # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sltu x1, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0xa98441a5cf29aa6d # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sltu x19, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x09a26ce3234c5673 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x8, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x6, 0xa231adc071034082 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sltu x13, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xf8c36fbbb5f5d29a # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sltu x8, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0x8c20dae2fed5c896 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
sltu x11, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x19, 0x04f134b053df7f3d # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sltu x25, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x28, 0x0644f08101f2f63a # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sltu x17, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sltu x15, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x19, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sltu x26, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sltu x18, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
sltu x8, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x6, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sltu x9, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sltu x21, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sltu x6, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
sltu x29, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x5, 0x0000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sltu x14, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
sltu x27, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x18, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x6, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sltu x15, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sltu x27, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sltu x30, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x1, 0x0000000000000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sltu x29, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x22, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sltu x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sltu x2, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sltu x27, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x13, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
sltu x11, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sltu x11, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x20, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sltu x2, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sltu x18, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sltu x24, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sltu x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sltu x26, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sltu x9, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x3, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x0000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sltu x22, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x8, 0x0000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
sltu x26, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sltu x7, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x0000000000000001 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
sltu x15, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x14, 0x0000000000000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sltu x21, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sltu x1, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x3, 0x0000000000000002 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
sltu x16, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0x0000000000000002 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sltu x8, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x10, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
sltu x21, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x13, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sltu x15, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sltu x3, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sltu x16, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sltu x9, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000002 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sltu x25, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000002 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sltu x3, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x21, 0x0000000000000002 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sltu x30, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sltu x27, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0x0000000000000002 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sltu x28, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x30, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sltu x23, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x11, 0x0000000000000002 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sltu x12, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x20, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sltu x5, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x9, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sltu x20, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x12, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sltu x2, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sltu x28, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x13, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sltu x28, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sltu x9, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
sltu x27, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sltu x24, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sltu x17, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sltu x23, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x8000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x7, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sltu x8, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sltu x2, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sltu x18, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x22, 0x8000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sltu x18, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x11, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sltu x2, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x27, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sltu x9, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x8, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sltu x17, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sltu x14, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x15, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sltu x26, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sltu x22, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sltu x27, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sltu x5, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sltu x11, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
sltu x5, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x10, 0x8000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sltu x28, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x22, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x27, 0x8000000000000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sltu x18, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sltu x21, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sltu x5, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x12, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sltu x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x10, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sltu x20, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x17, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sltu x6, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sltu x28, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x2, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sltu x24, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x5, 0x7fffffffffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
sltu x26, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
sltu x17, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sltu x25, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sltu x8, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sltu x14, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sltu x2, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sltu x26, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x7fffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x11, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x17, 0x7fffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sltu x28, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sltu x5, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sltu x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x12, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sltu x21, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x17, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sltu x21, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sltu x3, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sltu x29, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sltu x5, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
sltu x23, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sltu x10, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
sltu x3, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sltu x22, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sltu x27, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sltu x11, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x5, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sltu x17, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x8, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0x7ffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
sltu x26, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sltu x27, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sltu x26, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sltu x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x25, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sltu x26, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sltu x5, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sltu x27, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x21, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sltu x17, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x25, 0xffffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sltu x8, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x30, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sltu x22, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sltu x30, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
sltu x12, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sltu x26, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sltu x20, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0xffffffffffffffff # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sltu x7, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xffffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x14, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sltu x8, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sltu x2, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sltu x31, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x8, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sltu x24, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x12, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sltu x16, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x25, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sltu x17, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sltu x26, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sltu x30, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sltu x5, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x28, 0xfffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sltu x18, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sltu x18, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sltu x19, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sltu x15, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sltu x14, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
sltu x9, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xfffffffffffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x28, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0xfffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sltu x30, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x31, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sltu x17, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sltu x2, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sltu x26, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x24, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sltu x31, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sltu x30, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sltu x17, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sltu x1, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sltu x12, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sltu x7, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sltu x17, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sltu x5, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sltu x6, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sltu x14, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sltu x15, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x16, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sltu x6, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
sltu x23, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
sltu x29, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sltu x9, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sltu x14, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sltu x23, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sltu x25, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sltu x16, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sltu x30, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sltu x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sltu x8, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sltu x15, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sltu x31, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sltu x28, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
sltu x24, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x3, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sltu x2, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sltu x21, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sltu x18, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sltu x27, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sltu x15, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x20, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sltu x1, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
sltu x1, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sltu x27, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sltu x6, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x9, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sltu x25, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x11, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
sltu x19, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sltu x27, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
sltu x21, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sltu x9, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5555555555555555 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sltu x5, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x8, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x23, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sltu x21, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sltu x31, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sltu x22, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x15, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sltu x18, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x15, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sltu x19, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
sltu x14, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sltu x21, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sltu x17, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x10, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sltu x5, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x10, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sltu x2, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sltu x11, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
sltu x27, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sltu x28, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x00000000ffffffff # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
sltu x7, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x00000000ffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sltu x2, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000ffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x15, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x20, 0x00000000ffffffff # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sltu x28, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sltu x26, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sltu x17, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x11, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sltu x17, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x27, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sltu x17, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sltu x9, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x9, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sltu x28, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sltu x31, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x9, 0x00000000fffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sltu x27, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x10, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sltu x23, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
sltu x13, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sltu x23, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sltu x24, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sltu x27, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0x00000000fffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sltu x13, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000fffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x10, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sltu x9, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
sltu x9, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sltu x16, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x14, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sltu x28, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x28, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sltu x7, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x12, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
sltu x28, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x30, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sltu x9, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x22, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sltu x7, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x24, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
sltu x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x15, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sltu x2, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sltu x28, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sltu x9, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sltu x26, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sltu x28, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sltu x20, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x15, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x8, 0x0000000100000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
sltu x20, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
sltu x31, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sltu x10, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x22, 0x0000000100000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
sltu x27, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x14, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sltu x17, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x27, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sltu x14, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sltu x15, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sltu x14, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sltu x6, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sltu x11, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sltu x15, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
sltu x23, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sltu x27, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sltu x15, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000100000001 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
sltu x2, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sltu x6, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x24, 0x0000000100000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sltu x27, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x1, 0x0000000100000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sltu x25, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sltu x23, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x0000000100000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sltu x24, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sltu x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa630a9598eafbee5 # initialize rs1
li x0, 0xf54f667a5579c555 # initialize rs2
sltu x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xd73659f2e451d67d # initialize rs1
li x1, 0xc6c4ea3a00305ad4 # initialize rs2
sltu x7, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x484b2d3a98b333b8 # initialize rs1
li x2, 0x02830e8acd1c35e2 # initialize rs2
sltu x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x3e4a5ec740c119a0 # initialize rs1
li x3, 0x6bcac179c2a52cc8 # initialize rs2
sltu x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x73506aea65c2fe41 # initialize rs1
li x4, 0x17397b241c6d8e9f # initialize rs2
sltu x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9afa1d51ae815192 # initialize rs1
li x5, 0x5617d1809c3a8d26 # initialize rs2
sltu x20, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x250c79764c8e6c61 # initialize rs1
li x6, 0x751aa19458321f2a # initialize rs2
sltu x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1636dbcaa8218a22 # initialize rs1
li x7, 0x3bbc9e54985a5ea1 # initialize rs2
sltu x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xe13197626a64b738 # initialize rs1
li x8, 0x37478b29d1ba3239 # initialize rs2
sltu x26, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd71be06e4ae6d302 # initialize rs1
li x9, 0x653991e97032c2b8 # initialize rs2
sltu x13, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6e687b2bf35c0200 # initialize rs1
li x10, 0x16f70c0533757596 # initialize rs2
sltu x12, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x09cbef229803c4aa # initialize rs1
li x11, 0xf8d43d37783f3ad2 # initialize rs2
sltu x31, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x279bdf52a51601c7 # initialize rs1
li x12, 0x112cedcdeccbfb0c # initialize rs2
sltu x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xfa33430172b18c0e # initialize rs1
li x13, 0xe6eaddabfba731a8 # initialize rs2
sltu x23, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x77834fc18e6dab55 # initialize rs1
li x14, 0xe0a0742154f29ecf # initialize rs2
sltu x13, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x27388bd69c3488a9 # initialize rs1
li x15, 0x48b151a79b848e0f # initialize rs2
sltu x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x84f04539b6eac346 # initialize rs1
li x16, 0xa5991499abd3a9e1 # initialize rs2
sltu x2, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4dc3c7c001ccddd8 # initialize rs1
li x17, 0x8f8f864243a8a74b # initialize rs2
sltu x15, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4ff8f1fae8947c78 # initialize rs1
li x18, 0x59ea90cf9291cd3c # initialize rs2
sltu x29, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x969ccdb4c58213fb # initialize rs1
li x19, 0x7ab59457cdfdbb90 # initialize rs2
sltu x7, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x15c530743f5f3ccc # initialize rs1
li x20, 0x9eba130a59ec4d74 # initialize rs2
sltu x8, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x07101839fe3582b6 # initialize rs1
li x21, 0xdea974bd87e50b18 # initialize rs2
sltu x17, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x8f6a3ae559d44566 # initialize rs1
li x22, 0xfaeca6ffe61c0331 # initialize rs2
sltu x24, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x93dcb376e1b6891a # initialize rs1
li x23, 0x59fde67752ca14d3 # initialize rs2
sltu x24, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xed7177d733c57b9d # initialize rs1
li x24, 0x523785b58e655262 # initialize rs2
sltu x23, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x56fefad4eae24238 # initialize rs1
li x25, 0x08e9617c81ddbdce # initialize rs2
sltu x16, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0ebd57d4a2c5e5c5 # initialize rs1
li x26, 0x225598db4cbbb617 # initialize rs2
sltu x30, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xa8ab6cfd8f61a920 # initialize rs1
li x27, 0xd9780e747f91c41f # initialize rs2
sltu x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xdefeda44710922b8 # initialize rs1
li x28, 0x2a7d14076f3647c2 # initialize rs2
sltu x31, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2c1f8b9dc274d0ab # initialize rs1
li x29, 0x62c8275e9a26e8f2 # initialize rs2
sltu x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x5551007cd41bb5eb # initialize rs1
li x30, 0x35d73722e16de744 # initialize rs2
sltu x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xaac1c8164d1543d2 # initialize rs1
li x31, 0xcec5a1c2537c985f # initialize rs2
sltu x13, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x229edcfddb6b3dac # initialize rs1
li x16, 0x0718ab1a6a61d1f9 # initialize rs2
sltu x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x823bd9adc61dd5cc # initialize rs1
li x17, 0x423afcd651d47885 # initialize rs2
sltu x1, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8a16b05fbf0614b0 # initialize rs1
li x6, 0x6e42198747101d2b # initialize rs2
sltu x2, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc9972dc97b17efb3 # initialize rs1
li x13, 0x3f6146a59665e1f8 # initialize rs2
sltu x3, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x835656bdfca3458c # initialize rs1
li x24, 0x68925472369d00c7 # initialize rs2
sltu x4, x4, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdd98f12e04c1492c # initialize rs1
li x15, 0xd465fb551db7f4ed # initialize rs2
sltu x5, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc281fa91b6b5c967 # initialize rs1
li x17, 0x5d6488454b8d060b # initialize rs2
sltu x6, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x53dbf0a94e8fb4b7 # initialize rs1
li x18, 0xa89cef2ce9d6c783 # initialize rs2
sltu x7, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x07baf8319cf984f3 # initialize rs1
li x21, 0x2f04fa1e69d3d218 # initialize rs2
sltu x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x6742f0c67200bbb7 # initialize rs1
li x29, 0x56d1a7081abe4eab # initialize rs2
sltu x9, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x42c68d2f45e72574 # initialize rs1
li x21, 0x3276f053f5338d08 # initialize rs2
sltu x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6f54ecbfb8f9c4b9 # initialize rs1
li x15, 0xdedf2ba41f505910 # initialize rs2
sltu x11, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3b35a88e3d327917 # initialize rs1
li x22, 0x0b213314db25f20b # initialize rs2
sltu x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x58ea8998382afb3c # initialize rs1
li x29, 0x629b554d526509ea # initialize rs2
sltu x13, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x36638019851c2cb9 # initialize rs1
li x6, 0x40685d7733963253 # initialize rs2
sltu x14, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x746a5e3531ef016e # initialize rs1
li x19, 0x326fc3b1028be339 # initialize rs2
sltu x15, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8108c0601699a9f2 # initialize rs1
li x1, 0x342746d092930173 # initialize rs2
sltu x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1a6ee3a63f925f1a # initialize rs1
li x24, 0xea961082f18eae08 # initialize rs2
sltu x17, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbaf7d2524552ccf8 # initialize rs1
li x25, 0x2c8bc837e3b68708 # initialize rs2
sltu x18, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb0780a3461ea41a9 # initialize rs1
li x21, 0xe7e6066f7b16d955 # initialize rs2
sltu x19, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xaccf72efc74e6f37 # initialize rs1
li x30, 0xaa06125a35ccae2f # initialize rs2
sltu x20, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x60608ed85cf61b4b # initialize rs1
li x30, 0x931505d8b9b4b0d0 # initialize rs2
sltu x21, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7aaf1d0cd2ccd2d4 # initialize rs1
li x2, 0x5171aa2e9554a7a6 # initialize rs2
sltu x22, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdd1552177d26a449 # initialize rs1
li x8, 0xed2a8e539d54c614 # initialize rs2
sltu x23, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3bce5e6eb944bc39 # initialize rs1
li x23, 0xe85c1df506388e53 # initialize rs2
sltu x24, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0ad44550487c68ad # initialize rs1
li x26, 0x44263e6bd3167207 # initialize rs2
sltu x25, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb9db1f8a91aabc9e # initialize rs1
li x3, 0x4411a0f5fa56275f # initialize rs2
sltu x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x661f1b9833ee24c8 # initialize rs1
li x11, 0x173dbbeda3c5c3ee # initialize rs2
sltu x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3547548cf8afec2a # initialize rs1
li x17, 0xec4f1b39e76e12e5 # initialize rs2
sltu x28, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x69907ce21de04288 # initialize rs1
li x13, 0x1e451ecfce95baf8 # initialize rs2
sltu x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe29d4feb0469b62a # initialize rs1
li x17, 0xf2e004038138dc67 # initialize rs2
sltu x30, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf9a2917a8334a1a5 # initialize rs1
li x19, 0x3b7c1be46dba957e # initialize rs2
sltu x31, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0x63b5755b07b788a2 # initialize rs1
li x0, 0xeb010bb57c3470c1 # initialize rs2
sltu x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x18b9a4aa2f526f76 # initialize rs1
li x1, 0x761f8df780323805 # initialize rs2
sltu x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x2abe5f92c4e41e16 # initialize rs1
li x2, 0x6cb105bb9d7d0036 # initialize rs2
sltu x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x25, 0x37eb37a2771ae5b6 # initialize rs1
li x3, 0x5823aed6ebf5a172 # initialize rs2
sltu x3, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xe9dc6ff36fbc92ba # initialize rs1
li x4, 0xb4962f8a157b1657 # initialize rs2
sltu x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x6064eb6ecdef28af # initialize rs1
li x5, 0xdbb4c749d9099d90 # initialize rs2
sltu x5, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xa111943f25eb372a # initialize rs1
li x6, 0xa81ecbbb6bbb1e3f # initialize rs2
sltu x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x505939856fb07519 # initialize rs1
li x7, 0x89708f5878d69f9e # initialize rs2
sltu x7, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x21, 0x8f1e002a051240ee # initialize rs1
li x8, 0x3c9033c2ca7ff54c # initialize rs2
sltu x8, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x27, 0x914ea02ed025ade4 # initialize rs1
li x9, 0x91ad08e2ebda2eaf # initialize rs2
sltu x9, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x2, 0x21a53cfcff0d7a43 # initialize rs1
li x10, 0x2b2b6a33a8d18b8d # initialize rs2
sltu x10, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x23, 0x5eb05c7ef3b13807 # initialize rs1
li x11, 0x20c5a5ab08829f6c # initialize rs2
sltu x11, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x25, 0xbb1e287f5fe178b8 # initialize rs1
li x12, 0xd4af34a0dc2b27dc # initialize rs2
sltu x12, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x28, 0xf50a05a1f2d202f1 # initialize rs1
li x13, 0xcfe21a0bb834120c # initialize rs2
sltu x13, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x8, 0x67d1b0adc73c5b0c # initialize rs1
li x14, 0x883cb099d389dd0d # initialize rs2
sltu x14, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0x324dd158ab17c423 # initialize rs1
li x15, 0x637f3cb4eb58c9d7 # initialize rs2
sltu x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0x1edc9e70e4cf670b # initialize rs1
li x16, 0xc194fb5264b8dc55 # initialize rs2
sltu x16, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x23, 0x5e0bbf648fa22b03 # initialize rs1
li x17, 0xa1e3c5cd3f50d00d # initialize rs2
sltu x17, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0xa8dbd6f4c3431ecd # initialize rs1
li x18, 0x7c6f3b765cdabb5f # initialize rs2
sltu x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x1, 0xb9d4550099ced969 # initialize rs1
li x19, 0x0f7760e35541bdfa # initialize rs2
sltu x19, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x9, 0x80e5ba87c5a4dde9 # initialize rs1
li x20, 0xee3f68517b624f15 # initialize rs2
sltu x20, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x11, 0x9ce23cabb1c6a8b7 # initialize rs1
li x21, 0xa65e8b604de36b73 # initialize rs2
sltu x21, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x6, 0x0dff03557955713b # initialize rs1
li x22, 0x3391c414f63a4f3f # initialize rs2
sltu x22, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x13, 0x1e257c03f01e31a1 # initialize rs1
li x23, 0x09caf27bcee74387 # initialize rs2
sltu x23, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x12, 0xa06421216ed005bc # initialize rs1
li x24, 0x614368552294905a # initialize rs2
sltu x24, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x24, 0x1e861a938c9e0fa2 # initialize rs1
li x25, 0x1d18a065bae9499f # initialize rs2
sltu x25, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x6, 0x255d0ebd488d8f54 # initialize rs1
li x26, 0x92a9cd316a3b5147 # initialize rs2
sltu x26, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x7, 0x353f81f2f5a61a0e # initialize rs1
li x27, 0x6c90a0ef4d4b3329 # initialize rs2
sltu x27, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0xae789f962eb68e83 # initialize rs1
li x28, 0xc027338dd753f3e5 # initialize rs2
sltu x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x28, 0xbbf157bebf708c98 # initialize rs1
li x29, 0xa9194fe9c6f6e03d # initialize rs2
sltu x29, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x23, 0x4deabd867caa9ef7 # initialize rs1
li x30, 0x7b28c53043ad2bfc # initialize rs2
sltu x30, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0x2fee2d7e911472a4 # initialize rs1
li x31, 0x019539ef5959f7cc # initialize rs2
sltu x31, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xcf06817fdfbf2e97 # initialize rs1
li x0, 0x20e572bf59ab6f07 # initialize rs2
sltu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5ea9be4cf119b923 # initialize rs1
li x1, 0xefcafc61089f0e4a # initialize rs2
sltu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x147230503560c6b4 # initialize rs1
li x2, 0x2120f78206949c24 # initialize rs2
sltu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x800eb1d48a4fd2f2 # initialize rs1
li x3, 0x3406d2c923d7bb37 # initialize rs2
sltu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4d6aa263b42261e6 # initialize rs1
li x4, 0x23ca04b64abaf7c4 # initialize rs2
sltu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6234f9b260c38f1a # initialize rs1
li x5, 0x926cf503f1cc5ebc # initialize rs2
sltu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x05ddb9bed30918c9 # initialize rs1
li x6, 0x172a7c3d3bd09a81 # initialize rs2
sltu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa1d8c31c407dff1a # initialize rs1
li x7, 0x5413621caad83a02 # initialize rs2
sltu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x20ad6fb2e0c6308c # initialize rs1
li x8, 0xe606c69b65011341 # initialize rs2
sltu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x2b50779359a8c4ac # initialize rs1
li x9, 0x9dac10eda87acb3f # initialize rs2
sltu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x5d78e5f461af6e22 # initialize rs1
li x10, 0x1ed011b738f4c337 # initialize rs2
sltu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x0ca3c7377b572baa # initialize rs1
li x11, 0x347d3c72fbb14887 # initialize rs2
sltu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x06bf569b9616fc7a # initialize rs1
li x12, 0x665cd5e0027746fb # initialize rs2
sltu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xbbbe19551d254af9 # initialize rs1
li x13, 0x06fa4f5a06659520 # initialize rs2
sltu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x953a2a9969c42003 # initialize rs1
li x14, 0x3868dcab6b429c25 # initialize rs2
sltu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9608aa71fa44f972 # initialize rs1
li x15, 0x38e35ae9470c383f # initialize rs2
sltu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xe1067103cd6b51d8 # initialize rs1
li x16, 0x3f254ad53dce80f1 # initialize rs2
sltu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xfae68e9bfafb0e0d # initialize rs1
li x17, 0xba4009fd6061bf83 # initialize rs2
sltu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2cc08ffdb4808e7c # initialize rs1
li x18, 0xaf37f1949847926e # initialize rs2
sltu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x08feccaa0f4e2321 # initialize rs1
li x19, 0xa1472313f448605c # initialize rs2
sltu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xb864f92ee979277f # initialize rs1
li x20, 0x6d0627d130aa46ca # initialize rs2
sltu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xea9ade9df8ba2a96 # initialize rs1
li x21, 0x551f7327711cf455 # initialize rs2
sltu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x1fbe2022e3a3a380 # initialize rs1
li x22, 0xcd23aae23192e31a # initialize rs2
sltu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x614824ff1bf889b2 # initialize rs1
li x23, 0xc9d66fc893b34a2f # initialize rs2
sltu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x72ef46734c9e7f29 # initialize rs1
li x24, 0x2ed49dc90b1263c2 # initialize rs2
sltu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x74c7a9bfbe62af44 # initialize rs1
li x25, 0x91390b80b4bd2f62 # initialize rs2
sltu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x86883d74885680a5 # initialize rs1
li x26, 0xebbdb95f684ee3b1 # initialize rs2
sltu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc5f04830542f598b # initialize rs1
li x27, 0x5e59437d2c3936d6 # initialize rs2
sltu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6de3702101cfa152 # initialize rs1
li x28, 0x33865a1560605c71 # initialize rs2
sltu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x59a94e100cc0b329 # initialize rs1
li x29, 0x6a81b2081f10a898 # initialize rs2
sltu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x05b105496f4ba546 # initialize rs1
li x30, 0x9b397ca6e9799ef2 # initialize rs2
sltu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7d0c576d4ada2d01 # initialize rs1
li x31, 0xe583e3e11370e5bf # initialize rs2
sltu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x7, x3 # perform first operation
sltu x5, x14, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x20, x12 # perform first operation
sltu x6, x11, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x25, x7 # perform first operation
sltu x15, x24, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x20, x3 # perform first operation
sltu x3, x12, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x17, x23 # perform first operation
sltu x23, x5, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x28, x1 # perform first operation
sltu x26, x5, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x14, x12 # perform first operation
sltu x25, x24, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x14, x16 # perform first operation
sltu x11, x26, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x14, x31 # perform first operation
sltu x11, x25, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x17, x11 # perform first operation
sltu x17, x16, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x25, x16 # perform first operation
sltu x16, x29, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x5, x15 # perform first operation
sltu x26, x20, x1 # perform second (triggering) operation

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
