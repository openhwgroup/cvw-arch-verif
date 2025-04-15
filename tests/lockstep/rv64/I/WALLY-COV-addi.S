///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-addi.S
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
li x0, 0x98b7f774be346504 # initialize rs1
addi x6, x0, -412 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x73793cc337bc3f7f # initialize rs1
addi x20, x1, -447 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd9c15e041df909a # initialize rs1
addi x21, x2, -1475 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xfc5637fa5995d426 # initialize rs1
addi x19, x3, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc07d6f8572b99df5 # initialize rs1
addi x17, x4, 576 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x77e05b2ed40566bf # initialize rs1
addi x31, x5, 1373 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x00ad83d3d2075da4 # initialize rs1
addi x24, x6, -1335 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9f5c786885f51733 # initialize rs1
addi x5, x7, 776 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x4ed6453954f23847 # initialize rs1
addi x22, x8, -506 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1475ee02623ac5d0 # initialize rs1
addi x30, x9, 990 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe13acf21e4dde850 # initialize rs1
addi x1, x10, 901 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8ceb466213a784bf # initialize rs1
addi x12, x11, -1584 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa6b913fabe010750 # initialize rs1
addi x23, x12, 1205 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x232c21453a379aaa # initialize rs1
addi x1, x13, -1182 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x40a79df00321b880 # initialize rs1
addi x31, x14, -1461 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xebcf1a22e5a35bd9 # initialize rs1
addi x16, x15, 1461 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb836b37e5451f6d0 # initialize rs1
addi x17, x16, -300 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x2e8d9ad8bfb93d24 # initialize rs1
addi x28, x17, -701 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x33a3724eb047d466 # initialize rs1
addi x17, x18, 569 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x784edc0a3ba82a6a # initialize rs1
addi x8, x19, 1981 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x07092323b4941664 # initialize rs1
addi x6, x20, -1254 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x36cd2ac9d68b6d68 # initialize rs1
addi x26, x21, 1505 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x51fa5d807b7e0714 # initialize rs1
addi x13, x22, 1342 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x3d373a31d4d3da31 # initialize rs1
addi x12, x23, -1161 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd51f7f1c40f85af0 # initialize rs1
addi x30, x24, 1187 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x4b069707b2cc0c5d # initialize rs1
addi x13, x25, 308 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9a8fa9c468e25d7b # initialize rs1
addi x18, x26, 336 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x04f94fb405d8f259 # initialize rs1
addi x24, x27, 1558 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x61cfed81a7af88f7 # initialize rs1
addi x14, x28, 2006 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe8ac7ea69c9e23f1 # initialize rs1
addi x9, x29, -1882 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x93501545e47b70c2 # initialize rs1
addi x15, x30, -1946 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb7d6028963a2ef24 # initialize rs1
addi x20, x31, 78 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x73e55a0a4f4f3287 # initialize rs1
addi x0, x20, 652 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x0fc887b0baf6bb20 # initialize rs1
addi x1, x10, 504 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0x06c0d52ab3f56cad # initialize rs1
addi x2, x26, 1787 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xcbc7c44d2b4ec435 # initialize rs1
addi x3, x17, 1465 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x8af70b96b8c82a74 # initialize rs1
addi x4, x15, -748 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xb50ddce022a66bbb # initialize rs1
addi x5, x8, 845 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x1057615a40581916 # initialize rs1
addi x6, x9, 1393 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xd29ce022e07bd5fb # initialize rs1
addi x7, x21, -1503 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0xf644e341f002e1b7 # initialize rs1
addi x8, x31, -1741 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xac96dc48a9eafba5 # initialize rs1
addi x9, x30, 2011 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x71d915aa7d1002a7 # initialize rs1
addi x10, x1, -909 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x18d5dc36c2bd43d9 # initialize rs1
addi x11, x30, 1558 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x31, 0x81ef4bf0c6574d63 # initialize rs1
addi x12, x31, -929 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x9043e1d0e17c4b2b # initialize rs1
addi x13, x22, 691 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0xee1e27b46ccdc763 # initialize rs1
addi x14, x8, -814 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xb4d5fcb6e89b9759 # initialize rs1
addi x15, x26, -1715 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0xd58f056dd6f924d6 # initialize rs1
addi x16, x3, -58 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x343b13fd8dd3edcb # initialize rs1
addi x17, x9, 1811 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xea5ab4b472587249 # initialize rs1
addi x18, x18, 585 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x10220b1042a6d6f9 # initialize rs1
addi x19, x6, -1520 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x36cd6ee8d39f2127 # initialize rs1
addi x20, x20, -272 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0x4e331e6b17ccfacd # initialize rs1
addi x21, x23, 786 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x829ccb49c017c857 # initialize rs1
addi x22, x5, -436 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0x7a9b56e84e330244 # initialize rs1
addi x23, x13, -91 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x0e420dc25751322a # initialize rs1
addi x24, x6, -1626 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x13a1474fcc85cd10 # initialize rs1
addi x25, x1, 101 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x23, 0x2ab8a0a2129200db # initialize rs1
addi x26, x23, -940 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xeb1a771621064df2 # initialize rs1
addi x27, x19, -466 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x733690f51cc0b6da # initialize rs1
addi x28, x26, -1856 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x8f580e1d2d682d86 # initialize rs1
addi x29, x21, 857 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x0401a1271b93f450 # initialize rs1
addi x30, x26, 464 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xce0b8990933fc67a # initialize rs1
addi x31, x26, -1783 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
addi x9, x20, -626 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x0000000000000001 # initialize rs1
addi x10, x27, 529 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0x0000000000000002 # initialize rs1
addi x30, x13, -1690 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
addi x18, x27, 1830 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
addi x22, x28, 1854 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
addi x24, x18, 1290 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
addi x7, x11, -840 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
addi x15, x1, -655 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
addi x18, x29, 1787 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
addi x6, x14, -688 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x9, x1, 948 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
addi x5, x26, -133 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
addi x23, x24, 967 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs1
addi x21, x12, 1457 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
addi x29, x20, -896 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
addi x8, x12, -1343 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 632)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
addi x2, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000000 # initialize rs1
addi x8, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
addi x8, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 656)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
addi x14, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
addi x23, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
addi x9, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
addi x28, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000 # initialize rs1
addi x13, x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
addi x27, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 704)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
addi x28, x25, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
addi x23, x27, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 720)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
addi x11, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000000 # initialize rs1
addi x14, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 736)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000000 # initialize rs1
addi x19, x7, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000000 # initialize rs1
addi x15, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 752)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
addi x13, x27, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000000 # initialize rs1
addi x10, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000000 # initialize rs1
addi x30, x3, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 776)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
addi x31, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
addi x18, x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000001 # initialize rs1
addi x9, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
addi x26, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rs1
addi x23, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
addi x10, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
addi x25, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
addi x3, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 840)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
addi x12, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
addi x17, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 856)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000001 # initialize rs1
addi x6, x30, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 864)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000001 # initialize rs1
addi x12, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
addi x23, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
addi x14, x20, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000001 # initialize rs1
addi x22, x28, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000001 # initialize rs1
addi x11, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rs1
addi x5, x8, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 912)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
addi x16, x20, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
addi x31, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 928)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
addi x5, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000001 # initialize rs1
addi x5, x28, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
addi x21, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000002 # initialize rs1
addi x25, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000002 # initialize rs1
addi x8, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000002 # initialize rs1
addi x7, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
addi x21, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 984)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
addi x17, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002 # initialize rs1
addi x19, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1000)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000002 # initialize rs1
addi x28, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1008)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
addi x31, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rs1
addi x19, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
addi x18, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rs1
addi x24, x27, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rs1
addi x17, x9, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
addi x11, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
addi x31, x30, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002 # initialize rs1
addi x16, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1072)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
addi x28, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
addi x29, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000002 # initialize rs1
addi x9, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
addi x27, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1104)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000002 # initialize rs1
addi x9, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
addi x28, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rs1
addi x8, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1128)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
addi x15, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000000 # initialize rs1
addi x23, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
addi x10, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
addi x13, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000000 # initialize rs1
addi x26, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
addi x12, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
addi x8, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
addi x14, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000000 # initialize rs1
addi x7, x27, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1200)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
addi x8, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
addi x31, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1216)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
addi x12, x6, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
addi x23, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1232)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000000 # initialize rs1
addi x10, x31, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1240)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000 # initialize rs1
addi x28, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
addi x21, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1256)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
addi x9, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1264)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000000 # initialize rs1
addi x9, x30, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1272)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rs1
addi x8, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1280)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
addi x1, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1288)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
addi x23, x11, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
addi x16, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1304)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
addi x14, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1312)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001 # initialize rs1
addi x11, x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1320)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000001 # initialize rs1
addi x20, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1328)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
addi x2, x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
addi x22, x20, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001 # initialize rs1
addi x31, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
addi x20, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000001 # initialize rs1
addi x3, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1368)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001 # initialize rs1
addi x11, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
addi x18, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
addi x14, x30, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1392)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
addi x30, x27, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1400)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000001 # initialize rs1
addi x31, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1408)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
addi x5, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1416)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000001 # initialize rs1
addi x28, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rs1
addi x13, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
addi x18, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1440)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffffffffffff # initialize rs1
addi x30, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff # initialize rs1
addi x24, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
addi x2, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1464)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffffffffffff # initialize rs1
addi x29, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1472)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
addi x15, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
addi x20, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1488)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffffffffffff # initialize rs1
addi x6, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cr_rs1_imm_corners
li x21, 0x7fffffffffffffff # initialize rs1
addi x28, x21, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1504)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rs1
addi x14, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
addi x21, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffffffffffff # initialize rs1
addi x6, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1528)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
addi x9, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1536)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
addi x21, x1, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1544)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
addi x26, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
addi x8, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1560)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffffffffffff # initialize rs1
addi x26, x22, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
addi x19, x24, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1576)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
addi x26, x18, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1584)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
addi x11, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1592)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rs1
addi x8, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1600)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rs1
addi x25, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1608)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
addi x12, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1616)

