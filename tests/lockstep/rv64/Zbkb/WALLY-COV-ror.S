///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkb/WALLY-COV-ror.S
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
