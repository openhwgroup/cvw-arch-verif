///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZcbZbb//WALLY-COV-c.sext.b.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.416591
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
