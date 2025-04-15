///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-xori.S
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
li x0, 0xacf6da24c06b043c # initialize rs1
xori x11, x0, -1974 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa6acaa48f656a1b3 # initialize rs1
xori x15, x1, 1404 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe6e0c990141bae33 # initialize rs1
xori x17, x2, -1054 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf79e20a9e4277d9c # initialize rs1
xori x16, x3, 946 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0f21abcbd854fbb9 # initialize rs1
xori x29, x4, -926 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5bbebfe194110935 # initialize rs1
xori x6, x5, -1386 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x17eb902ff2c5663f # initialize rs1
xori x14, x6, -921 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x92dd24eb49bc0ac7 # initialize rs1
xori x9, x7, 1866 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8ea5382a49878ce2 # initialize rs1
xori x23, x8, 1988 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x15ebfeee8e604875 # initialize rs1
xori x21, x9, -1482 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x46b75789f244f643 # initialize rs1
xori x2, x10, -1970 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x882b67b1d0e76827 # initialize rs1
xori x30, x11, -651 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x97cd303baf4f7ae0 # initialize rs1
xori x5, x12, -1073 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x84e9ffb1542561c9 # initialize rs1
xori x25, x13, 1449 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x982a680e3586e3f6 # initialize rs1
xori x2, x14, 1426 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6893b29e60607e89 # initialize rs1
xori x31, x15, -881 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x363e6070ad4734b9 # initialize rs1
xori x18, x16, 955 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x00946f86f1f768ad # initialize rs1
xori x19, x17, -463 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x79aa4826b2c39f2e # initialize rs1
xori x13, x18, 603 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4541806d4430c41c # initialize rs1
xori x31, x19, 820 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4b4dc5d8b219de86 # initialize rs1
xori x17, x20, -174 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x650ebb8e52f5b22e # initialize rs1
xori x5, x21, 2020 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd45fb493e9bbfdee # initialize rs1
xori x17, x22, 1923 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x6ef88ef8f63ce893 # initialize rs1
xori x9, x23, 1751 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x92a68a6e56e7e23f # initialize rs1
xori x30, x24, 470 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x56c01e9266d6ff2d # initialize rs1
xori x9, x25, 558 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb7b7d8d5e45cd14b # initialize rs1
xori x18, x26, 1407 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1d201fca148ee358 # initialize rs1
xori x8, x27, 728 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x78e6200a24e9fd04 # initialize rs1
xori x16, x28, 1248 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2aa15c8d7a4d8f5f # initialize rs1
xori x19, x29, -1839 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfae9d694c663ce85 # initialize rs1
xori x25, x30, 1340 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xd220e96afe235aa5 # initialize rs1
xori x14, x31, 1249 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x0)
li x1, 0x4cd4f89a0c0de2b8 # initialize rs1
xori x0, x1, -1627 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x12, 0x49660b0c78c5ca81 # initialize rs1
xori x1, x12, 375 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0x54c6fb1b9425eed7 # initialize rs1
xori x2, x7, -1297 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0xefe8dbc976de6838 # initialize rs1
xori x3, x19, 1548 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0xda585bc12e2decfe # initialize rs1
xori x4, x8, 709 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xe2a2bbf3042deca6 # initialize rs1
xori x5, x6, -653 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
li x13, 0x8d5e48256394063e # initialize rs1
xori x6, x13, -1219 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x1e733f11369f60d3 # initialize rs1
xori x7, x5, 1214 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x80fbc76d87b73c48 # initialize rs1
xori x8, x13, 141 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0x178fe43942806431 # initialize rs1
xori x9, x13, -1768 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x86abfb934e3c1b22 # initialize rs1
xori x10, x7, 1620 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0x79ad95ff96bd543a # initialize rs1
xori x11, x31, 1043 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x27, 0xfaa9c175af9da88d # initialize rs1
xori x12, x27, 1226 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0xbd24d3bfa6fc26e7 # initialize rs1
xori x13, x23, -1581 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0xd4df601a22af5889 # initialize rs1
xori x14, x19, -1541 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x88e6d8f8fca18bb0 # initialize rs1
xori x15, x17, 1357 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x874b06ed4f2201db # initialize rs1
xori x16, x24, 1409 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x5e977384751dbe67 # initialize rs1
xori x17, x20, 1410 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0x30f5a51cadc80dde # initialize rs1
xori x18, x15, 443 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xe2d7fc72764a4a64 # initialize rs1
xori x19, x18, 1563 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0xe42a2bbf009ec040 # initialize rs1
xori x20, x26, 1139 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x9e5b66ca0f46bb5a # initialize rs1
xori x21, x6, -188 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x3080c65899848893 # initialize rs1
xori x22, x27, 641 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0xafa41566ad51ff1d # initialize rs1
xori x23, x13, -1686 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xa4d67e479f8718fc # initialize rs1
xori x24, x14, -893 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x0e5090c23f3f3633 # initialize rs1
xori x25, x25, -1880 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x12, 0xdd7efdedfc22624b # initialize rs1
xori x26, x12, 1747 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0x331f6c919f814941 # initialize rs1
xori x27, x21, 496 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x2caf49c3043d8a5d # initialize rs1
xori x28, x17, -1612 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0x5bfb87ed836b3b06 # initialize rs1
xori x29, x23, -1715 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0xac75d3bcce49e109 # initialize rs1
xori x30, x28, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x16, 0x690f613f4424de96 # initialize rs1
xori x31, x16, -1775 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x0000000000000000 # initialize rs1
xori x23, x11, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
xori x14, x21, -643 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x0000000000000002 # initialize rs1
xori x5, x21, 265 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x20, 0x8000000000000000 # initialize rs1
xori x22, x20, -1510 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
xori x6, x24, -1222 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
xori x19, x15, -258 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
xori x26, x18, -838 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
xori x22, x12, 1402 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
xori x2, x20, -1542 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
xori x17, x3, -1289 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x24, x8, -1559 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
xori x20, x28, 368 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x00000000ffffffff # initialize rs1
xori x18, x8, -572 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0x00000000fffffffe # initialize rs1
xori x11, x26, 920 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
xori x18, x8, 1597 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
xori x5, x20, -1253 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
xori x1, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000000 # initialize rs1
xori x10, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
xori x16, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rs1
xori x7, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 664)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000000 # initialize rs1
xori x17, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
xori x14, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000000 # initialize rs1
xori x14, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 688)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
xori x11, x13, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
xori x2, x13, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
xori x27, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000000 # initialize rs1
xori x21, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
xori x17, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
xori x20, x9, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 736)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000000 # initialize rs1
xori x1, x23, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000000 # initialize rs1
xori x3, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
xori x5, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 760)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
xori x2, x21, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
xori x19, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
xori x6, x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rs1
xori x18, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
xori x10, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000001 # initialize rs1
xori x28, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rs1
xori x31, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
xori x11, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000001 # initialize rs1
xori x20, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rs1
xori x19, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000001 # initialize rs1
xori x31, x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
xori x30, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
xori x28, x16, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
xori x26, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
xori x11, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001 # initialize rs1
xori x23, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rs1
xori x22, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000001 # initialize rs1
xori x6, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001 # initialize rs1
xori x8, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
xori x14, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000001 # initialize rs1
xori x20, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rs1
xori x28, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000001 # initialize rs1
xori x20, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 944)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
xori x26, x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000002 # initialize rs1
xori x25, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002 # initialize rs1
xori x21, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
xori x6, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
xori x1, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
xori x13, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
xori x20, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
xori x17, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
xori x19, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
xori x14, x12, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002 # initialize rs1
xori x24, x17, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000002 # initialize rs1
xori x7, x2, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rs1
xori x22, x9, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1048)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
xori x15, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
xori x19, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
xori x28, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000002 # initialize rs1
xori x31, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000002 # initialize rs1
xori x22, x28, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1088)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
xori x29, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000002 # initialize rs1
xori x2, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
xori x29, x21, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
xori x3, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1120)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
xori x12, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1128)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
xori x1, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000 # initialize rs1
xori x21, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
xori x15, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000000 # initialize rs1
xori x15, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
xori x15, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
xori x18, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000000 # initialize rs1
xori x10, x7, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1184)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
xori x8, x18, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1192)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
xori x31, x19, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1200)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000000 # initialize rs1
xori x16, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
xori x25, x1, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1216)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
xori x31, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1224)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rs1
xori x2, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
xori x25, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000000 # initialize rs1
xori x6, x5, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1248)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000 # initialize rs1
xori x10, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1256)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000000 # initialize rs1
xori x6, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1264)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000 # initialize rs1
xori x12, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
xori x14, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
xori x22, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1288)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
xori x14, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1296)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
xori x13, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1304)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000001 # initialize rs1
xori x27, x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1312)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rs1
xori x2, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000001 # initialize rs1
xori x12, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000001 # initialize rs1
xori x18, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rs1
xori x8, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000001 # initialize rs1
xori x7, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1352)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rs1
xori x20, x8, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000001 # initialize rs1
xori x1, x16, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001 # initialize rs1
xori x19, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000001 # initialize rs1
xori x12, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1384)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
xori x21, x17, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000001 # initialize rs1
xori x24, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1400)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rs1
xori x28, x8, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
xori x27, x23, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
xori x18, x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1424)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
xori x22, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff # initialize rs1
xori x9, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1440)

