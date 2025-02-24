///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sltiu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.989201
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x6d814460 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x38690729 # initialize rs1
sltiu x0, x15, -329 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x014217b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd2b1ae0b # initialize rs1
sltiu x1, x21, -870 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xa88686a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xaaa03d56 # initialize rs1
sltiu x2, x25, -1930 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x5bc38a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x817efb77 # initialize rs1
sltiu x3, x31, -301 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xcfe742c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x751fbac3 # initialize rs1
sltiu x4, x21, -1653 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x9de47cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbeb11a6e # initialize rs1
sltiu x5, x27, -280 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4a276eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x23b04d41 # initialize rs1
sltiu x6, x23, -1770 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x872d49d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1bae95b1 # initialize rs1
sltiu x7, x2, 1858 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xda5fbe96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2ba05fea # initialize rs1
sltiu x8, x12, 1985 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x857816a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe02b5b34 # initialize rs1
sltiu x9, x5, 156 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7fae2127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe458b23e # initialize rs1
sltiu x10, x28, 1441 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4b042980 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x646da270 # initialize rs1
sltiu x11, x31, -1973 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe61df07a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xdc940f3d # initialize rs1
sltiu x12, x5, -1739 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x02c957e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x35dcdda8 # initialize rs1
sltiu x13, x6, -485 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb2ad3a82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc9a4479f # initialize rs1
sltiu x14, x13, -1970 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4615b941 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x414a3830 # initialize rs1
sltiu x15, x21, -2045 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x85be7c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9404974e # initialize rs1
sltiu x16, x2, -2024 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3389556c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3f6b4c83 # initialize rs1
sltiu x17, x15, -1935 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb4c6b7ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf0c76711 # initialize rs1
sltiu x18, x2, 1346 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x55212f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfabccb08 # initialize rs1
sltiu x19, x5, 1759 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x22716a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf780df78 # initialize rs1
sltiu x20, x9, -1915 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x1c6b4525 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa530bbf2 # initialize rs1
sltiu x21, x1, -403 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xff60cdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x96567e91 # initialize rs1
sltiu x22, x15, 1586 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6616add7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x65cd538e # initialize rs1
sltiu x23, x16, 997 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x43111010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7a3b8ae8 # initialize rs1
sltiu x24, x31, 1525 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x58c51c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x42392d36 # initialize rs1
sltiu x25, x29, 1196 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x9986d96e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x660e4197 # initialize rs1
sltiu x26, x12, -918 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x4409c53c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x02a43d34 # initialize rs1
sltiu x27, x22, 810 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe44691ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xbd154e0b # initialize rs1
sltiu x28, x31, -107 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xf3c7e8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b6c06ef # initialize rs1
sltiu x29, x13, 1322 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xbbbb521f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb084ceda # initialize rs1
sltiu x30, x10, 1401 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x59a86d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbfecf903 # initialize rs1
sltiu x31, x26, -901 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x20, 0xcfca3c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfc22b475 # initialize rs1
sltiu x20, x0, -379 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x10, 0x70176d5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x433428ba # initialize rs1
sltiu x10, x1, 317 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x8a3b855f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x209a5243 # initialize rs1
sltiu x1, x2, 2032 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x7a6299b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe1779838 # initialize rs1
sltiu x2, x3, -1772 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x14, 0x0ecaeeac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3fa6884d # initialize rs1
sltiu x14, x4, -455 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0xce4322df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbfaf3a22 # initialize rs1
sltiu x30, x5, 194 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x30, 0x5fd0685e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x32ff835f # initialize rs1
sltiu x30, x6, 296 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x3, 0x0b89b262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x990e4116 # initialize rs1
sltiu x3, x7, -176 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x26, 0x61f0b540 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4159f32c # initialize rs1
sltiu x26, x8, -1798 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0xfd1718fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5e987ed5 # initialize rs1
sltiu x25, x9, -1492 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x22, 0xf431a780 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x54ac6374 # initialize rs1
sltiu x22, x10, 600 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x26, 0x4e0d2800 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfdfe9792 # initialize rs1
sltiu x26, x11, -1617 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x7f821d12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd810da6b # initialize rs1
sltiu x23, x12, -1470 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0xc329a363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x79d122d3 # initialize rs1
sltiu x17, x13, 1845 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x2, 0xedc0140c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x02b020b7 # initialize rs1
sltiu x2, x14, 826 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x28, 0x07e27426 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf82fbabb # initialize rs1
sltiu x28, x15, -1094 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x6dcff276 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5a1c898f # initialize rs1
sltiu x20, x16, -982 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x6de97764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4903477d # initialize rs1
sltiu x3, x17, -1156 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x6, 0x83ee6d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaacb9b7e # initialize rs1
sltiu x6, x18, 66 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x23, 0xb3eef331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcf0dcdd4 # initialize rs1
sltiu x23, x19, -538 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0xf9cb41f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2044f319 # initialize rs1
sltiu x10, x20, -49 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x3, 0xe239fe88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3006d1ab # initialize rs1
sltiu x3, x21, 42 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0x7893f8de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4e1076e1 # initialize rs1
sltiu x3, x22, 1915 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0xf857f188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x646a530d # initialize rs1
sltiu x26, x23, -186 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x375da1a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9123c8a9 # initialize rs1
sltiu x15, x24, -1972 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x6d6aa65a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x49a8bd27 # initialize rs1
sltiu x31, x25, 1281 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x6, 0x7fd15fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4d3f6f2b # initialize rs1
sltiu x6, x26, -1010 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xcc010e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x56b0a8b7 # initialize rs1
sltiu x17, x27, -1698 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x50b20f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb735fcad # initialize rs1
sltiu x23, x28, -292 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x207bbcf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x260de055 # initialize rs1
sltiu x16, x29, 238 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x26, 0x7338fe55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x209e96ad # initialize rs1
sltiu x26, x30, 1425 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x7, 0x8373a9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5d59265c # initialize rs1
sltiu x7, x31, -144 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xa9250cd4)
li x31, 0x3bfb58c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3bfb58c0 # initialize rs1
sltiu x31, x10, -876 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x26a0dd91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000 # initialize rs1
sltiu x3, x28, 286 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0xfe7ccc8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000001 # initialize rs1
sltiu x10, x16, -1503 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0xf296f34f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000002 # initialize rs1
sltiu x25, x26, -926 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x4bb33f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
sltiu x11, x31, 456 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x16, 0xf7452991 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # initialize rs1
sltiu x16, x21, -2033 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x0fe6d7d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
sltiu x28, x18, 627 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0xb39b9d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
sltiu x20, x31, -602 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x206d89f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
sltiu x8, x10, 1140 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xdf7cd715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x8, x27, 1262 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x9, 0x979b882b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc8877 # initialize rs1
sltiu x9, x6, 1508 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0x64f3b8c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
sltiu x9, x17, 616 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x14, 0xeea0cc38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x55555555 # initialize rs1
sltiu x14, x30, -1035 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x68127de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x38de2951 # initialize rs1
sltiu x0, x0, 660 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd8990c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xefba3c39 # initialize rs1
sltiu x1, x1, 1899 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x211fcc20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf3154959 # initialize rs1
sltiu x2, x2, -1547 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7f56561b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4d2bc605 # initialize rs1
sltiu x3, x3, 1193 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xf7ca8574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x34be4087 # initialize rs1
sltiu x4, x4, -1505 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6282e876 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7c7dea34 # initialize rs1
sltiu x5, x5, 1726 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x4ed0d796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x873e37ba # initialize rs1
sltiu x6, x6, 659 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x44a8a8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaef6b1da # initialize rs1
sltiu x7, x7, -1866 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x7fd9cce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1d7a6c85 # initialize rs1
sltiu x8, x8, 1359 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3d88a268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80af411b # initialize rs1
sltiu x9, x9, 150 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9e08c01e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x37c58fe9 # initialize rs1
sltiu x10, x10, 975 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa60bba59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1043c797 # initialize rs1
sltiu x11, x11, 1307 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe3f197ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2e5d7b2c # initialize rs1
sltiu x12, x12, -2022 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa40b492c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6bcdb22c # initialize rs1
sltiu x13, x13, -521 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xcced9bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa5d98e46 # initialize rs1
sltiu x14, x14, 1116 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x24ae5d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x73e3a3e2 # initialize rs1
sltiu x15, x15, 499 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x89e1d588 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6ce9a1f0 # initialize rs1
sltiu x16, x16, 763 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb1153c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2803a1fd # initialize rs1
sltiu x17, x17, 213 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x949f3129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x871d65dc # initialize rs1
sltiu x18, x18, -1739 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2c79f75a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa32b2608 # initialize rs1
sltiu x19, x19, -895 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xaf0e05f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x13a70978 # initialize rs1
sltiu x20, x20, 184 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x44777a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1e196283 # initialize rs1
sltiu x21, x21, -1098 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3a209697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0593f597 # initialize rs1
sltiu x22, x22, 52 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdb78c98c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4c79f92e # initialize rs1
sltiu x23, x23, -7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x379b6214 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x78f5ec2d # initialize rs1
sltiu x24, x24, 2009 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x09b488af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xad487d88 # initialize rs1
sltiu x25, x25, 270 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x31ee6748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x369e7d96 # initialize rs1
sltiu x26, x26, 213 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x047acd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2309b245 # initialize rs1
sltiu x27, x27, -1630 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x51229831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7426496e # initialize rs1
sltiu x28, x28, 1681 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x863c9a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd2c9fb9d # initialize rs1
sltiu x29, x29, 863 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x71a5b176 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc213d3cf # initialize rs1
sltiu x30, x30, -1306 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb64aec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc5bcf36b # initialize rs1
sltiu x31, x31, -1980 # perform operation

# Testcase cp_imm_zero
li x29, 0xbcfa9c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x493fe6b1 # initialize rs1
sltiu x29, x8, 0 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, 0 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, 1 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, 2 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, 1023 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, 1024 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, 2047 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, -2048 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, -2047 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, -2 # perform operation

# Testcase cp_imm_corners
li x31, 0x3d65deec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b78586c # initialize rs1
sltiu x31, x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000001 # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000002 # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000001 # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa # initialize rs1
sltiu x19, x27, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x19, 0x08b371f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x55555555 # initialize rs1
sltiu x19, x27, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
