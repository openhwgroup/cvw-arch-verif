///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-srai.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.505814
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfe0166bddd634a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x42138b79716b0fae # initialize rs1
srai x0, x4, 7 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1d69ba44819a9487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcabed77a62409e04 # initialize rs1
srai x1, x18, 9 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x376e40939743c587 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x12303ae88434484a # initialize rs1
srai x2, x15, 17 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa872d65fffa112ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf1bdf873917e208f # initialize rs1
srai x3, x20, 50 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x70d80dbd7fe055ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x808b33db6d32fcb5 # initialize rs1
srai x4, x22, 12 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xe913dcdbfbf34c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb68a5d7fcefed159 # initialize rs1
srai x5, x3, 28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x1e4d1e076609720b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x220d756df74ef549 # initialize rs1
srai x6, x12, 61 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xabec15fd06b83fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8560cfe87e435ecc # initialize rs1
srai x7, x9, 10 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x97623f5fb9a8e716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc612ed512b945876 # initialize rs1
srai x8, x14, 61 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x409b99c86085cbb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9c86fe1ce15a5ca1 # initialize rs1
srai x9, x12, 6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xfe5e4612c5f59524 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6636ce0a3e713047 # initialize rs1
srai x10, x20, 59 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x633a4ea795c4617e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xbcded1cf3098b669 # initialize rs1
srai x11, x5, 8 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x8b7f99e0f46a4758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9b9991d21d7d6d64 # initialize rs1
srai x12, x1, 60 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xef818fca1246add4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd6da1b78e511d71d # initialize rs1
srai x13, x23, 22 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x44c604da7ae6c779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x36ebb4ede224a91e # initialize rs1
srai x14, x14, 38 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd485e11418f0a32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x433ad7ed427027cc # initialize rs1
srai x15, x4, 53 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xc4665593223eb3af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x67930824698471f6 # initialize rs1
srai x16, x13, 58 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x82b453acf7e3423e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5a168994d65e7bbb # initialize rs1
srai x17, x1, 38 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf1533c7b17fccea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x347ac65eaaa87780 # initialize rs1
srai x18, x14, 22 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x391a8c09ee6de01a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5ddb1d87a0a48077 # initialize rs1
srai x19, x24, 59 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x97e067e2341f6983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x427f6da02db9e546 # initialize rs1
srai x20, x24, 5 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x7f0d9b0fd4454bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fe4edb136076363 # initialize rs1
srai x21, x22, 39 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x737196bdbc49f7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb5d16711659d2eda # initialize rs1
srai x22, x27, 27 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd6b14035219cc346 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa87784eecddf4b07 # initialize rs1
srai x23, x11, 7 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xce12c2c8b771fc15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x72735462c97fac1d # initialize rs1
srai x24, x6, 10 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xf9eb427f89851144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0c692799fc77ecef # initialize rs1
srai x25, x17, 52 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x85b13e9b9bb8ce71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x230ecf34a7cfaa26 # initialize rs1
srai x26, x31, 12 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x585edb1856f269e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x825eeb815138dd05 # initialize rs1
srai x27, x19, 35 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2e2b90bafd3310b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3bbf6739c1a48dbe # initialize rs1
srai x28, x21, 4 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x8ea4b0511a2a4cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x90717d36c6ff1152 # initialize rs1
srai x29, x12, 12 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2bca89cbafb11e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9256d5cbd602e8e6 # initialize rs1
srai x30, x27, 28 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x23e76c6431050be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3ce463e1ac1fcfe2 # initialize rs1
srai x31, x13, 39 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x18, 0x6fc37c6b301ef25d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa692154c71b83fa9 # initialize rs1
srai x18, x0, 19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x6, 0xe9c902be8fd8fd44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x51da1d56c1e5735d # initialize rs1
srai x6, x1, 54 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0x1e27494b931423d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd17e4f80d238152d # initialize rs1
srai x11, x2, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x6e407eb47a1e27ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc6e28e4286ed936b # initialize rs1
srai x1, x3, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x10, 0x47ab724716377886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0d4b26e44808fdb4 # initialize rs1
srai x10, x4, 35 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x2, 0x3348c545ba71b7d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8ecc90dcecad1698 # initialize rs1
srai x2, x5, 59 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0xefa8fa6566384314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x859b47e44f87f463 # initialize rs1
srai x22, x6, 1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x13, 0x7e0e69b30392d57c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x85f85c8a8736aae2 # initialize rs1
srai x13, x7, 22 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0x8094cc3806ef1c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8a2662e785ac8041 # initialize rs1
srai x1, x8, 54 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x1cae404b7d9628e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2ca00a90b8226075 # initialize rs1
srai x13, x9, 32 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0xe3cb8ace9e27efda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5f044e010e2cb390 # initialize rs1
srai x7, x10, 34 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x9d1b5ef967a63201 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3533b1cbc9f7cdba # initialize rs1
srai x13, x11, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x29, 0xa50e7e7cceb08b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0cdfa5fe520e1df4 # initialize rs1
srai x29, x12, 38 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0xa5541a6ef291e6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0e28057095fba513 # initialize rs1
srai x9, x13, 44 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0x1d59f32d68204eff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3bd9068edd1626a1 # initialize rs1
srai x23, x14, 32 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0xa588735af052f72c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc24e88b0423ac387 # initialize rs1
srai x6, x15, 10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0x38c5b5f00fea6101 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd208c10c3d148851 # initialize rs1
srai x10, x16, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x1, 0x9a0d74528c2bb245 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbbde9687418279e6 # initialize rs1
srai x1, x17, 46 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0x87fc0063d012af55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x01057acca0d13575 # initialize rs1
srai x15, x18, 33 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0xd428f17fd624d2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9e8330ada527e57a # initialize rs1
srai x15, x19, 59 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x132c901b6b482303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8547f41b2355d3ac # initialize rs1
srai x23, x20, 32 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x17, 0x33b5445c9002cfc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x45e8b6d77ef21c8d # initialize rs1
srai x17, x21, 20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0xf5ceb524c01890c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9a034bdab9731114 # initialize rs1
srai x7, x22, 24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x8af2bcfce5b4f0ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa4f5214e07770e00 # initialize rs1
srai x5, x23, 28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x1, 0x81d941039e14f616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x366120787cef0993 # initialize rs1
srai x1, x24, 56 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x4, 0x329e7198808bd62b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8b86089af9b3156e # initialize rs1
srai x4, x25, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0xa2399c10cc7786f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf16b885a8372233e # initialize rs1
srai x3, x26, 14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x26, 0x1360568c225b7fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x96ffd0c726bc8c3f # initialize rs1
srai x26, x27, 8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0x1026f7b91c2975af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd9f7a5e79bccbc32 # initialize rs1
srai x12, x28, 17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0x43600a5ad529ce38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3606c41ab971abe5 # initialize rs1
srai x2, x29, 2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0xb7229dccbdde7e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb68e13ffe59e2b7b # initialize rs1
srai x9, x30, 9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0xcaa455365b7d46b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1af6f4e003a46a49 # initialize rs1
srai x12, x31, 28 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xe6def7299dd81d22)
li x11, 0x342554bb18441ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x342554bb18441ab3 # initialize rs1
srai x11, x5, 3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0xb2c05423374b200a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
srai x24, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x94949e97ca3972e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
srai x18, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xd848b9716ac8c44c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
srai x7, x22, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x3, 0x87f6f131f175a236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
srai x3, x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x784a3943e17bf491 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000001 # initialize rs1
srai x28, x26, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0xd1496e1b326a9e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
srai x10, x8, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0x9b30036c8d86a877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
srai x2, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0x0b378817d947f486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize rs1
srai x7, x9, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x4e9d53abc72bed0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
srai x31, x16, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x15, 0x07dbab19b1e95038 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
srai x15, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x15, 0x685da1e3354ebfe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000000 # initialize rs1
srai x15, x21, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x15, 0x1282d6232cdee6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffffffffffff # initialize rs1
srai x15, x18, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x19, 0xea5699123e8f0930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
srai x19, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x19, 0x5710e5f12a318854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000001 # initialize rs1
srai x19, x24, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x14, 0xdb8177137856085f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
srai x14, x27, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x7, 0xf2aa71344af68736 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs1
srai x7, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x18, 0x60e607dd30e0d0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # initialize rs1
srai x18, x20, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x31, 0x426ce2819c6392d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
srai x31, x10, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x23, 0x724bc3227e25ed3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
srai x23, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x12, 0xb9967681378acfe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
srai x12, x6, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x24, 0x9cb4d318d7424882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
srai x24, x26, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x10, 0x6974642ddf7c9fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
srai x10, x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x14, 0x44925f9847556a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
srai x14, x9, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x21, 0xc5b9e89fff6d30bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
srai x21, x12, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x25, 0x1596c21030638989 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
srai x25, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x25, 0x8e83da8325d4c723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # initialize rs1
srai x25, x18, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x23, 0x733f5aa94184dfa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
srai x23, x4, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x10, 0xebdfaf1bf3ce259c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
srai x10, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x13, 0xedf53014486c6b41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
srai x13, x17, 55 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x5, 0xada8e233c4e433e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
srai x5, x13, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x7732abbc79aeeedf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
srai x18, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x7c6eaaa4b76e11b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
srai x16, x12, 42 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x426137084f49074d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
srai x31, x1, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x9, 0x6bc288546ecae389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # initialize rs1
srai x9, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x19, 0xe3b9aae58497a748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5555555555555555 # initialize rs1
srai x19, x28, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x26, 0x3ab93db142a560a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
srai x26, x29, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x16, 0x30d0d654b5f60896 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
srai x16, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x4de8d5903e4057c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000ffffffff # initialize rs1
srai x3, x24, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0x0ba99228bba0ab1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
srai x6, x3, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0x7f95c72433ea50d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
srai x28, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0xe62d8298a607d293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
srai x8, x23, 62 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x4eb0ee324600388e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
srai x29, x7, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x20, 0x7a98545bda391871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
srai x20, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x7, 0xe588284bc36801c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
srai x7, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x14, 0x261fe3b185c52dba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
srai x14, x31, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x29, 0x3f824698c1159d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
srai x29, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x22, 0xaa8c9dd635191b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # initialize rs1
srai x22, x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x28, 0xcbf472621585b424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
srai x28, x2, 63 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0xa661dcd70128d1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
srai x7, x28, 57 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0xa4f0f82dacf61f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
srai x29, x16, 16 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x89d0c6f98d30592f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
srai x14, x11, 29 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x4ceeefde958c818a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs1
srai x29, x11, 42 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x6ad21a0fc206a93a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # initialize rs1
srai x24, x18, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x20, 0x8b9c82d1bd9a5eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize rs1
srai x20, x9, 18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x219b8d9cb7ee9603 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
srai x20, x12, 40 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0x4b84a9359db9abf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
srai x25, x14, 23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0x141ca6ea86da4536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
srai x31, x22, 63 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x2, 0x732087238223c61b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs1
srai x2, x22, 32 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xdd540c69ee585483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
srai x25, x18, 19 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x14, 0x449aa340f081ef19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5555555555555555 # initialize rs1
srai x14, x19, 51 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x08934bfa0e2fbaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
srai x3, x6, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x74275d89ab055b04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs1
srai x22, x23, 28 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x4, 0x81cb223212d91a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
srai x4, x6, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x5dfa1e5540793a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001 # initialize rs1
srai x3, x19, 50 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe42c9df3ca99e2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x00aa24ccfb8c39f0 # initialize rs1
srai x0, x0, 31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x1c7c9aa711ebd585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7d36586624b69114 # initialize rs1
srai x1, x1, 9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe19417bc8699f560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x97dc8cebc9d9bf54 # initialize rs1
srai x2, x2, 47 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7062904708ca701c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf57e301563613bf2 # initialize rs1
srai x3, x3, 49 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x371511966ede864a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb44a9b69376ad13c # initialize rs1
srai x4, x4, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xb97461843cf1f969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x505c07112af6c475 # initialize rs1
srai x5, x5, 43 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x22135ffbe3110b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd2f0a48261b702b7 # initialize rs1
srai x6, x6, 45 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x06d2db1c5c738e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xeb62d4697a693407 # initialize rs1
srai x7, x7, 28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x95ba21343b21181b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x78a6ece068ff2eec # initialize rs1
srai x8, x8, 25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7d96daf1402db5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa036ae3f9a9d0458 # initialize rs1
srai x9, x9, 36 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xee1b71ddd0b2977b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbbf33cb3e50d2205 # initialize rs1
srai x10, x10, 26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf938a72b523446e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd24c33a30d24ddeb # initialize rs1
srai x11, x11, 10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x018b099938258a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1fec73ad1b35b660 # initialize rs1
srai x12, x12, 46 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x180d83273db6cf7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xad8722ad421f7925 # initialize rs1
srai x13, x13, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4c5085e3bec73e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa1eac79285d92585 # initialize rs1
srai x14, x14, 54 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x473fc4aaace92692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x37004192be1dc246 # initialize rs1
srai x15, x15, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x71b29c98866d3ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x996eec70e85e0df1 # initialize rs1
srai x16, x16, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe9d803ed1e1bb194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x011b40b5bef7a560 # initialize rs1
srai x17, x17, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xf257fee2bd99bf94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x59b72fc8eb67a5ae # initialize rs1
srai x18, x18, 11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xccc62e0f2aabdba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x36ab44339fa4e358 # initialize rs1
srai x19, x19, 36 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb4e5d77c02c7403f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4ee40301a3888cc5 # initialize rs1
srai x20, x20, 15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf1be5bb8c6d95a92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbd5d1c4432045171 # initialize rs1
srai x21, x21, 49 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x4c0c44bcd487ab69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x769ada47381be97b # initialize rs1
srai x22, x22, 4 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x89334bf01823fd70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd2d2819e677c670f # initialize rs1
srai x23, x23, 14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x3089427b4c28ce74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1603765ae619d948 # initialize rs1
srai x24, x24, 18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xea2984425fff8690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfca27309b103ecc8 # initialize rs1
srai x25, x25, 29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x819fd248a4cb18a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x010d5204d9971e67 # initialize rs1
srai x26, x26, 58 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xce590b28bdb4f506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0b4b65a50b40a067 # initialize rs1
srai x27, x27, 36 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc1f60a9466df63e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x42a02ca6ab09b886 # initialize rs1
srai x28, x28, 19 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x54fe45661b90ba35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6aedf7a8b2e6ebe2 # initialize rs1
srai x29, x29, 44 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8797f9cda70cd645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe8d4771926f82a83 # initialize rs1
srai x30, x30, 32 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x92139abf3c65b9a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9e5d968ba1ae6d0d # initialize rs1
srai x31, x31, 22 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x7d02ba716c004c9f)
li x5, 0x720a6ec73a3490ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d02ba716c004c9f # initialize rs1
srai x5, x12, 27 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x72d94476b36ac36c)
li x6, 0x5a9e43c077d382a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8d26bb894c953c94 # initialize rs1
srai x6, x31, 34 # perform operation

