///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sraiw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.506910
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x70947af4b33d231d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x37957a5c6ddb9345 # initialize rs1
sraiw x0, x19, 28 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb78d6d69a974a30f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x05689c1ecca4f351 # initialize rs1
sraiw x1, x18, 21 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x4a2adc671d2d6f6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc73756290113e3c2 # initialize rs1
sraiw x2, x1, 8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x9721fdf9b6ddd0a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x24b3d6829b22b42a # initialize rs1
sraiw x3, x31, 6 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x323c35286ed43a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x074354e631f2da29 # initialize rs1
sraiw x4, x22, 7 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x47443ccd67be1f2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8c1810bb4aea585f # initialize rs1
sraiw x5, x9, 17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6dbb898dad31bd66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbbc09ba37f85c3b3 # initialize rs1
sraiw x6, x1, 1 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa326f9baab6e2d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x59700b51b1c7062c # initialize rs1
sraiw x7, x1, 25 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xd8b03645681e14cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x22b20a893b9b68ec # initialize rs1
sraiw x8, x10, 20 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa7cc7ae513974345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf89e5ce5a51d0230 # initialize rs1
sraiw x9, x5, 21 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd2367968233fe222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xeaa1cec50a1b392a # initialize rs1
sraiw x10, x19, 20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x1459f991b57bf430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0b805fe4b233b940 # initialize rs1
sraiw x11, x2, 13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x02574aa0dfe8661e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x790dcc76063bf61c # initialize rs1
sraiw x12, x12, 13 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x41fa5ef0fff73cdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x313b8b41e98f82a2 # initialize rs1
sraiw x13, x5, 14 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa1f731bd93a9b11a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xee2aa818014cb768 # initialize rs1
sraiw x14, x30, 21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x17471e268f2ec61d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x89b412d5775529bb # initialize rs1
sraiw x15, x24, 14 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0e8bbcd3b3d8b98f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x77fef0483f6d8a4a # initialize rs1
sraiw x16, x12, 13 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x17885034402d26db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdbab6014c7550677 # initialize rs1
sraiw x17, x2, 1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xdd9fc66b443ac74b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x59dc0bef13e9c59c # initialize rs1
sraiw x18, x28, 5 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xb16fdd0dc997f284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x743452d72dda7b7a # initialize rs1
sraiw x19, x23, 23 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x247b882139450c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe98c074cc2ad97c2 # initialize rs1
sraiw x20, x17, 30 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x864469fa0270ec50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc00bf02af5c53cb0 # initialize rs1
sraiw x21, x4, 6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xdff912274f2579c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9dcb01ee3f2879b9 # initialize rs1
sraiw x22, x10, 28 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x1418b3506827861d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb2ce66903c817b08 # initialize rs1
sraiw x23, x29, 2 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x25fd792dc429c581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc4580828abc2271b # initialize rs1
sraiw x24, x28, 0 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xa948ac30b5151cba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe1253726265b3e46 # initialize rs1
sraiw x25, x21, 22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2760f2b5f7f61e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6f759228036676b7 # initialize rs1
sraiw x26, x20, 24 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x1f95d1cb523e4d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x6049bb3599d58abe # initialize rs1
sraiw x27, x6, 1 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xaa7d8bd2e98c3d9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa34d1ab51558660e # initialize rs1
sraiw x28, x20, 30 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x60c56f73a522b247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc9911523e127e11a # initialize rs1
sraiw x29, x31, 10 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6993e6a8a56bed08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd4a0e815cdfad01b # initialize rs1
sraiw x30, x17, 28 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x196180eef7d0d36b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x18e35a188cffb8f9 # initialize rs1
sraiw x31, x6, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x24, 0xb4fee52c26d40daa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x08b323b04c4d7e22 # initialize rs1
sraiw x24, x0, 4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x21, 0xed1efc2805fb9d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfaa5975ddab53239 # initialize rs1
sraiw x21, x1, 18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0xcdb01d21473e8044 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xea379ddbfdc4ff66 # initialize rs1
sraiw x23, x2, 0 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x12, 0x32088dc4cc4b3a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9083b50a13e0db16 # initialize rs1
sraiw x12, x3, 30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x13, 0xac8516a9840bb391 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd2acaa15f0184f80 # initialize rs1
sraiw x13, x4, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0x08fb0a120589bca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1b5dad487e830729 # initialize rs1
sraiw x17, x5, 25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x97912a19fbcf96ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd05ce3e305475ea1 # initialize rs1
sraiw x31, x6, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x1, 0x4427195f537cfc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xcd47182dd74939b3 # initialize rs1
sraiw x1, x7, 3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x29, 0x93c1d8a0b53bcd6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfe6d0df376871f5f # initialize rs1
sraiw x29, x8, 5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x24, 0xdbff85c89f06e0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x32c60544c4beb10a # initialize rs1
sraiw x24, x9, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0x506c241c4e0064ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbc42ce3c29bef48a # initialize rs1
sraiw x24, x10, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0xa9fde37e31725792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf997a9422dbbaa63 # initialize rs1
sraiw x22, x11, 23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x29, 0x2bbd46f5ae32af31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x51083c4d14565681 # initialize rs1
sraiw x29, x12, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x4, 0x70e0930a6db08227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe19409924edb3c12 # initialize rs1
sraiw x4, x13, 6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0x00defd75cb6f84bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x24184860a5bd523b # initialize rs1
sraiw x23, x14, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0xe8a935b6ab008361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xff96eee9a12eb248 # initialize rs1
sraiw x27, x15, 3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x7b977c554146b0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbf3701b9fe819024 # initialize rs1
sraiw x27, x16, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x900b965d73cde83e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0c2a175e5d60f062 # initialize rs1
sraiw x3, x17, 4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x82bf8a010ba1dc8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4ccd3277b4ffb77b # initialize rs1
sraiw x25, x18, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0xed9b9f4153a4b64a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcf0b7114f0cebb6e # initialize rs1
sraiw x16, x19, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x691d1d208857fb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7558c4471d7c5352 # initialize rs1
sraiw x2, x20, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x76418128c63f89c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x29e199a595f4f4c0 # initialize rs1
sraiw x31, x21, 12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0x6a0bd1c54254e429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8c1a7bc568ced01e # initialize rs1
sraiw x7, x22, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x18, 0x410b3459b3cd7cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf7e20becc7d878f1 # initialize rs1
sraiw x18, x23, 31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x10, 0x76fcf4474c8c9eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x54aed951d1ee262d # initialize rs1
sraiw x10, x24, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0x12775d61a47bd9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x316fb7601228939b # initialize rs1
sraiw x8, x25, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0x70bc1f342c97774c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd4427fcd722686af # initialize rs1
sraiw x11, x26, 27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x8, 0xe36a368e857825d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8ef5cce0a1645481 # initialize rs1
sraiw x8, x27, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x16, 0x7b384ee716450bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe2178bac61b68a7b # initialize rs1
sraiw x16, x28, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0x1ad8f7b0194b6a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9acd9b3e0e728bab # initialize rs1
sraiw x26, x29, 21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0x4259f1d52c235db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1e3d2919dc709218 # initialize rs1
sraiw x22, x30, 26 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0xb0993d4f431399a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5cd6e863be4c8df3 # initialize rs1
sraiw x30, x31, 23 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xec898a6850bdfc7)
li x13, 0xc9baf6218f44a45e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc9baf6218f44a45e # initialize rs1
sraiw x13, x17, 9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x238d56e4069e6977 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs1
sraiw x21, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xd6bd47d4d8080b43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
sraiw x10, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x022c52d07d0f04a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
sraiw x18, x30, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x50361c17bacbb70c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
sraiw x26, x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0xb90e6e31997bfa2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
sraiw x18, x3, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0x31da32ac752660a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
sraiw x22, x10, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0xf1debb91b2a8d6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
sraiw x30, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xce677641a8ef8bda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs1
sraiw x18, x2, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x2106ef54993375cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
sraiw x17, x23, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x28, 0x2f36c2d928137d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000080000000 # initialize rs1
sraiw x28, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x8ea1ce8fc1895c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000080000000 # initialize rs1
sraiw x29, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x27, 0x24ac4e1005707524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
sraiw x27, x26, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x6, 0x6f29420a3098f4ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000080000001 # initialize rs1
sraiw x6, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x11, 0xa8d6e5a7f16f1689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000080000001 # initialize rs1
sraiw x11, x25, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0xfd3245bb07403018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffffffffffff # initialize rs1
sraiw x14, x19, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0xc3755635d044a6f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x000000007fffffff # initialize rs1
sraiw x25, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x12, 0xf1c1c05817971f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007fffffff # initialize rs1
sraiw x12, x13, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x21, 0xced405e90603d530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
sraiw x21, x10, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x16, 0x56948896dcdf628d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x000000007ffffffe # initialize rs1
sraiw x16, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x21, 0xc2b6071b3aab2e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000007ffffffe # initialize rs1
sraiw x21, x26, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0xecec63289a234b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
sraiw x12, x24, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0xd505d890ca79140d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
sraiw x10, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x9bf209848ced53dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
sraiw x24, x2, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x651e09ca3ce1554b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
sraiw x13, x12, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x16, 0xbee8a9217dda66cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs1
sraiw x16, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0x247cf71cebd5b558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs1
sraiw x22, x5, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0xf89d042d5f96b502 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
sraiw x22, x14, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0x0d301800d3d0a68d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000aaaaaaaa # initialize rs1
sraiw x8, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x12, 0xbf74f10922c8c46b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000aaaaaaaa # initialize rs1
sraiw x12, x4, 10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x16, 0xd7024b5c8af03c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
sraiw x16, x8, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x21, 0x71e9dded4277d171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000055555555 # initialize rs1
sraiw x21, x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0x8a277647f390d817 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000055555555 # initialize rs1
sraiw x19, x7, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x3, 0x52843c42ead5a4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
sraiw x3, x10, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x16, 0x963adf268becc0db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000063ae86f7 # initialize rs1
sraiw x16, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x21, 0x9c541b924d984e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000063ae86f7 # initialize rs1
sraiw x21, x12, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x21, 0x849afa9413942240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
sraiw x21, x12, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x28, 0x960aab872e4a8926 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000e3ae86f7 # initialize rs1
sraiw x28, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x12, 0x7118ccdaf6d56bef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000e3ae86f7 # initialize rs1
sraiw x12, x13, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x2, 0xa01effb2632fb0df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
sraiw x2, x16, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0xb043d84b6e9a33e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
sraiw x8, x20, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0xc42caac6e7df25e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize rs1
sraiw x18, x11, 8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x0531fcd26592db36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # initialize rs1
sraiw x20, x25, 1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x10954498bc72234b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # initialize rs1
sraiw x8, x23, 13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0xf7adbb3ee5043fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
sraiw x19, x10, 0 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x28, 0xdffd88d4e19054d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
sraiw x28, x31, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x9910403d2cabb269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
sraiw x1, x27, 28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x22, 0x777f7e5b9190a9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
sraiw x22, x5, 3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0x7d3d80279256264b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfffffffffffffffe # initialize rs1
sraiw x15, x16, 13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x23, 0x36f37c19a72565cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
sraiw x23, x1, 31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5c74911cb7f61b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
sraiw x8, x13, 21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x8ecd36b9d8f9a731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5555555555555555 # initialize rs1
sraiw x19, x18, 1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xb7afbda7a90e0ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs1
sraiw x11, x7, 15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x083b36c464aed1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe # initialize rs1
sraiw x3, x17, 3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x16, 0xbf3e36c48d941947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
sraiw x16, x24, 10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x14c2850230626c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # initialize rs1
sraiw x13, x14, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x89a4bc50e602833f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc7327587ed141dcf # initialize rs1
sraiw x0, x0, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x70e0c98d5b9b5a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x467ce60d3e3d7895 # initialize rs1
sraiw x1, x1, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x77ad726cfdd29817 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfb486e39f7e6d850 # initialize rs1
sraiw x2, x2, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xdfc1e4f9b000b80f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2209e3418146a728 # initialize rs1
sraiw x3, x3, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x8caa87cf196bb2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa625783c09765908 # initialize rs1
sraiw x4, x4, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x3c12f6aee404d90e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x43c5a2431bf4160f # initialize rs1
sraiw x5, x5, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xcb0b443ffa820fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd8ec68c3ac290379 # initialize rs1
sraiw x6, x6, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x0074771d7f96aae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x12570536015aeccb # initialize rs1
sraiw x7, x7, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb21b63e9290322f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xee18873507eb67a5 # initialize rs1
sraiw x8, x8, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1d170403185583c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe9a19b6e102c34c8 # initialize rs1
sraiw x9, x9, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x424d38d719b8c7ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xca66a1ce47c5bb89 # initialize rs1
sraiw x10, x10, 17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd4fefef7e662b396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2b1d5de2ce2e5799 # initialize rs1
sraiw x11, x11, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5b327cdb21d30f98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf37c66f230d8bef6 # initialize rs1
sraiw x12, x12, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x208f94a55dbbd064 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x252ebe4cc1613aec # initialize rs1
sraiw x13, x13, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xfd9ff8a42b516825 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5b559a247637e569 # initialize rs1
sraiw x14, x14, 13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb43cfb24c30a84ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3b64bce074cacf18 # initialize rs1
sraiw x15, x15, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x162c846bc35995d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x60b96be21d378d56 # initialize rs1
sraiw x16, x16, 6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x54efbc7b94bcf102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x95e776acbc05ac1f # initialize rs1
sraiw x17, x17, 7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5b35e78a26c72085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4fd980b772cf393f # initialize rs1
sraiw x18, x18, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x2a87d7a62778b6bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x20dcfaa818e68d03 # initialize rs1
sraiw x19, x19, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x05e0a5c181aa3109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6a39b5e46f37a83e # initialize rs1
sraiw x20, x20, 3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4a25426e97a2185a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8ace827427210008 # initialize rs1
sraiw x21, x21, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5d82ac7ac7250b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcf7c8c8d3652a5bc # initialize rs1
sraiw x22, x22, 27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2071fbd1299ca24d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xcbd826d89b06d3a0 # initialize rs1
sraiw x23, x23, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcf910576c8560d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc921fb5b58bee2a0 # initialize rs1
sraiw x24, x24, 1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb2a3a7ffe9a06d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x49548737824fef32 # initialize rs1
sraiw x25, x25, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xac9d179c1c0b9ef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffebc0e13f6856c3 # initialize rs1
sraiw x26, x26, 20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf290ba1c25de3073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x849bebd11fa6c7e1 # initialize rs1
sraiw x27, x27, 13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xe152738847d779de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7bd429a296afba29 # initialize rs1
sraiw x28, x28, 21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4230760fff4c4f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0f1871d8ce34b615 # initialize rs1
sraiw x29, x29, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x36181ab4e44f614f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x87a8022988fe651d # initialize rs1
sraiw x30, x30, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xaddab632641a1077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5874473b78b21246 # initialize rs1
sraiw x31, x31, 26 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0xb75d7821023fdc6)
li x1, 0xea70304269a2d53b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0b75d7821023fdc6 # initialize rs1
sraiw x1, x18, 22 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x51a28231c56bcaad)
li x6, 0x0ede49aec3c0aee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xae5d7dce3a943553 # initialize rs1
sraiw x6, x15, 20 # perform operation

