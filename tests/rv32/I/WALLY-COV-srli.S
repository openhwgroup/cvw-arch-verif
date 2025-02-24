///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-srli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.003556
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x7dd1c98f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd99b8883 # initialize rs1
srli x0, x17, 1 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x73800c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc115ce13 # initialize rs1
srli x1, x10, 7 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x2d67cbb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x667df408 # initialize rs1
srli x2, x16, 27 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x29be1852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x968c120c # initialize rs1
srli x3, x10, 19 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x2986adc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f5c3b7b # initialize rs1
srli x4, x8, 1 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7a73f9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4194822a # initialize rs1
srli x5, x8, 4 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xda76254a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd5c28901 # initialize rs1
srli x6, x13, 21 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x7d08fd3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc5992245 # initialize rs1
srli x7, x21, 17 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf98aa17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf6cf17c8 # initialize rs1
srli x8, x23, 29 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9753743d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc899275c # initialize rs1
srli x9, x30, 14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x68928c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf1c397a3 # initialize rs1
srli x10, x4, 0 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x086ab3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb311257f # initialize rs1
srli x11, x5, 8 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xcbe4c8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x70b3c563 # initialize rs1
srli x12, x28, 22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x65d906e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x676659e7 # initialize rs1
srli x13, x2, 16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5ed4036f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x56c55b96 # initialize rs1
srli x14, x23, 6 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x944ad9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xde0118cc # initialize rs1
srli x15, x23, 2 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x74beac21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7322f4c6 # initialize rs1
srli x16, x23, 29 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xae3ea5c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x52a02835 # initialize rs1
srli x17, x10, 12 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3fb951d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe87d116d # initialize rs1
srli x18, x11, 22 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x1a83d64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb0b8ea30 # initialize rs1
srli x19, x14, 6 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x14e4a38d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2b95f4b5 # initialize rs1
srli x20, x7, 10 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3e1f094f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe5b12c93 # initialize rs1
srli x21, x5, 20 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xba6089ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe79bdcc8 # initialize rs1
srli x22, x20, 11 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x27f9fb79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xac12893e # initialize rs1
srli x23, x15, 26 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xfeeb1d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd08106d5 # initialize rs1
srli x24, x12, 3 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xb0e02410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3398f9c0 # initialize rs1
srli x25, x12, 4 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x073331d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd0a38762 # initialize rs1
srli x26, x11, 26 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xb2a088e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6fe18f0b # initialize rs1
srli x27, x8, 17 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe3131aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd81b8839 # initialize rs1
srli x28, x11, 31 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe0487681 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x27d6d426 # initialize rs1
srli x29, x2, 24 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x00ebfed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfa2bd3ae # initialize rs1
srli x30, x23, 18 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xdb2db734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3e160642 # initialize rs1
srli x31, x9, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x5, 0x60ab4ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3d748476 # initialize rs1
srli x5, x0, 22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x19, 0x8c1aa84d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4cfc947b # initialize rs1
srli x19, x1, 19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x01f5184b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2b20cf2a # initialize rs1
srli x23, x2, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x18, 0x8f55b6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2b897994 # initialize rs1
srli x18, x3, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x14, 0xf6c3cbfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x196c4a5c # initialize rs1
srli x14, x4, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0xfccf4d84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcc51ff64 # initialize rs1
srli x9, x5, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0x98c6c5af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x15ea4516 # initialize rs1
srli x12, x6, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x20, 0xa13b3b81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xcae2c72d # initialize rs1
srli x20, x7, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0x1f1b1241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xabb1b3ec # initialize rs1
srli x2, x8, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x594f16d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x704c8992 # initialize rs1
srli x5, x9, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x3fe4dcc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1597b3a1 # initialize rs1
srli x13, x10, 25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x19, 0xf940aff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x36818836 # initialize rs1
srli x19, x11, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x10afe6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x88ec7fcc # initialize rs1
srli x11, x12, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0xd36b5a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00d85a91 # initialize rs1
srli x16, x13, 4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0xebe4c133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdad81bd7 # initialize rs1
srli x22, x14, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0xb8b47ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9414fa0f # initialize rs1
srli x31, x15, 7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0x6f5f9dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4dbdd259 # initialize rs1
srli x4, x16, 15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0xf0a388bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe9d8189f # initialize rs1
srli x10, x17, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0xbd14884c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x40be00d5 # initialize rs1
srli x23, x18, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0x6b25039c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5258d7c1 # initialize rs1
srli x7, x19, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x19, 0x34176dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf08764a2 # initialize rs1
srli x19, x20, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0x891b6271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1217fc78 # initialize rs1
srli x9, x21, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x14, 0x7eced7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x573f33aa # initialize rs1
srli x14, x22, 19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x16, 0x49150341 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x83dc7857 # initialize rs1
srli x16, x23, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0x75dabc44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf9b163e6 # initialize rs1
srli x19, x24, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x4, 0x07c2c1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcda22bba # initialize rs1
srli x4, x25, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0x820abe2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcbaac293 # initialize rs1
srli x20, x26, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0xe26262c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd46ebee3 # initialize rs1
srli x31, x27, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0xa3326207 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb7a28bdc # initialize rs1
srli x17, x28, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0xb408153a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5d447de5 # initialize rs1
srli x31, x29, 3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x8, 0x834c1644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x54e0bd17 # initialize rs1
srli x8, x30, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0xe3ebf326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2e03435d # initialize rs1
srli x3, x31, 26 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xd81f0f7c)
li x17, 0x7fb1d429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fb1d429 # initialize rs1
srli x17, x26, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x66366c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
srli x16, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0x424abad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000 # initialize rs1
srli x8, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x72ef0aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
srli x11, x5, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x24, 0xb879cf38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
srli x24, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0x9b85e5fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
srli x11, x7, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xc12e83ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
srli x27, x16, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x22bd478c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # initialize rs1
srli x21, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x6bf7d54d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
srli x9, x31, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x10ac17be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
srli x9, x26, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0x5c7383f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000000 # initialize rs1
srli x21, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x9882a78b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
srli x18, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x30, 0x6f7b7f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
srli x30, x28, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0x58b0777f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # initialize rs1
srli x21, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x31, 0x9f2341a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs1
srli x31, x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x4, 0xc2869b8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
srli x4, x1, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x1, 0x3057a06a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7fffffff # initialize rs1
srli x1, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x15, 0xa9e0e170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
srli x15, x8, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x15, 0x14f9a3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
srli x15, x10, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x28, 0xaa881fad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs1
srli x28, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0xbc78b6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize rs1
srli x24, x15, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0x09375fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
srli x12, x10, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x98a93d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
srli x17, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x23, 0xf2ce17ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
srli x23, x22, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0x3bd71ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
srli x2, x7, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0xd2816c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffe # initialize rs1
srli x17, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0x6a5d41ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffe # initialize rs1
srli x27, x6, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0xf9e9ae55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
srli x14, x24, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x23, 0xe18a5b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
srli x23, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x2, 0xe1d493de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
srli x2, x30, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x1, 0x6258e72f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
srli x1, x2, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xf4ccc156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
srli x21, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x10, 0x231a1f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
srli x10, x23, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x23, 0x9a8acc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
srli x23, x17, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x14, 0x7442a110 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
srli x14, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x10, 0x76d36bab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
srli x10, x24, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x12, 0x75d5326c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
srli x12, x10, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x85c49b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
srli x31, x12, 6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x11a8f59a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
srli x3, x20, 20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x08cb5218 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
srli x19, x3, 11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x31, 0xd38df3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
srli x31, x2, 2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x87d5da75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
srli x19, x9, 6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x46f70f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
srli x12, x11, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0xec30ca3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
srli x25, x17, 4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x451b4061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
srli x8, x4, 24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0xffbff977 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffe # initialize rs1
srli x16, x19, 25 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x26, 0x33658295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc8877 # initialize rs1
srli x26, x5, 5 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xfec6f26a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
srli x1, x3, 21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x4fc42759 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
srli x25, x31, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9c514b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa4b6ceba # initialize rs1
srli x0, x0, 16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2c0e8f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0d740191 # initialize rs1
srli x1, x1, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc81ea7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x36826521 # initialize rs1
srli x2, x2, 16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xcdd97035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf222c619 # initialize rs1
srli x3, x3, 5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x0ea72189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x75a5d9f2 # initialize rs1
srli x4, x4, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xaee0c955 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3deeaca5 # initialize rs1
srli x5, x5, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x40a549b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1ba6f45c # initialize rs1
srli x6, x6, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x1305030c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x797c6127 # initialize rs1
srli x7, x7, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb1ab7152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4188e388 # initialize rs1
srli x8, x8, 27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8e8f189f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5d6bd07b # initialize rs1
srli x9, x9, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x90285b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9363af39 # initialize rs1
srli x10, x10, 31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xba85506d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8235ee1e # initialize rs1
srli x11, x11, 13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x56f1468a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x37a8785f # initialize rs1
srli x12, x12, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe6985b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x38953107 # initialize rs1
srli x13, x13, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4327d8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcd1fac60 # initialize rs1
srli x14, x14, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6f45a722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0adb78d6 # initialize rs1
srli x15, x15, 27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5fa1d384 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xddc90608 # initialize rs1
srli x16, x16, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x95d0046c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf0efa315 # initialize rs1
srli x17, x17, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8ef42399 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8963fb15 # initialize rs1
srli x18, x18, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6d0c3760 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc391e394 # initialize rs1
srli x19, x19, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8d62367f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9efeb886 # initialize rs1
srli x20, x20, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5fa81fca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x83ef2a89 # initialize rs1
srli x21, x21, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbff9d3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd2041051 # initialize rs1
srli x22, x22, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x64d18cb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x460447a0 # initialize rs1
srli x23, x23, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xba33af22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x54948a15 # initialize rs1
srli x24, x24, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x50f4357a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0d027a32 # initialize rs1
srli x25, x25, 20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc1335fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xce1181d8 # initialize rs1
srli x26, x26, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xacd61b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xeaca829e # initialize rs1
srli x27, x27, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4b5a3c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x40220045 # initialize rs1
srli x28, x28, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x962c81ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x72286091 # initialize rs1
srli x29, x29, 24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8e1502d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0ef70861 # initialize rs1
srli x30, x30, 1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6f6935e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x60bf4b88 # initialize rs1
srli x31, x31, 18 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x56d1efb2)
li x3, 0xae9bbf5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x56d1efb2 # initialize rs1
srli x3, x6, 1 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x1ba32d98)
li x16, 0xadcf18da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe45cd268 # initialize rs1
srli x16, x10, 14 # perform operation

