///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.swsp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.997800
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs2 (Test source rs2 = x0)
li x1, 0x160e0eb018073f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xaf7a3ffac131895d # initialize rs2
la sp, scratch # base address 
c.swsp x0, 192(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xe4386869a5d5a533 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5e205be23da2ce01 # initialize rs2
la sp, scratch # base address 
c.swsp x1, 68(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x3a76fe95d6d1bdfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa4775c62b621d743 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 8(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x13, 0xe15fb5896c40cd64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x20c740301c7dbf9d # initialize rs2
la sp, scratch # base address 
c.swsp x3, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x8, 0x00afef6cb23c31a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x802b3b01ffcfbeb3 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 188(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0x1d36f2178088551e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8c003b7e7c55e6f6 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 48(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x16, 0xb30f1145a2ba4e0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x456b96c1fba72c2f # initialize rs2
la sp, scratch # base address 
c.swsp x6, 92(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x14, 0x36c76e8fed6a5c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x010c3327ca33af33 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x7, 0xa07ffbc52a13fac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3ce460d1968c488 # initialize rs2
la sp, scratch # base address 
c.swsp x8, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xd70a31e1a2d7f7b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe0efe36722891f34 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 200(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xd29239526cea9a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7f0a4422f9d6b367 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x4, 0xc109e06c17faca45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4c0eea53b9b1bf94 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 132(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x6, 0xb28d9ef3b8c2538e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1bff7e3c44e69300 # initialize rs2
la sp, scratch # base address 
c.swsp x12, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x239d0edd09edd912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x73de65a7b2da9a7a # initialize rs2
la sp, scratch # base address 
c.swsp x13, 16(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x9, 0x429ec5b76eb0e8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8cc8d60389f26b4a # initialize rs2
la sp, scratch # base address 
c.swsp x14, 28(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xf32e1d338f2d594a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d826be1f925a432 # initialize rs2
la sp, scratch # base address 
c.swsp x15, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x61407d9a1d237a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xce8afceafb9031d7 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0xa8e07239f9063e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdf7a1d997b6e119e # initialize rs2
la sp, scratch # base address 
c.swsp x17, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0xbddd6c04a9bb31f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0f076a68cb679d05 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 36(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x246755c29a9f65c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf89664a427ecbe4c # initialize rs2
la sp, scratch # base address 
c.swsp x19, 252(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x12, 0xc1f973b2e3129cea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb10ae547b991b3a4 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 160(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x7, 0x70fa2ee491f5f89b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf7d219003fa6909a # initialize rs2
la sp, scratch # base address 
c.swsp x21, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x11, 0xce149bc37544ae66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4621d149e0dffd3b # initialize rs2
la sp, scratch # base address 
c.swsp x22, 148(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x30, 0xa3e657eca36937e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9d1339a1e9128306 # initialize rs2
la sp, scratch # base address 
c.swsp x23, 196(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xa891e0198fea777e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3c008792ac0c64c6 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x850640b0ee0b2bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x189c6d86c2530a0c # initialize rs2
la sp, scratch # base address 
c.swsp x25, 40(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0x0e24ba9771ab30c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x620ea33472875061 # initialize rs2
la sp, scratch # base address 
c.swsp x26, 160(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0xa96d8a89c0a267c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2d2d5bb8402097ea # initialize rs2
la sp, scratch # base address 
c.swsp x27, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xc7c0aca7984df593 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x73f1e4da4dc29373 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 136(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xf73095c7f907942b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x97df3e2b825a248e # initialize rs2
la sp, scratch # base address 
c.swsp x29, 176(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x9, 0x4b0213781ebe0a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xee798384b985bec1 # initialize rs2
la sp, scratch # base address 
c.swsp x30, 88(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0xd4429ec87e776b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x73c9aa86880ef6e8 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 52(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0xf20cbe3c35b64900 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 28(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x6f6019b0859e3263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs2
la sp, scratch # base address 
c.swsp x22, 228(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0xd11b03055cfb2a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 40(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x23, 0x0457e353d7b82433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 208(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x26, 0x6bc8e2e7e20f730b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 172(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x28, 0x444077dbaa9480ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7fffffffffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x19, 160(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0x06b493537f69b45e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x29, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x20, 0x8d03f26ac094bca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x6, 220(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0x65e2122026171cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x27, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x2, 0x890d557a756a0c6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc887763ae86f7 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 232(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0816c3b448c0fea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
la sp, scratch # base address 
c.swsp x28, 64(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x6ec737ddeae6d267 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 196(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xcdd436c99f09809f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000ffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x29, 136(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x579db69c1e7a5efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x11, 204(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x940457f061314da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 152(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x27, 0x17b13389730efdfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000100000001 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 196(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xabe70214cb0d2574 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbe090319938b10f8 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 0(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xeefa0efec541078a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x798b587890e35f4b # initialize rs2
la sp, scratch # base address 
c.swsp x3, 4(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x041dd67e93899622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5f64a5163d627b6f # initialize rs2
la sp, scratch # base address 
c.swsp x4, 8(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xc32fe2067b96e7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x64a3e21d8f0a1b49 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 12(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x9273ae41d8f18db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa36f040001688a8d # initialize rs2
la sp, scratch # base address 
c.swsp x7, 16(sp)# perform operation

# Testcase cp_imm_mul
li x16, 0xb481725fed5382e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x88600be60dc18da5 # initialize rs2
la sp, scratch # base address 
c.swsp x17, 20(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x7905e2e70be45067 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x30d19f154508ff9f # initialize rs2
la sp, scratch # base address 
c.swsp x10, 24(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x210294a6d4dd8b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x403949e7f4acf4eb # initialize rs2
la sp, scratch # base address 
c.swsp x29, 28(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xea338f65cfc5b075 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x408afa4bb088deaa # initialize rs2
la sp, scratch # base address 
c.swsp x19, 32(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x2de81c670028c0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffaee36b2f431fc6 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 36(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xbb39f4222b11ce94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x35469459f929412e # initialize rs2
la sp, scratch # base address 
c.swsp x26, 40(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x3ce3f7c9d88527b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a0f522c1228854e # initialize rs2
la sp, scratch # base address 
c.swsp x15, 44(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x2a3425bd6e6ecf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x95294993e2edeaa4 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 48(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x36eb34a37dc51eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x206ca8eb2e66f093 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 52(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xbc9dddaccfd66f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x56366b0dc7ce5930 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 56(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x150e97b8ed0edcf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7f8faad7413e1615 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 60(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xb1f4d6200bdb445e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x27a76ef60a74c70d # initialize rs2
la sp, scratch # base address 
c.swsp x16, 64(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xf47d409823f7f490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3dcae80cd138fe38 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 68(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x36caa501010093ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x86b33454e6845aa8 # initialize rs2
la sp, scratch # base address 
c.swsp x17, 72(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x1e6b44e27d394ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x830d6cb3320ac5eb # initialize rs2
la sp, scratch # base address 
c.swsp x8, 76(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xd6fdb5b52076bb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd60d7837d677558 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 80(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x3bc668cdaa5f573b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x951d70bd821addcf # initialize rs2
la sp, scratch # base address 
c.swsp x24, 84(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x3c1b01e228dd5439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x21477faa16082f44 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 88(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x409729ebe2b593f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x521c87c57bbfcce6 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 92(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x04346ffd00e851e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8a4a8f0c95ce7546 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 96(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x10f154d61aff73b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc063c9b842868232 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 100(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x0e21e0a3b394813a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x562df7b07feb986a # initialize rs2
la sp, scratch # base address 
c.swsp x25, 104(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0xd32376da38bb2fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ab1f2c9b09b4da5 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 108(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0xce720ab4c7011ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcd8e825c72aaaeb1 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 112(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xc062b3d6d8112dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x179fcb3687a61ecf # initialize rs2
la sp, scratch # base address 
c.swsp x20, 116(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x87af8f3b21295076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc705719a72dc37ed # initialize rs2
la sp, scratch # base address 
c.swsp x20, 120(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0xd48ea3dd078ba602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe43606c2a47d4540 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 124(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x4339361cb40484ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xea6a9fe1c3ecedb9 # initialize rs2
la sp, scratch # base address 
c.swsp x1, 128(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x77b9f5b39db34133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6815d218e6c844c3 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 132(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0xf928726be35bfef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd7ecfa1fd83a1b21 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 136(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x177239fc599b8db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x773ba1a7bbad6c8b # initialize rs2
la sp, scratch # base address 
c.swsp x30, 140(sp)# perform operation

# Testcase cp_imm_mul
li x7, 0x62d40a860771f2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfc1b47e2067271f1 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 144(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x69d3afa2a81fb4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9e04a2779c86b5ff # initialize rs2
la sp, scratch # base address 
c.swsp x14, 148(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xec6c4fe37de878f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6aa1fbe4514f61ee # initialize rs2
la sp, scratch # base address 
c.swsp x13, 152(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x80367ee3abc3dd56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x04e09e148b49f461 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 156(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x2fd72114d78a4029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9c8acdcfc724020f # initialize rs2
la sp, scratch # base address 
c.swsp x22, 160(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0xa48d6fbe8d0c51ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xea03cdf9b5087445 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 164(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x34ec9a7099e228bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xff837d362b41e338 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 168(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x84007a2a10192eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa6b518eea9114bb2 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 172(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0x3498cf748a7d15e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf84191f998284e7b # initialize rs2
la sp, scratch # base address 
c.swsp x30, 176(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x3540a14935ec6238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa8fbbacffa0c971e # initialize rs2
la sp, scratch # base address 
c.swsp x9, 180(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x8872c0846e250669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6493485766b3b2f1 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 184(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x9509b59c28391445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x48a704a45dfb4a03 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 188(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xd776cabae39b99c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0ea0bf63ca2c4bda # initialize rs2
la sp, scratch # base address 
c.swsp x8, 192(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x61f01bf9e76b545f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8f309fe2f0482d6e # initialize rs2
la sp, scratch # base address 
c.swsp x8, 196(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x06fd8aa8f0b2c2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1c8d40bf1218e4e5 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 200(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x7ccf99b19f910af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x20c8e08c824a43f8 # initialize rs2
la sp, scratch # base address 
c.swsp x19, 204(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x5c52521739a1424b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2a8d44eeb641d481 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 208(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xe4757400f87abe39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9acdd03bddffba4f # initialize rs2
la sp, scratch # base address 
c.swsp x19, 212(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x3924380ba6350f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xab7d0a39c706c6ab # initialize rs2
la sp, scratch # base address 
c.swsp x18, 216(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0xba89180ffdf9e4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x145dbd743c614f66 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 220(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x2dcbd9019546ffe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3a01e4dabb1191cb # initialize rs2
la sp, scratch # base address 
c.swsp x16, 224(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0xd2b5bb373678e9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe5c2e9f0cbc486d5 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 228(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x94784e1839cb6fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1140487d659c5f9b # initialize rs2
la sp, scratch # base address 
c.swsp x20, 232(sp)# perform operation

# Testcase cp_imm_mul
li x21, 0x8f609fec8ca6114b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xad293a71b5ddaa0c # initialize rs2
la sp, scratch # base address 
c.swsp x28, 236(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x3b3e048b4ef2b8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb39ce2233039cdc4 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 240(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xc4c18cda49c6df66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xac9edb397298a346 # initialize rs2
la sp, scratch # base address 
c.swsp x15, 244(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xcc4c2c485a1b417e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7a3a34d8e0ef1040 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 248(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x67efaf1dca8b3e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc8c3e89a0903ce32 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 252(sp)# perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