# Testcase cp_imm_shift
li x29, 0x7a4469fb6b8ef2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x122a1566f0d936e1 # initialize rs1
srai x29, x13, 0 # perform operation

# Testcase cp_imm_shift
li x11, 0x6ca0fa66d09d4309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x083f8326647ca008 # initialize rs1
srai x11, x23, 1 # perform operation

# Testcase cp_imm_shift
li x28, 0x67169901c31f5256 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x137acdd791e1af83 # initialize rs1
srai x28, x24, 2 # perform operation

# Testcase cp_imm_shift
li x30, 0x83708af4acd4a010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x924af9df3f01ebcb # initialize rs1
srai x30, x7, 3 # perform operation

# Testcase cp_imm_shift
li x31, 0xca3f7cc46166d3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcbf3d6b4db39bbe2 # initialize rs1
srai x31, x15, 4 # perform operation

# Testcase cp_imm_shift
li x25, 0x80555d67865056f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x76fca1950bc09460 # initialize rs1
srai x25, x21, 5 # perform operation

# Testcase cp_imm_shift
li x24, 0xc7e1e864cc5fb333 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x39d20c962304e593 # initialize rs1
srai x24, x8, 6 # perform operation

# Testcase cp_imm_shift
li x28, 0xdd884347fb903e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7894162e64cd69db # initialize rs1
srai x28, x8, 7 # perform operation

