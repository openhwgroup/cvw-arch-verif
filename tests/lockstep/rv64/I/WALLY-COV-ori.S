///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-ori.S
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
li x0, 0x5ff53bbab53eb29f # initialize rs1
ori x31, x0, -118 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8789ecbc02983168 # initialize rs1
ori x29, x1, -1910 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x00c7a22696515377 # initialize rs1
ori x7, x2, -808 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9f80478706c8164d # initialize rs1
ori x11, x3, 462 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x27b6cfe5d49e78bd # initialize rs1
ori x1, x4, -239 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6f03f467afcaf10a # initialize rs1
ori x29, x5, 1121 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4b30dcc4b109e098 # initialize rs1
ori x22, x6, -661 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x68384b70a4ac2098 # initialize rs1
ori x12, x7, -502 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x619777b9e338c278 # initialize rs1
ori x26, x8, 565 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xafd3c877ca663545 # initialize rs1
ori x31, x9, 95 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8426bbe303e47798 # initialize rs1
ori x17, x10, -1209 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3ef1e3a153e36ae8 # initialize rs1
ori x24, x11, -951 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbf4c2b076c95680a # initialize rs1
ori x29, x12, -562 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5779ee6ced97ee59 # initialize rs1
ori x17, x13, 91 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc0ce3ebd1be1dc4c # initialize rs1
ori x8, x14, -253 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc8fcc606e6496019 # initialize rs1
ori x20, x15, -1336 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x75cc59e314b8d11f # initialize rs1
ori x25, x16, 1806 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x26c7da0785397d39 # initialize rs1
ori x22, x17, 1918 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0423c1462e624152 # initialize rs1
ori x15, x18, -529 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xb4ddec663702341b # initialize rs1
ori x22, x19, 1830 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x0e5ee42f19c7dee7 # initialize rs1
ori x14, x20, -836 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x77ff3b4cd18997cb # initialize rs1
ori x9, x21, -824 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0816440e28fc4f90 # initialize rs1
ori x6, x22, 1546 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xad393ccb51d22fce # initialize rs1
ori x30, x23, -1556 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x52d46e2004d718c6 # initialize rs1
ori x20, x24, 2012 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa0761bc807316376 # initialize rs1
ori x9, x25, -91 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x3883872df5b1b9ec # initialize rs1
ori x30, x26, 993 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe95f2d833c3df4c1 # initialize rs1
ori x15, x27, -304 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x171b4ccdbafaa18d # initialize rs1
ori x11, x28, 1548 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x4ba0315216f87953 # initialize rs1
ori x14, x29, 961 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x345567b4880e0ec8 # initialize rs1
ori x2, x30, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x613d5c621fcf6feb # initialize rs1
ori x18, x31, -1700 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 248)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0x29b76327898ad503 # initialize rs1
ori x0, x7, 745 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0xfc287b97474878bb # initialize rs1
ori x1, x10, -162 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x47513ba8dbe4af29 # initialize rs1
ori x2, x10, -1879 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xd69eb2575eb2cd7e # initialize rs1
ori x3, x1, 1041 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xfc25b649386ecbd9 # initialize rs1
ori x4, x18, -1358 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x54778b0d142c3f1d # initialize rs1
ori x5, x6, -2020 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
li x27, 0xd6d9dac126ba68cb # initialize rs1
ori x6, x27, -243 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x23210c2325dc46ec # initialize rs1
ori x7, x4, 711 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x4, 0x9fec7fe7963b659d # initialize rs1
ori x8, x4, -561 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x6f557f714d5a595a # initialize rs1
ori x9, x11, 110 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x852fb77a166568e6 # initialize rs1
ori x10, x1, 52 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xd983b73c4547a823 # initialize rs1
ori x11, x8, -1018 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xd29126d8494f19dd # initialize rs1
ori x12, x11, -815 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x4fb77c3de8ab13a1 # initialize rs1
ori x13, x14, 1695 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0xfa68eb228e73b66f # initialize rs1
ori x14, x19, -1012 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0xdc722cef24416530 # initialize rs1
ori x15, x23, 1506 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x96ea85fec8c87904 # initialize rs1
ori x16, x3, -1241 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0x9c36f3801ef88dac # initialize rs1
ori x17, x29, 2000 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xe561be0893d5a9eb # initialize rs1
ori x18, x15, 1354 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x3779fbd63ae83b03 # initialize rs1
ori x19, x30, -1896 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x1485bcae38b59a60 # initialize rs1
ori x20, x24, -1515 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0xea3c7fb25635d691 # initialize rs1
ori x21, x29, 1060 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x057559b99db78f4a # initialize rs1
ori x22, x13, -1963 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x29, 0xff42de035b522be0 # initialize rs1
ori x23, x29, -1776 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0xf549ef2c13f6993c # initialize rs1
ori x24, x25, 964 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x20e0633ba0df4c59 # initialize rs1
ori x25, x10, 1859 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0x48b744ec8e726643 # initialize rs1
ori x26, x15, -892 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x6e2641d8f5cd1559 # initialize rs1
ori x27, x7, 1680 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0xc743b9d4d813703c # initialize rs1
ori x28, x1, -1809 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x11, 0xc9aed663f2441945 # initialize rs1
ori x29, x11, 1303 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x14, 0xd7d4663c627601d2 # initialize rs1
ori x30, x14, 929 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xe5c101402225ac3e # initialize rs1
ori x31, x17, 448 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
ori x30, x23, -1693 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rs1
ori x21, x8, 1116 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
ori x2, x15, -307 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x11, 0x8000000000000000 # initialize rs1
ori x14, x11, -428 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
ori x26, x31, 391 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
ori x9, x1, -811 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
ori x26, x8, 2046 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
ori x11, x21, -849 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
ori x10, x15, -2044 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
ori x6, x8, 376 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x1, x31, -1237 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
ori x30, x31, -584 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs1
ori x26, x12, 1717 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x4, 0x00000000fffffffe # initialize rs1
ori x16, x4, 52 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
ori x14, x21, 1910 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x30, 0x0000000100000001 # initialize rs1
ori x8, x30, -238 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 632)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
ori x19, x15, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 640)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
ori x25, x21, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 648)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
ori x12, x17, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 656)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
ori x27, x29, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 664)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
ori x17, x14, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 672)