# Testcase cr_rs1_imm_corners
li x6, 0x7fffffffffffffff # initialize rs1
xori x23, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
xori x20, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffffffffffff # initialize rs1
xori x2, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1464)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
xori x18, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
xori x28, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1480)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffffffffffff # initialize rs1
xori x20, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1488)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff # initialize rs1
xori x29, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rs1
xori x16, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
xori x20, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1512)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
xori x11, x24, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff # initialize rs1
xori x30, x16, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1528)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rs1
xori x15, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1536)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
xori x12, x1, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1544)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
xori x21, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1552)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff # initialize rs1
xori x21, x20, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1560)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffffffffffff # initialize rs1
xori x14, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1568)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rs1
xori x5, x27, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
xori x25, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
xori x20, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1592)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe # initialize rs1
xori x16, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe # initialize rs1
xori x1, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffffffffffe # initialize rs1
xori x28, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1616)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
xori x30, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1624)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
xori x14, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1632)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
xori x19, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1640)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
xori x22, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1648)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe # initialize rs1
xori x10, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1656)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
xori x5, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
xori x31, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1672)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
xori x26, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1680)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
xori x17, x2, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1688)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe # initialize rs1
xori x1, x12, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1696)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
xori x11, x28, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1704)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
xori x28, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe # initialize rs1
xori x24, x20, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
xori x14, x19, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1728)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rs1
xori x30, x3, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1736)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rs1
xori x17, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1744)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
xori x28, x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rs1
xori x16, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
xori x5, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1768)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
xori x11, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1776)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff # initialize rs1
xori x30, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1784)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffffffffffff # initialize rs1
xori x14, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
xori x28, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
xori x28, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffffffffffff # initialize rs1
xori x14, x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
xori x18, x24, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff # initialize rs1
xori x8, x29, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
xori x23, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
xori x19, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
xori x22, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
xori x11, x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffffffffffff # initialize rs1
xori x18, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cr_rs1_imm_corners
li x16, 0xffffffffffffffff # initialize rs1
xori x29, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff # initialize rs1
xori x18, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
xori x5, x2, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
xori x20, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rs1
xori x11, x14, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
xori x15, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffffffffffe # initialize rs1
xori x26, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
xori x8, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
xori x10, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 144)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe # initialize rs1
xori x12, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
xori x2, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
xori x30, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
xori x22, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe # initialize rs1
xori x7, x22, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
xori x11, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
xori x24, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 200)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
xori x13, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
xori x24, x20, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rs1
xori x16, x11, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 224)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
xori x17, x21, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
xori x9, x2, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
xori x24, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
xori x27, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
xori x7, x3, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 264)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
xori x27, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc887763ae86f2 # initialize rs1
xori x28, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc887763ae86f2 # initialize rs1
xori x16, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 288)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2 # initialize rs1
xori x29, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 296)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
xori x15, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 304)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
xori x31, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 312)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
xori x16, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
xori x21, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 328)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc887763ae86f2 # initialize rs1
xori x6, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 336)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc887763ae86f2 # initialize rs1
xori x19, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2 # initialize rs1
xori x21, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 352)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2 # initialize rs1
xori x13, x10, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc887763ae86f2 # initialize rs1
xori x12, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 368)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
xori x9, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2 # initialize rs1
xori x28, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc887763ae86f2 # initialize rs1
xori x31, x19, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
xori x13, x9, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2 # initialize rs1
xori x6, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cr_rs1_imm_corners
li x19, 0x5bbc887763ae86f2 # initialize rs1
xori x23, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f2 # initialize rs1
xori x30, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rs1
xori x20, x8, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 432)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x29, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x28, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 448)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x15, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x29, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 464)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x17, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x28, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x27, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 488)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x14, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x12, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x24, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x18, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x19, x27, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 528)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x6, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x9, x25, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x7, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x2, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x20, x29, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 568)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x12, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x3, x10, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
xori x25, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_imm_corners
li x30, 0x5555555555555555 # initialize rs1
xori x5, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555 # initialize rs1
xori x11, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
xori x28, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cr_rs1_imm_corners
li x23, 0x5555555555555555 # initialize rs1
xori x27, x23, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555 # initialize rs1
xori x6, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_imm_corners
li x2, 0x5555555555555555 # initialize rs1
xori x14, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
xori x22, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
xori x26, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 656)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
xori x14, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
xori x14, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
xori x21, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555 # initialize rs1
xori x1, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 688)