# Testcase cp_imm_shift
li x27, 0x997dfb97661b712d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9430eb15648a4361 # initialize rs1
srai x27, x15, 8 # perform operation

# Testcase cp_imm_shift
li x17, 0x3211dde3fa18ece0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9227c15bfaf2d87a # initialize rs1
srai x17, x1, 9 # perform operation

# Testcase cp_imm_shift
li x18, 0x14f9dcbe6df652dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9d63b8e24ce76aaf # initialize rs1
srai x18, x11, 10 # perform operation

# Testcase cp_imm_shift
li x24, 0xf91aaa81fbf3c3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbdcdeac6cc830222 # initialize rs1
srai x24, x1, 11 # perform operation

# Testcase cp_imm_shift
li x12, 0x3f2fb02f50490545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x870742368a8e4699 # initialize rs1
srai x12, x18, 12 # perform operation

# Testcase cp_imm_shift
li x28, 0x09d3181d9404c6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xabb28454c5baeb4b # initialize rs1
srai x28, x25, 13 # perform operation

# Testcase cp_imm_shift
li x22, 0x0bd6581dd7b4e0f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4e410250b568fb17 # initialize rs1
srai x22, x2, 14 # perform operation

# Testcase cp_imm_shift
li x7, 0x760e949b81a37b30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf7e18b6f95896df7 # initialize rs1
srai x7, x29, 15 # perform operation