# Testcase cp_imm_shift
li x23, 0x4adda3c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x45f5fcf8 # initialize rs1
srli x23, x6, 0 # perform operation

# Testcase cp_imm_shift
li x30, 0xcc875566 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb480dc4b # initialize rs1
srli x30, x17, 1 # perform operation

# Testcase cp_imm_shift
li x14, 0x80899827 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb5a09c7d # initialize rs1
srli x14, x17, 2 # perform operation

# Testcase cp_imm_shift
li x5, 0xcdcd1259 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x594f7f33 # initialize rs1
srli x5, x19, 3 # perform operation

# Testcase cp_imm_shift
li x22, 0x226a7c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x36a47ce5 # initialize rs1
srli x22, x12, 4 # perform operation

# Testcase cp_imm_shift
li x16, 0x866445ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa80262cf # initialize rs1
srli x16, x4, 5 # perform operation

# Testcase cp_imm_shift
li x8, 0xac0bad46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x72489baf # initialize rs1
srli x8, x29, 6 # perform operation

# Testcase cp_imm_shift
li x4, 0x428b936d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb524013b # initialize rs1
srli x4, x20, 7 # perform operation

# Testcase cp_imm_shift
li x1, 0x7b378c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5af52759 # initialize rs1
srli x1, x31, 8 # perform operation

