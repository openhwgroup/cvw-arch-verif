///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/M/WALLY-COV-mulhsu.S
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
li x0, 0x2394b9a66befd711 # initialize rs1
li x27, 0xe687a9d924713451 # initialize rs2
mulhsu x6, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x688f9d2fb4c60b46 # initialize rs1
li x24, 0x1acc276f7e31cdb4 # initialize rs2
mulhsu x8, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1fed5abd18f16933 # initialize rs1
li x31, 0xcb899e33ac623845 # initialize rs2
mulhsu x16, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb408a095b364a465 # initialize rs1
li x19, 0x3b81feddc1cf75eb # initialize rs2
mulhsu x29, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x24a3f0d40e082baa # initialize rs1
li x9, 0xc8c512e4843b0d26 # initialize rs2
mulhsu x12, x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfd5786855ba9ee09 # initialize rs1
li x19, 0xe300f4101c185784 # initialize rs2
mulhsu x14, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf017e28aab21802a # initialize rs1
li x29, 0xca01c60c5f44e09f # initialize rs2
mulhsu x4, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc0154cd082e60ff9 # initialize rs1
li x6, 0xc6526dc18e168f28 # initialize rs2
mulhsu x18, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x570a0e1376f41190 # initialize rs1
li x25, 0xe474725ee5f78e7e # initialize rs2
mulhsu x31, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x74f0ecf47626172a # initialize rs1
li x1, 0xa9e8e5f232af0d45 # initialize rs2
mulhsu x7, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xf7aac818219a7f26 # initialize rs1
li x12, 0x4dc270cbedc2c8c9 # initialize rs2
mulhsu x15, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb6a4d4372a79a856 # initialize rs1
li x24, 0x133ead405a517d34 # initialize rs2
mulhsu x1, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe15e1a8fe1d4cdb7 # initialize rs1
li x21, 0x41c28fddfa9b1b80 # initialize rs2
mulhsu x2, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x12916c265a334470 # initialize rs1
li x9, 0xaa315876d8ee6847 # initialize rs2
mulhsu x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc75a7ed441a02048 # initialize rs1
li x12, 0xc2d2bd6eed809bb2 # initialize rs2
mulhsu x28, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xfe2f904f6f83daef # initialize rs1
li x22, 0xcedede41f2853372 # initialize rs2
mulhsu x16, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xce0a01c4e6859b0b # initialize rs1
li x31, 0x7987ee5e275d83fe # initialize rs2
mulhsu x30, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf1cb5125f046de1c # initialize rs1
li x27, 0xec3770ed95a3863b # initialize rs2
mulhsu x6, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x45579eed97a17375 # initialize rs1
li x30, 0x1f6d3d0eed1d1cdb # initialize rs2
mulhsu x20, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x01395b2784adc3d4 # initialize rs1
li x20, 0x855ca9c75c066218 # initialize rs2
mulhsu x16, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf83d8f7ddb3761ce # initialize rs1
li x29, 0xcfe5e0db5285f9cc # initialize rs2
mulhsu x19, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x291447dc67e8c0a6 # initialize rs1
li x23, 0x1ba78f69c4295bfa # initialize rs2
mulhsu x12, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x7b7fcc015894a7f4 # initialize rs1
li x6, 0x95d0f53ad340684a # initialize rs2
mulhsu x18, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf72ca7ac81e13168 # initialize rs1
li x28, 0x2a4ba9c4df198ea2 # initialize rs2
mulhsu x2, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x363140139b30545a # initialize rs1
li x5, 0x46d7ab4a753ae52d # initialize rs2
mulhsu x8, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf659df5001d46aa0 # initialize rs1
li x18, 0x3b5585dda5e8cf7d # initialize rs2
mulhsu x15, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe373b063a55e8411 # initialize rs1
li x22, 0xf65be2ee3380a221 # initialize rs2
mulhsu x25, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc1c28a2ba72e70d3 # initialize rs1
li x21, 0x1bf6b2cfae8a7d43 # initialize rs2
mulhsu x19, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0f026b29e716a972 # initialize rs1
li x22, 0x28b5aa27efffa459 # initialize rs2
mulhsu x7, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0b16deecf0cc3fbd # initialize rs1
li x14, 0xcc140a0bb0e4d790 # initialize rs2
mulhsu x31, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb7d09385f9cf2785 # initialize rs1
li x27, 0x57ae5c29068385b5 # initialize rs2
mulhsu x14, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x295b5ae37d4168a9 # initialize rs1
li x2, 0x757759f46f4246c6 # initialize rs2
mulhsu x28, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x22, 0xad3b5939b525b465 # initialize rs1
li x0, 0x0fc47b58374ae309 # initialize rs2
mulhsu x23, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xcad8fb21ae8a4132 # initialize rs1
li x1, 0xe76dab14869b1d9b # initialize rs2
mulhsu x8, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x11, 0xf7769cd3d8b64be1 # initialize rs1
li x2, 0x607ceb17374af94e # initialize rs2
mulhsu x29, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x21, 0x84ba565b6433f712 # initialize rs1
li x3, 0xcb5c37a53d8aff8b # initialize rs2
mulhsu x2, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x0f4397ac8ea12164 # initialize rs1
li x4, 0xa6c8820c5d31ef0c # initialize rs2
mulhsu x11, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
li x26, 0x118c1f67e8070dbe # initialize rs1
li x5, 0xdedb88ba118b8764 # initialize rs2
mulhsu x25, x26, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x1e2cd48aca710364 # initialize rs1
li x6, 0xfe65b3db1f9edfab # initialize rs2
mulhsu x24, x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xdf6e0e0fb5f942e3 # initialize rs1
li x7, 0x7703609db255b190 # initialize rs2
mulhsu x6, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x31, 0x747e38797d2a8892 # initialize rs1
li x8, 0xa9406cad9333dcc6 # initialize rs2
mulhsu x5, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x718f92fa34b14f79 # initialize rs1
li x9, 0x41a61a95e34165d4 # initialize rs2
mulhsu x12, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x5f7150ea117b7ad8 # initialize rs1
li x10, 0xf8c3d6aa0febe795 # initialize rs2
mulhsu x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x17, 0x22c9c25382815a56 # initialize rs1
li x11, 0x5381fd262209fdbe # initialize rs2
mulhsu x9, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0xaa44a86eae3196fd # initialize rs1
li x12, 0xf393ca81b7629e1a # initialize rs2
mulhsu x24, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x3ad86db76fc27e41 # initialize rs1
li x13, 0x003eee34b7751eb8 # initialize rs2
mulhsu x22, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x11, 0x0f77c99511caed7a # initialize rs1
li x14, 0x3743c15610d18c2a # initialize rs2
mulhsu x20, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0x9b75198db677b240 # initialize rs1
li x15, 0x6958c8311bf85170 # initialize rs2
mulhsu x27, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0xb435303e9e6dd2f0 # initialize rs1
li x16, 0x662eeb462dcc622e # initialize rs2
mulhsu x30, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x13adf0f556cfe2cc # initialize rs1
li x17, 0xbb80f64ced913f59 # initialize rs2
mulhsu x29, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0xe3f7f54db84f5d04 # initialize rs1
li x18, 0x144fbaaaa676ea69 # initialize rs2
mulhsu x6, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x13, 0x74f695f44b269834 # initialize rs1
li x19, 0x9f689eaa5d11fc32 # initialize rs2
mulhsu x6, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x13, 0xdda5015b1d73965e # initialize rs1
li x20, 0x64449092a263c849 # initialize rs2
mulhsu x17, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0xd88b747b5f4bc843 # initialize rs1
li x21, 0x361a5c712f0ff28b # initialize rs2
mulhsu x1, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x0e41552a1aaaf834 # initialize rs1
li x22, 0x2baf8d2cac03b8cf # initialize rs2
mulhsu x19, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0xc88a7f7f935dc276 # initialize rs1
li x23, 0x9771762920dc9863 # initialize rs2
mulhsu x19, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x286d6d01b05f557e # initialize rs1
li x24, 0xd59fb6b25ed610e4 # initialize rs2
mulhsu x9, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0xe44fa77619f27711 # initialize rs1
li x25, 0x7e2363e4857eabca # initialize rs2
mulhsu x17, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x6, 0xa6c47c93f9714173 # initialize rs1
li x26, 0x2749cb82cc18a459 # initialize rs2
mulhsu x25, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0xe9ef55ae40d90726 # initialize rs1
li x27, 0xc41e1200b19a669b # initialize rs2
mulhsu x3, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x1ffb20fdb1d9bc6d # initialize rs1
li x28, 0xba9c5e661617d53a # initialize rs2
mulhsu x24, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x2, 0xfcc11bd88f14ab7b # initialize rs1
li x29, 0x159455d38c171cd2 # initialize rs2
mulhsu x7, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x467da0795ed9e2d0 # initialize rs1
li x30, 0x5c78883ceb7b9a2c # initialize rs2
mulhsu x14, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0xa87fb6c1b2a8f677 # initialize rs1
li x31, 0x0635fe7ace5b0120 # initialize rs2
mulhsu x16, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0xe31c7d575a1a484a # initialize rs1
li x16, 0x1bc472a014741c2c # initialize rs2
mulhsu x0, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x747a9f739e03886a # initialize rs1
li x24, 0x17cc4bdc00b43d85 # initialize rs2
mulhsu x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x734aac3816561cbc # initialize rs1
li x28, 0x9fd97f652ce58b49 # initialize rs2
mulhsu x2, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x3b8b6948496b610a # initialize rs1
li x14, 0x5f824428803c8bb6 # initialize rs2
mulhsu x3, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xe6046828637689a4 # initialize rs1
li x24, 0x43cbc32b6f1ea489 # initialize rs2
mulhsu x4, x2, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0xe3a5aa034876e23a # initialize rs1
li x19, 0x34413ab5b5e3809c # initialize rs2
mulhsu x5, x1, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xc8bc3243c75e299a # initialize rs1
li x31, 0xd27bf97689ab8121 # initialize rs2
mulhsu x6, x3, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x36b865ba54cd4514 # initialize rs1
li x17, 0x3420c710187bda19 # initialize rs2
mulhsu x7, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x55d3f004df9273e0 # initialize rs1
li x15, 0x03e96f18ef4dba4a # initialize rs2
mulhsu x8, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6811011baea6efc1 # initialize rs1
li x1, 0x1fff19609fdde1fb # initialize rs2
mulhsu x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x1706c43a479463c5 # initialize rs1
li x3, 0xc32489a8a1a5dc30 # initialize rs2
mulhsu x10, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcf8c026b89a56dc8 # initialize rs1
li x27, 0x1722b6353df8cbda # initialize rs2
mulhsu x11, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0x7cc059513a516f57 # initialize rs1
li x17, 0xbefa1395c31f8b09 # initialize rs2
mulhsu x12, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x21027c86b47d6741 # initialize rs1
li x16, 0x939f585dafdf0d9a # initialize rs2
mulhsu x13, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xe7ab56882fa013bb # initialize rs1
li x25, 0x85e492dc0441d11b # initialize rs2
mulhsu x14, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x30, 0xa67082d6d1e85b0b # initialize rs1
li x28, 0x13afd089b9ecce82 # initialize rs2
mulhsu x15, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x1193d7f847cea601 # initialize rs1
li x3, 0x7d8269ca4e1f3717 # initialize rs2
mulhsu x16, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x2601fe9dca681d69 # initialize rs1
li x2, 0xac0df8d0e09256e2 # initialize rs2
mulhsu x17, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0xb0f254240836ceaa # initialize rs1
li x15, 0xb73b984d32bb070c # initialize rs2
mulhsu x18, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0xf0d12d555ca7f59f # initialize rs1
li x27, 0x4f678113d5ebcb54 # initialize rs2
mulhsu x19, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x19, 0x752590505076b693 # initialize rs1
li x5, 0xa4eea1777c23bf97 # initialize rs2
mulhsu x20, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xf7262773495ca1a4 # initialize rs1
li x6, 0x82aa94ff5b253c69 # initialize rs2
mulhsu x21, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x9ff5cc26ea5cffb8 # initialize rs1
li x2, 0x18b121ffe80a86a6 # initialize rs2
mulhsu x22, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0xfd01d1054d3ba14a # initialize rs1
li x13, 0x4e9ac764eab85972 # initialize rs2
mulhsu x23, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0xb85f6605c17b4f47 # initialize rs1
li x9, 0xd3b057204651a92b # initialize rs2
mulhsu x24, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x15, 0x0aa1f680c0ec8ba0 # initialize rs1
li x10, 0xf013562388a7668a # initialize rs2
mulhsu x25, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0xc571928f3c825fc9 # initialize rs1
li x30, 0x23832ea8a259468d # initialize rs2
mulhsu x26, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xed0c02675d44359e # initialize rs1
li x17, 0x02ea7d806683297a # initialize rs2
mulhsu x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x16, 0xebc673c3d28921f8 # initialize rs1
li x7, 0x6190c4fada565d31 # initialize rs2
mulhsu x28, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0x666d6bb484ae8942 # initialize rs1
li x5, 0x21bed446fa79b42d # initialize rs2
mulhsu x29, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x886f3b11279d44bd # initialize rs1
li x22, 0xa0ea5f9e2aad98f8 # initialize rs2
mulhsu x30, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0xe25bb025bdb6489f # initialize rs1
li x22, 0x7acb532b17499f58 # initialize rs2
mulhsu x31, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
li x18, 0x322387ee9ecbdc81 # initialize rs2
mulhsu x30, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x28, 0x6918c988632139c1 # initialize rs2
mulhsu x10, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x24, 0xffed5d8b30a1585e # initialize rs2
mulhsu x13, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0xab1cd70d9dfbd902 # initialize rs2
mulhsu x2, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x68a9847abbaac491 # initialize rs2
mulhsu x5, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
li x20, 0xe64ed7d408fd2dec # initialize rs2
mulhsu x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x19, 0x1e72c88fbea94f82 # initialize rs2
mulhsu x21, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x18, 0x3e46745f5046fc59 # initialize rs2
mulhsu x2, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x16, 0xe449442ec4f19a41 # initialize rs2
mulhsu x21, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x890bd27c09a19105 # initialize rs2
mulhsu x19, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x9a5d835d07c2302d # initialize rs2
mulhsu x17, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x7, 0xe4ae460ecd67dc0b # initialize rs2
mulhsu x11, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x18, 0xf8e9e2cd2615391d # initialize rs2
mulhsu x9, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x22, 0x29faf3db99b94b2d # initialize rs2
mulhsu x3, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rs1
li x20, 0x99387f13d0a4575b # initialize rs2
mulhsu x21, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x30, 0x665350cca315b8a5 # initialize rs2
mulhsu x29, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0xcaae3d5ec0f8046a # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mulhsu x16, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0xc04812f79e608770 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulhsu x28, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x43c3580b6fb91438 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulhsu x17, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x6da9091528d0b855 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
mulhsu x8, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0xa540472f352859bb # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulhsu x18, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x19, 0x62a6518f1d4e5fd1 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhsu x14, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x22, 0x1a8658e7743cb2e6 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhsu x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0xb5202d1763c01cd0 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
mulhsu x29, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x23, 0x4587de98b738be9a # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
mulhsu x7, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0x5e9cf397b6651598 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x13, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x36e102337a676f51 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x5, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0x5d46fadb401cc47d # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
mulhsu x31, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xe03ebd37e3debe25 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x16, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x562ca00150960735 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
mulhsu x31, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x13, 0xdce6a12fcc50b7f4 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulhsu x30, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x18, 0x80588984aef97d32 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
mulhsu x23, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x0000000000000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulhsu x8, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x31, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
mulhsu x15, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x9, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhsu x19, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x19, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhsu x28, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x29, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulhsu x15, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulhsu x22, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhsu x13, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhsu x30, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x2, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000000 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x29, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0x0000000000000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
mulhsu x26, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mulhsu x25, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulhsu x21, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x31, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulhsu x26, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mulhsu x7, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x0000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mulhsu x27, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
mulhsu x17, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x22, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x29, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x29, 0x0000000000000001 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
mulhsu x12, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x21, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
mulhsu x11, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
mulhsu x22, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulhsu x23, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhsu x16, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhsu x22, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000001 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x20, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x24, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x23, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulhsu x24, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
mulhsu x7, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhsu x12, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x13, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhsu x22, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
mulhsu x6, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x22, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhsu x6, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x16, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulhsu x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulhsu x30, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x29, 0x0000000000000002 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulhsu x5, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
mulhsu x18, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulhsu x13, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
mulhsu x3, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhsu x13, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhsu x3, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000002 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x5, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000002 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x20, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x20, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulhsu x28, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
mulhsu x18, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
mulhsu x2, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x15, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
mulhsu x2, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x27, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhsu x21, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x31, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mulhsu x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x5, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
mulhsu x11, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x2, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhsu x23, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhsu x30, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x31, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
mulhsu x12, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhsu x8, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhsu x2, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
mulhsu x9, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x20, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x24, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x27, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x10, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
mulhsu x27, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhsu x3, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x28, 0x8000000000000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mulhsu x15, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhsu x30, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x10, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhsu x7, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
mulhsu x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
mulhsu x13, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x6, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x26, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x19, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhsu x8, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
mulhsu x23, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
mulhsu x11, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x11, 0x8000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
mulhsu x17, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
mulhsu x13, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhsu x7, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x16, 0x8000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x3, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x14, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x27, 0x8000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulhsu x5, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
mulhsu x26, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
mulhsu x11, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x26, 0x8000000000000001 # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
mulhsu x16, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x7, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulhsu x25, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x1, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
mulhsu x5, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhsu x20, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x19, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
mulhsu x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x12, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulhsu x2, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x5, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulhsu x30, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
mulhsu x7, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
mulhsu x22, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
mulhsu x23, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x7fffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
mulhsu x18, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x25, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7fffffffffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x20, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
mulhsu x9, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
mulhsu x27, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x17, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhsu x27, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x24, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
mulhsu x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhsu x29, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhsu x29, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x6, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulhsu x29, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
mulhsu x5, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulhsu x14, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x19, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
mulhsu x22, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
mulhsu x23, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
mulhsu x11, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0x7ffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
mulhsu x23, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhsu x20, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x24, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x30, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhsu x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x16, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mulhsu x19, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
mulhsu x15, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x30, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
mulhsu x14, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x31, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulhsu x9, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhsu x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhsu x25, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
mulhsu x28, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
mulhsu x3, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulhsu x6, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
mulhsu x26, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
mulhsu x17, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x13, 0xffffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x11, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xffffffffffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x17, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x9, 0xffffffffffffffff # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
mulhsu x19, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mulhsu x8, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x9, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
mulhsu x8, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x15, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulhsu x6, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulhsu x9, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x23, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhsu x1, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x17, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhsu x3, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x11, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
mulhsu x29, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x19, 0xfffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
mulhsu x20, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x26, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
mulhsu x24, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhsu x31, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhsu x1, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x30, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x6, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0xfffffffffffffffe # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
mulhsu x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulhsu x3, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
mulhsu x5, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x1, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulhsu x27, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
mulhsu x15, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhsu x22, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
mulhsu x7, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulhsu x28, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
mulhsu x7, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
mulhsu x15, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
mulhsu x12, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
mulhsu x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhsu x29, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
mulhsu x23, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x10, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x14, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulhsu x7, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mulhsu x31, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
mulhsu x29, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
mulhsu x17, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhsu x25, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
mulhsu x27, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhsu x24, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
mulhsu x21, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhsu x7, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
mulhsu x8, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
mulhsu x24, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x17, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
mulhsu x10, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
mulhsu x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x6, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x31, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
mulhsu x18, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
mulhsu x19, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
mulhsu x30, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhsu x14, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhsu x10, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x23, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhsu x18, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x29, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
mulhsu x1, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
mulhsu x19, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
mulhsu x25, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x24, 0x5555555555555555 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
mulhsu x6, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
mulhsu x13, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x18, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mulhsu x30, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x24, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
mulhsu x30, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5555555555555555 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x10, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5555555555555555 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x3, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x23, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
mulhsu x13, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x29, 0x5555555555555555 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhsu x14, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
mulhsu x3, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
mulhsu x28, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x30, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
mulhsu x8, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
mulhsu x7, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhsu x29, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mulhsu x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
mulhsu x18, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x26, 0x00000000ffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
mulhsu x25, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
mulhsu x14, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
mulhsu x27, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulhsu x12, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
mulhsu x1, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x00000000ffffffff # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x22, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x00000000ffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x7, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
mulhsu x29, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
mulhsu x17, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x7, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhsu x29, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mulhsu x29, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x1, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhsu x12, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
mulhsu x13, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x19, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulhsu x5, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mulhsu x30, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x17, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mulhsu x14, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x26, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulhsu x25, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhsu x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
mulhsu x19, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulhsu x8, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
mulhsu x11, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000fffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000fffffffe # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x1, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhsu x1, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhsu x5, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulhsu x7, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x31, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
mulhsu x26, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x26, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
mulhsu x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
mulhsu x30, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x7, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
mulhsu x20, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x7, 0x0000000100000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
mulhsu x20, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x28, 0x0000000100000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhsu x27, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
mulhsu x28, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
mulhsu x13, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x26, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
mulhsu x28, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
mulhsu x31, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000000 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x17, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x2, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x0000000100000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
mulhsu x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulhsu x7, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulhsu x8, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x25, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
mulhsu x18, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x13, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
mulhsu x15, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x30, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhsu x25, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x27, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
mulhsu x14, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x19, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
mulhsu x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x24, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
mulhsu x18, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x6, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
mulhsu x25, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
mulhsu x9, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
mulhsu x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
mulhsu x30, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhsu x12, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulhsu x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhsu x31, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x12, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
mulhsu x30, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
mulhsu x31, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulhsu x6, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x22, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulhsu x12, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulhsu x5, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x9619a0230b6ca632 # initialize rs1
li x0, 0x49e7593b51171cdb # initialize rs2
mulhsu x24, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x128245ed113d7312 # initialize rs1
li x1, 0xefce297b9a4b5cd6 # initialize rs2
mulhsu x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x6a80ae4d47416d4e # initialize rs1
li x2, 0xb7e6d729090424c5 # initialize rs2
mulhsu x9, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x655baa994a309455 # initialize rs1
li x3, 0x41416bd4105473d3 # initialize rs2
mulhsu x13, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5a7f729b13b96721 # initialize rs1
li x4, 0xfa92bc53a7babaf7 # initialize rs2
mulhsu x19, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x606f54df36051445 # initialize rs1
li x5, 0x8da169addc581119 # initialize rs2
mulhsu x23, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84cce74042a98625 # initialize rs1
li x6, 0x46f15c1126bcc464 # initialize rs2
mulhsu x25, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf6a51df7809871f4 # initialize rs1
li x7, 0x2ad17de257b112c5 # initialize rs2
mulhsu x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa2c06f2c6bae1101 # initialize rs1
li x8, 0xc631b2987df7a3dc # initialize rs2
mulhsu x11, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x2f698ab8638f2c82 # initialize rs1
li x9, 0xe2ac105bd3e6d7fd # initialize rs2
mulhsu x18, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8f063a3159d839c2 # initialize rs1
li x10, 0x9d09ae82f0fa77d0 # initialize rs2
mulhsu x14, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x79001b068e654d2a # initialize rs1
li x11, 0x67dcb96278d692d7 # initialize rs2
mulhsu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x30cc0e8d2bbcd73b # initialize rs1
li x12, 0xfb954acfbe185813 # initialize rs2
mulhsu x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xa69bd98c7c5fff62 # initialize rs1
li x13, 0x5b513fc5b8f99ba0 # initialize rs2
mulhsu x15, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x4940beeac1999e1b # initialize rs1
li x14, 0x59769749b61d3109 # initialize rs2
mulhsu x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xdcb6f5562c400b35 # initialize rs1
li x15, 0xbe2c0f77ea40f958 # initialize rs2
mulhsu x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x87ee37333b16d307 # initialize rs1
li x16, 0x1e7ef0fb69cebdbf # initialize rs2
mulhsu x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x58c3fd8bb09bbc0c # initialize rs1
li x17, 0x88332422efc43aef # initialize rs2
mulhsu x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x46f7d6337b16d49e # initialize rs1
li x18, 0x9b6850f64e535394 # initialize rs2
mulhsu x13, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6ec5b919a6b8b5be # initialize rs1
li x19, 0x4acdcb5d4fe9b318 # initialize rs2
mulhsu x25, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xdcadaf78ddaab707 # initialize rs1
li x20, 0x1bde42c714180785 # initialize rs2
mulhsu x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x95dd27337d481753 # initialize rs1
li x21, 0xe56b5550c76fcf56 # initialize rs2
mulhsu x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9e550e9bcd5ea3e3 # initialize rs1
li x22, 0xc6b72f5ff8360e73 # initialize rs2
mulhsu x17, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf9613a7f08a8b4cf # initialize rs1
li x23, 0xac1544f56c2b479a # initialize rs2
mulhsu x5, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x1f55d5686f85d317 # initialize rs1
li x24, 0xe92899a0e96c56be # initialize rs2
mulhsu x3, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x307d0b0690c2d266 # initialize rs1
li x25, 0x82f7ba5773edb0e0 # initialize rs2
mulhsu x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb124c271942593c2 # initialize rs1
li x26, 0xc479e52a909079be # initialize rs2
mulhsu x16, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x70bc6753710337ee # initialize rs1
li x27, 0xc169d163eb8839ef # initialize rs2
mulhsu x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xeaaacffb187581a8 # initialize rs1
li x28, 0xea1085a4964e1b35 # initialize rs2
mulhsu x15, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x01eb451c56b32a91 # initialize rs1
li x29, 0x51ca93acae2dacf0 # initialize rs2
mulhsu x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x7fb234416ff41c06 # initialize rs1
li x30, 0x0f9018ecdc049bb7 # initialize rs2
mulhsu x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x8066dbe85f9bde64 # initialize rs1
li x31, 0x11ebf192f1a4f4d4 # initialize rs2
mulhsu x17, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x689496af37c5c662 # initialize rs1
li x18, 0xfb76691ebc66d17c # initialize rs2
mulhsu x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x451accc04db526ed # initialize rs1
li x15, 0x3c712f6261404bd2 # initialize rs2
mulhsu x1, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x85795838b44ce21f # initialize rs1
li x12, 0x6def5dcc64f7b902 # initialize rs2
mulhsu x2, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe16d3168934dd050 # initialize rs1
li x3, 0x65f5d4aa57cf019d # initialize rs2
mulhsu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x483ecdcadf45692d # initialize rs1
li x15, 0xdafa05189c286a3f # initialize rs2
mulhsu x4, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9637716a0ff74594 # initialize rs1
li x29, 0xcb9d2a90c87ad4a4 # initialize rs2
mulhsu x5, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x490cc848591ad4b9 # initialize rs1
li x4, 0xb81dca121aa93a92 # initialize rs2
mulhsu x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x16caeae6d15e1790 # initialize rs1
li x14, 0xe5fdb67383e11d42 # initialize rs2
mulhsu x7, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x11d4314586f54d99 # initialize rs1
li x21, 0xdecde0ab65e4495b # initialize rs2
mulhsu x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7e76c9873e99e365 # initialize rs1
li x24, 0x773f294141cdb849 # initialize rs2
mulhsu x9, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x22d6a002c8f96fd7 # initialize rs1
li x6, 0x1c15e5f480bc27d9 # initialize rs2
mulhsu x10, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x848babf2a67c0f03 # initialize rs1
li x14, 0x4aa61daa6c256571 # initialize rs2
mulhsu x11, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x399ceb9010cb6441 # initialize rs1
li x3, 0x278ddfbf8c12bd91 # initialize rs2
mulhsu x12, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9e6eade3a0283798 # initialize rs1
li x3, 0x6697ca7aead9e65d # initialize rs2
mulhsu x13, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x76d1d481c35d682b # initialize rs1
li x8, 0xb138cfb12465525e # initialize rs2
mulhsu x14, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xccbb10683100d72c # initialize rs1
li x3, 0x7450121e40da24c6 # initialize rs2
mulhsu x15, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0cdaa55379d7bd14 # initialize rs1
li x9, 0xc4d0b7723adc721a # initialize rs2
mulhsu x16, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xdc6df153c87b76cc # initialize rs1
li x19, 0x4af22b3d8f74fcf4 # initialize rs2
mulhsu x17, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe32bec34f9dd92c6 # initialize rs1
li x19, 0x34ac85fe1087bd51 # initialize rs2
mulhsu x18, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa5ef0f660b440f78 # initialize rs1
li x30, 0xdd62ebcf884b7faa # initialize rs2
mulhsu x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xecbd6007d0cf3510 # initialize rs1
li x9, 0xd597db28cb8918ac # initialize rs2
mulhsu x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2c8771ba780783b9 # initialize rs1
li x11, 0xb946e28800652c1d # initialize rs2
mulhsu x21, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb7bf45f6da8ba2d8 # initialize rs1
li x21, 0xba12ea5d174f228d # initialize rs2
mulhsu x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9c8283f3f5267107 # initialize rs1
li x14, 0x42fda078d3d55bd2 # initialize rs2
mulhsu x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8a8603d1fa363305 # initialize rs1
li x28, 0x2596dc09d3c9aefb # initialize rs2
mulhsu x24, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x81c6bf3a27b17d86 # initialize rs1
li x17, 0xcf824f839cae81e7 # initialize rs2
mulhsu x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2612629edc9d6a2d # initialize rs1
li x23, 0xb7638392bdb066ce # initialize rs2
mulhsu x26, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0d01082efd28daf0 # initialize rs1
li x11, 0x3b6c3b8addc4953a # initialize rs2
mulhsu x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xaa6c00550a4373a4 # initialize rs1
li x8, 0x9c6ad222a56e57fd # initialize rs2
mulhsu x28, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9d2f96561ddb6f0c # initialize rs1
li x11, 0xcc5909ecd3df1c85 # initialize rs2
mulhsu x29, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5bc8f9524ed2cee2 # initialize rs1
li x15, 0x34e45b07124a4c56 # initialize rs2
mulhsu x30, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa546aa3772d359de # initialize rs1
li x23, 0xc687171ab8852200 # initialize rs2
mulhsu x31, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x28, 0xbb11074ae12bc797 # initialize rs1
li x0, 0x1b88e578701db29a # initialize rs2
mulhsu x0, x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x27, 0x849f33bdb1b655a2 # initialize rs1
li x1, 0x4a5ca373d930a453 # initialize rs2
mulhsu x1, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0xaeff411cd0ffe581 # initialize rs1
li x2, 0x2f4e349274cc2195 # initialize rs2
mulhsu x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0x58739d2a3667d97b # initialize rs1
li x3, 0x735125362a429ce0 # initialize rs2
mulhsu x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xe3a17fbba4f8531e # initialize rs1
li x4, 0x20ec8d25534bae65 # initialize rs2
mulhsu x4, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x9348bc843daa3724 # initialize rs1
li x5, 0xcad14dd2dd39ee4f # initialize rs2
mulhsu x5, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x9c016d1366b1457e # initialize rs1
li x6, 0x621fd1c6e350fbad # initialize rs2
mulhsu x6, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xdf774542fb074919 # initialize rs1
li x7, 0xadbf42c1a7e7998f # initialize rs2
mulhsu x7, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0x6501873e5db5f112 # initialize rs1
li x8, 0x81644412432a0751 # initialize rs2
mulhsu x8, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x26, 0x2425776a895ff703 # initialize rs1
li x9, 0x1c238677db728a35 # initialize rs2
mulhsu x9, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x15, 0xb22f75d1cf3b10ec # initialize rs1
li x10, 0x08178250ebb78360 # initialize rs2
mulhsu x10, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x16132ba02ac74d2e # initialize rs1
li x11, 0x73f4fe537fca2a9a # initialize rs2
mulhsu x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0xa2728da29de9ccdd # initialize rs1
li x12, 0x99c8a16e47c918bc # initialize rs2
mulhsu x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x30, 0x6ded49c063fd637a # initialize rs1
li x13, 0xd62a7b35f40c2543 # initialize rs2
mulhsu x13, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x23, 0xab8a34028f31126c # initialize rs1
li x14, 0xc6abf6655c370f94 # initialize rs2
mulhsu x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x10, 0x43d0ca82ca7fdf08 # initialize rs1
li x15, 0xca49d7627b9ef67c # initialize rs2
mulhsu x15, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x0090b3c0718ff329 # initialize rs1
li x16, 0x88b141674d06bf1d # initialize rs2
mulhsu x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0xfb7ee05856d1b2c9 # initialize rs1
li x17, 0xa425b27303d92cdd # initialize rs2
mulhsu x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0xabb0048e089d7d31 # initialize rs1
li x18, 0xde90dfe8c3f0faaa # initialize rs2
mulhsu x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x25, 0x91d8b82004b546f9 # initialize rs1
li x19, 0x66d4cb1bcd6137d8 # initialize rs2
mulhsu x19, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x15, 0xb2b39c1c8c4af81d # initialize rs1
li x20, 0x94fd5de35290cd66 # initialize rs2
mulhsu x20, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x8, 0x452d040d258d7817 # initialize rs1
li x21, 0x86705307c46c9635 # initialize rs2
mulhsu x21, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x30, 0x77266485520bc8a1 # initialize rs1
li x22, 0xece512079f3b292f # initialize rs2
mulhsu x22, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x3e3b3fba0a4e6d7d # initialize rs1
li x23, 0x78248a70f86fe8a8 # initialize rs2
mulhsu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x0c6f8090663a753c # initialize rs1
li x24, 0x74c7c34c6a526d8e # initialize rs2
mulhsu x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0xdd136424871966f1 # initialize rs1
li x25, 0xba0a0e82f7183dda # initialize rs2
mulhsu x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x17, 0x3f3674d8f8dbcc37 # initialize rs1
li x26, 0xb00dc77879d4f59b # initialize rs2
mulhsu x26, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x11, 0xbdb1a150712e637d # initialize rs1
li x27, 0x7fa3ff99e16149b8 # initialize rs2
mulhsu x27, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x26, 0x60e4e0e2fa06aa6b # initialize rs1
li x28, 0x9812ea7a5a672843 # initialize rs2
mulhsu x28, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0x1dfd0a727a73c451 # initialize rs1
li x29, 0xd12fa489888d0a3d # initialize rs2
mulhsu x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x8, 0xe9d951a815587b34 # initialize rs1
li x30, 0xdbed136b3dd3aada # initialize rs2
mulhsu x30, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x29, 0xecb9e7009e869dbe # initialize rs1
li x31, 0x865afb9e162ed85d # initialize rs2
mulhsu x31, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7ba00a264e1384e7 # initialize rs1
li x0, 0xaa9be6a8db49c67f # initialize rs2
mulhsu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x37d7b080c4c89b1b # initialize rs1
li x1, 0xbebbbf874587ae36 # initialize rs2
mulhsu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xd1164ec00d0f7f0a # initialize rs1
li x2, 0x5a1c4ba5e8761afc # initialize rs2
mulhsu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xdcf24e4247b5ffda # initialize rs1
li x3, 0x9f2a56f2658aceea # initialize rs2
mulhsu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9f0ccf75ca5e92e1 # initialize rs1
li x4, 0x0621c3d7d61636a8 # initialize rs2
mulhsu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb435d53629c148cb # initialize rs1
li x5, 0xbc83bcfd2e1a9efe # initialize rs2
mulhsu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x64b141ac8f98b859 # initialize rs1
li x6, 0xa6612bfa1de297b1 # initialize rs2
mulhsu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5f4edc4efcb250db # initialize rs1
li x7, 0xde9b46dd88e1aa9f # initialize rs2
mulhsu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x771ab508fa6d1761 # initialize rs1
li x8, 0x199168bcb6a2bf39 # initialize rs2
mulhsu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xde95cfc032ea77b3 # initialize rs1
li x9, 0xbffcce45f9fcd4be # initialize rs2
mulhsu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x086d82411f99e7b8 # initialize rs1
li x10, 0x7f7066be1d3bee8a # initialize rs2
mulhsu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x830eb58e6b10a608 # initialize rs1
li x11, 0x9e5b94cab2cc9be4 # initialize rs2
mulhsu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x10e737bbbcca6bb6 # initialize rs1
li x12, 0x9a0b034bc05fa580 # initialize rs2
mulhsu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xa0d9770169c9fdba # initialize rs1
li x13, 0x16fef4bddb469220 # initialize rs2
mulhsu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x81035044b9f56e9e # initialize rs1
li x14, 0xdbdfed6ead96ce9e # initialize rs2
mulhsu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x575130c52c0b3a08 # initialize rs1
li x15, 0x3ec58129610f9e0d # initialize rs2
mulhsu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x85364ad850939b51 # initialize rs1
li x16, 0x21a2a94a4e2cf319 # initialize rs2
mulhsu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xbde2bd5948c0c9fb # initialize rs1
li x17, 0x8cf2b13fc27b123c # initialize rs2
mulhsu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xa7bdd607fc984690 # initialize rs1
li x18, 0x65007fc3f0befb11 # initialize rs2
mulhsu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6247ab1c4cc5d250 # initialize rs1
li x19, 0x17259403ea99cf68 # initialize rs2
mulhsu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x34d135bf46f765b0 # initialize rs1
li x20, 0x4648d9c872174191 # initialize rs2
mulhsu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x24005f97dc63683f # initialize rs1
li x21, 0xa88903913eb435ff # initialize rs2
mulhsu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7f9331870b26b1dd # initialize rs1
li x22, 0xafd1f9d5aaf171fc # initialize rs2
mulhsu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3b009a9d5502756e # initialize rs1
li x23, 0xafe95d14da62759b # initialize rs2
mulhsu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xae030e41b0f313f4 # initialize rs1
li x24, 0xa74801c3937829f7 # initialize rs2
mulhsu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x744b9c3c87ee5cbc # initialize rs1
li x25, 0x5d5783134dc22558 # initialize rs2
mulhsu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xe1d3c4168fae1b56 # initialize rs1
li x26, 0x9fcaeb5f3b163850 # initialize rs2
mulhsu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x10b4830a817ccdb7 # initialize rs1
li x27, 0x33c77d5e72ad1641 # initialize rs2
mulhsu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5fb203cc09968de3 # initialize rs1
li x28, 0x19d6f246f54aaf66 # initialize rs2
mulhsu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc84a2bb0b584236e # initialize rs1
li x29, 0xa40381d36f3f2ab4 # initialize rs2
mulhsu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcdc4fbe131056194 # initialize rs1
li x30, 0xd21508c9785eb4ca # initialize rs2
mulhsu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x5a5e75c458d62503 # initialize rs1
li x31, 0x71face3eaea29a32 # initialize rs2
mulhsu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x31, x22 # perform first operation
mulhsu x15, x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x2, x16 # perform first operation
mulhsu x5, x9, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x21, x12 # perform first operation
mulhsu x5, x10, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x14, x8 # perform first operation
mulhsu x25, x16, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x31, x1 # perform first operation
mulhsu x2, x25, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x16, x14 # perform first operation
mulhsu x26, x12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x25, x30 # perform first operation
mulhsu x23, x28, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x30, x28 # perform first operation
mulhsu x10, x9, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x8, x28 # perform first operation
mulhsu x27, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x31, x9 # perform first operation
mulhsu x31, x30, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x6, x12 # perform first operation
mulhsu x12, x16, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x17, x19 # perform first operation
mulhsu x15, x10, x18 # perform second (triggering) operation

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
