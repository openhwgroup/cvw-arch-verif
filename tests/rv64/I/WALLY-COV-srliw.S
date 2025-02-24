///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-srliw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.512888
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xed2082b639f0921c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2eebeb5f2f147698 # initialize rs1
srliw x0, x15, 12 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x15515e2cb794fef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6e73ac272186cfe6 # initialize rs1
srliw x1, x6, 16 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe5312567b3b79530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd93c4119d81843c6 # initialize rs1
srliw x2, x16, 16 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xfe75e82108e8d8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x502d335a5bf613c5 # initialize rs1
srliw x3, x8, 25 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x5b64c2850ac36500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc466f79d7d522a38 # initialize rs1
srliw x4, x29, 13 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x4f01422b45fb0c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdccd8bc466ff6b47 # initialize rs1
srliw x5, x10, 19 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xcdf6d07458a03dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5c22670486bc90e7 # initialize rs1
srliw x6, x1, 10 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x08466715abf0e17c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x87447609dd975a71 # initialize rs1
srliw x7, x6, 3 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe83865320baad323 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x79f40626cb586b33 # initialize rs1
srliw x8, x2, 4 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x73815e35c982ecb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x676464c074f610eb # initialize rs1
srliw x9, x31, 31 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5f77efad7df37fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5d7e9cb669c475fc # initialize rs1
srliw x10, x6, 1 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe2a6548f57f367eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x609b943dd54e8993 # initialize rs1
srliw x11, x5, 10 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5162b2075989b9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xae88b26fbc771816 # initialize rs1
srliw x12, x19, 30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9a5598e0e7f7b0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x93dcae822c6e7a78 # initialize rs1
srliw x13, x5, 0 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6d997a64b4a9040d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x58f3be161e9c2c28 # initialize rs1
srliw x14, x15, 28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe0cd51a59513a3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xef16cc93bbe509bc # initialize rs1
srliw x15, x12, 0 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xe608a9cb5b251c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xcd3b72c29aea3384 # initialize rs1
srliw x16, x7, 1 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x34e24985d12a7947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4a72f9164ce923a6 # initialize rs1
srliw x17, x17, 26 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x665c1146e708f1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x869a13be4d88937d # initialize rs1
srliw x18, x21, 28 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9cb69c80ea84d52b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa1b6eb340c2431e9 # initialize rs1
srliw x19, x31, 9 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xfbc65e23a29b4644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6222afe505eed910 # initialize rs1
srliw x20, x10, 13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x99822d6e1d0c8474 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa9d642a48aa62db2 # initialize rs1
srliw x21, x6, 14 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1b21178e274c3e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf1a51bd2bd86497c # initialize rs1
srliw x22, x9, 26 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x25bec405846a6756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x652086af20924cce # initialize rs1
srliw x23, x9, 5 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x04f963c8bac5b743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xba80e4d43bbc5c7d # initialize rs1
srliw x24, x1, 3 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x45f1ab28b4240e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xadc64ce565446124 # initialize rs1
srliw x25, x27, 29 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3dcd1eff4eddba4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x88eb1d9e5bccfc36 # initialize rs1
srliw x26, x3, 29 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x69f022459700c1d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf1691cb32275babf # initialize rs1
srliw x27, x7, 28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x78686f8f05b3dc8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5fb1422842c0db4d # initialize rs1
srliw x28, x16, 31 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x797cc6259d90843a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x35beb248d11ab5fe # initialize rs1
srliw x29, x28, 14 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xbfd2c632bcc0d69d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5e9f1ec5cabf8f2a # initialize rs1
srliw x30, x5, 3 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x010cc14de719d77e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdf5d17ca15979f6f # initialize rs1
srliw x31, x28, 16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x26, 0x5564ded66ce00cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf94f8633dcb2ec9b # initialize rs1
srliw x26, x0, 15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0x81c2e8dd1cbe5571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcf71a377428599a2 # initialize rs1
srliw x22, x1, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x9, 0xd5df1b708ca76fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd0c28fb05a496ea9 # initialize rs1
srliw x9, x2, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x8e610f9b7b286785 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc5ce2da7dda87a33 # initialize rs1
srliw x6, x3, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x2c4261c43f7c34cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8fcdb4a5833be698 # initialize rs1
srliw x11, x4, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0xef02290487014897 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb24f43899507a85c # initialize rs1
srliw x27, x5, 0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x15, 0x0f3e4f07e6429660 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe3ef29e23f0af993 # initialize rs1
srliw x15, x6, 25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x9, 0x233a232ffb61c2bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x37257d5ccc2db39a # initialize rs1
srliw x9, x7, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xc9b46b2e7f2c6b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x739662824cd07df7 # initialize rs1
srliw x2, x8, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0xadd4c7e4691d9775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x676a05638de03075 # initialize rs1
srliw x24, x9, 0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x27, 0x00dc69f3745368df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe068e3bd2dd356ab # initialize rs1
srliw x27, x10, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0x28dcd8c4334b40c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4799f7172e75705a # initialize rs1
srliw x21, x11, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0xcb683fb642374128 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xabea2b0f698bc3cf # initialize rs1
srliw x24, x12, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x6e9fc845cb34f7ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf50ca865f662bf68 # initialize rs1
srliw x8, x13, 19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0xd66801bc3e13a577 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7c0d946c2f5753e4 # initialize rs1
srliw x23, x14, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0xcc337b83016f0579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb577bf49ac67aaa6 # initialize rs1
srliw x20, x15, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0x5227be275d7fdf1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fc8017bc8b29c86 # initialize rs1
srliw x19, x16, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x4f97af230faad5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf5b3f9ff1215859d # initialize rs1
srliw x30, x17, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0x1a63debab681b9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x43c5a8c8dd7e7d7d # initialize rs1
srliw x12, x18, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0xc9bd0c3bd92cf73d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3697d927cc468c0d # initialize rs1
srliw x17, x19, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0xc0850f9924497b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x99a7c99798553fbb # initialize rs1
srliw x22, x20, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x22, 0xc5138f6271972c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2df17eb1dce51d96 # initialize rs1
srliw x22, x21, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0x9442ce40f5e1f830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8b933a2fc1f737e5 # initialize rs1
srliw x27, x22, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0x63a838b00be18ff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfac37fb1c8820799 # initialize rs1
srliw x1, x23, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x4, 0x93e638117888776e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x353df04fea61e562 # initialize rs1
srliw x4, x24, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x20, 0x3ee75921a55e9578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xafe0c30a8fc76642 # initialize rs1
srliw x20, x25, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x8, 0xa5283146139892dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc80bcf79a2031023 # initialize rs1
srliw x8, x26, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x25, 0xe173708d807ccef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa67b89f69a32b98c # initialize rs1
srliw x25, x27, 11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x21, 0x69d2f2bfc8c6f4ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfa5c952185ec296b # initialize rs1
srliw x21, x28, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x30d2db52c1e22605 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x69305f08832d6a84 # initialize rs1
srliw x23, x29, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x9926d404efb1be8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4a9a443015031572 # initialize rs1
srliw x16, x30, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0x2fc8ffddadbbffde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc50ff13e4def6b7c # initialize rs1
srliw x20, x31, 7 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xe52d45aab0416476)
li x13, 0xbfea7fb9c1ecd1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbfea7fb9c1ecd1ad # initialize rs1
srliw x13, x21, 4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x0aae535c99265480 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
srliw x6, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0xcb2aed1546c567d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize rs1
srliw x25, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0xf3fa0a7b4eea0be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
srliw x11, x8, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0x359a575e595c95e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000001 # initialize rs1
srliw x11, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x2e03c868e5b6f1f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
srliw x25, x11, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x24, 0x3b93812411837803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
srliw x24, x1, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x356aaaeaa039a735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize rs1
srliw x19, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xc67c00a8943d34d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
srliw x18, x26, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0xe44935814f9c49f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
srliw x20, x12, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x270d0d8feb6c8863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000080000000 # initialize rs1
srliw x18, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x6cd4610f0c8152a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000080000000 # initialize rs1
srliw x9, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x28, 0xe6ef530c69e52d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
srliw x28, x6, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x33d7dfa7501debc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000080000001 # initialize rs1
srliw x15, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0xcb6b2c9d6286257d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000080000001 # initialize rs1
srliw x17, x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x16, 0x0d18c4213fc35e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
srliw x16, x10, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x9, 0x207b89892ab7dcf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x000000007fffffff # initialize rs1
srliw x9, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x19, 0xfb2c53ebcae0303a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000007fffffff # initialize rs1
srliw x19, x4, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x8182305f59725300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
srliw x31, x20, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x23, 0x42b4a67644790c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000000007ffffffe # initialize rs1
srliw x23, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0x4d25ff956544a4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000000007ffffffe # initialize rs1
srliw x12, x25, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x89afdadf5417bfb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
srliw x29, x15, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x7, 0xd7698cae4687aa8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
srliw x7, x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x4f56c4f0e9f0376b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
srliw x13, x2, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x292d75245e3b6ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
srliw x20, x13, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x6, 0x7e03e0c3b938fb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
srliw x6, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x26, 0xbb51e97b3cfd9130 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000fffffffe # initialize rs1
srliw x26, x31, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x5381fd5845b2c22b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
srliw x8, x24, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0x9153aee6ac969180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000aaaaaaaa # initialize rs1
srliw x22, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xd8d82c79267bfbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000aaaaaaaa # initialize rs1
srliw x27, x7, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xf43a7a6f326f9488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
srliw x21, x16, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x17, 0xc0c2217e06d6f57b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000055555555 # initialize rs1
srliw x17, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0xd2a767e877c24738 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000055555555 # initialize rs1
srliw x5, x7, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x11, 0x0b56ea3c99c2eb4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
srliw x11, x9, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x17, 0x06d69685405382de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000063ae86f7 # initialize rs1
srliw x17, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x9, 0x7c4cf217e7163d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000063ae86f7 # initialize rs1
srliw x9, x14, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x12, 0xb13d444f045631b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
srliw x12, x6, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x11, 0x4a03cd0b2bb59927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000e3ae86f7 # initialize rs1
srliw x11, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x31, 0x4063900e7c25014e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000e3ae86f7 # initialize rs1
srliw x31, x30, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x7, 0x160fb9856ebf7156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
srliw x7, x30, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x74654c2b04c49638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000000 # initialize rs1
srliw x3, x29, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0xfd4164febd83665a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
srliw x19, x17, 6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0xafc2535c860636b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
srliw x14, x12, 0 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x5, 0xf33d511fa6d811ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
srliw x5, x4, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x2, 0x95f0319d202a8a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs1
srliw x2, x4, 30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x123b38c4dd4b9d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffffffffffff # initialize rs1
srliw x27, x17, 17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0x5aac86fc6df2e2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
srliw x14, x29, 20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xe946ca30823a4d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
srliw x11, x24, 28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0x2fbcf7e7f24219ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
srliw x12, x28, 1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x28, 0xc50b767b7be31c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # initialize rs1
srliw x28, x20, 18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xe5b001e449abcdb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
srliw x31, x14, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x0b3b86c51f3b3811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555 # initialize rs1
srliw x31, x4, 23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x2f5ed7b3b1e127ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
srliw x18, x10, 9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xe0f5c459d3a82629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000fffffffe # initialize rs1
srliw x2, x28, 1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x0a4401e62057cebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
srliw x26, x13, 17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0xaf3cd8afd6af7025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs1
srliw x7, x25, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe1069446e7e0e3f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0400abd160116a6b # initialize rs1
srliw x0, x0, 30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x66955d8fdfb60100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe4d247dae8aa293e # initialize rs1
srliw x1, x1, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xd2434f0ed11da039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xca44bc3f57ce48b1 # initialize rs1
srliw x2, x2, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbfe4ef58bf01bded # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5732b6ad7ad5fd5a # initialize rs1
srliw x3, x3, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xd53decd28a658299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x71d2ebfd457ed334 # initialize rs1
srliw x4, x4, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6495c263fd2eb088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6c3d580b02bb5618 # initialize rs1
srliw x5, x5, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x0794020839c8010f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x59d678c3799489f5 # initialize rs1
srliw x6, x6, 24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x7e2b38fb3941de93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x904820ef4798e46d # initialize rs1
srliw x7, x7, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4f27d1e03314f40d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x803faea2cd8a7715 # initialize rs1
srliw x8, x8, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc5e6570edf50fdf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8a248fe085a4e4d1 # initialize rs1
srliw x9, x9, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xeb1313eb0d4f50cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x60372ed85384dd00 # initialize rs1
srliw x10, x10, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x88f2df9117a917e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f07cda8982070b0 # initialize rs1
srliw x11, x11, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4aea18ac2d8bdd09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe1aa2eeb670114d9 # initialize rs1
srliw x12, x12, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x103d26879922e68c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8388a6665f6c7ea7 # initialize rs1
srliw x13, x13, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf18a3ccf7ae674bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf78b947228a048ed # initialize rs1
srliw x14, x14, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xdd652001b0cedf8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x86dbc04bcda51699 # initialize rs1
srliw x15, x15, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x54a577816860a885 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xeaa196a74cec1dec # initialize rs1
srliw x16, x16, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8f2a3ebdc54480fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0738427ceae11339 # initialize rs1
srliw x17, x17, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x47cdc3eff14b59b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x087f397977378a33 # initialize rs1
srliw x18, x18, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8c70182b8308421f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x75babb6c79a3f188 # initialize rs1
srliw x19, x19, 2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x616faf545e129b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1865f379badc14b0 # initialize rs1
srliw x20, x20, 24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x69af9f2ea0a979f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x90f9940d9916ca77 # initialize rs1
srliw x21, x21, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbd556994d3622b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdf6ef58bcaef2e85 # initialize rs1
srliw x22, x22, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfdfaa202905d1e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x475c09e83e3e7040 # initialize rs1
srliw x23, x23, 24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x66152b2f91aa0561 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2b70bcd27d25a0ef # initialize rs1
srliw x24, x24, 8 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8118f07ecbaaa06d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7d765968120a2ca4 # initialize rs1
srliw x25, x25, 27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0ea8349479380a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0f85457044725741 # initialize rs1
srliw x26, x26, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xfbdee32845026c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4db715bae996abff # initialize rs1
srliw x27, x27, 12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6fcfd74120bc7d08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8227475503a0bb11 # initialize rs1
srliw x28, x28, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc3087fbb959f4b20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x56091f2cb5229e24 # initialize rs1
srliw x29, x29, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8976be6e2b61a8cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x14e5ef40d0d69cb3 # initialize rs1
srliw x30, x30, 20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x154db6d77cbe42cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x87e94590eecba60c # initialize rs1
srliw x31, x31, 21 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x49a5daa613ff56b7)
li x30, 0xcf16b3b55129f1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x49a5daa613ff56b7 # initialize rs1
srliw x30, x24, 4 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x59bd866239480977)
li x6, 0x2281e7bc756c841d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa642799dc6b7f689 # initialize rs1
srliw x6, x5, 29 # perform operation