# Testcase cp_imm_shift
li x1, 0xffbad16e91e9e688 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9793ed358a777dcf # initialize rs1
sraiw x1, x8, 1 # perform operation

# Testcase cp_imm_shift
li x6, 0x0f44f4b073fd6457 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf8ed2e04e750f8ac # initialize rs1
sraiw x6, x30, 2 # perform operation

# Testcase cp_imm_shift
li x9, 0xd0c9eb3b3b72931a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x61ecfc76e7fd50f0 # initialize rs1
sraiw x9, x23, 3 # perform operation

# Testcase cp_imm_shift
li x22, 0xbc04dcd1b58b92ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa0a9bdc3d32266b5 # initialize rs1
sraiw x22, x25, 4 # perform operation

# Testcase cp_imm_shift
li x5, 0x2d49c0f3f08b59ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4e6013de9a517835 # initialize rs1
sraiw x5, x18, 5 # perform operation

# Testcase cp_imm_shift
li x8, 0x0326f8653f2b92ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9b70b49290652d71 # initialize rs1
sraiw x8, x18, 6 # perform operation

# Testcase cp_imm_shift
li x31, 0x1cc696fe64c3114b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6922dc1b3f7a0198 # initialize rs1
sraiw x31, x16, 7 # perform operation

# Testcase cp_imm_shift
li x2, 0xec95c95b96bad7f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe65dec8da9eefcd7 # initialize rs1
sraiw x2, x6, 8 # perform operation

