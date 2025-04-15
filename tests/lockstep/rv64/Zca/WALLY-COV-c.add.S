///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.add.S
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

    
# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xdc9badde1fca33f1
li x1, 0x793630538cb347f5
c.add x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x22, 0x3aa15b05f5700be4
li x2, 0xaf0d16612b615e56
c.add x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0xb0f4b620b885de84
li x3, 0xc0afd8d808099193
c.add x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x08a8384ecc5ac485
li x4, 0xde4dd455a32c011c
c.add x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 24)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0xce80e5f0376b070e
li x5, 0xa4162923e2a5b8d5
c.add x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 32)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0xc00e25a69534b485
li x6, 0x143c8e64def89e62
c.add x18, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 40)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x4fbc5b7cb420b066
li x7, 0x393a004ab3ac4782
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs2 (Test source rs2 = x8)
li x14, 0xb61638dea9402b48
li x8, 0xbbd8a0a5f7a2e900
c.add x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x6536e1d025b0337f
li x9, 0xde3c49f26034f842
c.add x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0x76d40b00f158cf94
li x10, 0x6a93b63a884bad5b
c.add x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0x84f428f242a9fb97
li x11, 0x8def443ea93dd7ba
c.add x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs2 (Test source rs2 = x12)
li x11, 0xa9ec752532fd17d6
li x12, 0x74f8aca0ee9fb82a
c.add x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs2 (Test source rs2 = x13)
li x31, 0x54be64790617b794
li x13, 0xcc5c6d21cd973f6b
c.add x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs2 (Test source rs2 = x14)
li x16, 0x6e2dff56e3090dfc
li x14, 0xe1d7e59ff914831a
c.add x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs2 (Test source rs2 = x15)
li x12, 0x97c43b5c1774207b
li x15, 0x61985a81d34858e2
c.add x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs2 (Test source rs2 = x16)
li x24, 0xf0ddd68b2cf666de
li x16, 0x022306181cef7d25
c.add x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0xced5e2b4e1ae0675
li x17, 0x5ea9395b06cee80d
c.add x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0xc82321b1b63e071e
li x18, 0x56a0fe21a88b9b16
c.add x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0xc831fd2fcbc1ca8a
li x19, 0x60c13b15fe5375c6
c.add x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x20)
li x31, 0x94d07cad4c95135c
li x20, 0x7f123d306226ab9a
c.add x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs2 (Test source rs2 = x21)
li x14, 0xe09f4a24df755d64
li x21, 0xa4c23516a53a5eac
c.add x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x523c5a2b4f08a8a0
li x22, 0xf0039211fc1bfcc7
c.add x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0xdb749c2929e4e002
li x23, 0x07c0078d0708aaad
c.add x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0x19e3b14343ab1f7c
li x24, 0x3a274460071add0a
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs2 (Test source rs2 = x25)
li x29, 0x54a019d0eea7cb29
li x25, 0x8bf19f9b0c1e13e0
c.add x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0x16b789dc1aa0fead
li x26, 0xcde1c0b669c3e2f0
c.add x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0xc878c5f5b6a7e2c4
li x27, 0x4b7554cf22f2272f
c.add x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rs2 (Test source rs2 = x28)
li x9, 0x398e63375e5a1fee
li x28, 0xb32314a3b262d969
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs2 (Test source rs2 = x29)
li x26, 0x89467f650ac67905
li x29, 0x072411339e5c36b5
c.add x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0x6372fb28b687f561
li x30, 0xbfa29c838e99aa0a
c.add x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs2 (Test source rs2 = x31)
li x21, 0x2a60b340c9ca5c48
li x31, 0x5bbf69c9b2205bed
c.add x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x24f7d85f225b3095
li x8, 0xff14984819180359
c.add x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3f6daf81cd9e0293
li x21, 0xe10916b1cfc17e1b
c.add x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xf73f03e9fb0861d0
li x28, 0xc908d455367782bb
c.add x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xca6de027320e4a59
li x9, 0x05ace7b06357d995
c.add x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3a824ec0635cfc2f
li x22, 0x6ee518403facb70d
c.add x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe044884f8c7dbcba
li x4, 0x489d6f13a82e9834
c.add x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x82efcaa6859bd8da
li x21, 0x824527b6a0dee814
c.add x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9a6e66c03cd4a00b
li x29, 0xa5705a6545c23870
c.add x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf6b521a5b35c7e33
li x5, 0xb8731f6028b53bdb
c.add x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb114179097cdeb62
li x6, 0xc6da40c4e8d64cde
c.add x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xa8a5ec9e346c3105
li x22, 0xda029555997a38fc
c.add x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4b22d0bf04f989d3
li x18, 0x4377dd0c9198c680
c.add x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc792585dfc5e2508
li x16, 0x4926254bb0f51450
c.add x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9ac2f71093edb517
li x2, 0x87b490a959883e58
c.add x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4bd5efe2a1907dcf
li x27, 0x943e74e78fd13d33
c.add x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x5ae75967a3d94088
li x25, 0x791b49cde346167c
c.add x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9e8e90d0e4842370
li x26, 0xcf08cc21fe27cd7d
c.add x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb0a74de290e9ec5f
li x21, 0xd0014446eb6ec01f
c.add x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x135c305e8f7a1cc8
li x20, 0x64540ab2572de4c7
c.add x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xac0112d3cbd7d896
li x25, 0xdaea0792cb681699
c.add x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc08ee1bfb5990510
li x16, 0xb04d6f6694accaf4
c.add x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xaeba8cfc9121b8e7
li x21, 0x2b65b2ef240563c0
c.add x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa15195f7f72443bc
li x5, 0x3c599eda28c73d9d
c.add x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x26f218430e50d89a
li x22, 0x4eeacaa920df146c
c.add x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xdae23ed583a9e353
li x3, 0x22cfa62ed9a6d84f
c.add x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe456bb527b941f7c
li x26, 0xbd67881fd0914c8e
c.add x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x830dca4b65e32e5e
li x2, 0x0a4b2760fe856ef5
c.add x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x66b4fb9b880fecb1
li x11, 0x51873babced633cf
c.add x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x0cdef44a9435c160
li x3, 0x08783362516e3703
c.add x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd83d2bde3ecb1b9c
li x19, 0xeaeca930ee3dee44
c.add x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x38a84cf07e97b7f8
li x3, 0xf343298a7e925f7e
c.add x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000
li x30, 0xfbf0c0b2dd6a8347
c.add x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001
li x20, 0x625256a5a4c64aac
c.add x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x0000000000000002
li x27, 0x4b65bf15e1550f66
c.add x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000
li x9, 0xc1aa9f7dc5a0b608
c.add x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001
li x9, 0xf625ed1a9a30ed71
c.add x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff
li x25, 0x430d08525335905e
c.add x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe
li x23, 0x9cd22c18b1c972d3
c.add x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0xffffffffffffffff
li x10, 0x00c2df7b10835de1
c.add x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe
li x1, 0x8d2b89db20cd876b
c.add x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x20, 0x5bbc887763ae86f2
li x2, 0x02ebfdb6ce9d899b
c.add x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa
li x12, 0xf0c815d15d3a7ed1
c.add x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555
li x15, 0x0ffd407805ee6e08
c.add x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff
li x8, 0xb42a569afcdff281
c.add x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe
li x22, 0x8fe1fbdf753d21fa
c.add x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000
li x26, 0x47f9941e2c00225d
c.add x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001
li x8, 0xa4c51c7ac01c5bd2
c.add x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0xd8e19d9a4c13fe26
li x1, 0x0000000000000000
c.add x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0x20461fdf93f415fc
li x28, 0x0000000000000001
c.add x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x3fcfbb4faddfed47
li x30, 0x0000000000000002
c.add x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0x4ef63f0a5ae2a3d8
li x7, 0x8000000000000000
c.add x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 648)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x16, 0xd89a5c409cf19bdc
li x8, 0x8000000000000001
c.add x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x1, 0x4148ce56500ce3c9
li x6, 0x7fffffffffffffff
c.add x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 664)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x16, 0x5b77a28524b99923
li x14, 0x7ffffffffffffffe
c.add x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x24, 0xf14a849b6686dfe7
li x29, 0xffffffffffffffff
c.add x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 680)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x24, 0x3d5812923af1f4a4
li x18, 0xfffffffffffffffe
c.add x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x16, 0xeda946f317c4c1e9
li x21, 0x5bbc887763ae86f2
c.add x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xff0e29db448548f4
li x19, 0xaaaaaaaaaaaaaaaa
c.add x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x67501128c645585a
li x16, 0x5555555555555555
c.add x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 712)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0x1e8b4e77b532d551
li x2, 0x00000000ffffffff
c.add x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 720)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x3, 0x8938532046d6a384
li x31, 0x00000000fffffffe
c.add x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x6ad5d5c68f297a35
li x14, 0x0000000100000000
c.add x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 736)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x9a00019d0af21960
li x3, 0x0000000100000001
c.add x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x0000000000000000
li x6, 0x0000000000000000
c.add x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x28, 0x0000000000000000
li x9, 0x0000000000000001
c.add x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x8, 0x0000000000000000
li x13, 0x0000000000000002
c.add x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000
li x8, 0x8000000000000000
c.add x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x28, 0x0000000000000000
li x17, 0x8000000000000001
c.add x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000000
li x6, 0x7fffffffffffffff
c.add x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000
li x21, 0x7ffffffffffffffe
c.add x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x22, 0x0000000000000000
li x20, 0xffffffffffffffff
c.add x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000
li x21, 0xfffffffffffffffe
c.add x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000000
li x8, 0x5bbc887763ae86f2
c.add x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000
li x26, 0xaaaaaaaaaaaaaaaa
c.add x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000
li x6, 0x5555555555555555
c.add x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x0000000000000000
li x29, 0x00000000ffffffff
c.add x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000
li x28, 0x00000000fffffffe
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x18, 0x0000000000000000
li x10, 0x0000000100000000
c.add x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x14, 0x0000000000000000
li x17, 0x0000000100000001
c.add x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x23, 0x0000000000000001
li x31, 0x0000000000000000
c.add x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x0000000000000001
li x16, 0x0000000000000001
c.add x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x0000000000000001
li x9, 0x0000000000000002
c.add x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x30, 0x0000000000000001
li x29, 0x8000000000000000
c.add x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x10, 0x0000000000000001
li x14, 0x8000000000000001
c.add x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000001
li x24, 0x7fffffffffffffff
c.add x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000001
li x27, 0x7ffffffffffffffe
c.add x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001
li x18, 0xffffffffffffffff
c.add x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001
li x26, 0xfffffffffffffffe
c.add x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x15, 0x0000000000000001
li x24, 0x5bbc887763ae86f2
c.add x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001
li x16, 0xaaaaaaaaaaaaaaaa
c.add x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x6, 0x0000000000000001
li x14, 0x5555555555555555
c.add x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x0000000000000001
li x18, 0x00000000ffffffff
c.add x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x19, 0x0000000000000001
li x13, 0x00000000fffffffe
c.add x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x7, 0x0000000000000001
li x21, 0x0000000100000000
c.add x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x16, 0x0000000000000001
li x18, 0x0000000100000001
c.add x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002
li x7, 0x0000000000000000
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x0000000000000002
li x1, 0x0000000000000001
c.add x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002
li x24, 0x0000000000000002
c.add x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x20, 0x0000000000000002
li x7, 0x8000000000000000
c.add x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x28, 0x0000000000000002
li x24, 0x8000000000000001
c.add x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000000000002
li x3, 0x7fffffffffffffff
c.add x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002
li x18, 0x7ffffffffffffffe
c.add x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000002
li x7, 0xffffffffffffffff
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000002
li x12, 0xfffffffffffffffe
c.add x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000002
li x3, 0x5bbc887763ae86f2
c.add x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000000000002
li x28, 0xaaaaaaaaaaaaaaaa
c.add x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002
li x15, 0x5555555555555555
c.add x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x0000000000000002
li x29, 0x00000000ffffffff
c.add x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x0000000000000002
li x5, 0x00000000fffffffe
c.add x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x8, 0x0000000000000002
li x26, 0x0000000100000000
c.add x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x25, 0x0000000000000002
li x17, 0x0000000100000001
c.add x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x15, 0x8000000000000000
li x19, 0x0000000000000000
c.add x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x8000000000000000
li x8, 0x0000000000000001
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x24, 0x8000000000000000
li x1, 0x0000000000000002
c.add x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x24, 0x8000000000000000
li x26, 0x8000000000000000
c.add x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x6, 0x8000000000000000
li x7, 0x8000000000000001
c.add x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000
li x21, 0x7fffffffffffffff
c.add x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000000
li x16, 0x7ffffffffffffffe
c.add x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000000
li x7, 0xffffffffffffffff
c.add x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x28, 0x8000000000000000
li x8, 0xfffffffffffffffe
c.add x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x17, 0x8000000000000000
li x16, 0x5bbc887763ae86f2
c.add x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000000
li x18, 0xaaaaaaaaaaaaaaaa
c.add x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x11, 0x8000000000000000
li x27, 0x5555555555555555
c.add x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x2, 0x8000000000000000
li x7, 0x00000000ffffffff
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x9, 0x8000000000000000
li x16, 0x00000000fffffffe
c.add x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000
li x16, 0x0000000100000000
c.add x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x31, 0x8000000000000000
li x23, 0x0000000100000001
c.add x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x3, 0x8000000000000001
li x25, 0x0000000000000000
c.add x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001
li x30, 0x0000000000000001
c.add x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x20, 0x8000000000000001
li x19, 0x0000000000000002
c.add x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001
li x12, 0x8000000000000000
c.add x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001
li x27, 0x8000000000000001
c.add x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x15, 0x8000000000000001
li x26, 0x7fffffffffffffff
c.add x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x10, 0x8000000000000001
li x15, 0x7ffffffffffffffe
c.add x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000001
li x11, 0xffffffffffffffff
c.add x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000001
li x15, 0xfffffffffffffffe
c.add x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000001
li x24, 0x5bbc887763ae86f2
c.add x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x8000000000000001
li x24, 0xaaaaaaaaaaaaaaaa
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001
li x18, 0x5555555555555555
c.add x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x5, 0x8000000000000001
li x30, 0x00000000ffffffff
c.add x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x3, 0x8000000000000001
li x16, 0x00000000fffffffe
c.add x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x13, 0x8000000000000001
li x31, 0x0000000100000000
c.add x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x17, 0x8000000000000001
li x13, 0x0000000100000001
c.add x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x28, 0x7fffffffffffffff
li x12, 0x0000000000000000
c.add x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x15, 0x7fffffffffffffff
li x3, 0x0000000000000001
c.add x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x26, 0x7fffffffffffffff
li x6, 0x0000000000000002
c.add x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x13, 0x7fffffffffffffff
li x23, 0x8000000000000000
c.add x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7fffffffffffffff
li x24, 0x8000000000000001
c.add x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff
li x8, 0x7fffffffffffffff
c.add x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x7fffffffffffffff
li x8, 0x7ffffffffffffffe
c.add x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0x7fffffffffffffff
li x26, 0xffffffffffffffff
c.add x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0x7fffffffffffffff
li x25, 0xfffffffffffffffe
c.add x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0x7fffffffffffffff
li x17, 0x5bbc887763ae86f2
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7fffffffffffffff
li x6, 0xaaaaaaaaaaaaaaaa
c.add x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x12, 0x7fffffffffffffff
li x20, 0x5555555555555555
c.add x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x8, 0x7fffffffffffffff
li x27, 0x00000000ffffffff
c.add x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x17, 0x7fffffffffffffff
li x12, 0x00000000fffffffe
c.add x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x5, 0x7fffffffffffffff
li x31, 0x0000000100000000
c.add x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x22, 0x7fffffffffffffff
li x30, 0x0000000100000001
c.add x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe
li x17, 0x0000000000000000
c.add x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x7ffffffffffffffe
li x2, 0x0000000000000001
c.add x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x7ffffffffffffffe
li x8, 0x0000000000000002
c.add x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0x7ffffffffffffffe
li x20, 0x8000000000000000
c.add x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x7ffffffffffffffe
li x31, 0x8000000000000001
c.add x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x7ffffffffffffffe
li x3, 0x7fffffffffffffff
c.add x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe
li x5, 0x7ffffffffffffffe
c.add x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0x7ffffffffffffffe
li x11, 0xffffffffffffffff
c.add x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x7ffffffffffffffe
li x1, 0xfffffffffffffffe
c.add x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x7ffffffffffffffe
li x23, 0x5bbc887763ae86f2
c.add x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x7ffffffffffffffe
li x6, 0xaaaaaaaaaaaaaaaa
c.add x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x14, 0x7ffffffffffffffe
li x25, 0x5555555555555555
c.add x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x25, 0x7ffffffffffffffe
li x10, 0x00000000ffffffff
c.add x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x1, 0x7ffffffffffffffe
li x20, 0x00000000fffffffe
c.add x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe
li x2, 0x0000000100000000
c.add x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x20, 0x7ffffffffffffffe
li x11, 0x0000000100000001
c.add x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff
li x31, 0x0000000000000000
c.add x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x1, 0xffffffffffffffff
li x14, 0x0000000000000001
c.add x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x31, 0xffffffffffffffff
li x15, 0x0000000000000002
c.add x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff
li x7, 0x8000000000000000
c.add x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x21, 0xffffffffffffffff
li x31, 0x8000000000000001
c.add x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0xffffffffffffffff
li x6, 0x7fffffffffffffff
c.add x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0xffffffffffffffff
li x2, 0x7ffffffffffffffe
c.add x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0xffffffffffffffff
li x18, 0xffffffffffffffff
c.add x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff
li x19, 0xfffffffffffffffe
c.add x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0xffffffffffffffff
li x6, 0x5bbc887763ae86f2
c.add x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xffffffffffffffff
li x26, 0xaaaaaaaaaaaaaaaa
c.add x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x27, 0xffffffffffffffff
li x3, 0x5555555555555555
c.add x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff
li x7, 0x00000000ffffffff
c.add x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x30, 0xffffffffffffffff
li x9, 0x00000000fffffffe
c.add x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x10, 0xffffffffffffffff
li x17, 0x0000000100000000
c.add x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x22, 0xffffffffffffffff
li x11, 0x0000000100000001
c.add x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x18, 0xfffffffffffffffe
li x21, 0x0000000000000000
c.add x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe
li x24, 0x0000000000000001
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x22, 0xfffffffffffffffe
li x13, 0x0000000000000002
c.add x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x20, 0xfffffffffffffffe
li x3, 0x8000000000000000
c.add x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x1, 0xfffffffffffffffe
li x14, 0x8000000000000001
c.add x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xfffffffffffffffe
li x12, 0x7fffffffffffffff
c.add x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe
li x3, 0x7ffffffffffffffe
c.add x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0xfffffffffffffffe
li x8, 0xffffffffffffffff
c.add x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe
li x10, 0xfffffffffffffffe
c.add x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe
li x13, 0x5bbc887763ae86f2
c.add x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xfffffffffffffffe
li x13, 0xaaaaaaaaaaaaaaaa
c.add x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe
li x13, 0x5555555555555555
c.add x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x6, 0xfffffffffffffffe
li x22, 0x00000000ffffffff
c.add x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe
li x13, 0x00000000fffffffe
c.add x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x30, 0xfffffffffffffffe
li x19, 0x0000000100000000
c.add x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x25, 0xfffffffffffffffe
li x31, 0x0000000100000001
c.add x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x10, 0x5bbc887763ae86f2
li x30, 0x0000000000000000
c.add x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2
li x24, 0x0000000000000001
c.add x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x26, 0x5bbc887763ae86f2
li x21, 0x0000000000000002
c.add x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x6, 0x5bbc887763ae86f2
li x18, 0x8000000000000000
c.add x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x27, 0x5bbc887763ae86f2
li x29, 0x8000000000000001
c.add x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x9, 0x5bbc887763ae86f2
li x5, 0x7fffffffffffffff
c.add x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x13, 0x5bbc887763ae86f2
li x10, 0x7ffffffffffffffe
c.add x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2
li x10, 0xffffffffffffffff
c.add x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x21, 0x5bbc887763ae86f2
li x11, 0xfffffffffffffffe
c.add x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2
li x30, 0x5bbc887763ae86f2
c.add x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5bbc887763ae86f2
li x10, 0xaaaaaaaaaaaaaaaa
c.add x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2
li x9, 0x5555555555555555
c.add x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x16, 0x5bbc887763ae86f2
li x25, 0x00000000ffffffff
c.add x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x16, 0x5bbc887763ae86f2
li x2, 0x00000000fffffffe
c.add x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2
li x29, 0x0000000100000000
c.add x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x12, 0x5bbc887763ae86f2
li x13, 0x0000000100000001
c.add x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x13, 0xaaaaaaaaaaaaaaaa
li x21, 0x0000000000000000
c.add x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x26, 0xaaaaaaaaaaaaaaaa
li x7, 0x0000000000000001
c.add x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaaaaaaaaaa
li x22, 0x0000000000000002
c.add x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x12, 0xaaaaaaaaaaaaaaaa
li x30, 0x8000000000000000
c.add x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x18, 0xaaaaaaaaaaaaaaaa
li x21, 0x8000000000000001
c.add x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa
li x12, 0x7fffffffffffffff
c.add x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa
li x8, 0x7ffffffffffffffe
c.add x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x19, 0xaaaaaaaaaaaaaaaa
li x11, 0xffffffffffffffff
c.add x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa
li x21, 0xfffffffffffffffe
c.add x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x17, 0xaaaaaaaaaaaaaaaa
li x15, 0x5bbc887763ae86f2
c.add x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa
li x12, 0xaaaaaaaaaaaaaaaa
c.add x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xaaaaaaaaaaaaaaaa
li x24, 0x5555555555555555
c.add x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaaaaaaaaaa
li x26, 0x00000000ffffffff
c.add x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xaaaaaaaaaaaaaaaa
li x16, 0x00000000fffffffe
c.add x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x30, 0xaaaaaaaaaaaaaaaa
li x17, 0x0000000100000000
c.add x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa
li x17, 0x0000000100000001
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x9, 0x5555555555555555
li x27, 0x0000000000000000
c.add x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x5555555555555555
li x14, 0x0000000000000001
c.add x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x31, 0x5555555555555555
li x30, 0x0000000000000002
c.add x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x24, 0x5555555555555555
li x3, 0x8000000000000000
c.add x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x5555555555555555
li x5, 0x8000000000000001
c.add x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x26, 0x5555555555555555
li x19, 0x7fffffffffffffff
c.add x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555
li x8, 0x7ffffffffffffffe
c.add x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x28, 0x5555555555555555
li x30, 0xffffffffffffffff
c.add x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x7, 0x5555555555555555
li x15, 0xfffffffffffffffe
c.add x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x9, 0x5555555555555555
li x17, 0x5bbc887763ae86f2
c.add x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x5555555555555555
li x18, 0xaaaaaaaaaaaaaaaa
c.add x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x18, 0x5555555555555555
li x7, 0x5555555555555555
c.add x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x30, 0x5555555555555555
li x26, 0x00000000ffffffff
c.add x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x31, 0x5555555555555555
li x17, 0x00000000fffffffe
c.add x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x24, 0x5555555555555555
li x5, 0x0000000100000000
c.add x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x29, 0x5555555555555555
li x9, 0x0000000100000001
c.add x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x7, 0x00000000ffffffff
li x23, 0x0000000000000000
c.add x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff
li x22, 0x0000000000000001
c.add x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x24, 0x00000000ffffffff
li x21, 0x0000000000000002
c.add x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x1, 0x00000000ffffffff
li x13, 0x8000000000000000
c.add x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x9, 0x00000000ffffffff
li x20, 0x8000000000000001
c.add x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x8, 0x00000000ffffffff
li x1, 0x7fffffffffffffff
c.add x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x19, 0x00000000ffffffff
li x31, 0x7ffffffffffffffe
c.add x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff
li x15, 0xffffffffffffffff
c.add x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x29, 0x00000000ffffffff
li x10, 0xfffffffffffffffe
c.add x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0x00000000ffffffff
li x3, 0x5bbc887763ae86f2
c.add x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x00000000ffffffff
li x23, 0xaaaaaaaaaaaaaaaa
c.add x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x15, 0x00000000ffffffff
li x30, 0x5555555555555555
c.add x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x00000000ffffffff
li x22, 0x00000000ffffffff
c.add x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0x00000000ffffffff
li x18, 0x00000000fffffffe
c.add x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff
li x8, 0x0000000100000000
c.add x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x26, 0x00000000ffffffff
li x2, 0x0000000100000001
c.add x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x00000000fffffffe
li x11, 0x0000000000000000
c.add x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x21, 0x00000000fffffffe
li x6, 0x0000000000000001
c.add x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x14, 0x00000000fffffffe
li x31, 0x0000000000000002
c.add x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x18, 0x00000000fffffffe
li x8, 0x8000000000000000
c.add x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x9, 0x00000000fffffffe
li x28, 0x8000000000000001
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe
li x27, 0x7fffffffffffffff
c.add x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x00000000fffffffe
li x3, 0x7ffffffffffffffe
c.add x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x23, 0x00000000fffffffe
li x26, 0xffffffffffffffff
c.add x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x28, 0x00000000fffffffe
li x26, 0xfffffffffffffffe
c.add x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe
li x5, 0x5bbc887763ae86f2
c.add x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x00000000fffffffe
li x22, 0xaaaaaaaaaaaaaaaa
c.add x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x31, 0x00000000fffffffe
li x28, 0x5555555555555555
c.add x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x18, 0x00000000fffffffe
li x17, 0x00000000ffffffff
c.add x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0x00000000fffffffe
li x10, 0x00000000fffffffe
c.add x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x00000000fffffffe
li x22, 0x0000000100000000
c.add x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x19, 0x00000000fffffffe
li x2, 0x0000000100000001
c.add x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x7, 0x0000000100000000
li x10, 0x0000000000000000
c.add x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x0000000100000000
li x10, 0x0000000000000001
c.add x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x16, 0x0000000100000000
li x23, 0x0000000000000002
c.add x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x16, 0x0000000100000000
li x24, 0x8000000000000000
c.add x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x29, 0x0000000100000000
li x28, 0x8000000000000001
c.add x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000000
li x19, 0x7fffffffffffffff
c.add x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000000
li x6, 0x7ffffffffffffffe
c.add x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x2, 0x0000000100000000
li x11, 0xffffffffffffffff
c.add x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000100000000
li x28, 0xfffffffffffffffe
c.add x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000000
li x2, 0x5bbc887763ae86f2
c.add x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000100000000
li x20, 0xaaaaaaaaaaaaaaaa
c.add x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x24, 0x0000000100000000
li x18, 0x5555555555555555
c.add x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x9, 0x0000000100000000
li x21, 0x00000000ffffffff
c.add x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x31, 0x0000000100000000
li x26, 0x00000000fffffffe
c.add x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x7, 0x0000000100000000
li x22, 0x0000000100000000
c.add x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x14, 0x0000000100000000
li x7, 0x0000000100000001
c.add x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x16, 0x0000000100000001
li x27, 0x0000000000000000
c.add x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001
li x30, 0x0000000000000001
c.add x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001
li x8, 0x0000000000000002
c.add x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001
li x14, 0x8000000000000000
c.add x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x24, 0x0000000100000001
li x29, 0x8000000000000001
c.add x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000001
li x31, 0x7fffffffffffffff
c.add x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000001
li x31, 0x7ffffffffffffffe
c.add x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001
li x17, 0xffffffffffffffff
c.add x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000100000001
li x27, 0xfffffffffffffffe
c.add x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001
li x14, 0x5bbc887763ae86f2
c.add x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000100000001
li x14, 0xaaaaaaaaaaaaaaaa
c.add x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x8, 0x0000000100000001
li x6, 0x5555555555555555
c.add x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x0000000100000001
li x27, 0x00000000ffffffff
c.add x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0x0000000100000001
li x15, 0x00000000fffffffe
c.add x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x12, 0x0000000100000001
li x23, 0x0000000100000000
c.add x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001
li x9, 0x0000000100000001
c.add x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xf8ed0bd39e419c76
li x1, 0xd013df27c023aa33
c.add x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xc9830032acd2b777
li x2, 0x6b4dc24ce36ebd19
c.add x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9534135858283b6e
li x3, 0xd24f6d5e906e3477
c.add x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2e9b646e534ddf3a
li x4, 0x5ef9d7d87d1fec6c
c.add x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1024)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7b50f87004d42263
li x5, 0x1c0a57228b3eaa9f
c.add x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1032)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8d19bf73fb5a7b8f
li x6, 0x8b7486c7e23eacd7
c.add x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1040)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xab549f1f3022c2a3
li x7, 0x46331f9c27aa2967
c.add x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1048)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x094471aedd55844b
li x8, 0x57a2d41179806fcd
c.add x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xadd819ec047dbccc
li x9, 0xa1b04dc6d547f972
c.add x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1064)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x48a742a226859d91
li x10, 0x352a5c2100e412d9
c.add x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1072)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x05bb9ec0094bc239
li x11, 0x17eb45afc662409c
c.add x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1080)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xa052204a45694fa9
li x12, 0x8560ff7df1973587
c.add x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x1cb744e1e9946d01
li x13, 0x5c73a7f0412fe33c
c.add x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x3b1ee36ccfbf6d38
li x14, 0xe3edea6208ace4a0
c.add x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x14111f82b294f8fd
li x15, 0xa646887379a00368
c.add x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x430864d04d097d35
li x16, 0x93595f0937f53f8d
c.add x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xa4ee3e1327e041c9
li x17, 0xcb1ac877fcc7b4e4
c.add x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0xb930bfa0dc4a4e54
li x18, 0xbc2aae94b7da8808
c.add x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xcfe2887ffcce22bd
li x19, 0x651c4b946f43f707
c.add x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x9a6043626b6346ce
li x20, 0x5c13f9b9a92090f0
c.add x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x4b3268779fc2982f
li x21, 0xd970e69610589fff
c.add x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x9dad66918c8050c8
li x22, 0xf4bcb196acd081cd
c.add x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xfe4ccb40ba797802
li x23, 0x78ef1bf272b1eb1c
c.add x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x5dd3fc83285c1a74
li x24, 0x4c3df73f0899aebd
c.add x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x58e35bb75e257057
li x25, 0x1f4dd7c228e440a6
c.add x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x7f0b90bca861e22e
li x26, 0x3099fb438b7086f2
c.add x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xe8059f212d92d7d1
li x27, 0x057a4d8943734710
c.add x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xd83289a7598e22ad
li x28, 0x8fa44a5fed161724
c.add x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x1a26b28fc85ea2a7
li x29, 0x938a4da9b94d48c0
c.add x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x3fefaa8a2594652b
li x30, 0x6d25c96100f6d69b
c.add x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xa7a2497cb865e8fa
li x31, 0x912689a68e5ebba7
c.add x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

.EQU SIGSIZE,3048


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