# Testcase cr_rs1_imm_corners
li x6, 0x7ffffffffffffffe # initialize rs1
addi x8, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1624)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
addi x10, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
addi x1, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1640)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffffffffffe # initialize rs1
addi x21, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1648)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffffffffffe # initialize rs1
addi x25, x29, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1656)

# Testcase cr_rs1_imm_corners
li x15, 0x7ffffffffffffffe # initialize rs1
addi x1, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1664)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rs1
addi x7, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1672)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffffffffffe # initialize rs1
addi x6, x22, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1680)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
addi x21, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe # initialize rs1
addi x18, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1696)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
addi x20, x30, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1704)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rs1
addi x28, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffffffffffe # initialize rs1
addi x23, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1720)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
addi x14, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1728)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
addi x11, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1736)

# Testcase cr_rs1_imm_corners
li x22, 0x7ffffffffffffffe # initialize rs1
addi x3, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1744)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rs1
addi x23, x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1752)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
addi x11, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff # initialize rs1
addi x20, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1768)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
addi x2, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1776)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff # initialize rs1
addi x28, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1784)

# Testcase cr_rs1_imm_corners
li x25, 0xffffffffffffffff # initialize rs1
addi x16, x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x23, 0xffffffffffffffff # initialize rs1
addi x13, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffffffffffff # initialize rs1
addi x25, x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
addi x8, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rs1
addi x11, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
addi x12, x18, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
addi x31, x2, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 40)