# Testcase cr_rs1_imm_corners
li x4, 0x0000000000000000 # initialize rs1
ori x25, x4, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 680)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
ori x6, x25, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 688)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
ori x8, x29, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 696)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
ori x10, x21, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 704)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000000 # initialize rs1
ori x19, x20, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 712)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rs1
ori x9, x12, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 720)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
ori x22, x15, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 728)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
ori x12, x31, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 736)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
ori x7, x17, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 744)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rs1
ori x19, x12, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 752)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rs1
ori x29, x11, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 760)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000000 # initialize rs1
ori x2, x28, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 768)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000 # initialize rs1
ori x18, x19, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 776)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
ori x8, x13, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 784)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
ori x2, x15, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 792)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000001 # initialize rs1
ori x3, x1, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 800)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
ori x8, x16, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 808)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
ori x14, x13, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 816)

# Testcase cr_rs1_imm_corners
li x4, 0x0000000000000001 # initialize rs1
ori x19, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 824)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000001 # initialize rs1
ori x27, x1, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 832)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rs1
ori x17, x11, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 840)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001 # initialize rs1
ori x25, x2, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 848)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000001 # initialize rs1
ori x28, x21, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 856)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001 # initialize rs1
ori x19, x15, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 864)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000001 # initialize rs1
ori x24, x30, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 872)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
ori x9, x19, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 880)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
ori x19, x22, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 888)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
ori x8, x9, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 896)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rs1
ori x13, x27, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 904)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000001 # initialize rs1
ori x13, x21, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 912)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rs1
ori x8, x3, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 920)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
ori x3, x16, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 928)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000001 # initialize rs1
ori x31, x1, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 936)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
ori x17, x10, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 944)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
ori x3, x19, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 952)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
ori x8, x12, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 960)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
ori x25, x14, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 968)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
ori x25, x14, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 976)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000002 # initialize rs1
ori x1, x11, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 984)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
ori x11, x15, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 992)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
ori x12, x15, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1000)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
ori x22, x30, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1008)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
ori x15, x12, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1016)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002 # initialize rs1
ori x29, x16, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1024)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
ori x24, x14, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1032)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000002 # initialize rs1
ori x6, x23, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1040)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000002 # initialize rs1
ori x13, x28, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1048)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002 # initialize rs1
ori x15, x18, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1056)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000002 # initialize rs1
ori x26, x23, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1064)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
ori x9, x30, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1072)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
ori x30, x14, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1080)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000002 # initialize rs1
ori x31, x28, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1088)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
ori x17, x24, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1096)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002 # initialize rs1
ori x10, x22, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1104)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
ori x25, x8, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1112)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
ori x1, x29, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1120)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
ori x27, x12, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1128)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000000 # initialize rs1
ori x3, x17, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1136)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
ori x7, x24, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1144)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000000 # initialize rs1
ori x10, x17, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1152)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
ori x22, x10, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1160)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
ori x26, x12, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1168)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
ori x17, x29, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1176)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000000 # initialize rs1
ori x28, x2, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1184)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000000 # initialize rs1
ori x1, x17, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1192)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
ori x3, x19, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1200)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000 # initialize rs1
ori x12, x30, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1208)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000 # initialize rs1
ori x7, x22, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1216)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000000 # initialize rs1
ori x14, x21, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1224)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
ori x4, x1, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1232)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
ori x29, x18, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1240)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
ori x26, x15, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1248)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
ori x2, x27, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1256)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
ori x14, x29, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1264)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000000 # initialize rs1
ori x24, x23, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1272)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
ori x4, x28, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000001 # initialize rs1
ori x14, x19, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1288)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
ori x29, x11, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1296)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rs1
ori x12, x8, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1304)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rs1
ori x22, x9, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1312)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
ori x1, x17, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1320)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
ori x28, x30, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1328)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rs1
ori x19, x14, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1336)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
ori x26, x11, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1344)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
ori x22, x7, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1352)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rs1
ori x19, x14, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1360)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
ori x26, x30, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1368)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
ori x11, x17, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1376)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
ori x22, x23, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1384)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000001 # initialize rs1
ori x21, x18, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1392)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
ori x8, x28, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1400)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rs1
ori x21, x14, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1408)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
ori x20, x7, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1416)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
ori x4, x7, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1424)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000001 # initialize rs1
ori x2, x18, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1432)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
ori x25, x29, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1440)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffffffffffff # initialize rs1
ori x18, x25, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1448)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
ori x6, x29, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1456)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rs1
ori x26, x27, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1464)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
ori x20, x1, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1472)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
ori x14, x10, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1480)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
ori x21, x24, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1488)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff # initialize rs1
ori x16, x31, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1496)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
ori x13, x7, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1504)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
ori x1, x18, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1512)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
ori x16, x13, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1520)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffffffffffff # initialize rs1
ori x11, x21, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1528)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rs1
ori x30, x3, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1536)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffffffffffff # initialize rs1
ori x7, x30, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1544)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
ori x8, x24, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1552)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
ori x10, x1, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1560)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffffffffffff # initialize rs1
ori x30, x23, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1568)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
ori x3, x10, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1576)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
ori x1, x10, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1584)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff # initialize rs1
ori x2, x20, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1592)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
ori x15, x2, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1600)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffffffffffe # initialize rs1
ori x19, x6, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1608)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
ori x6, x2, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1616)

