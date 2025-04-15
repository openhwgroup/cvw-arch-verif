///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-andi.S
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
li x0, 0x02d6873445f1efea # initialize rs1
andi x29, x0, -982 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8aee347f8872969a # initialize rs1
andi x25, x1, 1335 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x30696323f9af1c10 # initialize rs1
andi x21, x2, -217 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc4acead4fb293fe2 # initialize rs1
andi x19, x3, 397 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64bb3b7fb18ab440 # initialize rs1
andi x3, x4, -262 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x703c22e471e3e46a # initialize rs1
andi x17, x5, 441 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x97f37bb53fa8cbd5 # initialize rs1
andi x30, x6, -532 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd8e263d7edfb231e # initialize rs1
andi x4, x7, -1089 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf5dcafe185306de1 # initialize rs1
andi x30, x8, 1481 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xbc9d3f5d1c040f26 # initialize rs1
andi x8, x9, -1251 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x5bac69fefe06faee # initialize rs1
andi x12, x10, 1522 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbdd30c653c8db55d # initialize rs1
andi x18, x11, 955 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x2c42363a972030fc # initialize rs1
andi x22, x12, 1735 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x63ec739f3ba08665 # initialize rs1
andi x15, x13, -1486 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x24cc1eba9e66a6f3 # initialize rs1
andi x11, x14, 70 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9bc0e0aa1919ea93 # initialize rs1
andi x7, x15, -191 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xba5bab7974cc008f # initialize rs1
andi x1, x16, 277 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x45aeca5712828197 # initialize rs1
andi x2, x17, 1478 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x630cd0920a8b7206 # initialize rs1
andi x23, x18, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xbb3e31127b3aa00c # initialize rs1
andi x20, x19, 1559 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xab8014b8aaf46907 # initialize rs1
andi x25, x20, 1102 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1a182b5f7f0caf25 # initialize rs1
andi x23, x21, -1708 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0b56e952554ef3b9 # initialize rs1
andi x23, x22, 971 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x6345e79c06738b3b # initialize rs1
andi x6, x23, -263 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xeaae3acabe5ab461 # initialize rs1
andi x29, x24, -1336 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x27d21b863270498d # initialize rs1
andi x20, x25, -1963 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x21ca4a557e26f0e9 # initialize rs1
andi x2, x26, -761 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd98b4ca8aa7f7bba # initialize rs1
andi x14, x27, 686 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xbdf8a5410f592bd6 # initialize rs1
andi x20, x28, -1515 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x26f37f30996c0b69 # initialize rs1
andi x16, x29, 1586 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x507d6416399a43c7 # initialize rs1
andi x23, x30, -258 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8b27a4579666d7ae # initialize rs1
andi x24, x31, 950 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 248)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x358c204e405d43b1 # initialize rs1
andi x0, x24, -1278 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x59dfb4e35f96f990 # initialize rs1
andi x1, x21, 264 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x22, 0x289273b6613a145f # initialize rs1
andi x2, x22, 1155 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x7c2e1195aee1d96e # initialize rs1
andi x3, x23, 447 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x19, 0x329b9db7a161d5b7 # initialize rs1
andi x4, x19, -83 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x45db1f6d961522a3 # initialize rs1
andi x5, x14, -1539 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x0e35f329031555b6 # initialize rs1
andi x6, x27, 202 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x3afb94d18b5b4cbd # initialize rs1
andi x7, x16, -1817 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0x9fb795fa626d4324 # initialize rs1
andi x8, x5, 1669 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x6787e4e42cbcef97 # initialize rs1
andi x9, x22, -1508 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x96728a2f82467ec2 # initialize rs1
andi x10, x27, 1603 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x19ba9fb19e0842c1 # initialize rs1
andi x11, x23, 1773 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x31, 0xa137a9375a265bed # initialize rs1
andi x12, x31, -370 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x12, 0x2793a22d78640cdc # initialize rs1
andi x13, x12, 1473 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0xf8047d2f82c072f0 # initialize rs1
andi x14, x2, -1456 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0xba353a155cf42bec # initialize rs1
andi x15, x31, -1504 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x7aee601e9df07c3a # initialize rs1
andi x16, x9, -1004 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x5d34750d120c23b3 # initialize rs1
andi x17, x12, 783 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0xd3e525694c9b14f0 # initialize rs1
andi x18, x20, -1148 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0xed2f70cefb0bf852 # initialize rs1
andi x19, x11, 1311 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x58b0e6c4c5f1a862 # initialize rs1
andi x20, x5, -1064 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8da1f808f1931bc7 # initialize rs1
andi x21, x21, -1465 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x1510a4b300365b90 # initialize rs1
andi x22, x26, -1434 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0xe6845d4e4ed8925e # initialize rs1
andi x23, x22, -518 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x22, 0x8f018536e9cbf1c0 # initialize rs1
andi x24, x22, 1079 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x50ce9d33fd3fd7f3 # initialize rs1
andi x25, x30, -1847 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x4337838c2e9febc8 # initialize rs1
andi x26, x21, 282 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x8, 0x2b1e24758a5cb3a0 # initialize rs1
andi x27, x8, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x77d1c8022b684092 # initialize rs1
andi x28, x2, 1890 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0xeeb48ac7ac1e464b # initialize rs1
andi x29, x15, -695 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x21, 0xc7471ca8b3fe85e2 # initialize rs1
andi x30, x21, 1521 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xaefcef1cc1d4a959 # initialize rs1
andi x31, x5, -1195 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
andi x24, x2, 1650 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x0000000000000001 # initialize rs1
andi x8, x14, 1001 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x0000000000000002 # initialize rs1
andi x31, x23, 1223 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x16, 0x8000000000000000 # initialize rs1
andi x29, x16, 1044 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x22, 0x8000000000000001 # initialize rs1
andi x26, x22, -1925 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
andi x16, x2, -1368 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
andi x26, x2, -1464 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
andi x12, x19, 388 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
andi x29, x14, -400 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x29, 0x5bbc887763ae86f2 # initialize rs1
andi x5, x29, 1456 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x13, x9, 1111 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
andi x12, x26, 444 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
andi x19, x11, -943 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0x00000000fffffffe # initialize rs1
andi x26, x31, 1601 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
andi x17, x15, -1859 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
andi x7, x10, 508 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
andi x18, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
andi x6, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 648)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
andi x7, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
andi x19, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
andi x19, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rs1
andi x27, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 680)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000000 # initialize rs1
andi x16, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
andi x16, x17, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 696)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000000 # initialize rs1
andi x9, x16, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rs1
andi x9, x12, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rs1
andi x2, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 720)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rs1
andi x19, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 728)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000 # initialize rs1
andi x21, x19, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 736)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rs1
andi x17, x11, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 744)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
andi x19, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 752)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
andi x8, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
andi x27, x21, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 768)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000 # initialize rs1
andi x24, x1, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
andi x3, x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000 # initialize rs1
andi x20, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 792)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
andi x5, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
andi x9, x12, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
andi x23, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001 # initialize rs1
andi x17, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
andi x8, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000001 # initialize rs1
andi x26, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 840)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
andi x8, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 848)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rs1
andi x28, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
andi x13, x6, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
andi x31, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000001 # initialize rs1
andi x16, x23, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
andi x8, x9, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
andi x27, x9, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
andi x27, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000001 # initialize rs1
andi x7, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 912)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
andi x20, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rs1
andi x1, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
andi x21, x22, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
andi x10, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
andi x25, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 952)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rs1
andi x17, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000002 # initialize rs1
andi x1, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000002 # initialize rs1
andi x12, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000002 # initialize rs1
andi x7, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000000000002 # initialize rs1
andi x11, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002 # initialize rs1
andi x30, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1000)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000002 # initialize rs1
andi x7, x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
andi x13, x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
andi x16, x30, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
andi x25, x26, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
andi x24, x15, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000002 # initialize rs1
andi x17, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000002 # initialize rs1
andi x27, x30, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002 # initialize rs1
andi x8, x16, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000002 # initialize rs1
andi x12, x25, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002 # initialize rs1
andi x22, x10, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1080)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002 # initialize rs1
andi x28, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1088)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000002 # initialize rs1
andi x12, x17, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
andi x28, x14, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
andi x20, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
andi x30, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
andi x31, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000000 # initialize rs1
andi x22, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000000 # initialize rs1
andi x17, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
andi x25, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1152)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000000 # initialize rs1
andi x20, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000000 # initialize rs1
andi x28, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1168)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
andi x31, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1176)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
andi x15, x18, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
andi x6, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_imm_corners
li x5, 0x8000000000000000 # initialize rs1
andi x10, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1200)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
andi x16, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000000 # initialize rs1
andi x13, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
andi x15, x16, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000 # initialize rs1
andi x15, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1232)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
andi x30, x15, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000000 # initialize rs1
andi x23, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000000 # initialize rs1
andi x9, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000 # initialize rs1
andi x14, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1264)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
andi x15, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1272)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rs1
andi x22, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
andi x11, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1288)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
andi x10, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
andi x16, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1304)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
andi x26, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1312)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
andi x18, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
andi x27, x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
andi x9, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
andi x11, x23, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000001 # initialize rs1
andi x31, x6, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
andi x26, x30, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
andi x6, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001 # initialize rs1
andi x10, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rs1
andi x14, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
andi x3, x26, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
andi x2, x12, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
andi x31, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1408)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000001 # initialize rs1
andi x22, x25, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1416)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
andi x16, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rs1
andi x26, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
andi x12, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff # initialize rs1
andi x19, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
andi x10, x1, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
andi x23, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffffffffffff # initialize rs1
andi x25, x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
andi x14, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
andi x6, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
andi x31, x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffffffffffff # initialize rs1
andi x3, x30, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1504)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
andi x17, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1512)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
andi x24, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1520)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
andi x19, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1528)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rs1
andi x28, x3, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1536)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
andi x14, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1544)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffffffffffff # initialize rs1
andi x5, x22, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1552)