# Testcase cp_imm_shift
li x23, 0xc84096ffc41f4a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3328119bd8bd7d69 # initialize rs1
sraiw x23, x19, 9 # perform operation

# Testcase cp_imm_shift
li x16, 0x5c91d1d571bc413c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x203b67cdbfe2f6c6 # initialize rs1
sraiw x16, x10, 10 # perform operation

# Testcase cp_imm_shift
li x25, 0x37f9c7f0e205713a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xefc0149439abb031 # initialize rs1
sraiw x25, x9, 11 # perform operation

# Testcase cp_imm_shift
li x21, 0x3669fe39f721327b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4f793e8a470d50f6 # initialize rs1
sraiw x21, x12, 12 # perform operation

# Testcase cp_imm_shift
li x15, 0xf8c69f4d96c85308 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9a863d6176c8e5df # initialize rs1
sraiw x15, x26, 13 # perform operation

# Testcase cp_imm_shift
li x29, 0xc30bc583e483d78f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x028966a7df52bdb2 # initialize rs1
sraiw x29, x18, 14 # perform operation

# Testcase cp_imm_shift
li x20, 0x5d28e55a8e79debb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x641e0ea7529f6891 # initialize rs1
sraiw x20, x22, 15 # perform operation

# Testcase cp_imm_shift
li x28, 0xd9df018161e2ae63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcfb45bb6784bb510 # initialize rs1
sraiw x28, x18, 16 # perform operation