# Testcase cr_rs1_imm_corners
li x7, 0x7ffffffffffffffe # initialize rs1
ori x1, x7, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1624)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
ori x31, x28, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1632)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe # initialize rs1
ori x1, x10, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1640)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
ori x1, x14, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1648)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffffffffffe # initialize rs1
ori x17, x29, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1656)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
ori x20, x26, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1664)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
ori x21, x16, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1672)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
ori x27, x13, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1680)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rs1
ori x3, x27, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1688)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
ori x14, x25, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1696)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
ori x13, x24, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1704)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rs1
ori x12, x3, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1712)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
ori x7, x26, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1720)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffffffffffe # initialize rs1
ori x10, x1, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1728)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
ori x18, x26, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1736)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rs1
ori x8, x11, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1744)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
ori x21, x28, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1752)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
ori x27, x9, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1760)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
ori x14, x8, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1768)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
ori x9, x19, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1776)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
ori x2, x8, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1784)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff # initialize rs1
ori x11, x29, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x23, 0xffffffffffffffff # initialize rs1
ori x29, x23, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 0)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffffffffffff # initialize rs1
ori x18, x22, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 8)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
ori x11, x8, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 16)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffffffffffff # initialize rs1
ori x30, x16, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 24)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
ori x8, x6, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff # initialize rs1
ori x31, x11, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 40)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
ori x14, x9, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 48)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff # initialize rs1
ori x20, x26, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 56)

