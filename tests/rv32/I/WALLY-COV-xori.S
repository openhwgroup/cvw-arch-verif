///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-xori.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.013801
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x54559fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x17ea5818 # initialize rs1
xori x0, x5, 75 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x710e304a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbdea6848 # initialize rs1
xori x1, x20, -40 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x2f244922 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7073cfcd # initialize rs1
xori x2, x25, 944 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x235608bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7b08367e # initialize rs1
xori x3, x27, 764 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xa4b2e9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5d22b174 # initialize rs1
xori x4, x4, -624 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x61408b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb8b832f5 # initialize rs1
xori x5, x20, -236 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x79a8e86a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xad65fdb4 # initialize rs1
xori x6, x6, 651 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe048f6ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x74acba8b # initialize rs1
xori x7, x27, 1812 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xaa4035c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3729266b # initialize rs1
xori x8, x24, -1274 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x780ebb13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1b320dc7 # initialize rs1
xori x9, x19, 1001 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd6a9f6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1f512074 # initialize rs1
xori x10, x10, -481 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x04fdd162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbe21f82a # initialize rs1
xori x11, x22, -1906 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5695c18e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4d304d9f # initialize rs1
xori x12, x24, 1639 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7b830026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x66bc28de # initialize rs1
xori x13, x27, -695 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x27281297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6842f66c # initialize rs1
xori x14, x18, -666 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x96f5a528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4ae958e7 # initialize rs1
xori x15, x2, -481 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x8e245131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x36ec9c37 # initialize rs1
xori x16, x23, 222 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x9f4e93c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7512c1e7 # initialize rs1
xori x17, x6, 987 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x6e853ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xca1a38f1 # initialize rs1
xori x18, x20, -218 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x7bada949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x03022bc9 # initialize rs1
xori x19, x28, -177 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xdb2b9344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x17db158b # initialize rs1
xori x20, x25, -1760 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x31aebe6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x633506d7 # initialize rs1
xori x21, x23, 1378 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4fd173eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe8707f2e # initialize rs1
xori x22, x12, 957 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf8b77c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x258c33f8 # initialize rs1
xori x23, x19, -826 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe2bde4db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb54f252b # initialize rs1
xori x24, x28, 1676 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x1f3268f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc6e4d77e # initialize rs1
xori x25, x17, -113 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x81c55582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd08bdbc2 # initialize rs1
xori x26, x3, -1161 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xf496197d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8a5cf25f # initialize rs1
xori x27, x13, 1405 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe9c6c99f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x64dee408 # initialize rs1
xori x28, x21, -452 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xdc42209e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4c6f31d7 # initialize rs1
xori x29, x11, 594 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x819ee579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6b66c8cb # initialize rs1
xori x30, x21, -1322 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf0ccc7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe7a2f150 # initialize rs1
xori x31, x11, -382 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x18, 0x764b8a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x85eb6367 # initialize rs1
xori x18, x0, -658 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x13, 0xc375b2e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcba50b17 # initialize rs1
xori x13, x1, -590 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0x6de22165 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1862155a # initialize rs1
xori x8, x2, 249 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x0c6bc414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3a292838 # initialize rs1
xori x2, x3, 1596 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x7, 0xe8c0bb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x607c6883 # initialize rs1
xori x7, x4, 823 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x12, 0x0220e2da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x471b018f # initialize rs1
xori x12, x5, 1774 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x9d4da496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa0871ae6 # initialize rs1
xori x17, x6, 1311 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x20, 0xd35b2eed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5c78760b # initialize rs1
xori x20, x7, -532 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0x0a0f405a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x67d52040 # initialize rs1
xori x2, x8, 736 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0x01a431a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4987078b # initialize rs1
xori x21, x9, -153 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x14b9d9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd7d992a7 # initialize rs1
xori x2, x10, -853 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x0084d031 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0a3b767c # initialize rs1
xori x13, x11, -1532 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0xf016300c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe2c4aa9f # initialize rs1
xori x4, x12, 525 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0x4737d856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe61dabcd # initialize rs1
xori x16, x13, -2014 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x25, 0xbe35e4db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x73a3ebea # initialize rs1
xori x25, x14, 1708 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0x811acc1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x921a0c08 # initialize rs1
xori x12, x15, -579 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x23, 0x4b0cf79a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0b07f69e # initialize rs1
xori x23, x16, -103 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0xb1804932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x58295551 # initialize rs1
xori x1, x17, 67 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x24, 0xcd487eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf469d1af # initialize rs1
xori x24, x18, -1782 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x22, 0x46f2aca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x51773d36 # initialize rs1
xori x22, x19, 1678 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0x714ddb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x343f225e # initialize rs1
xori x30, x20, 915 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x7e4e7d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2c6abd11 # initialize rs1
xori x26, x21, 234 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x50c8220c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x83279952 # initialize rs1
xori x9, x22, -844 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0xac64ad0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9e79f9bb # initialize rs1
xori x26, x23, -809 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x2, 0x923fabda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbb6ffebf # initialize rs1
xori x2, x24, -1897 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x24, 0x01edcd97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5a10bb6d # initialize rs1
xori x24, x25, 1811 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0x965ffe18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8786d7bb # initialize rs1
xori x14, x26, -2047 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0x92c4570e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x07b7b15f # initialize rs1
xori x22, x27, -1948 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x9, 0xfc44f485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa3112d2c # initialize rs1
xori x9, x28, -751 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0xd3d415b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3b072c58 # initialize rs1
xori x31, x29, 680 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x21, 0x6efb679d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x585c7bee # initialize rs1
xori x21, x30, -1497 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0xf4f520d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5069c3ff # initialize rs1
xori x13, x31, -1585 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x4b6546f9)
li x18, 0xf5ae452f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf5ae452f # initialize rs1
xori x18, x13, -1122 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xa34c7db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
xori x22, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x1725ebd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
xori x23, x4, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x4e239bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffff # initialize rs1
xori x29, x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0xd56f09f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
xori x8, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x6f8f9994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
xori x14, x30, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x37a98c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
xori x12, x19, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x0a735ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
xori x17, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0x49971ae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
xori x28, x31, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x22, 0xb650952d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
xori x22, x17, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x12, 0xae3cc11f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
xori x12, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0xbc279929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x18, x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0x582719fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x11, x23, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0x87f0308e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
xori x14, x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0xe0dd76ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
xori x23, x16, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x2, 0x223bc1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
xori x2, x14, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x6b5c5c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffff # initialize rs1
xori x5, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0x25d0b9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
xori x28, x6, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x2, 0xdc6e810e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
xori x2, x19, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0x121755c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffe # initialize rs1
xori x8, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0x26eee2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
xori x14, x18, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x2, 0xba512c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
xori x2, x22, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x23, 0x1a60fcca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
xori x23, x4, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0xd344705e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
xori x27, x26, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x23, 0xd46171b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
xori x23, x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x7cfc8ee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs1
xori x12, x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0x784e9247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffe # initialize rs1
xori x1, x16, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0x621f102f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
xori x26, x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x6beae42e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
xori x19, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x24, 0xbc0a083b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc8877 # initialize rs1
xori x24, x20, -1929 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0xb9030a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
xori x11, x27, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x6, 0x8e4f92b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaaaaaaaa # initialize rs1
xori x6, x29, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x15, 0x34971cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # initialize rs1
xori x15, x26, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x9, 0xf8dfd885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
xori x9, x4, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xf55d0718 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
xori x6, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x27, 0x14c19fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
xori x27, x8, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x7, 0x51c5e8b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
xori x7, x16, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x59e67e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs1
xori x10, x21, 860 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x3e951902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs1
xori x27, x2, -1912 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x165ba74f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
xori x5, x12, 352 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x19055978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000000 # initialize rs1
xori x20, x21, -1120 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x26, 0xa1fc6b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
xori x26, x5, -1676 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x2, 0x832c8a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
xori x2, x31, 1303 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x26, 0x96dd5a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
xori x26, x18, -1933 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x3cb09976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
xori x28, x6, -1925 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x05c606ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
xori x2, x20, -121 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x4, 0x628592a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
xori x4, x25, -1331 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x4, 0xd3323f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
xori x4, x13, 566 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x12f2c938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs1
xori x12, x9, 1888 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xcae964de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbf226f0f # initialize rs1
xori x0, x0, -1586 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x36d4af2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x428ea832 # initialize rs1
xori x1, x1, -389 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xadc02bed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdb2a7656 # initialize rs1
xori x2, x2, 1448 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xff653bea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd743fa62 # initialize rs1
xori x3, x3, 1233 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xaad65edf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x37278309 # initialize rs1
xori x4, x4, -1624 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xd6a1110c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x057eaf53 # initialize rs1
xori x5, x5, -1984 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x348f3ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf2e6101b # initialize rs1
xori x6, x6, -1879 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xccae3c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x689ed06d # initialize rs1
xori x7, x7, 1433 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x26aa657b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x971aed88 # initialize rs1
xori x8, x8, 2036 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7ed8f034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x04bf468e # initialize rs1
xori x9, x9, -1407 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbd1cc4c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x042d6b2e # initialize rs1
xori x10, x10, 760 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xdc7c6242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x18d0ec68 # initialize rs1
xori x11, x11, -528 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1bb9cd69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7bf5cec1 # initialize rs1
xori x12, x12, 336 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe7c1889d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeb18867a # initialize rs1
xori x13, x13, -1479 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb7f64317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x34c9b9e2 # initialize rs1
xori x14, x14, 1225 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9a4ad564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ddf19ad # initialize rs1
xori x15, x15, 1840 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa3657846 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xacccecfe # initialize rs1
xori x16, x16, -516 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x78b5fb06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8d7d88ec # initialize rs1
xori x17, x17, -594 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2a5a4ed8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc7227bc1 # initialize rs1
xori x18, x18, 1075 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8cdfc3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9d78767d # initialize rs1
xori x19, x19, 675 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x09477904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x95b25a29 # initialize rs1
xori x20, x20, -1447 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7781f83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd278b988 # initialize rs1
xori x21, x21, 969 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc503ae60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x01440de0 # initialize rs1
xori x22, x22, -59 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xca2368ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55cfc94d # initialize rs1
xori x23, x23, -957 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7d91ac17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6098cb36 # initialize rs1
xori x24, x24, -1386 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x2b7117f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0733021f # initialize rs1
xori x25, x25, -503 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9350500a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3c945f6c # initialize rs1
xori x26, x26, 242 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x162e09fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbab68f3c # initialize rs1
xori x27, x27, 795 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe2b98735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xedba5c75 # initialize rs1
xori x28, x28, 1271 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xaf341046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x64c04081 # initialize rs1
xori x29, x29, 1339 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x830d78e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x31ccf726 # initialize rs1
xori x30, x30, 953 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x61edf0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1bcc4970 # initialize rs1
xori x31, x31, -1543 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x7389ff47)
li x12, 0xfb811724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7389ff47 # initialize rs1
xori x12, x11, -1821 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x48a2d0b2)
li x21, 0x8ea0ff69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb75d2f4e # initialize rs1
xori x21, x24, -1535 # perform operation

# Testcase cp_imm_zero
li x25, 0x7ffcedb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x258d848f # initialize rs1
xori x25, x15, 0 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, 0 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, 1 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, 2 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, 1023 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, 1024 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, 2047 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, -2048 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, -2047 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, -2 # perform operation

# Testcase cp_imm_corners
li x20, 0x4685825f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55ca05aa # initialize rs1
xori x20, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000 # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000002 # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001 # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffff # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffe # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffff # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfffffffe # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5bbc8877 # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xaaaaaaaa # initialize rs1
xori x1, x23, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x1, 0xa12be1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55555555 # initialize rs1
xori x1, x23, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