# Testcase cp_imm_shift
li x2, 0x13420963ac7e1244 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa1a05e6ae6e05e84 # initialize rs1
srliw x2, x16, 1 # perform operation

# Testcase cp_imm_shift
li x16, 0x8eebae8df9e5117b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd5d4aa8faadebd00 # initialize rs1
srliw x16, x7, 2 # perform operation

# Testcase cp_imm_shift
li x7, 0x642c5fb467ce80ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb77f99bea4d63d1e # initialize rs1
srliw x7, x17, 3 # perform operation

# Testcase cp_imm_shift
li x7, 0xbd92e8dbc83947d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3dc0c6499402ec90 # initialize rs1
srliw x7, x18, 4 # perform operation

# Testcase cp_imm_shift
li x23, 0x1cecb6746d0329aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x69965663774b70bd # initialize rs1
srliw x23, x3, 5 # perform operation

# Testcase cp_imm_shift
li x13, 0x26624ca8421ddae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3afa999459267ca4 # initialize rs1
srliw x13, x11, 6 # perform operation

# Testcase cp_imm_shift
li x15, 0xb637a7667fb464fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8c16266b8d640cff # initialize rs1
srliw x15, x1, 7 # perform operation

# Testcase cp_imm_shift
li x6, 0x1dfca2f33d0b7a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3d2304e4bb8caaaf # initialize rs1
srliw x6, x21, 8 # perform operation