# Testcase cr_rs1_imm_corners
li x14, 0xffffffffffffffff # initialize rs1
addi x12, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
addi x30, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff # initialize rs1
addi x15, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
addi x21, x3, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffffffffffff # initialize rs1
addi x6, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
addi x14, x6, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
addi x7, x1, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rs1
addi x21, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
addi x3, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
addi x15, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 120)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffffffffffe # initialize rs1
addi x6, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe # initialize rs1
addi x3, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffffffffffe # initialize rs1
addi x8, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
addi x25, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
addi x1, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rs1
addi x16, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rs1
addi x12, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
addi x3, x27, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffffffffffe # initialize rs1
addi x2, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
addi x8, x31, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
addi x13, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
addi x24, x23, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
addi x28, x2, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
addi x28, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
addi x3, x12, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
addi x28, x31, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cr_rs1_imm_corners
li x11, 0xfffffffffffffffe # initialize rs1
addi x9, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 256)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffffffffffe # initialize rs1
addi x3, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
addi x19, x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc887763ae86f2 # initialize rs1
addi x30, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2 # initialize rs1
addi x24, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 288)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc887763ae86f2 # initialize rs1
addi x21, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
addi x3, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
addi x26, x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc887763ae86f2 # initialize rs1
addi x6, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 320)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc887763ae86f2 # initialize rs1
addi x24, x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc887763ae86f2 # initialize rs1
addi x22, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2 # initialize rs1
addi x18, x7, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 344)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
addi x3, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 352)