# Testcase cp_imm_shift
li x2, 0xe259ff36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd09eee58 # initialize rs1
srli x2, x5, 9 # perform operation

# Testcase cp_imm_shift
li x12, 0x4b3d23a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6387a22d # initialize rs1
srli x12, x16, 10 # perform operation

# Testcase cp_imm_shift
li x29, 0xa902bb02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80b03fa4 # initialize rs1
srli x29, x7, 11 # perform operation

# Testcase cp_imm_shift
li x14, 0x62bc5761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf508983f # initialize rs1
srli x14, x12, 12 # perform operation

# Testcase cp_imm_shift
li x2, 0x6003652c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf58db259 # initialize rs1
srli x2, x29, 13 # perform operation

# Testcase cp_imm_shift
li x11, 0x9af82fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd3d6f4f0 # initialize rs1
srli x11, x30, 14 # perform operation

# Testcase cp_imm_shift
li x21, 0x6fd0d1b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5c8fce22 # initialize rs1
srli x21, x17, 15 # perform operation

# Testcase cp_imm_shift
li x11, 0xbaadce5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x05936a3a # initialize rs1
srli x11, x24, 16 # perform operation

# Testcase cp_imm_shift
li x3, 0x41f5e4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x414f8f75 # initialize rs1
srli x3, x10, 17 # perform operation

# Testcase cp_imm_shift
li x24, 0x86ab209d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6266009d # initialize rs1
srli x24, x13, 18 # perform operation

# Testcase cp_imm_shift
li x28, 0x1ea56bc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x22d4bfea # initialize rs1
srli x28, x1, 19 # perform operation

# Testcase cp_imm_shift
li x31, 0xe4abe9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf343cf94 # initialize rs1
srli x31, x3, 20 # perform operation

# Testcase cp_imm_shift
li x1, 0x04c34f89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0ce36024 # initialize rs1
srli x1, x4, 21 # perform operation

# Testcase cp_imm_shift
li x9, 0x6bf466e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5816847e # initialize rs1
srli x9, x30, 22 # perform operation

# Testcase cp_imm_shift
li x8, 0x8b0c8dee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9d7b7a31 # initialize rs1
srli x8, x23, 23 # perform operation

# Testcase cp_imm_shift
li x24, 0xf29da9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0bf6502d # initialize rs1
srli x24, x29, 24 # perform operation

# Testcase cp_imm_shift
li x2, 0x60218f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd0df0aa4 # initialize rs1
srli x2, x22, 25 # perform operation

# Testcase cp_imm_shift
li x12, 0x5f8fe4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6d9971bc # initialize rs1
srli x12, x28, 26 # perform operation

# Testcase cp_imm_shift
li x1, 0x084d4f37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x319d15d1 # initialize rs1
srli x1, x23, 27 # perform operation

# Testcase cp_imm_shift
li x28, 0x17351ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe43bbd39 # initialize rs1
srli x28, x26, 28 # perform operation

# Testcase cp_imm_shift
li x1, 0x45132f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xee8674a1 # initialize rs1
srli x1, x4, 29 # perform operation

# Testcase cp_imm_shift
li x28, 0x4731f45e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4b190bc8 # initialize rs1
srli x28, x22, 30 # perform operation

# Testcase cp_imm_shift
li x6, 0x067de518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x04ab71b8 # initialize rs1
srli x6, x22, 31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