# Testcase cp_imm_shift
li x24, 0x509ffbd8e5de3df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x23e2d323f175a969 # initialize rs1
srliw x24, x14, 9 # perform operation

# Testcase cp_imm_shift
li x15, 0x806d703825827d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2814dbef2fab3a6f # initialize rs1
srliw x15, x16, 10 # perform operation

# Testcase cp_imm_shift
li x24, 0xe1a0b47cb3d1527d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc6959f90bd7c471a # initialize rs1
srliw x24, x26, 11 # perform operation

# Testcase cp_imm_shift
li x12, 0xb4205694296fc808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xecbb2818012218cc # initialize rs1
srliw x12, x20, 12 # perform operation

# Testcase cp_imm_shift
li x5, 0x52065de6d8ba808c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x856c4ff7c83536bb # initialize rs1
srliw x5, x18, 13 # perform operation

# Testcase cp_imm_shift
li x13, 0xab03d16531904ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x82910f6afaf1e2a9 # initialize rs1
srliw x13, x12, 14 # perform operation

# Testcase cp_imm_shift
li x1, 0xa895a2abf232fd75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf12d922c8fe78794 # initialize rs1
srliw x1, x22, 15 # perform operation

# Testcase cp_imm_shift
li x22, 0x4e59dd26b230458b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8d3061f117fd44b6 # initialize rs1
srliw x22, x3, 16 # perform operation