# Testcase cr_rs1_imm_corners
li x18, 0x5555555555555555 # initialize rs1
xori x23, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
xori x1, x14, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 704)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555 # initialize rs1
xori x30, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_imm_corners
li x24, 0x5555555555555555 # initialize rs1
xori x27, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
xori x11, x28, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
xori x6, x29, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
xori x5, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 744)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
xori x14, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff # initialize rs1
xori x11, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 760)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
xori x12, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
xori x1, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 776)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rs1
xori x28, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000ffffffff # initialize rs1
xori x17, x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rs1
xori x25, x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
xori x16, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rs1
xori x11, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff # initialize rs1
xori x13, x11, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rs1
xori x28, x12, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
xori x10, x20, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
xori x18, x3, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 848)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rs1
xori x5, x8, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
xori x12, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
xori x21, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000ffffffff # initialize rs1
xori x28, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
xori x26, x31, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
xori x20, x24, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 896)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
xori x16, x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
xori x7, x30, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
xori x1, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
xori x27, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe # initialize rs1
xori x19, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
xori x29, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe # initialize rs1
xori x23, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 952)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
xori x22, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe # initialize rs1
xori x1, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
xori x13, x30, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
xori x24, x16, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 984)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
xori x7, x18, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
xori x21, x22, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1000)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
xori x27, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
xori x5, x1, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe # initialize rs1
xori x20, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
xori x7, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe # initialize rs1
xori x16, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000fffffffe # initialize rs1
xori x25, x6, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe # initialize rs1
xori x14, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1056)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe # initialize rs1
xori x11, x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rs1
xori x17, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
xori x19, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000 # initialize rs1
xori x21, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
xori x7, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000 # initialize rs1
xori x3, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
xori x7, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000 # initialize rs1
xori x27, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1120)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000 # initialize rs1
xori x7, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1128)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rs1
xori x24, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1136)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rs1
xori x6, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rs1
xori x27, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
xori x26, x24, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1160)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000 # initialize rs1
xori x29, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000000 # initialize rs1
xori x31, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000000 # initialize rs1
xori x11, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
xori x16, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
xori x11, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1200)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
xori x29, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
xori x8, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
xori x25, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1224)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
xori x30, x18, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001 # initialize rs1
xori x29, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000001 # initialize rs1
xori x15, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
xori x6, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1256)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000001 # initialize rs1
xori x28, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
xori x29, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
xori x29, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1280)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
xori x8, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1288)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
xori x3, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1296)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
xori x1, x22, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1304)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
xori x21, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1312)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000001 # initialize rs1
xori x1, x25, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1320)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
xori x26, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rs1
xori x26, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
xori x8, x30, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001 # initialize rs1
xori x3, x9, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001 # initialize rs1
xori x30, x31, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
xori x16, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1368)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
xori x25, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1376)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rs1
xori x16, x11, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1384)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
xori x5, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc0fb74e114bda9a3 # initialize rs1
xori x0, x0, -1467 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa54dca1660b68283 # initialize rs1
xori x1, x1, 727 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb392ae54d186f7f6 # initialize rs1
xori x2, x2, 1575 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5ab0bd17b78ccea6 # initialize rs1
xori x3, x3, -214 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x507de1b08b95dfd0 # initialize rs1
xori x4, x4, 973 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2d073d623607a937 # initialize rs1
xori x5, x5, -982 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1aaf4b4488bbf1be # initialize rs1
xori x6, x6, -949 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb9c43a0580e83a5a # initialize rs1
xori x7, x7, 1457 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x840b8b98732f8e32 # initialize rs1
xori x8, x8, 871 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x90b29e061538da80 # initialize rs1
xori x9, x9, 1328 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc0f47cde396ae102 # initialize rs1
xori x10, x10, 664 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x124c1db8f94576a0 # initialize rs1
xori x11, x11, -1403 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x05367dc2f77e5492 # initialize rs1
xori x12, x12, 1218 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb6d777ee2f2cde7d # initialize rs1
xori x13, x13, -1669 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xdee101553220ab0b # initialize rs1
xori x14, x14, 594 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4be2849ccc9527cb # initialize rs1
xori x15, x15, 524 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd865c669df2a04e6 # initialize rs1
xori x16, x16, 573 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xece3922cd2d054c5 # initialize rs1
xori x17, x17, -1782 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5c27506faf220600 # initialize rs1
xori x18, x18, 1896 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x103bc254d64ff461 # initialize rs1
xori x19, x19, -497 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6aba5c3d545754ff # initialize rs1
xori x20, x20, -1292 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbe0354c4194437db # initialize rs1
xori x21, x21, 1882 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf7a60003e54587ce # initialize rs1
xori x22, x22, -1883 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x256cb2a0f8a5d23e # initialize rs1
xori x23, x23, 1435 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf6af65b1fd2c7cc8 # initialize rs1
xori x24, x24, 852 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x689863fe56b7c6b6 # initialize rs1
xori x25, x25, -938 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6df84c3a576bbf9d # initialize rs1
xori x26, x26, 1041 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb215e9e62d95077c # initialize rs1
xori x27, x27, 894 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd770571a9dc657db # initialize rs1
xori x28, x28, -1802 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x458921eb6a4750cb # initialize rs1
xori x29, x29, 1007 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x843377b4a450e195 # initialize rs1
xori x30, x30, 689 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcb2e2769d7f7e251 # initialize rs1
xori x31, x31, 1944 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x1, 0x47225bf9d8cc99c8 # initialize rs1
xori x8, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1656)