# Testcase cp_imm_shift
li x22, 0x237f67752b986198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xacd9fd020b2140fd # initialize rs1
srai x22, x15, 16 # perform operation

# Testcase cp_imm_shift
li x11, 0x228ada802a652537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5042d3a18f821e10 # initialize rs1
srai x11, x18, 17 # perform operation

# Testcase cp_imm_shift
li x10, 0x94c063720ff5d764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb573a16906a0c629 # initialize rs1
srai x10, x25, 18 # perform operation

# Testcase cp_imm_shift
li x18, 0x80333a9d7db34a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x884cac0f6f931d55 # initialize rs1
srai x18, x22, 19 # perform operation

# Testcase cp_imm_shift
li x11, 0x91227b4f5a8857ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8cf0086aaf2fa297 # initialize rs1
srai x11, x15, 20 # perform operation

# Testcase cp_imm_shift
li x22, 0x46076b6d5fb84d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa9c2f08a91baac97 # initialize rs1
srai x22, x10, 21 # perform operation

# Testcase cp_imm_shift
li x9, 0x1ce1fefc3fee0c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3e29ae20a10d66e6 # initialize rs1
srai x9, x16, 22 # perform operation

# Testcase cp_imm_shift
li x31, 0xdc66a79467553e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa808ff0357d7e800 # initialize rs1
srai x31, x22, 23 # perform operation

