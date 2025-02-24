//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.zext.w.S
// ******************


    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x1a18eb6eaeb4eac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x6694eff55ccc2bf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0xed8a4e0a6600109d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.w x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0x51b5bd6e719ca5ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x27daf40e35a9d6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0xa8bcaf3777b968d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x831b10a75d7e277b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xbe583b24af7cc32c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xef22f6c12137a8f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffffffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x13, 0xd4e97c39115f20ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc887763ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xa1d082d8cb0ef1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x2d3532adf0ce29c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x7e3efa5e211c706f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x122aafba6891ae63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x23867a147a30ae4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x70b7bef1b8686f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x159f4c63f7fb9ce2)
li x31, 0x22301f9b6d0384f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x159f4c63f7fb9ce2 # initialize leagalized rd to a random value that should get changed
c.zext.w x15 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x64a7e2b803612504)
li x14, 0xfad64a2ca14bff62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9b581d47fc9edafc # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x360300f45859153c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe10ee7165c2db97e # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x532ac5008e188171 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x03aca7a59fd86f89 # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe94eaf32f57b504a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x774271400342bce0 # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xcaecb7f18c9922da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x66059900c9c6538c # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x26639b4c81549408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6e60c58aef71182a # initialize leagalized rd to a random value that should get changed
c.zext.w x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x652f2a6f0b86caac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x29e7b16f2aa56eab # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x70a1f25c0e760634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaa172bd5524fd632 # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x732580d31ad28137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1abe2498ddc20248 # initialize leagalized rd to a random value that should get changed
c.zext.w x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0xb8974539bc824197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x732a3fe1414f1a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0xb1ab4c07c534e8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x44e4b784b3a08684 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x03bd981412939aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0xc165b68246b3ee62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x6577f72e8c0272f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x22db590808592a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0x2c79f6742638e976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x27, 0x2fd4da1be251699a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x04b1e8956c6cd69a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000080000000 # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x10, 0xd71b109ae3b084b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0x679a498394a49547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000080000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x6, 0x6da94b998c35cc58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000080000001 # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x26, 0x2450ce250aee3227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0xed5f4a91ebe61052 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0x51bc3421e601b327 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x8, 0x85c7bb2c9a794cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x2090eba04f308b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000007ffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0x9d23de93b9856602 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000007ffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x3, 0x490dc7bbf3130844 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0x5eca414e2d8c4eae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0x0dd93980e2e29ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0x4d379a7f64f71325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0xa057dd5282deed8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x18, 0x6715f14d1f575518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000fffffffe # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xf89eec0756f8b92d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x10, 0x0a5d48e4ebffe364 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000aaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x7, 0xaa010e3dee19a12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000aaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.w x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x30, 0xd24eab49da4e2433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0x5887afa0a81d170c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000055555555 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0x1b6e77c30b4a88ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000055555555 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0x70a7501b72710d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x3, 0x088b42cecc37da7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000063ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x6, 0xcd7c85bbcebdad0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000063ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x5, 0x3baec748f8ca7699 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x2, 0xcffebe3d5e3f5436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000e3ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x5, 0x57861a1eb43e8eee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000e3ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.w x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x10, 0x778c385139371641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0xf9c3ccf34506606a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x37dc903a5c3ca65d # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xe76394e2c9d36fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9a2cb89603ec1949 # initialize leagalized rd to a random value that should get changed
c.zext.w x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x76ebe22a8e3e45ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfbfdd0e5e28fe3c0 # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x8bf408e84c8feb18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa4e42c64d50b50af # initialize leagalized rd to a random value that should get changed
c.zext.w x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0x6c8b0d6d4f249399 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80b6868feb2145b3 # initialize leagalized rd to a random value that should get changed
c.zext.w x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0xea06b5b58a2edd4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8f072d103a18cb30 # initialize leagalized rd to a random value that should get changed
c.zext.w x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x2, 0xe3d2241df28ae009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfe5eead1c974bbba # initialize leagalized rd to a random value that should get changed
c.zext.w x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0x88ffa201735e2b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa8d252fe7113176a # initialize leagalized rd to a random value that should get changed
c.zext.w x8 # perform operation

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