# Testcase cp_imm_corners
li x18, 0x039471e53db66c54 # initialize rs1
xori x31, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1664)

# Testcase cp_imm_corners
li x24, 0x9cfd9ef102dd3f77 # initialize rs1
xori x6, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1672)

# Testcase cp_imm_corners
li x17, 0x35922e44f0b95266 # initialize rs1
xori x11, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cp_imm_corners
li x17, 0xe41ca1c38561e303 # initialize rs1
xori x9, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1688)

# Testcase cp_imm_corners
li x25, 0x304389c54df2f427 # initialize rs1
xori x20, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1696)

# Testcase cp_imm_corners
li x29, 0xf71c4708c721c469 # initialize rs1
xori x5, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1704)

# Testcase cp_imm_corners
li x19, 0x2225be9d8ea5d8b1 # initialize rs1
xori x20, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1712)

# Testcase cp_imm_corners
li x9, 0x08252d1f2255f16b # initialize rs1
xori x7, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1720)

# Testcase cp_imm_corners
li x21, 0x7df2f60af251f441 # initialize rs1
xori x29, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cp_imm_corners
li x28, 0x406fbca521783f99 # initialize rs1
xori x13, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1736)

# Testcase cp_imm_corners
li x8, 0xae52d542b8c32463 # initialize rs1
xori x31, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1744)