# Testcase cr_rs1_imm_corners
li x4, 0xffffffffffffffff # initialize rs1
ori x8, x4, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 64)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
ori x18, x9, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 72)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffffffffffff # initialize rs1
ori x4, x31, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 80)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff # initialize rs1
ori x23, x26, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 88)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
ori x29, x21, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 96)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffffffffffff # initialize rs1
ori x28, x7, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 104)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff # initialize rs1
ori x28, x12, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 112)

# Testcase cr_rs1_imm_corners
li x1, 0xfffffffffffffffe # initialize rs1
ori x25, x1, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 120)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
ori x16, x24, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 128)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
ori x14, x26, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 136)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
ori x8, x26, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 144)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
ori x24, x12, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 152)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
ori x27, x9, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 160)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
ori x2, x12, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 168)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rs1
ori x13, x14, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 176)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
ori x7, x10, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 184)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
ori x12, x25, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 192)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffffffffffe # initialize rs1
ori x21, x28, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 200)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
ori x11, x24, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 208)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
ori x10, x15, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 216)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
ori x26, x27, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 224)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe # initialize rs1
ori x1, x19, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 232)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
ori x27, x23, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 240)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
ori x4, x10, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 248)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
ori x23, x27, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 256)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffffffffffe # initialize rs1
ori x22, x16, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 264)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
ori x12, x23, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 272)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
ori x9, x2, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 280)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
ori x15, x9, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 288)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
ori x11, x21, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 296)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
ori x22, x6, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 304)

# Testcase cr_rs1_imm_corners
li x4, 0x5bbc887763ae86f2 # initialize rs1
ori x7, x4, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 312)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
ori x15, x30, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 320)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
ori x9, x30, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 328)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
ori x23, x9, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 336)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rs1
ori x17, x8, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 344)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
ori x22, x31, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 352)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc887763ae86f2 # initialize rs1
ori x21, x29, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 360)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc887763ae86f2 # initialize rs1
ori x24, x29, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 368)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rs1
ori x29, x8, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 376)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
ori x9, x1, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 384)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc887763ae86f2 # initialize rs1
ori x30, x17, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 392)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
ori x12, x1, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 400)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
ori x23, x13, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 408)

# Testcase cr_rs1_imm_corners
li x31, 0x5bbc887763ae86f2 # initialize rs1
ori x19, x31, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 416)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
ori x10, x24, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 424)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
ori x3, x2, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 432)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x27, x30, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 440)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x8, x16, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 448)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x15, x9, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 456)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x4, x14, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 464)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x19, x13, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 472)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x7, x15, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 480)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x8, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 488)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x14, x9, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 496)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x6, x16, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 504)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x19, x6, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 512)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x24, x14, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 520)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x21, x27, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 528)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x25, x15, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 536)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x7, x27, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 544)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x30, x19, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 552)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x20, x26, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 560)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x21, x6, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 568)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x31, x26, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 576)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x9, x20, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 584)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
ori x17, x20, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 592)

