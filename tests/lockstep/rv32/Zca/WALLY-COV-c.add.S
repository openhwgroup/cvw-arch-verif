///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.add.S
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
li x5, 0x97e0ffbd
li x1, 0x30d2189e
c.add x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x67032673
li x2, 0x59907445
c.add x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0xaf0d1661
li x3, 0x4c1c15dd
c.add x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x7f44fde9
li x4, 0xc0afd8d8
c.add x23, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 12)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xd355793c
li x5, 0xe12a3b14
c.add x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 16)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x8171cb2f
li x6, 0xce80e5f0
c.add x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 20)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xe6dc4058
li x7, 0x9161d929
c.add x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 24)

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0xa4162923
li x8, 0xb41b6437
c.add x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0x86e7b601
li x9, 0xc00e25a6
c.add x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 32)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x0af5d609
li x10, 0x61aa93fe
c.add x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 36)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x4fbc5b7c
li x11, 0x6255e669
c.add x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0xd718f705
li x12, 0xb61638de
c.add x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0x2de247fb
li x13, 0x6536e1d0
c.add x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0xf158cf94
li x14, 0x884bad5b
c.add x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 52)

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0xee06b02e
li x15, 0xea1b751d
c.add x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0x8af2bc2d
li x16, 0x42f3e647
c.add x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0xff9acf2c
li x17, 0xa9ec7525
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xc09042f3
li x18, 0x25090acb
c.add x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x9e2f4494
li x19, 0x47929c12
c.add x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x9cb9d99d
li x20, 0x97c43b5c
c.add x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0x208d77e9
li x21, 0x892b3b45
c.add x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rs2 (Test source rs2 = x22)
li x18, 0x40e5e815
li x22, 0x94c270d2
c.add x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0xbb011272
li x23, 0xa6bde8a4
c.add x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x2cc1a129
li x24, 0xced5e2b4
c.add x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 92)

# Testcase cp_rs2 (Test source rs2 = x25)
li x21, 0x97a30969
li x25, 0x1ff2aef4
c.add x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0x9e28dd96
li x26, 0xb44ebfbb
c.add x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x34df958f
li x27, 0xc831fd2f
c.add x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs2 (Test source rs2 = x28)
li x17, 0xb57da318
li x28, 0xe3c6504b
c.add x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 108)