# Testcase cr_rs1_imm_corners
li x28, 0x5bbc887763ae86f2 # initialize rs1
addi x25, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 360)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc887763ae86f2 # initialize rs1
addi x9, x25, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
addi x29, x6, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cr_rs1_imm_corners
li x15, 0x5bbc887763ae86f2 # initialize rs1
addi x22, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 384)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2 # initialize rs1
addi x23, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc887763ae86f2 # initialize rs1
addi x26, x23, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
addi x27, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 408)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
addi x26, x22, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
addi x22, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
addi x12, x9, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x21, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x5, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 448)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x15, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x20, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x1, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x29, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x29, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x16, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x8, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x14, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x20, x17, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cr_rs1_imm_corners
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x31, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x5, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cr_rs1_imm_corners
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x26, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x24, x8, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x19, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x29, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 568)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x31, x24, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x17, x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x2, x25, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 592)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
addi x30, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
addi x20, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
addi x3, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
addi x26, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 624)

# Testcase cr_rs1_imm_corners
li x1, 0x5555555555555555 # initialize rs1
addi x13, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 632)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
addi x15, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
addi x10, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_imm_corners
li x20, 0x5555555555555555 # initialize rs1
addi x25, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
addi x15, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cr_rs1_imm_corners
li x20, 0x5555555555555555 # initialize rs1
addi x27, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
addi x15, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
addi x13, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 688)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
addi x3, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_imm_corners
li x2, 0x5555555555555555 # initialize rs1
addi x23, x2, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 704)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555 # initialize rs1
addi x28, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 712)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
addi x20, x11, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_imm_corners
li x3, 0x5555555555555555 # initialize rs1
addi x31, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 728)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
addi x23, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 736)

