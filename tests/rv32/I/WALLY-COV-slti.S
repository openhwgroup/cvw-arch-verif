///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-slti.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.987512
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x2ddecee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4e2e44b8 # initialize rs1
slti x0, x18, 1895 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3d7edfec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9bd05ee0 # initialize rs1
slti x1, x24, 2017 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8a319ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xabc288ea # initialize rs1
slti x2, x27, 1399 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc4c33973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd4ad37ca # initialize rs1
slti x3, x26, -1123 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x370da515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6c753b97 # initialize rs1
slti x4, x2, 1070 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0d8d30bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9437599f # initialize rs1
slti x5, x27, -1676 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x08a9ee52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xab042901 # initialize rs1
slti x6, x9, 182 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x58243587 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5f941368 # initialize rs1
slti x7, x24, 1721 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe2f9b1d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x52697a95 # initialize rs1
slti x8, x8, -1236 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x99e0aff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6397002b # initialize rs1
slti x9, x7, -1005 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x38ab8c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x756a37ae # initialize rs1
slti x10, x24, 1801 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xbec48810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x23d757af # initialize rs1
slti x11, x21, 1525 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb25f5da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x38990121 # initialize rs1
slti x12, x16, -1946 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2e98a272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x60cd0ca6 # initialize rs1
slti x13, x28, -751 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x02e90f1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1868a218 # initialize rs1
slti x14, x12, 1555 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x50200801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd337cf07 # initialize rs1
slti x15, x31, 592 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb85e8406 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9a9497e3 # initialize rs1
slti x16, x25, 1725 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xefdc7d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb40924ab # initialize rs1
slti x17, x8, -649 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x7f28a6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x433333ef # initialize rs1
slti x18, x7, 890 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa962800f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8620bee4 # initialize rs1
slti x19, x23, -891 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x1aa91816 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa7b07902 # initialize rs1
slti x20, x16, -396 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x9acef870 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x900ff295 # initialize rs1
slti x21, x25, 2010 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x24bb4c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x02c7bf36 # initialize rs1
slti x22, x2, 573 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x3a6fe40d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x10c05b3b # initialize rs1
slti x23, x19, -967 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xad4e6a38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa15c4f89 # initialize rs1
slti x24, x27, -986 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x1fe7bad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe96dd74e # initialize rs1
slti x25, x22, -331 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xec3f01fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x008f9e63 # initialize rs1
slti x26, x7, -560 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6681b26b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x22db899b # initialize rs1
slti x27, x15, 372 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xea037350 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf2292df3 # initialize rs1
slti x28, x2, -1861 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xf1d34c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb8e674d3 # initialize rs1
slti x29, x22, 848 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1fe3ddfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa8756817 # initialize rs1
slti x30, x12, -1251 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x63a8ffac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfd41a645 # initialize rs1
slti x31, x21, 1951 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x26, 0x83c4b6ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1e9025a5 # initialize rs1
slti x26, x0, 1502 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x26, 0x4bf9cbc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a49b289 # initialize rs1
slti x26, x1, -23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0x6ed0131f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x913d333a # initialize rs1
slti x8, x2, -1615 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0xd7d152c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe070f236 # initialize rs1
slti x6, x3, -1059 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x7, 0x6b4a7258 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x846797e3 # initialize rs1
slti x7, x4, -1893 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x31, 0xc2559afb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3b94f9f0 # initialize rs1
slti x31, x5, 356 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x24, 0x5b192250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x930cd56d # initialize rs1
slti x24, x6, 2005 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x8, 0x10252aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc3d94884 # initialize rs1
slti x8, x7, 68 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x24, 0xe2deb2f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbb19e454 # initialize rs1
slti x24, x8, 679 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x22, 0x5335d64f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4c5a4ce4 # initialize rs1
slti x22, x9, 1180 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x28, 0xd7894d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3275cce1 # initialize rs1
slti x28, x10, -1925 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xc72c1193 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7a37acd4 # initialize rs1
slti x7, x11, -92 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xb0b092c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xafc03643 # initialize rs1
slti x13, x12, -408 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0xf0d6481f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb98d4a18 # initialize rs1
slti x7, x13, -1487 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0xd06d20c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2aafa94d # initialize rs1
slti x16, x14, -2010 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0x38f9d636 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x115d457c # initialize rs1
slti x22, x15, -1250 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0xc4de3691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x42b5729f # initialize rs1
slti x12, x16, 1660 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x14, 0x505827f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x57bd92f6 # initialize rs1
slti x14, x17, -722 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x461c7146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3dff0383 # initialize rs1
slti x8, x18, -1051 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x8269366d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x24246191 # initialize rs1
slti x28, x19, -606 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0xa68d4926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x98a01cb1 # initialize rs1
slti x3, x20, -1270 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x24, 0xd3f7fca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x17bcfdf8 # initialize rs1
slti x24, x21, -1383 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0x1de0aac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1c30df01 # initialize rs1
slti x8, x22, 1920 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0xb1894a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf0a5917e # initialize rs1
slti x26, x23, -2013 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0xd235427e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xeb49c58a # initialize rs1
slti x9, x24, 2008 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x5fa957d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb0758b85 # initialize rs1
slti x16, x25, -1811 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0xd8d9f15a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7aa3a161 # initialize rs1
slti x2, x26, -1584 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x3db2ae00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd0e87793 # initialize rs1
slti x3, x27, 1351 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x3, 0xa2b572cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9af2cbf8 # initialize rs1
slti x3, x28, 1977 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x13, 0xc370fe2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8abc09c1 # initialize rs1
slti x13, x29, 336 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x23, 0x2d2eaee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa473bb02 # initialize rs1
slti x23, x30, 363 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0x11be628b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4a1119ec # initialize rs1
slti x5, x31, -1212 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xdb295436)
li x9, 0x55247b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55247b39 # initialize rs1
slti x9, x11, 68 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0xcf8da6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs1
slti x7, x13, 978 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0xd58ebde1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
slti x3, x10, 559 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x2ada1d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
slti x23, x9, -1718 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0xd31b559e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
slti x30, x27, -1127 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x16, 0x6a67a6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x16, x11, 1488 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x20, 0x8d0f99e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs1
slti x20, x29, -1614 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x27, 0x9f889c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
slti x27, x15, 824 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0x937f1f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
slti x30, x25, 1449 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xfe642778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
slti x25, x30, -754 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x9, 0xfec910c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc8877 # initialize rs1
slti x9, x16, 1278 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0xd5353dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
slti x24, x10, 720 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x7fa9573d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x55555555 # initialize rs1
slti x2, x20, -123 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf5a6bfdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe7e7294e # initialize rs1
slti x0, x0, -604 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfd4de70e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xee0bac18 # initialize rs1
slti x1, x1, 711 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x29cc3496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1b433163 # initialize rs1
slti x2, x2, -1593 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xac91c821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x90a1fb8c # initialize rs1
slti x3, x3, 1920 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x6c3016e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1ad0b725 # initialize rs1
slti x4, x4, -1827 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x0c880128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc80a42f6 # initialize rs1
slti x5, x5, 2042 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xc620f8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x552c16d5 # initialize rs1
slti x6, x6, 779 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x1b5f67ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd0ebab5 # initialize rs1
slti x7, x7, -2000 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6b1756e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x091421e8 # initialize rs1
slti x8, x8, -497 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x12ee1a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa36dd963 # initialize rs1
slti x9, x9, -346 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4b7138f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15b10154 # initialize rs1
slti x10, x10, 1598 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x11e0d735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0136bc6e # initialize rs1
slti x11, x11, -1587 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7da128ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4855749b # initialize rs1
slti x12, x12, 1028 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x04337cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x69e0d482 # initialize rs1
slti x13, x13, -527 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8399671d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9beb6887 # initialize rs1
slti x14, x14, 304 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf2f15745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe09fa64c # initialize rs1
slti x15, x15, -596 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x41a26c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x76ee8596 # initialize rs1
slti x16, x16, -974 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xdb62bc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa545b98b # initialize rs1
slti x17, x17, 1638 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x31aa3b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc1411fd8 # initialize rs1
slti x18, x18, -391 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x58b6a521 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa37b00da # initialize rs1
slti x19, x19, 1857 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0156726f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7243dcf8 # initialize rs1
slti x20, x20, -423 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x40c9f37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x005cf4ff # initialize rs1
slti x21, x21, -250 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1d6515c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x06d60cc3 # initialize rs1
slti x22, x22, 1892 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4761f800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x87d5bd9b # initialize rs1
slti x23, x23, 1457 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7ef78c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x664b9e22 # initialize rs1
slti x24, x24, 1230 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc1bb874d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd12bd051 # initialize rs1
slti x25, x25, 1089 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xeee01a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc91ab927 # initialize rs1
slti x26, x26, -302 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1590db05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa004e2f9 # initialize rs1
slti x27, x27, -1568 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbbb853ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe05022a6 # initialize rs1
slti x28, x28, -1446 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9b67f736 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x68a03eb2 # initialize rs1
slti x29, x29, -1273 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf8857f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7c4528c7 # initialize rs1
slti x30, x30, 574 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7e467c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00839dd2 # initialize rs1
slti x31, x31, 1083 # perform operation

# Testcase cp_imm_zero
li x5, 0x21195bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3863df21 # initialize rs1
slti x5, x19, 0 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, 0 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, 1 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, 2 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, 1023 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, 1024 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, 2047 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, -2048 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, -2047 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, -2 # perform operation

# Testcase cp_imm_corners
li x6, 0x08cf3bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc5710799 # initialize rs1
slti x6, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
slti x12, x11, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x12, 0xfba97c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
slti x12, x11, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