# Testcase cp_rs2 (Test source rs2 = x29)
li x7, 0x6226ab9a
li x29, 0xe186b924
c.add x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x0ad77286
li x30, 0x5f8c3020
c.add x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 116)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x4b5f539d
li x31, 0x318e1389
c.add x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xf73b9aa1
li x8, 0x225b3095
c.add x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 124)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc1bc8209
li x7, 0x8a162b49
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa5df0805
li x2, 0x3f6daf81
c.add x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 132)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x18cc56cf
li x16, 0x9fab85f9
c.add x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 136)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfdd45708
li x29, 0x6672f330
c.add x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 140)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc218b802
li x26, 0x6357d995
c.add x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x647a9bd6
li x23, 0xba078511
c.add x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 148)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x4ebe79c9
li x14, 0x3f9e0ef9
c.add x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x02178263
li x18, 0xa82e9834
c.add x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x31a35de4
li x31, 0xa68a6bdb
c.add x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x1f3ba705
li x17, 0x824527b6
c.add x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb8a3480c
li x29, 0x2e0a0c32
c.add x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa5cf37a7
li x19, 0x67647402
c.add x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xdfe41300
li x20, 0x77610247
c.add x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc6da40c4
li x21, 0xf624dd41
c.add x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x6fbf0529
li x30, 0x8b1bb32d
c.add x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa4c9394b
li x19, 0x1c9915db
c.add x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 188)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf779432a
li x10, 0x83f32f6d
c.add x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x354144cb
li x22, 0x87b490a9
c.add x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 196)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x69cdc162
li x6, 0xd3bea5ac
c.add x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xaf5ecba8
li x17, 0x53aeb933
c.add x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 204)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xc66afd0f
li x12, 0x791b49cd
c.add x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7d492601
li x8, 0x9e8e90d0
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 212)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x16220138
li x26, 0x55c9cbed
c.add x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x20b4e3b9
li x7, 0x135c305e
c.add x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3978ace5
li x11, 0xc271ed83
c.add x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x7a4ed68f
li x26, 0xb1cdc1a4
c.add x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 228)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa7ad79e6
li x27, 0xb04d6f66
c.add x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2cda0a16
li x10, 0x4d07049e
c.add x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 236)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa15195f7
li x3, 0x28c73d9d
c.add x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xa2832151
li x6, 0x25540f0a
c.add x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 244)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000
li x30, 0xfbf0c0b2
c.add x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x25, 0x00000001
li x8, 0x99f757dc
c.add x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x00000002
li x26, 0xe6696bf1
c.add x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000
li x26, 0xc1aa9f7d
c.add x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001
li x15, 0xf1263a81
c.add x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff
li x6, 0xf34ed70f
c.add x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x31, 0x7ffffffe
li x16, 0xfbed47de
c.add x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0xffffffff
li x26, 0xb7600f53
c.add x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xfffffffe
li x11, 0x26bbf001
c.add x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872
li x31, 0x00c2df7b
c.add x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa
li x1, 0x78ebdef6
c.add x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555
li x22, 0xc5a7b1e1
c.add x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 292)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x10, 0x9a304bf8
li x1, 0x00000000
c.add x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x1227d86e
li x2, 0x00000001
c.add x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 300)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x14c7e8c3
li x5, 0x00000002
c.add x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x5080a457
li x23, 0x80000000
c.add x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 308)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x27, 0x3fcfbb4f
li x26, 0x80000001
c.add x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x30, 0x67db3aa7
li x7, 0x7fffffff
c.add x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 316)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0xe037f0f7
li x2, 0x7ffffffe
c.add x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xf777bb0a
li x23, 0xffffffff
c.add x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 324)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0x4148ce56
li x1, 0xfffffffe
c.add x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x27, 0xe21f8bd5
li x19, 0x5bbc8872
c.add x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 332)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x9, 0x124f1ff1
li x12, 0xaaaaaaaa
c.add x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x26, 0x57e877f9
li x23, 0x55555555
c.add x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 340)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x00000000
li x6, 0x00000000
c.add x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000
li x24, 0x00000001
c.add x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x9, 0x00000000
li x21, 0x00000002
c.add x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x3, 0x00000000
li x29, 0x80000000
c.add x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 356)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x11, 0x00000000
li x6, 0x80000001
c.add x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x10, 0x00000000
li x20, 0x7fffffff
c.add x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 364)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0x00000000
li x26, 0x7ffffffe
c.add x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x00000000
li x23, 0xffffffff
c.add x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 372)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x00000000
li x28, 0xfffffffe
c.add x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x6, 0x00000000
li x28, 0x5bbc8872
c.add x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 380)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x27, 0x00000000
li x31, 0xaaaaaaaa
c.add x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x11, 0x00000000
li x23, 0x55555555
c.add x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x27, 0x00000001
li x8, 0x00000000
c.add x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x00000001
li x20, 0x00000001
c.add x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 396)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x00000001
li x31, 0x00000002
c.add x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x00000001
li x12, 0x80000000
c.add x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 404)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x18, 0x00000001
li x9, 0x80000001
c.add x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x23, 0x00000001
li x11, 0x7fffffff
c.add x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 412)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x9, 0x00000001
li x25, 0x7ffffffe
c.add x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x22, 0x00000001
li x9, 0xffffffff
c.add x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 420)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x00000001
li x8, 0xfffffffe
c.add x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x12, 0x00000001
li x29, 0x5bbc8872
c.add x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 428)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x25, 0x00000001
li x8, 0xaaaaaaaa
c.add x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001
li x28, 0x55555555
c.add x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 436)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x29, 0x00000002
li x13, 0x00000000
c.add x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x30, 0x00000002
li x25, 0x00000001
c.add x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 444)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x00000002
li x14, 0x00000002
c.add x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x2, 0x00000002
li x7, 0x80000000
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 452)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x17, 0x00000002
li x22, 0x80000001
c.add x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x21, 0x00000002
li x29, 0x7fffffff
c.add x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 460)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x9, 0x00000002
li x12, 0x7ffffffe
c.add x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x22, 0x00000002
li x1, 0xffffffff
c.add x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 468)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x9, 0x00000002
li x21, 0xfffffffe
c.add x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x29, 0x00000002
li x15, 0x5bbc8872
c.add x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x3, 0x00000002
li x26, 0xaaaaaaaa
c.add x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x20, 0x00000002
li x31, 0x55555555
c.add x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x31, 0x80000000
li x30, 0x00000000
c.add x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x24, 0x80000000
li x6, 0x00000001
c.add x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x80000000
li x5, 0x00000002
c.add x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x80000000
li x15, 0x80000000
c.add x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x80000000
li x27, 0x80000001
c.add x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x15, 0x80000000
li x29, 0x7fffffff
c.add x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x29, 0x80000000
li x27, 0x7ffffffe
c.add x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x26, 0x80000000
li x13, 0xffffffff
c.add x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x30, 0x80000000
li x18, 0xfffffffe
c.add x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x18, 0x80000000
li x22, 0x5bbc8872
c.add x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x11, 0x80000000
li x16, 0xaaaaaaaa
c.add x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x20, 0x80000000
li x10, 0x55555555
c.add x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x26, 0x80000001
li x19, 0x00000000
c.add x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x17, 0x80000001
li x10, 0x00000001
c.add x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x18, 0x80000001
li x14, 0x00000002
c.add x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x23, 0x80000001
li x8, 0x80000000
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x22, 0x80000001
li x1, 0x80000001
c.add x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x22, 0x80000001
li x24, 0x7fffffff
c.add x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x20, 0x80000001
li x7, 0x7ffffffe
c.add x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x10, 0x80000001
li x27, 0xffffffff
c.add x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x25, 0x80000001
li x5, 0xfffffffe
c.add x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001
li x22, 0x5bbc8872
c.add x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x80000001
li x19, 0xaaaaaaaa
c.add x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x10, 0x80000001
li x16, 0x55555555
c.add x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x17, 0x7fffffff
li x3, 0x00000000
c.add x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff
li x8, 0x00000001
c.add x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x31, 0x7fffffff
li x5, 0x00000002
c.add x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x16, 0x7fffffff
li x30, 0x80000000
c.add x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x5, 0x7fffffff
li x25, 0x80000001
c.add x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x9, 0x7fffffff
li x19, 0x7fffffff
c.add x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x8, 0x7fffffff
li x18, 0x7ffffffe
c.add x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x19, 0x7fffffff
li x12, 0xffffffff
c.add x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x14, 0x7fffffff
li x5, 0xfffffffe
c.add x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x28, 0x7fffffff
li x25, 0x5bbc8872
c.add x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x23, 0x7fffffff
li x9, 0xaaaaaaaa
c.add x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x26, 0x7fffffff
li x19, 0x55555555
c.add x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x29, 0x7ffffffe
li x28, 0x00000000
c.add x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x2, 0x7ffffffe
li x15, 0x00000001
c.add x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x23, 0x7ffffffe
li x8, 0x00000002
c.add x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe
li x28, 0x80000000
c.add x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x27, 0x7ffffffe
li x24, 0x80000001
c.add x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x15, 0x7ffffffe
li x29, 0x7fffffff
c.add x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe
li x17, 0x7ffffffe
c.add x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x2, 0x7ffffffe
li x14, 0xffffffff
c.add x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x19, 0x7ffffffe
li x20, 0xfffffffe
c.add x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x12, 0x7ffffffe
li x16, 0x5bbc8872
c.add x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x28, 0x7ffffffe
li x10, 0xaaaaaaaa
c.add x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x12, 0x7ffffffe
li x20, 0x55555555
c.add x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0xffffffff
li x17, 0x00000000
c.add x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xffffffff
li x29, 0x00000001
c.add x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0xffffffff
li x28, 0x00000002
c.add x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x1, 0xffffffff
li x27, 0x80000000
c.add x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x12, 0xffffffff
li x17, 0x80000001
c.add x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x18, 0xffffffff
li x25, 0x7fffffff
c.add x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x2, 0xffffffff
li x7, 0x7ffffffe
c.add x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0xffffffff
li x15, 0xffffffff
c.add x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0xffffffff
li x29, 0xfffffffe
c.add x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x8, 0xffffffff
li x24, 0x5bbc8872
c.add x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x2, 0xffffffff
li x15, 0xaaaaaaaa
c.add x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x7, 0xffffffff
li x23, 0x55555555
c.add x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0xfffffffe
li x13, 0x00000000
c.add x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe
li x22, 0x00000001
c.add x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0xfffffffe
li x17, 0x00000002
c.add x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x9, 0xfffffffe
li x7, 0x80000000
c.add x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x17, 0xfffffffe
li x12, 0x80000001
c.add x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x2, 0xfffffffe
li x21, 0x7fffffff
c.add x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x26, 0xfffffffe
li x25, 0x7ffffffe
c.add x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xfffffffe
li x2, 0xffffffff
c.add x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x19, 0xfffffffe
li x29, 0xfffffffe
c.add x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x10, 0xfffffffe
li x25, 0x5bbc8872
c.add x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x28, 0xfffffffe
li x31, 0xaaaaaaaa
c.add x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x6, 0xfffffffe
li x31, 0x55555555
c.add x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x28, 0x5bbc8872
li x1, 0x00000000
c.add x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x13, 0x5bbc8872
li x24, 0x00000001
c.add x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x5, 0x5bbc8872
li x8, 0x00000002
c.add x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872
li x30, 0x80000000
c.add x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x29, 0x5bbc8872
li x18, 0x80000001
c.add x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872
li x15, 0x7fffffff
c.add x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x20, 0x5bbc8872
li x11, 0x7ffffffe
c.add x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x21, 0x5bbc8872
li x1, 0xffffffff
c.add x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x11, 0x5bbc8872
li x8, 0xfffffffe
c.add x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x17, 0x5bbc8872
li x12, 0x5bbc8872
c.add x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x8, 0x5bbc8872
li x31, 0xaaaaaaaa
c.add x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x20, 0x5bbc8872
li x31, 0x55555555
c.add x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x3, 0xaaaaaaaa
li x9, 0x00000000
c.add x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0xaaaaaaaa
li x15, 0x00000001
c.add x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaa
li x5, 0x00000002
c.add x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x25, 0xaaaaaaaa
li x12, 0x80000000
c.add x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x25, 0xaaaaaaaa
li x17, 0x80000001
c.add x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x2, 0xaaaaaaaa
li x19, 0x7fffffff
c.add x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x3, 0xaaaaaaaa
li x22, 0x7ffffffe
c.add x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaa
li x14, 0xffffffff
c.add x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x13, 0xaaaaaaaa
li x5, 0xfffffffe
c.add x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x27, 0xaaaaaaaa
li x28, 0x5bbc8872
c.add x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x31, 0xaaaaaaaa
li x17, 0xaaaaaaaa
c.add x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x13, 0xaaaaaaaa
li x2, 0x55555555
c.add x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x3, 0x55555555
li x6, 0x00000000
c.add x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x20, 0x55555555
li x17, 0x00000001
c.add x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0x55555555
li x11, 0x00000002
c.add x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555
li x17, 0x80000000
c.add x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x26, 0x55555555
li x5, 0x80000001
c.add x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x5, 0x55555555
li x22, 0x7fffffff
c.add x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555
li x12, 0x7ffffffe
c.add x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x21, 0x55555555
li x24, 0xffffffff
c.add x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x31, 0x55555555
li x14, 0xfffffffe
c.add x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x29, 0x55555555
li x8, 0x5bbc8872
c.add x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x14, 0x55555555
li x24, 0xaaaaaaaa
c.add x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x3, 0x55555555
li x31, 0x55555555
c.add x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 916)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xd013df27
li x1, 0x3438ad7e
c.add x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x4104a06f
li x2, 0xd24f6d5e
c.add x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 924)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x696c2156
li x3, 0x3d3b8acd
c.add x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1c0a5722
li x4, 0x80124990
c.add x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 932)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3a25965c
li x5, 0xf7accd90
c.add x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 936)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf17583c1
li x6, 0xf3eeefa6
c.add x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 940)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xac4bb441
li x7, 0x27aa2967
c.add x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xdc996f58
li x8, 0xf3a0f5ae
c.add x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 948)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x1aa397e7
li x9, 0x8eee5a5a
c.add x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xa1b04dc6
li x10, 0x3dec98a2
c.add x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 956)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x26859d91
li x11, 0x00e412d9
c.add x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 960)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbd38a8a6
li x12, 0x094bc239
c.add x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 964)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4caf8ed5
li x13, 0xb2b7b7ca
c.add x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x2c164718
li x14, 0x609a9831
c.add x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 972)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x1b69706d
li x15, 0x1cb744e1
c.add x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x804f93ed
li x16, 0xcfbf6d38
c.add x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 980)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x2b2c27b7
li x17, 0x4314b715
c.add x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x05432acb
li x18, 0x91ec2fe4
c.add x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 988)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x4282f7cf
li x19, 0xeed9ec4b
c.add x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 992)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xca01344a
li x20, 0x740f0831
c.add x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 996)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xd1313ab0
li x21, 0xb930bfa0
c.add x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x37cf680c
li x22, 0xb7d9cea2
c.add x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1004)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x076d6b05
li x23, 0x651c4b94
c.add x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xa92090f0
li x24, 0x1c072fb4
c.add x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1012)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x4b326877
li x25, 0xe01bf8b4
c.add x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0xd0e23628
li x26, 0xd8bf564d
c.add x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1020)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xbd365af4
li x27, 0xaae91576
c.add x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1024)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0xfe4ccb40
li x28, 0x72b1eb1c
c.add x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1028)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xa2079ef2
li x29, 0xaa7f7924
c.add x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xf2447bdc
li x30, 0x5dd3fc83
c.add x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xc4a875c4
li x31, 0x648bd119
c.add x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

.EQU SIGSIZE,1044


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