# Testcase cr_rs1_imm_corners
li x17, 0x5555555555555555 # initialize rs1
ori x28, x17, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 600)

# Testcase cr_rs1_imm_corners
li x21, 0x5555555555555555 # initialize rs1
ori x4, x21, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 608)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
ori x13, x16, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
ori x31, x28, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 624)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
ori x14, x8, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 632)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
ori x12, x14, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 640)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
ori x7, x28, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 648)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555 # initialize rs1
ori x26, x31, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 656)

# Testcase cr_rs1_imm_corners
li x24, 0x5555555555555555 # initialize rs1
ori x11, x24, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 664)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
ori x3, x14, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 672)

# Testcase cr_rs1_imm_corners
li x18, 0x5555555555555555 # initialize rs1
ori x19, x18, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 680)

# Testcase cr_rs1_imm_corners
li x2, 0x5555555555555555 # initialize rs1
ori x29, x2, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 688)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555 # initialize rs1
ori x16, x31, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 696)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
ori x18, x22, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 704)

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rs1
ori x30, x3, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 712)

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rs1
ori x10, x3, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 720)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rs1
ori x9, x27, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 728)

# Testcase cr_rs1_imm_corners
li x24, 0x5555555555555555 # initialize rs1
ori x19, x24, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 736)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
ori x11, x22, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 744)

# Testcase cr_rs1_imm_corners
li x1, 0x5555555555555555 # initialize rs1
ori x25, x1, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 752)

# Testcase cr_rs1_imm_corners
li x4, 0x00000000ffffffff # initialize rs1
ori x18, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 760)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
ori x3, x7, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 768)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff # initialize rs1
ori x8, x17, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 776)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
ori x11, x24, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 784)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000ffffffff # initialize rs1
ori x25, x22, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 792)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000ffffffff # initialize rs1
ori x1, x28, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 800)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000ffffffff # initialize rs1
ori x27, x22, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 808)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000ffffffff # initialize rs1
ori x11, x16, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 816)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
ori x25, x1, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 824)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
ori x20, x7, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 832)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000ffffffff # initialize rs1
ori x16, x18, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 840)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
ori x28, x31, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 848)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
ori x27, x30, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 856)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000ffffffff # initialize rs1
ori x4, x16, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 864)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
ori x16, x7, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 872)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000ffffffff # initialize rs1
ori x18, x26, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 880)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000ffffffff # initialize rs1
ori x18, x23, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 888)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
ori x16, x21, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 896)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
ori x14, x31, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 904)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
ori x11, x31, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 912)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rs1
ori x18, x12, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 920)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe # initialize rs1
ori x11, x24, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 928)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rs1
ori x3, x15, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 936)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
ori x2, x23, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 944)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000fffffffe # initialize rs1
ori x25, x21, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 952)

# Testcase cr_rs1_imm_corners
li x4, 0x00000000fffffffe # initialize rs1
ori x6, x4, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 960)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
ori x4, x30, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 968)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
ori x26, x1, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 976)

