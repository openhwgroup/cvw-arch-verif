///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-addi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.452756
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x78d92cf925c24757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8e9de431848b7163 # initialize rs1
addi x0, x30, 1606 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x00e013b96471701c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x411ff65a0f7424ad # initialize rs1
addi x1, x14, -470 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc703cd7cc7e3c990 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x06c416e768f11761 # initialize rs1
addi x2, x26, -1884 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x90ead721a1872eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x65c3a3158a0a812d # initialize rs1
addi x3, x28, -1706 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x35c6958e1dc7c797 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb0f54415b10cade5 # initialize rs1
addi x4, x7, -1395 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x78924f827a817ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7742c314de274c74 # initialize rs1
addi x5, x11, -1332 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x7f24673d0fa23095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x21672eab7dc0256e # initialize rs1
addi x6, x19, -1227 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x794c6d735382dfce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd066fa01f8e5fb1a # initialize rs1
addi x7, x7, -1484 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc1e39f27608551a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffbc849a108396f9 # initialize rs1
addi x8, x22, -1199 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc1de9417ded404ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x08f904bbacf8b0d0 # initialize rs1
addi x9, x30, -1958 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xebec964706d55e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7a6672695d4d85f8 # initialize rs1
addi x10, x29, -1433 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x969bb56aa4f055a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7939399d47f0d542 # initialize rs1
addi x11, x29, 1062 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe6b9ffd78c743f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaa18ba1d2e56e050 # initialize rs1
addi x12, x4, -944 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x7c4aabf88fc04ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xee72532f44980e0d # initialize rs1
addi x13, x5, 1282 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x25bdb5f0ba222257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x385dd74ca2e582ae # initialize rs1
addi x14, x24, -242 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3d81f44ad431cd1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6de1d75722c3c14f # initialize rs1
addi x15, x21, 1768 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xcd9d18e9a523045a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcd92f18f15213e8e # initialize rs1
addi x16, x12, -1088 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xed7ba22174da2963 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd6b0d25c31953704 # initialize rs1
addi x17, x12, 626 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8cc044d6f58f53f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x840e4d2acd90d594 # initialize rs1
addi x18, x31, 107 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x4d4825c79227cfbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe900a788f8dc7cf9 # initialize rs1
addi x19, x31, -421 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5bf7ed420af6e583 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x915127b06af88c14 # initialize rs1
addi x20, x26, 1270 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd74a3c1316e7949a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3faf5125b482b176 # initialize rs1
addi x21, x3, 1067 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x99a41d66042ee3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7089121616b2de52 # initialize rs1
addi x22, x3, -291 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x613124b3ecbdd196 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x37bdddeee39425ff # initialize rs1
addi x23, x3, 1550 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x4af9cd114932eb25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9ca689706f8fa45d # initialize rs1
addi x24, x6, 104 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3ea6294bc3200c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb604dcbf3389c373 # initialize rs1
addi x25, x12, 1566 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x0bba3f742d31fb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5a90476e6c1e3cba # initialize rs1
addi x26, x15, 1993 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x60d877afa7b4830e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7613bafd06ae9b4c # initialize rs1
addi x27, x10, -526 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0877557f0eb60f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2e8e501fa7157059 # initialize rs1
addi x28, x19, -2041 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x994b3a74554da487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xef834fd8c9a54643 # initialize rs1
addi x29, x24, 638 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xd20e4944e69df9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x65cd6cfecbc22a30 # initialize rs1
addi x30, x22, 1344 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x6fc08003cb5e8f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb1e1bb51a8d88c1c # initialize rs1
addi x31, x18, -293 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x3, 0xf92b46e39199a3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x839c87b5b780b4ac # initialize rs1
addi x3, x0, 911 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0x36b14150ddc5ced6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x378093695dc09a61 # initialize rs1
addi x9, x1, 871 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x14, 0x0766fed4f02fe71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xee8b360cb3e55910 # initialize rs1
addi x14, x2, 774 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0xd29a082bf4b421b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2c631a1b9863d2e6 # initialize rs1
addi x10, x3, -999 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x17, 0x79f431e5cbf31b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2f0e5ddfb9724ee3 # initialize rs1
addi x17, x4, 656 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x15, 0x182e5883de0bc123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8a97dee5e8b3e44d # initialize rs1
addi x15, x5, 220 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x21, 0x67568ecd0f89e144 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3e3523eb6f12a5e3 # initialize rs1
addi x21, x6, 1756 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x18, 0xba852a084b458d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa41c9d08f1c98fc6 # initialize rs1
addi x18, x7, -1346 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0x3349cfb65b78a0f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x138394c12618ffaf # initialize rs1
addi x4, x8, -144 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xd8f311fe23e3b05f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc9e6ffa82a9483c3 # initialize rs1
addi x8, x9, 1594 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0x1e27d2238caa3331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc262f0f954d3da58 # initialize rs1
addi x9, x10, 858 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x14f5f2fdfe43da42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd7a83f73a91a19b1 # initialize rs1
addi x29, x11, 730 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x3bbce8fbea80bcda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x678baa9d3eb25768 # initialize rs1
addi x22, x12, 1439 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x828bfc44b74f7d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x435f94518258f268 # initialize rs1
addi x25, x13, -694 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x27, 0xa5b377815576ba89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa6ed908e885e53e9 # initialize rs1
addi x27, x14, -892 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x67a2621fb4595df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcce435ce05b600cd # initialize rs1
addi x16, x15, -135 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0x55da6e1c49d501da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf68d6ae2176f13ea # initialize rs1
addi x18, x16, -233 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0x663926a090f66f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9bcaee0cc6f63521 # initialize rs1
addi x31, x17, -1700 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x13, 0xe5b557ca880ae432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xea8f7cf7e0912e04 # initialize rs1
addi x13, x18, -1800 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0x92bf0c81c584e358 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb72506dfdecea028 # initialize rs1
addi x7, x19, 1118 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x4, 0x463b17fe69f4a967 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2374c47ebfa004a7 # initialize rs1
addi x4, x20, -788 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x04dee9df79021d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x99be75523a24d1f7 # initialize rs1
addi x7, x21, 1412 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0xe9064e5dd0c3d37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x805c938d30ff6ecd # initialize rs1
addi x24, x22, -948 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x10, 0x7e41010658358858 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9c88434ca4b14097 # initialize rs1
addi x10, x23, 106 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x221a6d9a8cf7c9a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbae1cbb67bcd4882 # initialize rs1
addi x11, x24, -356 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0xa882e8910470ff7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdc7e47a24861cfc5 # initialize rs1
addi x18, x25, -161 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0xddfd252ca0b61d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8a8607c00954eb11 # initialize rs1
addi x20, x26, -1834 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x10, 0xb725f2473b5ca66e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80f925221635bc03 # initialize rs1
addi x10, x27, -980 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0x92ce3495cd8b8450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1d852de0feb5a697 # initialize rs1
addi x1, x28, -466 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0x7b1ca327a8bdc2db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x688f35b2d37176f2 # initialize rs1
addi x26, x29, 1182 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x14, 0xfa0b2ee114ade546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2edf9fa51905702a # initialize rs1
addi x14, x30, -1999 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0x938afcbedab9e6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3e861bbacfe4d18d # initialize rs1
addi x23, x31, 937 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x1c41e331365c745a)
li x14, 0x77cf83bf67951b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x77cf83bf67951b3e # initialize rs1
addi x14, x26, 1331 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x5, 0xe5a0b418e7fdafd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000000 # initialize rs1
addi x5, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xbde756a6cfc10be8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
addi x12, x11, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x784498d234d1583e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize rs1
addi x21, x13, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x24, 0xdda5753aa30259fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
addi x24, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0x22fce9801f135c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize rs1
addi x29, x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x8d76e19056418d20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
addi x14, x3, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xf16dbe16d1c5bf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
addi x2, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0x206fb2c262419fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000002 # initialize rs1
addi x15, x16, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0x20ce4bd9f7ea1b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
addi x20, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x27, 0x70d5656ac9608b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs1
addi x27, x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x7, 0x07852a0448594e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000000 # initialize rs1
addi x7, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x2, 0xa6260fbd6bf99e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
addi x2, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0x21424fec4c93bca3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
addi x9, x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x18, 0x2f8bf77414e19a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000001 # initialize rs1
addi x18, x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x23, 0x4242b4b214520bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
addi x23, x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x7, 0x38801feb24b3f071 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addi x7, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x5, 0xf2f527111093fa9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
addi x5, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x1, 0x29fcb9b67f7ba7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
addi x1, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x19, 0x1949d6c60aad5c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # initialize rs1
addi x19, x26, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x15, 0x66a3ba36d49b7f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize rs1
addi x15, x13, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x12, 0xc551d9a7e2b56ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x12, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x13, 0x69cb9d96a918fc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
addi x13, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x27, 0xfa70070d8f4f0084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x27, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x9, 0x406914625cf11d8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
addi x9, x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x7, 0x6f9bbeb33e514723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x11, 0xa551f159d3ca360d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
addi x11, x24, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x27, 0x1d4c473781a3099b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
addi x27, x9, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x11, 0xf9284c62accbc107 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # initialize rs1
addi x11, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x30, 0x9cd27693fff451ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
addi x30, x26, 1783 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x24, 0xdfb85d2b692a8d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffffffffffff # initialize rs1
addi x24, x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x2, 0x6c8d65208d858b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x2, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x17, 0x262dbd14727a7920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x17, x7, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5af725f19a91af20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
addi x27, x7, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x1, 0xf38155bfd0d5a447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
addi x1, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0x32d850a8602f6b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
addi x25, x22, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x12, 0xbb7375ecadd3f589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
addi x12, x9, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x7640b67c00b90559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000ffffffff # initialize rs1
addi x13, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0xc9f7768e432ff705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # initialize rs1
addi x11, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0xaf04bb722d87ce11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
addi x9, x4, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0x3d424dc3dbeab300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # initialize rs1
addi x27, x19, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x12, 0x0cef45e166f7ba25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
addi x12, x26, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x49883914e80ca950 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffffffffffff # initialize rs1
addi x11, x5, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x12, 0x6c938ed76fd7e85b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
addi x12, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x31, 0x1d2564b79fd71a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addi x31, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x1, 0xa6cc9d9031fb8ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
addi x1, x24, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x18, 0xfcab6a1d0bb47034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
addi x18, x30, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x19, 0xb35892681b8965b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000001 # initialize rs1
addi x19, x13, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x13, 0x1a7264c2fea7697e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
addi x13, x11, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0xa1936615ad099a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
addi x1, x21, -1644 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x4a5aac12a8d7337e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
addi x16, x28, -813 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x9e19fb6d0184ce48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000002 # initialize rs1
addi x3, x27, -1748 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0x5e44f2015157bbac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8000000000000000 # initialize rs1
addi x26, x28, -1939 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0x7b21356322e64f2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000001 # initialize rs1
addi x6, x22, 1801 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x2e2b15a829961611 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
addi x17, x21, -1992 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7890ce5dbd2790ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffffffffffe # initialize rs1
addi x18, x10, -1188 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0x7abcdbe43049d9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
addi x8, x16, -44 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0x336559a5c02de62d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffffffffffe # initialize rs1
addi x11, x9, 325 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x8, 0xaf8af591b1e1e552 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # initialize rs1
addi x8, x17, 995 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xa22487102ef203e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x28, x20, 599 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x1be0fcc38f8fe9e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5555555555555555 # initialize rs1
addi x21, x2, 1921 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x167878179203416f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs1
addi x29, x5, 579 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x2a9c0de584814b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
addi x15, x27, 446 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x3, 0x8f9910684d40ace9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # initialize rs1
addi x3, x24, -1977 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0xf3990a05183c9612 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize rs1
addi x23, x9, 1302 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9c397325b517274b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x86a9caf8f92776da # initialize rs1
addi x0, x0, -630 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x560616f1a723f71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x174a0e6798afacaa # initialize rs1
addi x1, x1, 1716 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x700ecab5b99ed87f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x87d26fe5118bb518 # initialize rs1
addi x2, x2, -16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1925b1b25a7d6f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1cede63aab20f1c8 # initialize rs1
addi x3, x3, -874 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xb048dce304ad1919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe89ab2c659c1aa2c # initialize rs1
addi x4, x4, -442 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xc643770478a4c118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3beaa3bf1d9f4530 # initialize rs1
addi x5, x5, 1368 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x398d22c37d663b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4f51c6d5d36b3faf # initialize rs1
addi x6, x6, 2004 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xbd068a6d793ef89a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7404ee1229c037a5 # initialize rs1
addi x7, x7, 181 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x982d7f33e8df1416 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9f5f802b1e46b7d4 # initialize rs1
addi x8, x8, 1429 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2fda450b51d9f76d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x18a86cd080ed3e6e # initialize rs1
addi x9, x9, -497 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x51f1f2ad398929b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe73cdb3a9bd39161 # initialize rs1
addi x10, x10, 1034 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x14c3f0af9a22acbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x940acaeb3146660d # initialize rs1
addi x11, x11, 1081 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3a413ebc38787848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4c561654c6e7cad4 # initialize rs1
addi x12, x12, 383 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x6b3003de6c4291a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb165591472c8aeb0 # initialize rs1
addi x13, x13, -1631 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1a997dd1b645411d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9a32fc88ddb1ad69 # initialize rs1
addi x14, x14, -615 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb56c05cd18ca20ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x804c93bb50e49f78 # initialize rs1
addi x15, x15, 475 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x98fd1ff76e2d05c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x67bdc1df06b34fc1 # initialize rs1
addi x16, x16, 124 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd98ff6a81b9245ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0b27aed3bad653a5 # initialize rs1
addi x17, x17, -122 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x486205cfabefcc5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc15f8fd6bf563370 # initialize rs1
addi x18, x18, 1553 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x257d387328edffaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x988c4ae1390fec20 # initialize rs1
addi x19, x19, -1449 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xcde8a2fdeb26bc49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb6d5f0bbad806b17 # initialize rs1
addi x20, x20, -1379 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x73c1a57d4aed14e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2075c6dbc60050e0 # initialize rs1
addi x21, x21, 1440 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x34ae9623289025db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc293ef3fc5a733e7 # initialize rs1
addi x22, x22, 1113 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x446e0c76143d51c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x03a040808f242635 # initialize rs1
addi x23, x23, 595 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2a93c3027d687c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7bd8008571715f3c # initialize rs1
addi x24, x24, -1406 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xacf1cf4acc78fa8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd296588142b55403 # initialize rs1
addi x25, x25, 927 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xc039cc595995c2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe0de1e7ecf5659ac # initialize rs1
addi x26, x26, 1748 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x25999f066bca98f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3991ad559a08ab10 # initialize rs1
addi x27, x27, -1143 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x667b4be224a3d7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcc02e8b80c9cfa70 # initialize rs1
addi x28, x28, -407 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1e7e5af1f0c88581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe276d08f87969246 # initialize rs1
addi x29, x29, -108 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x38e842ea28ac051c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa434e5b8918fa31e # initialize rs1
addi x30, x30, -1748 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x81967a7fbda745d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6c5130f25255b428 # initialize rs1
addi x31, x31, 453 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x350d5b8819ad16f2)
li x1, 0x1ec5ef8802aff98c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x350d5b8819ad16f2 # initialize rs1
addi x1, x4, 603 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2dd6c3dfb78237f7)
li x6, 0x87e930e9c2760f5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd2293c20487dc809 # initialize rs1
addi x6, x18, 1011 # perform operation

# Testcase cp_imm_zero
li x17, 0x2f5b9cb0b9e77d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbc477fda8fc73128 # initialize rs1
addi x17, x22, 0 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, 0 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, 1 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, 2 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, 1023 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, 1024 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, 2047 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, -2048 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, -2047 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, -2 # perform operation

# Testcase cp_imm_corners
li x20, 0x3610427d59f7f919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcdb902117926e0fc # initialize rs1
addi x20, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000001 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc887763ae86f7 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
addi x7, x15, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x7, 0xfc997ebe87cc7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addi x7, x15, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