# Testcase cr_rs1_imm_corners
li x22, 0x7fffffffffffffff # initialize rs1
andi x2, x22, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1560)

# Testcase cr_rs1_imm_corners
li x17, 0x7fffffffffffffff # initialize rs1
andi x18, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1568)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
andi x26, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1576)

# Testcase cr_rs1_imm_corners
li x9, 0x7fffffffffffffff # initialize rs1
andi x26, x9, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1584)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
andi x13, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
andi x15, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1600)

# Testcase cr_rs1_imm_corners
li x29, 0x7ffffffffffffffe # initialize rs1
andi x12, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1608)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe # initialize rs1
andi x13, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1616)

# Testcase cr_rs1_imm_corners
li x14, 0x7ffffffffffffffe # initialize rs1
andi x15, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
andi x14, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1632)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
andi x20, x28, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
andi x26, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1648)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
andi x22, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1656)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe # initialize rs1
andi x19, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1664)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe # initialize rs1
andi x11, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1672)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
andi x14, x26, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1680)

# Testcase cr_rs1_imm_corners
li x16, 0x7ffffffffffffffe # initialize rs1
andi x12, x16, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1688)

# Testcase cr_rs1_imm_corners
li x28, 0x7ffffffffffffffe # initialize rs1
andi x30, x28, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1696)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
andi x13, x2, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1704)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
andi x10, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1712)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
andi x1, x24, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1720)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
andi x31, x19, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1728)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
andi x30, x2, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1736)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
andi x3, x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1744)