# Testcase cp_imm_shift
li x30, 0x4f2c79a256d38478 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2bd80112b95603d2 # initialize rs1
sraiw x30, x3, 17 # perform operation

# Testcase cp_imm_shift
li x2, 0x5ee90073873f40f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x67a3abb3155dc68b # initialize rs1
sraiw x2, x18, 18 # perform operation

# Testcase cp_imm_shift
li x27, 0x80a9acff63511d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbe64d87863ac10c2 # initialize rs1
sraiw x27, x20, 19 # perform operation

# Testcase cp_imm_shift
li x4, 0x2ce83c8caf0b51e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd86f29cc2f08b8e # initialize rs1
sraiw x4, x24, 20 # perform operation

# Testcase cp_imm_shift
li x23, 0xe01f714a922389d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb3e340f39e9bc9b8 # initialize rs1
sraiw x23, x18, 21 # perform operation

# Testcase cp_imm_shift
li x5, 0xabff52ccb2380254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdcacfd4a3e984b27 # initialize rs1
sraiw x5, x8, 22 # perform operation

# Testcase cp_imm_shift
li x7, 0x1e458d90aab7aceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xad39fc9b286634f7 # initialize rs1
sraiw x7, x8, 23 # perform operation

# Testcase cp_imm_shift
li x13, 0x2b6e798ed141fb57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x086f7dddfbf9fede # initialize rs1
sraiw x13, x21, 24 # perform operation

# Testcase cp_imm_shift
li x6, 0xf1460fea3fa2f33a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcf7b00764dd5ac18 # initialize rs1
sraiw x6, x25, 25 # perform operation

# Testcase cp_imm_shift
li x4, 0x286406293b8b05e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5617ac93f67b7313 # initialize rs1
sraiw x4, x15, 26 # perform operation

# Testcase cp_imm_shift
li x14, 0x003129ccc7abe959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x572c8970a2f271d1 # initialize rs1
sraiw x14, x13, 27 # perform operation

# Testcase cp_imm_shift
li x25, 0x023ed40c8ac14fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xad1df23cbce9bfe0 # initialize rs1
sraiw x25, x1, 28 # perform operation

# Testcase cp_imm_shift
li x26, 0x78fac30ac5a7446e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3db348ad159924ab # initialize rs1
sraiw x26, x8, 29 # perform operation

# Testcase cp_imm_shift
li x14, 0x94c3d2d5ed520cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x377e848fbf5143d8 # initialize rs1
sraiw x14, x6, 30 # perform operation

# Testcase cp_imm_shift
li x31, 0xa24c9ddc13d1730c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x04697e2e7005e753 # initialize rs1
sraiw x31, x17, 31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