# Testcase cp_imm_shift
li x23, 0xbe8c528a50b10f86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3a54e872511b0447 # initialize rs1
srliw x23, x20, 17 # perform operation

# Testcase cp_imm_shift
li x23, 0x6f8c2f1a0f42d407 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe4ae19c53276ea7e # initialize rs1
srliw x23, x19, 18 # perform operation

# Testcase cp_imm_shift
li x13, 0xd0340664baf29947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x76652a268b6ad5d7 # initialize rs1
srliw x13, x21, 19 # perform operation

# Testcase cp_imm_shift
li x8, 0x11107247047b3b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3e1a1fffce00c87a # initialize rs1
srliw x8, x13, 20 # perform operation

# Testcase cp_imm_shift
li x5, 0x26515bacb4d09541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x777b17c927e7a38d # initialize rs1
srliw x5, x4, 21 # perform operation

# Testcase cp_imm_shift
li x15, 0x2f6ec60bfb2e0a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xeaf854bbbad4d042 # initialize rs1
srliw x15, x21, 22 # perform operation

# Testcase cp_imm_shift
li x20, 0x7fbcecaf343bbc65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x82d71dca95ebfd55 # initialize rs1
srliw x20, x9, 23 # perform operation

# Testcase cp_imm_shift
li x4, 0xa666bb7ac03670bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x96bdd9a9d2467475 # initialize rs1
srliw x4, x16, 24 # perform operation

# Testcase cp_imm_shift
li x3, 0x038ec119e4c6922c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc41c76968efd950d # initialize rs1
srliw x3, x19, 25 # perform operation

# Testcase cp_imm_shift
li x8, 0x2a733c4f2075e99f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8b70023da4ad4c90 # initialize rs1
srliw x8, x17, 26 # perform operation

# Testcase cp_imm_shift
li x20, 0x3e0ce53ec12befc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf093a2f4852b699c # initialize rs1
srliw x20, x23, 27 # perform operation

# Testcase cp_imm_shift
li x18, 0xd5f6f3a844b620b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfeeb21c1406564ac # initialize rs1
srliw x18, x9, 28 # perform operation

# Testcase cp_imm_shift
li x18, 0x8e57564cd0c82680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0c404ede0cce7bda # initialize rs1
srliw x18, x4, 29 # perform operation

# Testcase cp_imm_shift
li x19, 0x1a257d10ebe32a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x064d269145042d55 # initialize rs1
srliw x19, x18, 30 # perform operation

# Testcase cp_imm_shift
li x16, 0xcf9f30bc9aefd801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3e02334cd1d2a7f8 # initialize rs1
srliw x16, x30, 31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