# Testcase cr_rs1_imm_corners
li x2, 0x7ffffffffffffffe # initialize rs1
andi x7, x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1752)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
andi x28, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1760)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffffffffffff # initialize rs1
andi x5, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1768)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rs1
andi x31, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
andi x22, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1784)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
andi x17, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x21, 0xffffffffffffffff # initialize rs1
andi x19, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff # initialize rs1
andi x22, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff # initialize rs1
andi x30, x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
andi x18, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
andi x26, x24, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
andi x20, x3, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
andi x26, x2, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
andi x28, x1, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
andi x15, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff # initialize rs1
andi x28, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cr_rs1_imm_corners
li x29, 0xffffffffffffffff # initialize rs1
andi x16, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff # initialize rs1
andi x27, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cr_rs1_imm_corners
li x8, 0xffffffffffffffff # initialize rs1
andi x24, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cr_rs1_imm_corners
li x6, 0xffffffffffffffff # initialize rs1
andi x1, x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff # initialize rs1
andi x28, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
andi x24, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe # initialize rs1
andi x26, x13, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
andi x23, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe # initialize rs1
andi x3, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 144)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
andi x14, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffffffffffe # initialize rs1
andi x1, x6, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
andi x22, x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cr_rs1_imm_corners
li x28, 0xfffffffffffffffe # initialize rs1
andi x18, x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cr_rs1_imm_corners
li x17, 0xfffffffffffffffe # initialize rs1
andi x26, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
andi x30, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe # initialize rs1
andi x6, x22, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
andi x13, x20, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe # initialize rs1
andi x11, x8, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
andi x24, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
andi x16, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
andi x11, x26, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
andi x6, x24, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe # initialize rs1
andi x25, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cr_rs1_imm_corners
li x5, 0xfffffffffffffffe # initialize rs1
andi x11, x5, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffffffffffe # initialize rs1
andi x31, x7, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc887763ae86f2 # initialize rs1
andi x7, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc887763ae86f2 # initialize rs1
andi x17, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 288)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2 # initialize rs1
andi x31, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
andi x22, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc887763ae86f2 # initialize rs1
andi x19, x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cr_rs1_imm_corners
li x9, 0x5bbc887763ae86f2 # initialize rs1
andi x28, x9, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 320)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
andi x26, x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
andi x25, x30, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
andi x19, x6, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
andi x19, x22, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 352)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
andi x24, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 360)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
andi x14, x2, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2 # initialize rs1
andi x28, x16, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2 # initialize rs1
andi x24, x10, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 384)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
andi x13, x22, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
andi x20, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f2 # initialize rs1
andi x15, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
andi x29, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cr_rs1_imm_corners
li x7, 0x5bbc887763ae86f2 # initialize rs1
andi x27, x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
andi x22, x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x12, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x24, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x15, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 456)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x10, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 464)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x11, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x19, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_imm_corners
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x19, x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_imm_corners
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x18, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 496)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x10, x25, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x22, x13, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cr_rs1_imm_corners
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x24, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x20, x7, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cr_rs1_imm_corners
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x5, x19, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x26, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x17, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x16, x12, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 560)

