//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.sext.b.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x1696ace13887bd06)
li x11, 0xfd0ec6563c290dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1696ace13887bd06 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x17976c4293373242)
li x23, 0x403a529d85a2f1f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe86893bd6cc8cdbe # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe2664363a9992e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd4a0d3544b99913d # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0b36dce15bb28f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x32531a479a508455 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe19daa619caa1499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xda57bfa5adcdcff2 # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x88e58f2c897ee5b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb568f02f83f5b9bb # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xbea1b35aff41d254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0c388b187bdc7da # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xbbbac2647834b7d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf0b92c8511a3873e # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7f965d38f924a87e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x003544697055f066 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf956c3d59d9ff50f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb9dc1e5e83bd2d16 # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0x3a5e0a7836068a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xd29f94c11ec43ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x6120878c0f7f9b88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x0fe609d1aeb47b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x9bb2f76141a731be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0xa8161a6c17e8c378 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0x9417a879bfebc918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x8, 0xeb22239d0d768c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xa7e92f074c519964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x14, 0xa39b1a828aff1665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000080 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x23, 0x6aefa70f3980f86b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000080 # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x15, 0xabb048ecb6f6792e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x3, 0x2b845cd42c2c7b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000081 # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x17, 0x4886a708074d51f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000081 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x29, 0x3ea3b21e9fe9c8c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x9, 0x7ed18d6e1e8e41c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000007f # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x2, 0xe2e755d180383139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000007f # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x25, 0xb2fbb6af0cbbcd97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x21, 0x99433cd13dbec450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000007e # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x5, 0xa8c977d5e52613af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000007e # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x5, 0x5650bcc98247a7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x28, 0x0973f18824c427c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000ff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x11, 0xba931429afe7e5af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000000000ff # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x11, 0x0136aa672c400405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x16, 0x59337ddb6e0da077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000000000fe # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x2, 0x0dc5f9d1285716e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000000000fe # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x2, 0x6db261ea0ac9fae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x16, 0xf33062b15e252027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000055 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x5, 0x11b9562aabc2384e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000055 # initialize leagalized rd to a random value that should get changed
c.sext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x16, 0xa0f30606c07030ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x7, 0xaabcf39b743f9bee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000aa # initialize leagalized rd to a random value that should get changed
c.sext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x14, 0x6f682d7922c32b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000000000aa # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x20, 0x678ebdac4a08c039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x12, 0x910a427a4f191510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000005b # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x18, 0xbbc41f76550e7597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000005b # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x17, 0x85b7aaa6d1148f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x26, 0x4bbf790ca5189aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000000000db # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x6, 0x39421b8be521f4bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000000000db # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x27, 0x437ca64193e92ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0xcbcccb85b3e9341d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x354e6d380fe9acf0 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0xad2fbb60aa34950f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8a575274b7f8f031 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0x644a9b58f28811e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x360601ccd284c4e6 # initialize leagalized rd to a random value that should get changed
c.sext.b x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x20, 0x545b7612d07b474a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x770270a7397c8596 # initialize leagalized rd to a random value that should get changed
c.sext.b x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x051615997d30002a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ff611895b06c0a2 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x7c040eef59c9eb39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4a959e290765b2a8 # initialize leagalized rd to a random value that should get changed
c.sext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0xc7e39b4ebe4d990a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb48e9f75461682b9 # initialize leagalized rd to a random value that should get changed
c.sext.b x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x34fc4d6629e8e030 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x724bec5c5420bf45 # initialize leagalized rd to a random value that should get changed
c.sext.b x10 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.zext.h.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x99ec6764fb64ad6)
li x18, 0x50b7619b38c80035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x099ec6764fb64ad6 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x3785318d65efbdfd)
li x16, 0xcd15a47df32c022e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc87ace729a104203 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xdd998828783abc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd6cbf584a4c90bd1 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6dee8115cf7dbd59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2b9dc7a89f1d2a21 # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x6c0a2e8aaf2be9b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe2b3457d25d70878 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcacccfe78c245782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa5257edfc5e2b6b1 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xff46b205916edd43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x60799b25c5527539 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x18082fe38982794b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa7926b3211b5f1b9 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2fd9bd25b88d3e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x747d4f3bb77fa40a # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa55e69372e456cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbb796c1e393e9802 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x357e0f6015e68923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0x7788d784ca4d0e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0xb58c03a9589ca481 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x10, 0x081d99d1fd8d86c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0xa2537f5e2a775010 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x73f099eb60af8f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0x6f2a820e6b0f4b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x8b7cca52f4261534 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x0cdbfa5102b5aafb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x15, 0xbbbf8a74d17e3668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008000 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x29, 0xc166ab600ee3d221 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000008000 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x29, 0x23a1851e93d45548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x20, 0xdda4df846b344c46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000008001 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x31, 0x12a246f049b9af65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008001 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x29, 0xf357fc3471668b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x18, 0x5913e8a28787f9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000007fff # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x13, 0x97be172391ad8905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000007fff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x14, 0x09b04211b662a149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x5, 0x39f5eaa3e8cf6a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000007ffe # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x24, 0xdea2a6358e8f1479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000007ffe # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x4df2b9bd26cbd9e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x22, 0x8ad1b0e93b1cd4d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000ffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x19, 0x1abd411bf756a57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000ffff # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x21, 0xd4ada759f921df45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x24, 0x4248c878b49393c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000000000fffe # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x7, 0x0fa41e66eb480237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000fffe # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x1, 0xa763135bcb9dedd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x24, 0x6c83fff79a1b5a7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000005555 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x3, 0x014abb1fb776742a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x8, 0x49151a716b1001f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x9, 0xfe997f177aa33fb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000aaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x2, 0x5151201e697f1dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000aaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x4, 0x072e909dc0015405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x8, 0xf629e534adf30796 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000005bbc # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x17, 0x5aa247d6cd5bb70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000005bbc # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x9, 0x716d431752bda403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x4744affa73cd3b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000dbbc # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x2, 0x1445a9f8e3ce4220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000dbbc # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x22, 0x85ba0b676c6db59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x1b1376f424150a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1380e84cb3aa1139 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x87a51da0e1e77a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf1d5e3d2eb49c18c # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x5bd986673272085e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe237ff42ecc8ccbd # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x4b2253588cb8d317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xacece4400222d2ca # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0xfe2e15e610d77469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb35d86c47cd59f6d # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0xca5b2590204efb14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5e8b3b560a02e3a8 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xc12a01be73c39d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x05594f4d9cbee7b8 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xd3b85fb845e405f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3464cef100ecc98c # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sext.h.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x7efd6cf4acc50dc5)
li x6, 0x8cbe2ba19860eb75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7efd6cf4acc50dc5 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x35e6730897bb6751)
li x27, 0xe3716c46daff5326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xca198cf7684498af # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1699205c24cb49e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x08a7cc6b489f4229 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x07c0cd539513a38b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x350b9fa2235bea27 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2e99ab7210bde5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfb6abe3d225d3298 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x7c1e904e4dd1eed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0e4e6345bc27b1f2 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7843e05011ab0ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7e3d843407d46e22 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2aca0ce7e00e0166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b6f8e354e342edc # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0cf517c0ff2d5487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x132971333c32e651 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x455e19cd228f5c0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x33e3aaa9b6f00011 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0xcf15b6dcc19847ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x88865723ccbcf1a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x193ba61e016fff36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x5950cb97c590f181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0xb062e1e5c8961a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0x66f7e74467eab8d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0xf747a332a0bd890e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x25, 0x5181551cfab6be18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0xaec8b750cedbff04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x13, 0x43cb29bc6ed1c7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x18, 0xe55a9eb3ab2c5d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x8, 0x4eb40b4f12f3cbbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x20, 0xdc50c0534711d0c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x23, 0xaa15ff5be2ec1ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x25, 0x47490976e2f424d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x17, 0x53246c50dc180d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x19, 0xe634b607c6fcb14c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x24, 0x8e1d230c55f2c7b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x6202018ccec86658 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x31, 0x8ee82b704c064acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x10, 0xd45858653f72ea06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x31, 0xa662efc8e4c84a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x21, 0x0eaccb2b675e0dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x15, 0x210eaf553aeaf238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x9, 0xbe89f2b933a83054 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x25, 0xbc868241aa21249d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x20, 0xb9820317bc002eba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x19, 0x91597f90f1372a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x4, 0xb73cd1aa4cf5458f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x3c60dbfab48f0403 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x2, 0xb26bb9d223cb8d03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x7, 0xa36af88a3e6d9c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x2, 0xc0a470214c41507b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x3, 0x38be4bb81de21055 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x28, 0x72f7bec5ccb8885e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x19, 0x20779e8fa8a3f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0xc7f656769ac24655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000000000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x18, 0x609dd5d83c7b7620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x1aa4720303af370f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xac10fb9496c8d884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf403d87e64b604e0 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x49b8d9923bc0c8ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf99488a1371a1c30 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x58199bbc2de96c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9e85205889da8c52 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xfc259a8cc5d49c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5de7eb0e9c82c6c8 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0xbfe4f6d9401d32f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x817c8015686a1f14 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0xc7851af1a95f9835 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb72aac73ef69a4df # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x2999214c2a41fcb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x526f698f0be77494 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x8f850850f0251aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcbd74a9160ec3e50 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
