///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sub.S
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
li x0, 0xbfa9050577ee8207 # initialize rs1
li x27, 0x4d60d73623261797 # initialize rs2
sub x26, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5c5dfa24a5d1dd5d # initialize rs1
li x17, 0xfe5d315f4cbe77d5 # initialize rs2
sub x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1886307f0e05331b # initialize rs1
li x11, 0x8f3a24783a792282 # initialize rs2
sub x9, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3f178292eb9fb0de # initialize rs1
li x16, 0x3d1f62e179a8cf4d # initialize rs2
sub x14, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x83aeef1a690688c2 # initialize rs1
li x11, 0x3dbf3fbcf5ce41b8 # initialize rs2
sub x17, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3780321deb043c3d # initialize rs1
li x20, 0xe40eb9b210423394 # initialize rs2
sub x10, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x12f7d37c04fc638a # initialize rs1
li x12, 0xdd7ce4ebd31172c8 # initialize rs2
sub x11, x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x889172c137f0e04d # initialize rs1
li x13, 0x5f1fd3f6734aa012 # initialize rs2
sub x27, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8b57c012708bb9bd # initialize rs1
li x30, 0x8a502610a79263fe # initialize rs2
sub x18, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbc91b7179aab143f # initialize rs1
li x10, 0xf170fbd593d33b5a # initialize rs2
sub x20, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8ac744f9777f7e4d # initialize rs1
li x30, 0x10a3848193c5d178 # initialize rs2
sub x14, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xffba122c28b22484 # initialize rs1
li x19, 0x4a096c495a12e803 # initialize rs2
sub x13, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7f60236d2fafcddb # initialize rs1
li x17, 0x5a4d26e3cf812e8e # initialize rs2
sub x9, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xac8352ff9cbb9572 # initialize rs1
li x6, 0xe93242d7ead21a5e # initialize rs2
sub x19, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2f4a3139d0efc381 # initialize rs1
li x30, 0x2f3152e68eb8cbb2 # initialize rs2
sub x26, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9c5d6f6877bc17c9 # initialize rs1
li x7, 0x8274316bbab4b6b9 # initialize rs2
sub x1, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5d0127c6a8ff93c6 # initialize rs1
li x20, 0x722675a5b8efb116 # initialize rs2
sub x1, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xdd357aeac55fe2ff # initialize rs1
li x29, 0x58f3c4eb1ea840b2 # initialize rs2
sub x27, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe977bd68c9618cc8 # initialize rs1
li x26, 0x8a4dc0563fbf68cb # initialize rs2
sub x8, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7861c87c044d6003 # initialize rs1
li x21, 0xe800379b14865d9d # initialize rs2
sub x11, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe5a86568ab5ca6b5 # initialize rs1
li x19, 0x6e41871f3638038e # initialize rs2
sub x11, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x81baaefd54d6d43c # initialize rs1
li x25, 0xeff584830eed6dea # initialize rs2
sub x13, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xae45a930fde9cd22 # initialize rs1
li x31, 0xd0d309a81b947d45 # initialize rs2
sub x23, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x72f7b2698e09ec09 # initialize rs1
li x7, 0x525f7942fd3d3f8c # initialize rs2
sub x22, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x61ce405290a55979 # initialize rs1
li x22, 0x63b0517721467f0e # initialize rs2
sub x26, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xbfc0e49e140a5c4b # initialize rs1
li x8, 0x983439f8652d3786 # initialize rs2
sub x12, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x84c1ce0a6f6c65c0 # initialize rs1
li x29, 0x44f7989a551b1007 # initialize rs2
sub x1, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0f648242f65ef7d1 # initialize rs1
li x20, 0x23d523a0b02b4396 # initialize rs2
sub x22, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x04440e7611272330 # initialize rs1
li x20, 0x46846baeb62e8533 # initialize rs2
sub x11, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1c65cf64c997bee1 # initialize rs1
li x7, 0xddf159ff4c242863 # initialize rs2
sub x25, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x15468227d5f57df9 # initialize rs1
li x13, 0x31c9fc97c3323f49 # initialize rs2
sub x10, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6d6c38deb2eeb404 # initialize rs1
li x15, 0x259905596e0ee943 # initialize rs2
sub x14, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0xe141cc44f8eb113a # initialize rs1
li x0, 0x60f22be787695456 # initialize rs2
sub x25, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x9b75291eec43c25b # initialize rs1
li x1, 0xba85118661f1bee2 # initialize rs2
sub x3, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0xa1cfaae122913b53 # initialize rs1
li x2, 0x618293a7da678d6f # initialize rs2
sub x23, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x43364ced9972de75 # initialize rs1
li x3, 0xca855f39423cd1b2 # initialize rs2
sub x13, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x713fd8aecaa00481 # initialize rs1
li x4, 0x0a40cf7adece509b # initialize rs2
sub x7, x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x6bc09e6608a20e98 # initialize rs1
li x5, 0xfd96fd9a490caead # initialize rs2
sub x17, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x4c002fd98810a72e # initialize rs1
li x6, 0x8d81d6966489cc6d # initialize rs2
sub x26, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0xb20d2c6ce9e0e279 # initialize rs1
li x7, 0x010ded8239e13b17 # initialize rs2
sub x8, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x6, 0xaa589d8df8a9f887 # initialize rs1
li x8, 0x7bd766ce307ceb3b # initialize rs2
sub x2, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0xff6a8173678d9986 # initialize rs1
li x9, 0xfb4e9cdd4f42e14c # initialize rs2
sub x28, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0x3832c644603b7aa2 # initialize rs1
li x10, 0x2a963c006bdd00af # initialize rs2
sub x23, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0xe1130ce72a8d4c31 # initialize rs1
li x11, 0xf7f947b12600dc8f # initialize rs2
sub x23, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x1e71ce8366b062b4 # initialize rs1
li x12, 0x0f8db1b92bb66e38 # initialize rs2
sub x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x1356e41335f9cf7d # initialize rs1
li x13, 0x6c27f2efda1fe54f # initialize rs2
sub x11, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x82a588d9259e1fd2 # initialize rs1
li x14, 0xd842a97616067113 # initialize rs2
sub x2, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x17, 0x4f93d100d4407c8a # initialize rs1
li x15, 0x71ddb13140cb2e40 # initialize rs2
sub x12, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xe704e0c123521800 # initialize rs1
li x16, 0xec51666e27109b76 # initialize rs2
sub x12, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0x29bebf25995f643f # initialize rs1
li x17, 0x0736b6cd7db5dccb # initialize rs2
sub x18, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xea6d7442a1a9e11c # initialize rs1
li x18, 0x511c6a6211bb5211 # initialize rs2
sub x23, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0xe1e09a066bb57375 # initialize rs1
li x19, 0x2f2d8458cec21f8b # initialize rs2
sub x5, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x94f607564ff05a87 # initialize rs1
li x20, 0x9e6d3d8a22d0d2b8 # initialize rs2
sub x2, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x26, 0xb7c149494b5e0900 # initialize rs1
li x21, 0x3b48d2dd691a0bbc # initialize rs2
sub x22, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0x346b70e4d2fa537d # initialize rs1
li x22, 0x2de93517a388a7f0 # initialize rs2
sub x10, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0xaa31faf81c1345e0 # initialize rs1
li x23, 0x339b5d336ed00746 # initialize rs2
sub x3, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x3f33cf2134eac7be # initialize rs1
li x24, 0x099f2dd4f0be479a # initialize rs2
sub x6, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x1, 0x0aa971d8f0a26d40 # initialize rs1
li x25, 0xf21a6b0bbee36b3e # initialize rs2
sub x5, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0x372fbdd1080ffa01 # initialize rs1
li x26, 0x903b47b95d3086be # initialize rs2
sub x6, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x19, 0x1cfb41f502f6b48c # initialize rs1
li x27, 0x82f39fb3391d9707 # initialize rs2
sub x20, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x13, 0x2c37a040324ddcdc # initialize rs1
li x28, 0x98abe17644f50925 # initialize rs2
sub x12, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0x266b7b4cbdb54657 # initialize rs1
li x29, 0x6ac2c39f7d2b42aa # initialize rs2
sub x21, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x54b7a5cb810c34d5 # initialize rs1
li x30, 0x18c95aee559312cf # initialize rs2
sub x23, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x0d8eff02cf8e4b17 # initialize rs1
li x31, 0xf8d5ef69f934f7cc # initialize rs2
sub x29, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x4e749b1ef0185ba0 # initialize rs1
li x31, 0x930efbeef7fdd7f1 # initialize rs2
sub x0, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0x584d90ce0df415e0 # initialize rs1
li x12, 0xeac62b7c31d6b39c # initialize rs2
sub x1, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x0dca7320566fe676 # initialize rs1
li x5, 0x7dc8abb2873a74fe # initialize rs2
sub x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x9ccf10c88ce2bce1 # initialize rs1
li x31, 0xb1d96b4d8ce8f221 # initialize rs2
sub x3, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x746ee1be160bd576 # initialize rs1
li x14, 0x822b5a1870962bdc # initialize rs2
sub x4, x16, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x5ecda46d370600b5 # initialize rs1
li x10, 0x6364952b8f3a5be0 # initialize rs2
sub x5, x7, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x26273e81633cca57 # initialize rs1
li x14, 0x99faec4b68643402 # initialize rs2
sub x6, x10, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x903a4ad3164b5a6f # initialize rs1
li x26, 0x6f1d29540947b572 # initialize rs2
sub x7, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x7ffb761e50974bb9 # initialize rs1
li x9, 0xd21c63aeea51294c # initialize rs2
sub x8, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xba16dbf560af35ef # initialize rs1
li x15, 0x42fe8e80c0bde935 # initialize rs2
sub x9, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x89b6f40f0ddb464f # initialize rs1
li x20, 0xd53f04518d31612a # initialize rs2
sub x10, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0xcc99051155046926 # initialize rs1
li x1, 0x3457819eda0b0273 # initialize rs2
sub x11, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x29, 0xd796be3a8cbaac62 # initialize rs1
li x5, 0x36c79d2a8e766cfb # initialize rs2
sub x12, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x7f54f485541e3931 # initialize rs1
li x30, 0xf63f6d6a5bcc73bf # initialize rs2
sub x13, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x78fac88903527aa2 # initialize rs1
li x2, 0x82e1fbd79c78be3e # initialize rs2
sub x14, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xf1a494f6a73af8d1 # initialize rs1
li x9, 0x76e3c0af30ea8623 # initialize rs2
sub x15, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x01a831a205720715 # initialize rs1
li x31, 0x4c3cb7f6640da469 # initialize rs2
sub x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0xef4ed45f731b02a5 # initialize rs1
li x15, 0x55754ae5e5edee15 # initialize rs2
sub x17, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x4b8893a534426da8 # initialize rs1
li x23, 0xca449ced1fa2338a # initialize rs2
sub x18, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0xcf8169d4a44a7185 # initialize rs1
li x12, 0x224cf5a6acba90ef # initialize rs2
sub x19, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x22, 0xb9505051d1de8a6b # initialize rs1
li x25, 0x3922c6c043b3f8f8 # initialize rs2
sub x20, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x18, 0x73d0828262b7d7c0 # initialize rs1
li x30, 0xab68053d0011f854 # initialize rs2
sub x21, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0x0d9f61e2be0b6550 # initialize rs1
li x9, 0xf909b64ca4bda87b # initialize rs2
sub x22, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0x38f5f8ef5396dd5a # initialize rs1
li x12, 0x33b9007dc2973af8 # initialize rs2
sub x23, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x9f82de5aa49d4e9e # initialize rs1
li x19, 0xd6a9f8cb9dd485c1 # initialize rs2
sub x24, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0xa26a9c34beb991a3 # initialize rs1
li x13, 0x54e88941c3411fe8 # initialize rs2
sub x25, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x04d963474a965df1 # initialize rs1
li x5, 0x4ae3c3d9b1984167 # initialize rs2
sub x26, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x54d12229f73f9ea0 # initialize rs1
li x23, 0x985def8aaece499a # initialize rs2
sub x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x24c7ecbdacd9854a # initialize rs1
li x3, 0x3e2822f11eb403df # initialize rs2
sub x28, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x28e6b550a6bc8e9f # initialize rs1
li x2, 0x8cb3d5b706b7fdec # initialize rs2
sub x29, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x547b3e499509cdba # initialize rs1
li x26, 0x26ef872d428733db # initialize rs2
sub x30, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0x7e516105c488b502 # initialize rs1
li x28, 0xdc42b625c2183daf # initialize rs2
sub x31, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x31, 0x72650f52555967cf # initialize rs2
sub x15, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x0000000000000001 # initialize rs1
li x13, 0x0f6a790fab08e3f6 # initialize rs2
sub x10, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x0000000000000002 # initialize rs1
li x16, 0x3afcc1a789b980e3 # initialize rs2
sub x18, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x16, 0x8000000000000000 # initialize rs1
li x18, 0x7778839a3353c125 # initialize rs2
sub x27, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x5, 0x8a403a9b9514cd97 # initialize rs2
sub x17, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x20, 0xba04f84bc00b3586 # initialize rs2
sub x10, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x25, 0xa2429a448a91adc3 # initialize rs2
sub x9, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x11, 0xd20e9d266d436e59 # initialize rs2
sub x7, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
li x29, 0x427631c124a8e2e4 # initialize rs2
sub x16, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xc627a629e050afd2 # initialize rs2
sub x7, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x28bb7669d835cae1 # initialize rs2
sub x19, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x18, 0x6f0616e36828aecd # initialize rs2
sub x21, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x15, 0x9a19c77441b9f528 # initialize rs2
sub x12, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x17, 0xa78f16389f228117 # initialize rs2
sub x31, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x0000000100000000 # initialize rs1
li x21, 0x5193fa5b775ef378 # initialize rs2
sub x7, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x30, 0x7a75d925fe57a004 # initialize rs2
sub x24, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x2, 0xc2db6bf36c961dc9 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sub x16, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x798399be702146e1 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sub x31, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x529f921c6396916e # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sub x24, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x11, 0x60248e802556fbc2 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sub x13, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x1, 0x9774ab1da83727cd # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sub x21, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x6, 0x049777789d02cc83 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
sub x1, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x30, 0x130e2ad194ee7b91 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sub x6, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0xb4d697f80aa19096 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
sub x22, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0xfbb384340fdc0726 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sub x9, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x3, 0xd262c20cbd5c19f4 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
sub x22, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x54f08800080a4773 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x1, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x23, 0xfa28db503de71881 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sub x25, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0x8d8579c13e538eeb # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
sub x14, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x759344c344f92337 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sub x14, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x1c48ebe8a6a8a74f # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
sub x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x14, 0xb6800ea54e1f8ea5 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sub x5, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sub x20, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x1, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
sub x13, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
sub x25, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x18, 0x0000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sub x27, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x8, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sub x3, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sub x13, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sub x18, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sub x14, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sub x10, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sub x19, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x7, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x22, 0x0000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sub x30, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
sub x2, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sub x25, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x2, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sub x6, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x27, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
sub x24, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x22, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sub x7, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x15, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sub x8, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sub x18, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x9, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sub x13, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x23, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sub x3, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sub x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
sub x6, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
sub x17, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
sub x30, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sub x24, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x3, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x15, 0x0000000000000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sub x17, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sub x16, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sub x13, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sub x29, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x27, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sub x17, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sub x25, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sub x7, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sub x3, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x5, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sub x27, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x18, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sub x19, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sub x29, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000002 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sub x9, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sub x14, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sub x16, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000000000002 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sub x16, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x10, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
sub x8, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sub x30, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sub x20, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x25, 0x0000000000000002 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
sub x7, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x18, 0x0000000000000002 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
sub x21, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x27, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sub x7, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sub x14, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x22, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sub x12, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
sub x30, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x20, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sub x11, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sub x16, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sub x14, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
sub x24, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sub x5, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000000 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sub x22, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x27, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x28, 0x8000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sub x21, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x6, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sub x15, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x20, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sub x7, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x20, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sub x15, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x9, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sub x21, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x20, 0x8000000000000001 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
sub x23, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x16, 0x8000000000000001 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
sub x1, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x22, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sub x31, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x24, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
sub x26, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
sub x2, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sub x27, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sub x3, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sub x18, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sub x19, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sub x13, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x8000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x30, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x15, 0x8000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
sub x27, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sub x31, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
sub x9, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x12, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sub x8, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sub x5, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x30, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sub x7, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x2, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sub x21, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sub x19, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x12, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sub x31, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
sub x13, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
sub x21, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sub x25, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sub x24, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sub x19, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x7fffffffffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sub x3, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x27, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sub x16, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sub x16, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sub x25, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x19, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sub x31, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x16, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
sub x20, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x24, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sub x22, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sub x6, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sub x17, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x9, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sub x2, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sub x15, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sub x8, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
sub x13, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sub x18, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sub x17, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sub x5, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7ffffffffffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x15, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x7, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sub x31, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sub x18, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sub x16, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sub x25, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x28, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
sub x20, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x6, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sub x24, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sub x7, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sub x2, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x1, 0xffffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sub x5, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x30, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sub x8, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sub x20, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sub x23, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
sub x17, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x8, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sub x21, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0xffffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sub x11, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xffffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x30, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x6, 0xffffffffffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sub x24, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sub x14, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sub x27, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sub x18, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sub x18, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sub x20, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x14, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sub x6, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x16, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sub x23, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sub x24, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sub x30, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sub x3, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sub x22, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sub x2, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sub x20, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0xfffffffffffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sub x24, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0xfffffffffffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x17, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x11, 0xfffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sub x25, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sub x16, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sub x27, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
sub x31, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sub x26, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sub x17, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sub x29, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sub x2, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
sub x27, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sub x19, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sub x11, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sub x10, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
sub x3, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sub x17, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sub x12, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x28, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sub x25, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sub x17, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
sub x15, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
sub x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sub x27, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sub x2, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sub x19, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sub x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sub x20, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sub x7, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sub x29, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
sub x3, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
sub x29, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sub x6, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sub x23, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x12, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sub x2, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
sub x29, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
sub x30, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sub x30, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
sub x8, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x26, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sub x16, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sub x9, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x17, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sub x11, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x24, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sub x11, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
sub x18, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sub x13, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sub x30, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x11, 0x5555555555555555 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sub x29, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sub x20, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x25, 0x5555555555555555 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
sub x2, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x5555555555555555 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x5, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sub x25, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
sub x21, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x21, 0x5555555555555555 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sub x26, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x17, 0x5555555555555555 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
sub x21, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x24, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sub x30, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x23, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sub x16, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x20, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sub x19, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x17, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sub x24, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x8, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sub x7, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x10, 0x00000000ffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
sub x30, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
sub x11, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sub x6, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sub x27, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
sub x15, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x00000000ffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sub x1, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000ffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x3, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x5, 0x00000000ffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
sub x6, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sub x22, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sub x25, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x16, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
sub x2, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x25, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
sub x15, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sub x5, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x14, 0x00000000fffffffe # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sub x7, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
sub x8, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x22, 0x00000000fffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
sub x1, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x23, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sub x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sub x13, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sub x6, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sub x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sub x1, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0x00000000fffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
sub x22, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000fffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x27, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
sub x17, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sub x26, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sub x26, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x19, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sub x31, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
sub x5, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x6, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
sub x19, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x26, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
sub x19, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
sub x31, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x8, 0x0000000100000000 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
sub x5, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x23, 0x0000000100000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sub x28, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
sub x15, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sub x31, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
sub x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
sub x13, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000100000000 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sub x27, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x25, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x30, 0x0000000100000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sub x29, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sub x25, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
sub x31, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sub x17, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x30, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
sub x10, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x24, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sub x13, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x28, 0x0000000100000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
sub x9, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x14, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
sub x24, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sub x29, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x25, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
sub x1, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sub x30, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sub x12, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sub x15, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
sub x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000100000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sub x30, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000001 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
sub x2, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x16, 0x0000000100000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sub x22, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
sub x27, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x18, 0x0000000100000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
sub x20, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x17, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sub x13, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x18, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sub x11, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x9e899df6d8055903 # initialize rs1
li x0, 0xe3af92d9d1789440 # initialize rs2
sub x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x087c8cb987f7ee95 # initialize rs1
li x1, 0xaa75537b6a79a5dd # initialize rs2
sub x20, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xdbefae3d6102758d # initialize rs1
li x2, 0xa6ddd30546cada59 # initialize rs2
sub x17, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x5ba30bc991f55d22 # initialize rs1
li x3, 0x1dd625c31780a711 # initialize rs2
sub x7, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcb1f39bd0e3b75c5 # initialize rs1
li x4, 0x4ad0fbdacf318b08 # initialize rs2
sub x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8922017a21085899 # initialize rs1
li x5, 0x2bf59c8429a03d27 # initialize rs2
sub x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xeab87f0ae871885c # initialize rs1
li x6, 0xa677702df176181d # initialize rs2
sub x10, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfff8b446fd4d8d0f # initialize rs1
li x7, 0xbdd8d8331ffd7fd2 # initialize rs2
sub x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x5a1ef5c840b09601 # initialize rs1
li x8, 0x464e38a7db3dafe6 # initialize rs2
sub x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x0d9961de734770a1 # initialize rs1
li x9, 0x0a7a944a1c8e214c # initialize rs2
sub x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xf3d21fa296ac930f # initialize rs1
li x10, 0xee7fb4235b14a6de # initialize rs2
sub x31, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x61be024e122a0bf0 # initialize rs1
li x11, 0xd4019c69ab07b295 # initialize rs2
sub x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xdaa7bd7674c35c13 # initialize rs1
li x12, 0x0b14832ff423c25c # initialize rs2
sub x31, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x444845a9de69a9cd # initialize rs1
li x13, 0x6be0679c4793712d # initialize rs2
sub x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x314ea893fc50eaff # initialize rs1
li x14, 0x413bb2c02fb1c22a # initialize rs2
sub x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x86788571c9890ef0 # initialize rs1
li x15, 0xce740e5e426ee017 # initialize rs2
sub x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x9d6f41bb9920e6a5 # initialize rs1
li x16, 0xe09da3fcd87b409f # initialize rs2
sub x10, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xa792ed386743b908 # initialize rs1
li x17, 0x215859650f1b8317 # initialize rs2
sub x22, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xd2e184d7c7fc79e0 # initialize rs1
li x18, 0xc91992f4da8ee2ee # initialize rs2
sub x2, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x15834b36c9c09b9d # initialize rs1
li x19, 0xb32cd9e31fbab2d2 # initialize rs2
sub x12, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xfa710170a0f91781 # initialize rs1
li x20, 0xec0d01e2a0385080 # initialize rs2
sub x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb972986de4a8661f # initialize rs1
li x21, 0xebfe0f0e55bfa25d # initialize rs2
sub x9, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9abad7ff32213623 # initialize rs1
li x22, 0x5438a1a23029f6b6 # initialize rs2
sub x10, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xd79b8a7843bb0e44 # initialize rs1
li x23, 0x3fedff889ea5ae00 # initialize rs2
sub x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc2018af16a704fdc # initialize rs1
li x24, 0x50c2078365a780e9 # initialize rs2
sub x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x21ff47b70bc77d42 # initialize rs1
li x25, 0x419fae4cbebd37e8 # initialize rs2
sub x22, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xcc24d76503b80261 # initialize rs1
li x26, 0x655408c8eb4ac907 # initialize rs2
sub x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdda102f3aaad4309 # initialize rs1
li x27, 0x817ec8bf9d41da4f # initialize rs2
sub x22, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xbfca0381b6bbc281 # initialize rs1
li x28, 0x3e411037fb087f78 # initialize rs2
sub x7, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x5acd52aa5194618b # initialize rs1
li x29, 0x9f2bce38201b66a7 # initialize rs2
sub x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xec52f4d68f1714a4 # initialize rs1
li x30, 0xe696eefd707fc479 # initialize rs2
sub x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xb7677af16765fef2 # initialize rs1
li x31, 0x75cddc7d76ae9b2c # initialize rs2
sub x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xdd7fb24e460f11af # initialize rs1
li x9, 0x01181023d809cad5 # initialize rs2
sub x0, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa4f0dfd8eb88107e # initialize rs1
li x11, 0x96ee03b4cc1526d1 # initialize rs2
sub x1, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb6d0065157e3c813 # initialize rs1
li x18, 0x4d289d685bba50ae # initialize rs2
sub x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x04115c33a8283aac # initialize rs1
li x30, 0x28295d0ffc3f01ca # initialize rs2
sub x3, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9e65dc79b35b7b21 # initialize rs1
li x18, 0xbaea6f18f935e73a # initialize rs2
sub x4, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1cd98f140495460a # initialize rs1
li x26, 0x2601531e38c316c3 # initialize rs2
sub x5, x5, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdeeeb033d175ea4a # initialize rs1
li x26, 0x7847497c5ef9392c # initialize rs2
sub x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1f24a373c501b956 # initialize rs1
li x30, 0x9698219598f87317 # initialize rs2
sub x7, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd6aee3c1d520f8d7 # initialize rs1
li x11, 0x1be68d713f8bd47d # initialize rs2
sub x8, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd1425bcece878959 # initialize rs1
li x17, 0xe192e15d19c41c84 # initialize rs2
sub x9, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1637548a57a090cb # initialize rs1
li x3, 0x6135171e7d728d84 # initialize rs2
sub x10, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x75cfe52626612c6c # initialize rs1
li x28, 0x4f932f8aa2f519df # initialize rs2
sub x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3390b929eb1ba344 # initialize rs1
li x22, 0xa8225edee5a3767b # initialize rs2
sub x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x8b3d20201051aebc # initialize rs1
li x18, 0x8681e13ae84f57c5 # initialize rs2
sub x13, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7f02883aacdfdc59 # initialize rs1
li x28, 0x78ca478e1e6f4a66 # initialize rs2
sub x14, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x967d3e0c6e0b486f # initialize rs1
li x27, 0x00385d0b5dcc5ad0 # initialize rs2
sub x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2e717a429a9753ca # initialize rs1
li x5, 0xe5f84d185e0812a4 # initialize rs2
sub x16, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0a77fe0fbae48acc # initialize rs1
li x29, 0x71d988b7e5147ee2 # initialize rs2
sub x17, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x67f110c93dc2989a # initialize rs1
li x14, 0xff34b65930e497d6 # initialize rs2
sub x18, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc302aca48e64e59f # initialize rs1
li x19, 0x9e4a18c698296bd8 # initialize rs2
sub x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x560cf06387360b62 # initialize rs1
li x9, 0x3d61b8c923a81c37 # initialize rs2
sub x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x28460a7068ec395a # initialize rs1
li x17, 0x5e057d74623eb139 # initialize rs2
sub x21, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5cd8d5ab21e5f108 # initialize rs1
li x25, 0x7609e2b08c08a759 # initialize rs2
sub x22, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xcb9ef211eb8c8dd4 # initialize rs1
li x19, 0x669203b0997e9f26 # initialize rs2
sub x23, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8ae9191bf3d4a602 # initialize rs1
li x2, 0xc6ec3d3c9352c088 # initialize rs2
sub x24, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x968cb8e8abe6db24 # initialize rs1
li x27, 0x31a1bddb12d9123a # initialize rs2
sub x25, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xea99f52c1ee6e0c4 # initialize rs1
li x10, 0x5364310fcb0dc75e # initialize rs2
sub x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x98d0260c0e51d09b # initialize rs1
li x14, 0xaebee364a503c8dd # initialize rs2
sub x27, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3df5a7ced898ccd8 # initialize rs1
li x1, 0x8ca8d08005b650aa # initialize rs2
sub x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9fefabd591b3a413 # initialize rs1
li x6, 0xef5eb4c31f0a0589 # initialize rs2
sub x29, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x823cf3213f87702a # initialize rs1
li x9, 0x424f928e4f599ec1 # initialize rs2
sub x30, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfa368aad3cd8b342 # initialize rs1
li x1, 0xd658c4b1eae63103 # initialize rs2
sub x31, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x30, 0x5f306af5b66ff94b # initialize rs1
li x0, 0x3c0d168bcf637eed # initialize rs2
sub x0, x30, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x30, 0xce403f7beb741fad # initialize rs1
li x1, 0xf90b898f79de5f22 # initialize rs2
sub x1, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0x5fa27349d9c58d0c # initialize rs1
li x2, 0xaac5b11e2e15dc37 # initialize rs2
sub x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x31, 0x97be7419940b7a99 # initialize rs1
li x3, 0xcca3e98d0533cc2c # initialize rs2
sub x3, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0xd6347c35ac89fa87 # initialize rs1
li x4, 0xe34b677ef5570870 # initialize rs2
sub x4, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0x80ed533378b8993d # initialize rs1
li x5, 0xe6704f648e0386bd # initialize rs2
sub x5, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x42f35bcb0051f65d # initialize rs1
li x6, 0x2060d05666ab94d8 # initialize rs2
sub x6, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x2024b30ded764976 # initialize rs1
li x7, 0xa1c8a16270c0afc2 # initialize rs2
sub x7, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x23, 0xcc29fe603b719ff4 # initialize rs1
li x8, 0x74e2a601ddb20b38 # initialize rs2
sub x8, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x8, 0xf372a172559ca253 # initialize rs1
li x9, 0xf99307f10bc7d465 # initialize rs2
sub x9, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x29, 0xb88de9e6847b5cae # initialize rs1
li x10, 0x143b64c18fbbdb07 # initialize rs2
sub x10, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x13, 0x0edd67adda84bf48 # initialize rs1
li x11, 0xb58f02d7b4c8ce66 # initialize rs2
sub x11, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x5957c5c8f64ff062 # initialize rs1
li x12, 0x3318023c293ff8a9 # initialize rs2
sub x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x3387dc5224e6701a # initialize rs1
li x13, 0x1be6ccf44c466d0d # initialize rs2
sub x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x3, 0x37c2429f47b4836d # initialize rs1
li x14, 0x5ba37ef4d0038bf6 # initialize rs2
sub x14, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x16, 0xb83c7c9339dd08d1 # initialize rs1
li x15, 0x0e43567ee4501c38 # initialize rs2
sub x15, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x14, 0x79b64205408d3103 # initialize rs1
li x16, 0x5b4b0fb2f4e9d0f4 # initialize rs2
sub x16, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0xb2ea036c89623865 # initialize rs1
li x17, 0xb5cabf6aebddae97 # initialize rs2
sub x17, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x2, 0x721de9e6acc64615 # initialize rs1
li x18, 0x74739185054bdfb4 # initialize rs2
sub x18, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x10, 0x96f488a5cdd422ae # initialize rs1
li x19, 0x9d53dd8bd144b81a # initialize rs2
sub x19, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x8, 0x98cb11897186f303 # initialize rs1
li x20, 0x77811d4196e92cb6 # initialize rs2
sub x20, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x10, 0xd278b67c5c33c65c # initialize rs1
li x21, 0x9fab78df5732a530 # initialize rs2
sub x21, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x5, 0x80b4c81931ea3ad5 # initialize rs1
li x22, 0x21a769d037142ee8 # initialize rs2
sub x22, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0xf4b75279c3a53895 # initialize rs1
li x23, 0x3771d076b8e407cc # initialize rs2
sub x23, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0x77d52c87f4245519 # initialize rs1
li x24, 0xe777e925ad948f48 # initialize rs2
sub x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x31, 0xcca3d3778dc83f1e # initialize rs1
li x25, 0xfaa484784ad6b277 # initialize rs2
sub x25, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0x46d455ab1ff639dc # initialize rs1
li x26, 0x29521a9f354442c2 # initialize rs2
sub x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xd3d5c93410693dec # initialize rs1
li x27, 0x558a82f6f795c45b # initialize rs2
sub x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0x9b0f32b3bf3eeb19 # initialize rs1
li x28, 0x966ea4c55028b8e5 # initialize rs2
sub x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x18, 0xae0226101136f6ec # initialize rs1
li x29, 0xb98f312912b05445 # initialize rs2
sub x29, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x3d1002eed67c077e # initialize rs1
li x30, 0xb2becd7f8e1155e6 # initialize rs2
sub x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x27, 0xe7df8d3ff9623631 # initialize rs1
li x31, 0x295c7690c67854ae # initialize rs2
sub x31, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x5cf72222b53cb049 # initialize rs1
li x0, 0x7e7ed7f59ce905c7 # initialize rs2
sub x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xc12284427352aa6e # initialize rs1
li x1, 0x5a9ca0aa8e64d842 # initialize rs2
sub x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xdb3d588aea851381 # initialize rs1
li x2, 0x912cc99dc95d0032 # initialize rs2
sub x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x92280953f652684f # initialize rs1
li x3, 0x7aadbc8fcab56360 # initialize rs2
sub x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe58cc140dfd90e60 # initialize rs1
li x4, 0x26fefdddf7ae17b1 # initialize rs2
sub x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xec0dc8bc6e901a2c # initialize rs1
li x5, 0xf72e49632c0b1176 # initialize rs2
sub x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x55488f53ef39b1a6 # initialize rs1
li x6, 0xe9187416e446f3de # initialize rs2
sub x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x40cd0d3841e83764 # initialize rs1
li x7, 0xf48a263b7365136c # initialize rs2
sub x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x02d2a86496ce9353 # initialize rs1
li x8, 0x43390b64a5ec56c8 # initialize rs2
sub x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xed7d87a012a50953 # initialize rs1
li x9, 0x99468a88ece09899 # initialize rs2
sub x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x380c708c18e7a945 # initialize rs1
li x10, 0x340fc8d59ec3122f # initialize rs2
sub x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xeae5a7eaee117810 # initialize rs1
li x11, 0x7a9154c88f82d763 # initialize rs2
sub x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x26545394520ed4b0 # initialize rs1
li x12, 0x7489d2d9f3a9e706 # initialize rs2
sub x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x5ced5c4f916d6720 # initialize rs1
li x13, 0x18f09d317d21bb04 # initialize rs2
sub x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xf86bf1d3617c6bb4 # initialize rs1
li x14, 0x07192b43c2e5dbc2 # initialize rs2
sub x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x48ea2e6f62d965c9 # initialize rs1
li x15, 0xcddb7ab052f6c80a # initialize rs2
sub x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x8d82aee99fcad338 # initialize rs1
li x16, 0xffd0228eff303c93 # initialize rs2
sub x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xb99a2b9d61738206 # initialize rs1
li x17, 0xf06a5c12329917e6 # initialize rs2
sub x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x43afbb07b76c837f # initialize rs1
li x18, 0x0c4be0c622145378 # initialize rs2
sub x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa0c4076e4c80c684 # initialize rs1
li x19, 0xcc85134146bba2af # initialize rs2
sub x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xe40ae9b8134279a0 # initialize rs1
li x20, 0x5f900dee978b61ad # initialize rs2
sub x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x8cc32c312ad4af23 # initialize rs1
li x21, 0x3daa2a31455a061f # initialize rs2
sub x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x41ecef341a282dd3 # initialize rs1
li x22, 0x25962f4762e88305 # initialize rs2
sub x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7ca0201e3c2e1125 # initialize rs1
li x23, 0xc3a2db29701b11d2 # initialize rs2
sub x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x40b9194465cdd70c # initialize rs1
li x24, 0xfefde6188e4675ab # initialize rs2
sub x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x83ff8d588c6ec9e4 # initialize rs1
li x25, 0xd9f8552c806eb311 # initialize rs2
sub x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x69d1173048b18779 # initialize rs1
li x26, 0x5ff93184134f9835 # initialize rs2
sub x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x6ad304e5db6b35ea # initialize rs1
li x27, 0x44946851a6c7679b # initialize rs2
sub x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x641141921f1731ca # initialize rs1
li x28, 0x0ddc57b3bb902893 # initialize rs2
sub x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x08c9296597049518 # initialize rs1
li x29, 0x52ce7aab28a42f50 # initialize rs2
sub x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x1a2a90d56074383e # initialize rs1
li x30, 0x506d3a0c32ece205 # initialize rs2
sub x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x02e6912e4f22adbb # initialize rs1
li x31, 0x11d3bf41bc05220d # initialize rs2
sub x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x17, x26 # perform first operation
sub x28, x19, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x16, x17 # perform first operation
sub x5, x20, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x24, x30 # perform first operation
sub x31, x7, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x23, x2 # perform first operation
sub x15, x25, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x24, x18 # perform first operation
sub x18, x5, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x3, x26 # perform first operation
sub x26, x8, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x14, x24 # perform first operation
sub x29, x9, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x30, x13 # perform first operation
sub x17, x14, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x28, x24 # perform first operation
sub x11, x26, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x17, x24 # perform first operation
sub x17, x26, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x23, x2 # perform first operation
sub x2, x11, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x14, x1 # perform first operation
sub x8, x18, x3 # perform second (triggering) operation

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