# Testcase cp_imm_shift
li x21, 0xf846911505c6cf3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x88ea8a42bfc3228f # initialize rs1
srai x21, x24, 24 # perform operation

# Testcase cp_imm_shift
li x20, 0xc7320874a12727d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb7929d01037f9b15 # initialize rs1
srai x20, x26, 25 # perform operation

# Testcase cp_imm_shift
li x17, 0x821e3667e804f30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8d7ab28c4879f804 # initialize rs1
srai x17, x8, 26 # perform operation

# Testcase cp_imm_shift
li x2, 0x348d1ce034d17c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8428719b452b7e10 # initialize rs1
srai x2, x11, 27 # perform operation

# Testcase cp_imm_shift
li x2, 0x538b1d6223ebd658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3c32de488b1bbe53 # initialize rs1
srai x2, x15, 28 # perform operation

# Testcase cp_imm_shift
li x13, 0xbdd3307308b39a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb09b6e218c3216b4 # initialize rs1
srai x13, x1, 29 # perform operation

# Testcase cp_imm_shift
li x6, 0x83b6bea6f1e73f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x047f9a042b00148d # initialize rs1
srai x6, x11, 30 # perform operation

# Testcase cp_imm_shift
li x15, 0x335a35a70376f726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf70ff31ae3d5601f # initialize rs1
srai x15, x28, 31 # perform operation

# Testcase cp_imm_shift
li x5, 0x081f931ef9ca238b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x25c658f1741f25fb # initialize rs1
srai x5, x17, 32 # perform operation

# Testcase cp_imm_shift
li x16, 0xaac58d3305494bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe67d318af5cd09a8 # initialize rs1
srai x16, x13, 33 # perform operation

# Testcase cp_imm_shift
li x27, 0x1b16db045b20044f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcb532ffdb6f856b5 # initialize rs1
srai x27, x8, 34 # perform operation

# Testcase cp_imm_shift
li x6, 0x183b5a2dd5b53b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xef97c3240290e3e4 # initialize rs1
srai x6, x20, 35 # perform operation

# Testcase cp_imm_shift
li x24, 0x63b1112edf688f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3e67e2b658b12570 # initialize rs1
srai x24, x6, 36 # perform operation

# Testcase cp_imm_shift
li x24, 0x8efcfc187fc81d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x93200beada93874e # initialize rs1
srai x24, x27, 37 # perform operation