# Testcase cr_rs1_imm_corners
li x4, 0x00000000fffffffe # initialize rs1
ori x13, x4, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 984)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000fffffffe # initialize rs1
ori x27, x19, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 992)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
ori x9, x3, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1000)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000fffffffe # initialize rs1
ori x29, x2, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1008)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe # initialize rs1
ori x24, x25, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1016)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
ori x23, x17, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1024)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
ori x14, x29, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1032)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe # initialize rs1
ori x7, x10, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1040)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
ori x18, x30, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1048)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000fffffffe # initialize rs1
ori x17, x24, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1056)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rs1
ori x13, x12, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1064)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe # initialize rs1
ori x27, x26, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1072)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
ori x1, x31, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1080)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
ori x17, x21, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1088)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000 # initialize rs1
ori x19, x9, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1096)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
ori x9, x2, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1104)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
ori x20, x15, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1112)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
ori x3, x21, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1120)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
ori x27, x18, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1128)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
ori x10, x14, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1136)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000 # initialize rs1
ori x18, x19, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1144)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
ori x18, x14, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1152)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rs1
ori x9, x8, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1160)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
ori x21, x14, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1168)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000000 # initialize rs1
ori x17, x29, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1176)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
ori x8, x20, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1184)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
ori x15, x24, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1192)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
ori x29, x31, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1200)

# Testcase cr_rs1_imm_corners
li x4, 0x0000000100000000 # initialize rs1
ori x25, x4, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1208)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
ori x11, x18, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1216)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000 # initialize rs1
ori x16, x9, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1224)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
ori x22, x21, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1232)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000001 # initialize rs1
ori x16, x18, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1240)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000001 # initialize rs1
ori x16, x26, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1248)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
ori x16, x22, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1256)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001 # initialize rs1
ori x4, x28, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1264)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000001 # initialize rs1
ori x24, x25, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1272)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
ori x7, x24, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1280)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000001 # initialize rs1
ori x19, x20, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1288)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001 # initialize rs1
ori x28, x10, 32 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1296)

# Testcase cr_rs1_imm_corners
li x4, 0x0000000100000001 # initialize rs1
ori x24, x4, 64 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1304)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
ori x24, x30, 128 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1312)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000001 # initialize rs1
ori x22, x18, 256 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1320)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
ori x17, x30, 512 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1328)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001 # initialize rs1
ori x25, x9, 1023 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1336)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001 # initialize rs1
ori x26, x31, 1024 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1344)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
ori x6, x24, 1795 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1352)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
ori x8, x29, 2047 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1360)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001 # initialize rs1
ori x22, x8, -2048 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1368)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
ori x11, x22, -2047 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1376)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
ori x26, x30, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1384)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
ori x4, x27, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x36342977e4cc9f60 # initialize rs1
ori x0, x0, 467 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x06a74fd4c3174904 # initialize rs1
ori x1, x1, -1168 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa27ee1134d9cb3c2 # initialize rs1
ori x2, x2, -57 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x267305ff82a74182 # initialize rs1
ori x3, x3, 1118 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x7358e5b38949de63 # initialize rs1
ori x4, x4, -814 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd5ac0c6a351c00a2 # initialize rs1
ori x5, x5, -1623 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa0b1f8c267319886 # initialize rs1
ori x6, x6, -683 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5c7eb92ec3fbc46b # initialize rs1
ori x7, x7, -1011 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfdfd84f784709c4b # initialize rs1
ori x8, x8, 1212 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x13244ec936be3059 # initialize rs1
ori x9, x9, 1974 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb94a7267bc459ef4 # initialize rs1
ori x10, x10, 1373 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x13d028a93e1c98d6 # initialize rs1
ori x11, x11, 105 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8595e4d7379980bd # initialize rs1
ori x12, x12, -1935 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x99add635c701941e # initialize rs1
ori x13, x13, -1784 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x2b33e6b143205e10 # initialize rs1
ori x14, x14, -1708 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x225e3b84531e0e03 # initialize rs1
ori x15, x15, 666 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbae77cb400b84902 # initialize rs1
ori x16, x16, 1029 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x727bfb10b1c15c60 # initialize rs1
ori x17, x17, 524 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6f905b0d031656c5 # initialize rs1
ori x18, x18, 1936 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xba2f59a76192d2ac # initialize rs1
ori x19, x19, -705 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2bfcdd3e0e169333 # initialize rs1
ori x20, x20, 716 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8ccc447d4b05bfb9 # initialize rs1
ori x21, x21, -81 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x024ba76fb54f978d # initialize rs1
ori x22, x22, 663 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x98054ec344925620 # initialize rs1
ori x23, x23, -640 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x032ae29cb54d119f # initialize rs1
ori x24, x24, 236 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0cac45ce415fbe75 # initialize rs1
ori x25, x25, -447 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2fdf453c62d95bf8 # initialize rs1
ori x26, x26, -1742 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x31a07eca5e5373e8 # initialize rs1
ori x27, x27, 680 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x39b4f184233445b0 # initialize rs1
ori x28, x28, 1694 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd5c9eceddc2ad174 # initialize rs1
ori x29, x29, 1860 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1b2d9c3ccc512632 # initialize rs1
ori x30, x30, 246 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd13168d2394cb4ee # initialize rs1
ori x31, x31, 195 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x7, 0x86d9fd19c8958a6f # initialize rs1
ori x6, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1656)

