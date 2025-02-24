///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-andi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.931692
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xf78641eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdf4e5a0c # initialize rs1
andi x0, x13, -1805 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x568417d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc1297e8e # initialize rs1
andi x1, x12, -749 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf5f19325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9713b6a6 # initialize rs1
andi x2, x6, -907 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8ce8be89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfaaa0c92 # initialize rs1
andi x3, x25, -1321 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x6d6f8f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x02e04995 # initialize rs1
andi x4, x8, 378 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3fb3c889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0bd0ce6d # initialize rs1
andi x5, x3, -1665 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xacb3e64b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc8498c44 # initialize rs1
andi x6, x16, 1036 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x9f34d0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9b28fcc2 # initialize rs1
andi x7, x27, 1548 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9698bdcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2028332f # initialize rs1
andi x8, x3, 642 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8bb366b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x33976f54 # initialize rs1
andi x9, x27, -353 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x64078a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9c976417 # initialize rs1
andi x10, x14, 3 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd2764690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb673d4be # initialize rs1
andi x11, x28, -293 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3d7527e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4d373593 # initialize rs1
andi x12, x4, 1475 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x4915bd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa2672c74 # initialize rs1
andi x13, x23, -2033 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x95b71925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x663257fc # initialize rs1
andi x14, x26, 426 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x5511b256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x23dd1c7f # initialize rs1
andi x15, x14, -422 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd4e36136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8dd9c7d4 # initialize rs1
andi x16, x19, -1272 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x775e9378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x54f71c87 # initialize rs1
andi x17, x24, 1423 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x6a2f845d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8f38b308 # initialize rs1
andi x18, x2, -430 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x1ba61672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x920a9b43 # initialize rs1
andi x19, x16, 494 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa16807b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x30c4b834 # initialize rs1
andi x20, x17, -81 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa428231e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe1f0c5f4 # initialize rs1
andi x21, x10, 574 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x074001e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ce7194b # initialize rs1
andi x22, x21, 1815 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xeeeab981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x20cf66ad # initialize rs1
andi x23, x4, 1274 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x637ab4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe555a8cd # initialize rs1
andi x24, x27, -1427 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x905edb7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe010277e # initialize rs1
andi x25, x20, -1859 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe3a56430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb6aa9141 # initialize rs1
andi x26, x20, -1470 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0322d289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x94b26c54 # initialize rs1
andi x27, x13, -134 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x5b1c7ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x446d159e # initialize rs1
andi x28, x25, 1926 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x911f493c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x716077f5 # initialize rs1
andi x29, x30, -152 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x60ff1e50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8f9b0bda # initialize rs1
andi x30, x23, -495 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5af28d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x35d74923 # initialize rs1
andi x31, x13, 1589 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x22, 0x9e9d3b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x34eba27e # initialize rs1
andi x22, x0, -1281 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0x7d03dd28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7324cb18 # initialize rs1
andi x27, x1, -1914 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x776df3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8d461211 # initialize rs1
andi x29, x2, 1793 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0xdaacae0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xac8a20f1 # initialize rs1
andi x15, x3, 2027 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x14, 0xf7789a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2dfc297a # initialize rs1
andi x14, x4, -439 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x22, 0xd2c68435 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcb6ed5e8 # initialize rs1
andi x22, x5, -1681 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x20, 0xaee60ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd72f4c94 # initialize rs1
andi x20, x6, -1571 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x2, 0x1549cdee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf6b5d674 # initialize rs1
andi x2, x7, 1653 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x18, 0x6ce1c840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0215785d # initialize rs1
andi x18, x8, -939 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0xa35d9f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf005398f # initialize rs1
andi x14, x9, -754 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x33f232a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xad645c15 # initialize rs1
andi x2, x10, -1954 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0x584ca7a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc402bb0e # initialize rs1
andi x25, x11, 558 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0xddefd680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x880243b7 # initialize rs1
andi x31, x12, 62 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x20, 0xbde99b9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x46828f04 # initialize rs1
andi x20, x13, -1315 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x19, 0x5a2b8021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x38b28557 # initialize rs1
andi x19, x14, 585 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x25, 0xdb13f394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x38b7db84 # initialize rs1
andi x25, x15, 969 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x13, 0x92126ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbbfc4e14 # initialize rs1
andi x13, x16, 771 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x5541b40f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb3be5167 # initialize rs1
andi x2, x17, -1903 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0x462693ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd8958961 # initialize rs1
andi x4, x18, -1157 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0xc9e51944 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6d93be7f # initialize rs1
andi x18, x19, -1739 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x31, 0x8d704dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x359aca20 # initialize rs1
andi x31, x20, -1241 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x666b2ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xff86e9fd # initialize rs1
andi x12, x21, -1576 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0x42d1ce27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xce518ffc # initialize rs1
andi x27, x22, -1437 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x6228186d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x85bb8af0 # initialize rs1
andi x9, x23, -1579 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x989d031e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x42db17dc # initialize rs1
andi x15, x24, -1102 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x23, 0x31b72979 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x216d8b51 # initialize rs1
andi x23, x25, 756 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0x50ee5b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xede334bf # initialize rs1
andi x12, x26, -1492 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x20, 0xec50b302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x03aaa702 # initialize rs1
andi x20, x27, 1421 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x26, 0x5b8cdd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7cde58cd # initialize rs1
andi x26, x28, 416 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x7b1a7528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa5660ca1 # initialize rs1
andi x5, x29, 1496 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0xe39d9cce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb0799c74 # initialize rs1
andi x28, x30, -1667 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0x78f7c9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1089f14a # initialize rs1
andi x29, x31, -417 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x6ac4efcb)
li x11, 0x410e50fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x410e50fc # initialize rs1
andi x11, x15, 1002 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x8a0f4fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
andi x23, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0xf9c42258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs1
andi x19, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xf7892518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
andi x8, x19, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xff5b7985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs1
andi x10, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x8b20c56f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
andi x5, x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x440473fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x4, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x0c89f318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
andi x17, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x95855342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
andi x8, x29, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0x78dfcadf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
andi x20, x12, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0xee24e998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
andi x7, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x05a80eca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000000 # initialize rs1
andi x29, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x4, 0x32010fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
andi x4, x6, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0x3c0dd51a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x17, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x31, 0x81d7f3df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
andi x31, x3, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0x0d100f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
andi x1, x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xe0c6b1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs1
andi x28, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x27, 0x539498a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff # initialize rs1
andi x27, x26, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x8, 0x192546e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
andi x8, x3, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0xd4ed51bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
andi x12, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x1, 0x1ed30bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x1, x21, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0x8f64d801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
andi x6, x12, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x21, 0x6b3b9695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize rs1
andi x21, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0x4cb4ac37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
andi x16, x6, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x17c7e2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
andi x24, x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x2, 0x78a51ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
andi x2, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0xd1dfbcc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
andi x28, x22, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x484e3e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
andi x30, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x8, 0x0b96eda5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
andi x8, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x14, 0x5e573ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
andi x14, x31, -1929 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x20, 0xd5e25c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
andi x20, x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0xa1f98f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaaaaaaaa # initialize rs1
andi x14, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0x07dc5d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
andi x14, x31, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x7d7476b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
andi x17, x5, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x24, 0x6449761d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
andi x24, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x4, 0x662741f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
andi x4, x30, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x13, 0x65b57e18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
andi x13, x26, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x779f5650 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
andi x3, x28, -1464 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x62d55697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
andi x28, x31, -1183 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x142ea869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
andi x12, x10, 1810 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x84fa1802 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000000 # initialize rs1
andi x3, x20, -395 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x1, 0xbb8871b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
andi x1, x9, 1170 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x15, 0x554e189d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
andi x15, x31, 352 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x18, 0x70a79039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize rs1
andi x18, x13, -521 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xc5eeaa53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
andi x29, x5, 1264 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xf7fb74c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
andi x8, x15, -611 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x31, 0xecf5b4ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
andi x31, x20, 1911 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x18, 0x9a472aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs1
andi x18, x24, -732 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0xc0862c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x55555555 # initialize rs1
andi x15, x18, 2025 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7a3e059d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x11c20620 # initialize rs1
andi x0, x0, 777 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1bb9fa28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf73a57dd # initialize rs1
andi x1, x1, 1983 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc200f3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x05a0101a # initialize rs1
andi x2, x2, -2020 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xdaeea67f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc49b1e9e # initialize rs1
andi x3, x3, 820 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xf63d0aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00edb229 # initialize rs1
andi x4, x4, 1416 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xaf225921 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6eae7cf6 # initialize rs1
andi x5, x5, 1064 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x660c2138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xab636bbf # initialize rs1
andi x6, x6, 510 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xf4bb2a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe301d7ea # initialize rs1
andi x7, x7, 130 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdb1f4aad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9284cc11 # initialize rs1
andi x8, x8, -1832 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xdd76699d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbd78c1c1 # initialize rs1
andi x9, x9, 242 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0c5f152b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a4ce4ae # initialize rs1
andi x10, x10, -573 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xad981793 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x076fdbae # initialize rs1
andi x11, x11, 908 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4bc1da7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcab74ebe # initialize rs1
andi x12, x12, 1125 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf6492aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf848c24c # initialize rs1
andi x13, x13, 1760 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1b006c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdcfe2264 # initialize rs1
andi x14, x14, -1640 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5bfcb81f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xefccc53c # initialize rs1
andi x15, x15, -1150 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe6188f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x602f0f2c # initialize rs1
andi x16, x16, -350 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3a306049 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x350e68a6 # initialize rs1
andi x17, x17, 927 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe14a53ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3e113c1b # initialize rs1
andi x18, x18, -1883 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa904a5ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6cd901bb # initialize rs1
andi x19, x19, 1608 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xbb56af29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3d29df96 # initialize rs1
andi x20, x20, 22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfb2dd57b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8953d9bb # initialize rs1
andi x21, x21, -1345 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x795486cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb7698c60 # initialize rs1
andi x22, x22, -993 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x694fca09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x84d4d4ec # initialize rs1
andi x23, x23, -1889 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x08b34bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x46a1b09b # initialize rs1
andi x24, x24, -1756 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb12d652d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8f71b0d5 # initialize rs1
andi x25, x25, 304 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xd8076a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x338db82e # initialize rs1
andi x26, x26, 1555 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6c23fcf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc89f2909 # initialize rs1
andi x27, x27, 1406 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7349b23b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd9600817 # initialize rs1
andi x28, x28, -244 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4dc20c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf76b5e22 # initialize rs1
andi x29, x29, -767 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa9f9699a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x649190ae # initialize rs1
andi x30, x30, -254 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8d113e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x09449a97 # initialize rs1
andi x31, x31, -531 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x304cb53b)
li x29, 0x1eceaac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x304cb53b # initialize rs1
andi x29, x21, -713 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x23d5ef9e)
li x20, 0x5a2d5998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdc2a1062 # initialize rs1
andi x20, x14, -1333 # perform operation

# Testcase cp_imm_zero
li x22, 0x6761d457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x48f77efb # initialize rs1
andi x22, x12, 0 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, 0 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, 1 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, 2 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, 1023 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, 1024 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, 2047 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, -2048 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, -2047 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, -2 # perform operation

# Testcase cp_imm_corners
li x18, 0x44f7d634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x13713dc1 # initialize rs1
andi x18, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000001 # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7ffffffe # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfffffffe # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaa # initialize rs1
andi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x29, 0x986fad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs1
andi x29, x21, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