# Testcase cr_rs1_imm_corners
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x12, x24, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 568)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x11, x8, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x13, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
andi x13, x21, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
andi x2, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
andi x7, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 608)

# Testcase cr_rs1_imm_corners
li x14, 0x5555555555555555 # initialize rs1
andi x7, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 616)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
andi x8, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555 # initialize rs1
andi x7, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
andi x15, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
andi x22, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
andi x11, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 656)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
andi x26, x6, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 664)

# Testcase cr_rs1_imm_corners
li x1, 0x5555555555555555 # initialize rs1
andi x10, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 672)

# Testcase cr_rs1_imm_corners
li x24, 0x5555555555555555 # initialize rs1
andi x12, x24, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 680)

# Testcase cr_rs1_imm_corners
li x30, 0x5555555555555555 # initialize rs1
andi x15, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
andi x20, x28, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rs1
andi x5, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 704)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
andi x26, x9, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
andi x8, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 720)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
andi x14, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
andi x6, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
andi x14, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_imm_corners
li x20, 0x5555555555555555 # initialize rs1
andi x1, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 752)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
andi x26, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 760)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
andi x3, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 768)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
andi x6, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rs1
andi x27, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000ffffffff # initialize rs1
andi x17, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rs1
andi x8, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 800)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000ffffffff # initialize rs1
andi x3, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rs1
andi x24, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000ffffffff # initialize rs1
andi x31, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rs1
andi x23, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000ffffffff # initialize rs1
andi x30, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
andi x30, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
andi x19, x31, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff # initialize rs1
andi x19, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 864)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
andi x17, x6, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
andi x18, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 880)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
andi x28, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000ffffffff # initialize rs1
andi x23, x12, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000ffffffff # initialize rs1
andi x9, x30, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 904)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
andi x23, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000fffffffe # initialize rs1
andi x13, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
andi x22, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
andi x17, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rs1
andi x25, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
andi x7, x22, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
andi x17, x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
andi x15, x30, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000fffffffe # initialize rs1
andi x25, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 976)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
andi x26, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rs1
andi x23, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_imm_corners
li x25, 0x00000000fffffffe # initialize rs1
andi x24, x25, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
andi x15, x29, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
andi x13, x11, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_imm_corners
li x12, 0x00000000fffffffe # initialize rs1
andi x8, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
andi x19, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
andi x9, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
andi x30, x14, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000fffffffe # initialize rs1
andi x1, x28, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000fffffffe # initialize rs1
andi x1, x10, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
andi x12, x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000 # initialize rs1
andi x26, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000 # initialize rs1
andi x20, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
andi x17, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
andi x30, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
andi x9, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
andi x8, x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1120)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000000 # initialize rs1
andi x28, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
andi x11, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
andi x6, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
andi x25, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1152)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
andi x1, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
andi x24, x7, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1168)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
andi x9, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000100000000 # initialize rs1
andi x29, x9, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1184)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000 # initialize rs1
andi x16, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000100000000 # initialize rs1
andi x13, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1200)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
andi x20, x7, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1208)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
andi x10, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
andi x31, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1224)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000000 # initialize rs1
andi x13, x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
andi x29, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
andi x5, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1248)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000001 # initialize rs1
andi x26, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1256)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
andi x3, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
andi x13, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1272)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001 # initialize rs1
andi x17, x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000001 # initialize rs1
andi x18, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1288)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000001 # initialize rs1
andi x3, x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1296)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
andi x17, x21, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1304)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000001 # initialize rs1
andi x23, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
andi x15, x22, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000001 # initialize rs1
andi x28, x18, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001 # initialize rs1
andi x26, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
andi x16, x27, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
andi x1, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1352)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001 # initialize rs1
andi x31, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rs1
andi x18, x11, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000001 # initialize rs1
andi x7, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1376)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000001 # initialize rs1
andi x18, x7, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
andi x8, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfb879aaa69b42aa7 # initialize rs1
andi x0, x0, -1685 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb49638e0bd8ecf30 # initialize rs1
andi x1, x1, -1911 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x83a91ff865ae9587 # initialize rs1
andi x2, x2, 72 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0f95fbba97854ad3 # initialize rs1
andi x3, x3, 954 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x43fd477e06009bd8 # initialize rs1
andi x4, x4, 1413 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x59a5f79ec89ba5d4 # initialize rs1
andi x5, x5, -1471 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5040d32c9c2639e6 # initialize rs1
andi x6, x6, -296 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd2666456fa69ed8c # initialize rs1
andi x7, x7, 897 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf9b2664add5bd750 # initialize rs1
andi x8, x8, -93 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3eb95114fb5bcb73 # initialize rs1
andi x9, x9, 307 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xdf41c24e430e8a19 # initialize rs1
andi x10, x10, -1120 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xed40eff357740f09 # initialize rs1
andi x11, x11, 1690 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x010f56aff17b4e8f # initialize rs1
andi x12, x12, -389 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x441c799eabe3cede # initialize rs1
andi x13, x13, -287 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xdf1dfd32a4350f48 # initialize rs1
andi x14, x14, -1020 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x18fb1733475f8fbd # initialize rs1
andi x15, x15, 195 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x200c0c5496b538ce # initialize rs1
andi x16, x16, 501 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa3240fb6eecbcb55 # initialize rs1
andi x17, x17, -361 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8e9bef67862e8782 # initialize rs1
andi x18, x18, -1419 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x83670ee41ee40f63 # initialize rs1
andi x19, x19, -1601 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x115257fa983cb827 # initialize rs1
andi x20, x20, 1901 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x009b09116bbc1b3d # initialize rs1
andi x21, x21, 193 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3501d0ef7e2ed287 # initialize rs1
andi x22, x22, -798 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4543ec8bfa5fb1fa # initialize rs1
andi x23, x23, -1436 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe8ae4302a69e6655 # initialize rs1
andi x24, x24, -220 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9980e267c477bf73 # initialize rs1
andi x25, x25, -1816 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe75bdf4100c9955c # initialize rs1
andi x26, x26, -1644 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe2f975b2ff7df59a # initialize rs1
andi x27, x27, -201 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x3c02e001cfce00c0 # initialize rs1
andi x28, x28, -426 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x22a2f3a6edda1664 # initialize rs1
andi x29, x29, -1111 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7ca5729d94ee6729 # initialize rs1
andi x30, x30, 1723 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfba063987111d60d # initialize rs1
andi x31, x31, 1801 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x19, 0xe16cb71b39199bf4 # initialize rs1
andi x18, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1656)