# Testcase cp_imm_corners
li x1, 0x909a6b37285d70c1 # initialize rs1
ori x18, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1664)

# Testcase cp_imm_corners
li x22, 0x5cc776d0c3cb76fd # initialize rs1
ori x11, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1672)

# Testcase cp_imm_corners
li x20, 0xc2e78daa07dfa27c # initialize rs1
ori x17, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cp_imm_corners
li x20, 0x3bec3ad6deca31cc # initialize rs1
ori x8, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1688)

# Testcase cp_imm_corners
li x7, 0xdfe68b153f089425 # initialize rs1
ori x5, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1696)

# Testcase cp_imm_corners
li x18, 0x06c9acba7f90714f # initialize rs1
ori x20, x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1704)

# Testcase cp_imm_corners
li x22, 0xca52adf099e4e9bb # initialize rs1
ori x24, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

# Testcase cp_imm_corners
li x19, 0x5f3f783608789ca1 # initialize rs1
ori x26, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1720)

# Testcase cp_imm_corners
li x20, 0xec82d09cd2fba295 # initialize rs1
ori x2, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cp_imm_corners
li x3, 0xafdc11be2bef57e1 # initialize rs1
ori x16, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cp_imm_corners
li x7, 0x37ef7867abf131ac # initialize rs1
ori x26, x7, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1744)

# Testcase cp_imm_corners
li x2, 0x557ae80ab6bdec5e # initialize rs1
ori x21, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1752)

# Testcase cp_imm_corners
li x3, 0xf2cccdd939814467 # initialize rs1
ori x9, x3, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1760)

# Testcase cp_imm_corners
li x10, 0x4dd1845e5c729d24 # initialize rs1
ori x5, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1768)

# Testcase cp_imm_corners
li x16, 0xe25c57b2f3d29db9 # initialize rs1
ori x20, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cp_imm_corners
li x18, 0xdfd5080d950b32d9 # initialize rs1
ori x16, x18, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1784)

# Testcase cp_imm_corners
li x30, 0xfe18dd39f1ea9262 # initialize rs1
ori x18, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x8, 0x92bd9088f04c6cae # initialize rs1
ori x7, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_imm_corners
li x29, 0x0cd981336639ee31 # initialize rs1
ori x23, x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x29, x28 # perform first operation
ori x6, x21, 1953 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x28, x25 # perform first operation
ori x8, x19, -309 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x3, x27 # perform first operation
ori x10, x21, 1883 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x3, x21 # perform first operation
ori x5, x5, -928 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x27, x13 # perform first operation
ori x17, x25, 1661 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x10, x16 # perform first operation
ori x16, x17, 529 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x14, x10 # perform first operation
ori x8, x13, -250 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x7, x27 # perform first operation
ori x17, x13, -1307 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x19, x17 # perform first operation
ori x28, x18, -101 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x15, x29 # perform first operation
ori x15, x14, -1091 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x29, x19 # perform first operation
ori x19, x28, -1087 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x25, x14 # perform first operation
ori x22, x30, 1909 # perform second (triggering) operation

.EQU SIGSIZE,3616


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