# Testcase cr_rs1_imm_corners
li x30, 0x5555555555555555 # initialize rs1
addi x13, x30, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
addi x2, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rs1
addi x26, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 760)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rs1
addi x19, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
addi x5, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 776)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000ffffffff # initialize rs1
addi x5, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 784)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000ffffffff # initialize rs1
addi x19, x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
addi x1, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 800)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
addi x19, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
addi x16, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000ffffffff # initialize rs1
addi x27, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000ffffffff # initialize rs1
addi x22, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 832)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
addi x31, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rs1
addi x29, x27, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff # initialize rs1
addi x2, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 856)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000ffffffff # initialize rs1
addi x27, x25, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rs1
addi x16, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000ffffffff # initialize rs1
addi x10, x26, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 880)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000ffffffff # initialize rs1
addi x10, x28, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff # initialize rs1
addi x11, x17, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 896)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
addi x26, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 904)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000ffffffff # initialize rs1
addi x16, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000fffffffe # initialize rs1
addi x24, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 920)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe # initialize rs1
addi x9, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
addi x23, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 936)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000fffffffe # initialize rs1
addi x6, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 944)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
addi x7, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
addi x9, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
addi x5, x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
addi x13, x16, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000fffffffe # initialize rs1
addi x10, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
addi x13, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 992)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
addi x11, x22, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe # initialize rs1
addi x12, x9, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000fffffffe # initialize rs1
addi x20, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
addi x6, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
addi x11, x16, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1032)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rs1
addi x2, x12, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
addi x16, x29, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rs1
addi x17, x12, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe # initialize rs1
addi x1, x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
addi x16, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1072)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000 # initialize rs1
addi x25, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1080)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rs1
addi x20, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rs1
addi x15, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
addi x22, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
addi x29, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
addi x26, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000000 # initialize rs1
addi x28, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000 # initialize rs1
addi x20, x30, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1136)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
addi x9, x16, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1144)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
addi x22, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1152)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
addi x12, x7, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000000 # initialize rs1
addi x27, x11, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
addi x22, x7, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
addi x1, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000 # initialize rs1
addi x10, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000100000000 # initialize rs1
addi x21, x23, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000000 # initialize rs1
addi x3, x6, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1208)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000000 # initialize rs1
addi x16, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000000 # initialize rs1
addi x29, x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
addi x5, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1232)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000001 # initialize rs1
addi x14, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
addi x25, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
addi x31, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
addi x23, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
addi x30, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
addi x3, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1280)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
addi x29, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1288)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001 # initialize rs1
addi x6, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1296)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
addi x30, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001 # initialize rs1
addi x26, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rs1
addi x20, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1320)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001 # initialize rs1
addi x2, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
addi x28, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
addi x25, x15, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
addi x22, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
addi x10, x19, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1360)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
addi x14, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001 # initialize rs1
addi x2, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000001 # initialize rs1
addi x11, x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
addi x8, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x1b92f33faca0964c # initialize rs1
addi x0, x0, 100 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xaf64b9d8b7ba32c7 # initialize rs1
addi x1, x1, -1607 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x06517846d36c35e5 # initialize rs1
addi x2, x2, -454 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x44457a0c8100e8c9 # initialize rs1
addi x3, x3, -617 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe10d2ff8a5a80c63 # initialize rs1
addi x4, x4, 1559 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1e9675773d57e1ab # initialize rs1
addi x5, x5, -1672 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc67a4a98ce105a65 # initialize rs1
addi x6, x6, 1034 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb16d3323914130ac # initialize rs1
addi x7, x7, 2006 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x32cafa8e50413152 # initialize rs1
addi x8, x8, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc93d4ccc6df0b631 # initialize rs1
addi x9, x9, 1277 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xde3990212c38d160 # initialize rs1
addi x10, x10, 867 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x07694283a8a3e87f # initialize rs1
addi x11, x11, -1841 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7496fbd4696d5e77 # initialize rs1
addi x12, x12, -152 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x708172540efcf564 # initialize rs1
addi x13, x13, 1449 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1eef9670d8769501 # initialize rs1
addi x14, x14, -1891 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x324c35539cecfa05 # initialize rs1
addi x15, x15, 196 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4c47d79d5bac52f6 # initialize rs1
addi x16, x16, 1854 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc72e178c2a8681d8 # initialize rs1
addi x17, x17, 1240 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbb4a204a8ad443fa # initialize rs1
addi x18, x18, -379 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x306b799043bd66f8 # initialize rs1
addi x19, x19, -933 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xdfde59e5c61be764 # initialize rs1
addi x20, x20, -1508 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1d057f9e5d822109 # initialize rs1
addi x21, x21, -844 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x62dcf305622f649d # initialize rs1
addi x22, x22, 472 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x290c63bd93b1ca80 # initialize rs1
addi x23, x23, -1889 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x88527d7d5c657c3b # initialize rs1
addi x24, x24, -382 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9716cb2362a35d19 # initialize rs1
addi x25, x25, 1406 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x6c579ba4cfb366ef # initialize rs1
addi x26, x26, -1697 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2ee360c339205f4e # initialize rs1
addi x27, x27, 2043 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf07b77cc08f949f2 # initialize rs1
addi x28, x28, -1928 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9ef31a179fa848ff # initialize rs1
addi x29, x29, 1503 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x9c645e5b03f2c727 # initialize rs1
addi x30, x30, 1345 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6422a9c523e0449a # initialize rs1
addi x31, x31, -601 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x23, 0x64345ea3f3f44a25 # initialize rs1
addi x31, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1656)