# Testcase cp_imm_corners
li x23, 0xc358e63560e7bb85 # initialize rs1
andi x2, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1664)

# Testcase cp_imm_corners
li x27, 0xa556d038f9288676 # initialize rs1
andi x21, x27, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1672)

# Testcase cp_imm_corners
li x3, 0x1dae1ee2c98fd6f7 # initialize rs1
andi x10, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1680)

# Testcase cp_imm_corners
li x30, 0x852311a9eab89978 # initialize rs1
andi x2, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1688)

# Testcase cp_imm_corners
li x23, 0xee1a5a80b4cb7e2d # initialize rs1
andi x24, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cp_imm_corners
li x24, 0xe75878a8b4c9b256 # initialize rs1
andi x3, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1704)

# Testcase cp_imm_corners
li x27, 0xbd6a49b80e8a12b4 # initialize rs1
andi x11, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cp_imm_corners
li x2, 0x5037422380376ef0 # initialize rs1
andi x17, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1720)

# Testcase cp_imm_corners
li x10, 0x9ce671e2a3df7c52 # initialize rs1
andi x3, x10, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1728)

# Testcase cp_imm_corners
li x5, 0x709e6eae50f9ebb3 # initialize rs1
andi x20, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1736)

# Testcase cp_imm_corners
li x2, 0x9fba379620a92e0d # initialize rs1
andi x15, x2, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cp_imm_corners
li x10, 0x120373fa93b6ab9f # initialize rs1
andi x30, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1752)