# Testcase cp_imm_shift
li x5, 0x1a0382a37f3ed8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x84b807e6fb6233fe # initialize rs1
srai x5, x19, 38 # perform operation

# Testcase cp_imm_shift
li x7, 0x09a71ed359c0a6d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x76d650494e5f9305 # initialize rs1
srai x7, x12, 39 # perform operation

# Testcase cp_imm_shift
li x3, 0xcfeab37e57aded03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x29842846e75a4aca # initialize rs1
srai x3, x13, 40 # perform operation

# Testcase cp_imm_shift
li x28, 0x9788b6ae255e87d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x986b4338d4d92770 # initialize rs1
srai x28, x17, 41 # perform operation

# Testcase cp_imm_shift
li x9, 0x4d2ceb1de6e99a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4489d2f458af5a4e # initialize rs1
srai x9, x16, 42 # perform operation

# Testcase cp_imm_shift
li x27, 0xc3c1742bc7d6ec5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe66a2b075e8db218 # initialize rs1
srai x27, x2, 43 # perform operation

# Testcase cp_imm_shift
li x17, 0x58a03c072203cb97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7f65e6618727c471 # initialize rs1
srai x17, x19, 44 # perform operation

# Testcase cp_imm_shift
li x3, 0x3cb368e7f02588a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2eeaef1330dd4aff # initialize rs1
srai x3, x30, 45 # perform operation

# Testcase cp_imm_shift
li x4, 0x0f2e5f5eb704515a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x13d6d8e34d91ce0e # initialize rs1
srai x4, x5, 46 # perform operation

# Testcase cp_imm_shift
li x12, 0x327d68646802b04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x01b25d93deaffe90 # initialize rs1
srai x12, x1, 47 # perform operation

# Testcase cp_imm_shift
li x9, 0x1652711d6fa25ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb901c08729edf50f # initialize rs1
srai x9, x26, 48 # perform operation

# Testcase cp_imm_shift
li x6, 0xa2cb16378cb43df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec2588b9d3b08846 # initialize rs1
srai x6, x14, 49 # perform operation

# Testcase cp_imm_shift
li x26, 0x3022b41bca9518ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x32a05095d9eec1b6 # initialize rs1
srai x26, x7, 50 # perform operation

# Testcase cp_imm_shift
li x15, 0x8a3dd587e3fa4d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8c596908bbb6f61b # initialize rs1
srai x15, x2, 51 # perform operation

# Testcase cp_imm_shift
li x8, 0x4f15eb8dbc12b521 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfed816e6503ffb55 # initialize rs1
srai x8, x19, 52 # perform operation

# Testcase cp_imm_shift
li x10, 0x623f1e53903cbcce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9b42d042070d8913 # initialize rs1
srai x10, x26, 53 # perform operation

# Testcase cp_imm_shift
li x23, 0x06817ed1411e0691 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1d2d9a7536975976 # initialize rs1
srai x23, x4, 54 # perform operation

# Testcase cp_imm_shift
li x8, 0xf3ddf5ffee353ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x41604ee52e3f335e # initialize rs1
srai x8, x30, 55 # perform operation

# Testcase cp_imm_shift
li x23, 0xe09be4d3288a1d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8f8b64a7cb8dd5cd # initialize rs1
srai x23, x20, 56 # perform operation

# Testcase cp_imm_shift
li x12, 0x4eaa2f824c3936b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x99101552faf2c905 # initialize rs1
srai x12, x2, 57 # perform operation

# Testcase cp_imm_shift
li x6, 0xd0dcf0e40a311ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x39981946ac141530 # initialize rs1
srai x6, x4, 58 # perform operation

# Testcase cp_imm_shift
li x14, 0x35120b7bfacec56f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x607f6849a5c692be # initialize rs1
srai x14, x6, 59 # perform operation

# Testcase cp_imm_shift
li x9, 0xba37ff1aace6b935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x30410affc7de99d8 # initialize rs1
srai x9, x4, 60 # perform operation

# Testcase cp_imm_shift
li x30, 0xe5f21aca0343b5e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb0f775760b7f8e31 # initialize rs1
srai x30, x17, 61 # perform operation

# Testcase cp_imm_shift
li x30, 0x50807c296182b815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3f93cdbc128961ef # initialize rs1
srai x30, x5, 62 # perform operation

# Testcase cp_imm_shift
li x26, 0xd285baca8bb20c93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcc916af19ef820d3 # initialize rs1
srai x26, x3, 63 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