# Testcase cp_imm_corners
li x26, 0x06f1d4afca137d85 # initialize rs1
addi x2, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1664)

# Testcase cp_imm_corners
li x16, 0xf232d7028f490f14 # initialize rs1
addi x21, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cp_imm_corners
li x2, 0xe2dd736300869e1a # initialize rs1
addi x7, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1680)

# Testcase cp_imm_corners
li x15, 0x1ba94c5a7069ead4 # initialize rs1
addi x30, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1688)

# Testcase cp_imm_corners
li x12, 0xaf3d776baf98a88a # initialize rs1
addi x16, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1696)

# Testcase cp_imm_corners
li x18, 0x472f6f0de1ba26bd # initialize rs1
addi x29, x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1704)

# Testcase cp_imm_corners
li x22, 0x721a3b69a942192b # initialize rs1
addi x23, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cp_imm_corners
li x13, 0xcd2a113e4fc2fd37 # initialize rs1
addi x28, x13, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1720)

# Testcase cp_imm_corners
li x29, 0x020d0629e8665fa5 # initialize rs1
addi x8, x29, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1728)

# Testcase cp_imm_corners
li x31, 0xd37b928b091bee37 # initialize rs1
addi x5, x31, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1736)

# Testcase cp_imm_corners
li x13, 0x7ceef86fa504ee61 # initialize rs1
addi x11, x13, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1744)

# Testcase cp_imm_corners
li x6, 0xeeb1b1a49bebd3e9 # initialize rs1
addi x9, x6, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cp_imm_corners
li x8, 0xdac622cefd323b6a # initialize rs1
addi x20, x8, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1760)

# Testcase cp_imm_corners
li x23, 0x6b7dd998cb84211f # initialize rs1
addi x24, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1768)

# Testcase cp_imm_corners
li x29, 0x51c6b55be14a82d1 # initialize rs1
addi x8, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1776)

# Testcase cp_imm_corners
li x25, 0x7a090d3f7cb18b68 # initialize rs1
addi x29, x25, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1784)

# Testcase cp_imm_corners
li x19, 0x6aed3fb358ba9abc # initialize rs1
addi x13, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x22, 0x06d3d5d5bff24e27 # initialize rs1
addi x23, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_imm_corners
li x7, 0xbb489c4df7e33c4d # initialize rs1
addi x20, x7, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x3, x29 # perform first operation
addi x9, x18, 1314 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x26, x16 # perform first operation
addi x8, x22, -2007 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x18, x20 # perform first operation
addi x2, x13, 1682 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x6, x27 # perform first operation
addi x6, x19, -1680 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x25, x3 # perform first operation
addi x3, x29, 1165 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x23, x18 # perform first operation
addi x18, x7, 1165 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x7, x11 # perform first operation
addi x19, x17, 568 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x6, x31 # perform first operation
addi x7, x23, 1740 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x19, x21 # perform first operation
addi x15, x14, 295 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x15, x7 # perform first operation
addi x15, x12, 1012 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x24, x16 # perform first operation
addi x16, x9, 1323 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x16, x2 # perform first operation
addi x6, x3, -348 # perform second (triggering) operation

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