# Testcase cp_imm_corners
li x30, 0xf852278cf69c61f7 # initialize rs1
andi x29, x30, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cp_imm_corners
li x23, 0x3e9693c59a82e60e # initialize rs1
andi x30, x23, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cp_imm_corners
li x28, 0x2b190ab0058c573b # initialize rs1
andi x3, x28, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cp_imm_corners
li x27, 0x420df867ddf177be # initialize rs1
andi x24, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cp_imm_corners
li x12, 0x369495b03f21f217 # initialize rs1
andi x16, x12, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x31, 0x8d1faf3884dbb4a6 # initialize rs1
andi x17, x31, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_imm_corners
li x17, 0x5c88a6fb8c15b665 # initialize rs1
andi x6, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x17, x5 # perform first operation
andi x20, x22, 257 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x14, x20 # perform first operation
andi x25, x16, 1305 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x24, x14 # perform first operation
andi x21, x31, 56 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x8, x6 # perform first operation
andi x15, x3, -1483 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x9, x2 # perform first operation
andi x15, x1, -386 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x1, x19 # perform first operation
andi x15, x30, 1479 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x18, x10 # perform first operation
andi x6, x22, 99 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x7, x6 # perform first operation
andi x5, x19, 965 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x25, x10 # perform first operation
andi x29, x22, -664 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x16, x27 # perform first operation
andi x16, x30, 1929 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x25, x9 # perform first operation
andi x9, x16, -1142 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x17, x9 # perform first operation
andi x26, x2, 348 # perform second (triggering) operation

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