# Testcase cp_imm_corners
li x15, 0xa31bd071412b81c9 # initialize rs1
xori x18, x15, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1752)

# Testcase cp_imm_corners
li x5, 0x32241e14f952b940 # initialize rs1
xori x20, x5, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1760)

# Testcase cp_imm_corners
li x29, 0x80e24a78c80ea9f9 # initialize rs1
xori x26, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1768)

# Testcase cp_imm_corners
li x31, 0xffed276a4bab64fe # initialize rs1
xori x14, x31, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1776)

# Testcase cp_imm_corners
li x30, 0x40cc2f6a059e6650 # initialize rs1
xori x28, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1784)

# Testcase cp_imm_corners
li x23, 0xb7589190b3c1d504 # initialize rs1
xori x24, x23, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x9, 0x6e2003efc9b47981 # initialize rs1
xori x19, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_imm_corners
li x6, 0x10a07341f5e763f6 # initialize rs1
xori x10, x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x19, x10 # perform first operation
xori x26, x12, -652 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x10, x25 # perform first operation
xori x17, x20, -1559 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x16, x12 # perform first operation
xori x8, x3, 239 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x2, x6 # perform first operation
xori x14, x14, 789 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x16, x24 # perform first operation
xori x28, x6, -521 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x30, x15 # perform first operation
xori x9, x25, 1789 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x14, x8 # perform first operation
xori x16, x24, -1273 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x10, x21 # perform first operation
xori x29, x26, -305 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x2, x1 # perform first operation
xori x26, x20, 1226 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x5, x6 # perform first operation
xori x5, x15, -140 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x6, x2 # perform first operation
xori x2, x13, -1986 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x9, x11 # perform first operation
xori x5, x2, 1796 # perform second (triggering) operation

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
