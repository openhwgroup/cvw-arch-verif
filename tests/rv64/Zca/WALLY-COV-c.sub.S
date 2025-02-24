///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.sub.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.996003
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc0ec96418565003c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9dfe520f9ffc68ed # initialize leagalized rd to a random value that should get changed
li x14, 0x02323b8528d1abc9 # initialize rs2
c.sub x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7f6e990407ace515 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x685d0c3bbc8c7032 # initialize leagalized rd to a random value that should get changed
li x13, 0x27fd9288eb8a56cf # initialize rs2
c.sub x9, x13 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x24927b9c44dbd714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc429355947bce666 # initialize leagalized rd to a random value that should get changed
li x14, 0xe5fad37d021d7ec7 # initialize rs2
c.sub x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xddacb1feb8ab753b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf077400be17185e5 # initialize leagalized rd to a random value that should get changed
li x11, 0x3336fe1e0f27260c # initialize rs2
c.sub x11, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x06c10b25faacaf07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x48acf0568281adc6 # initialize leagalized rd to a random value that should get changed
li x10, 0x4a030b2df4c8e571 # initialize rs2
c.sub x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa7d680c76d1c5e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x68c3a2691f8af6c9 # initialize leagalized rd to a random value that should get changed
li x9, 0xe5cd73e89cb72476 # initialize rs2
c.sub x13, x9 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc80c87564253bb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc5e9a75d13870af3 # initialize leagalized rd to a random value that should get changed
li x15, 0x1c23357a597fe230 # initialize rs2
c.sub x14, x15 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe66165f5e774a894 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe460022df43977f2 # initialize leagalized rd to a random value that should get changed
li x8, 0xddfa228a31cc4fa9 # initialize rs2
c.sub x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x40500fb4771c4cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa22853d9e8d8ea2a # initialize leagalized rd to a random value that should get changed
li x8, 0xfb49ea9baf96e3ac # initialize rs2
c.sub x12, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0xc9e4a992ea49234d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x488866095edb49ca # initialize leagalized rd to a random value that should get changed
li x9, 0x5ce1609c254c0458 # initialize rs2
c.sub x10, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x23d7eff16cbf63b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x52619a6601b0a07e # initialize leagalized rd to a random value that should get changed
li x10, 0x89fd806da23d5df7 # initialize rs2
c.sub x13, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x20, 0x3bc2cb9cc12eeb3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9ae1398c35b91f52 # initialize leagalized rd to a random value that should get changed
li x11, 0xad8cde53cf719954 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x4, 0x51bb7bc38954d90d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0c1e1b310d868a1 # initialize leagalized rd to a random value that should get changed
li x12, 0x09b94e6d2fb43a0f # initialize rs2
c.sub x12, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x6bc76b90308e96cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x396928ac69d3c2cf # initialize leagalized rd to a random value that should get changed
li x13, 0xcdbeb44726684a7f # initialize rs2
c.sub x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x2ce09e7f40c6ca4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x60e130bc5b8ecdda # initialize leagalized rd to a random value that should get changed
li x14, 0xc0ee36dbe21ca209 # initialize rs2
c.sub x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x5a3e7f5af9442d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1d00b4ae1ff59b13 # initialize leagalized rd to a random value that should get changed
li x15, 0x3948792544872739 # initialize rs2
c.sub x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x4018e47eb4549f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.sub x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x007e7611ca4ccb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffffffffffff # initialize rs2
c.sub x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xafe847ef70e4ee4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
li x10, 0xffffffffffffffff # initialize rs2
c.sub x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x12, 0x90aa9f66a7c440ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0xc000000000000000 # initialize rs2
c.sub x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x22, 0x81f9672cd0d27abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0xbfffffffffffffff # initialize rs2
c.sub x14, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0x98f513cd27d6f614 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xc000000000000000 # initialize rs2
c.sub x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x16, 0x625ef87115705a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0xc000000000000001 # initialize rs2
c.sub x8, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x22, 0x0e51f26ae6044a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0x8000000000000000 # initialize rs2
c.sub x14, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0x7c779387203763f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0x8000000000000001 # initialize rs2
c.sub x9, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x19, 0x3ff09b5892413089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2dde443bb1d7437b # initialize leagalized rd to a random value that should get changed
li x13, 0xd221bbc44e28bc84 # initialize rs2
c.sub x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xf89cef1c4220edc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize leagalized rd to a random value that should get changed
li x15, 0xaaaaaaaaaaaaaaab # initialize rs2
c.sub x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x18, 0xf425cebcddab1a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2aaaaaaaaaaaaaaa # initialize leagalized rd to a random value that should get changed
li x15, 0xd555555555555555 # initialize rs2
c.sub x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x24b880dd5fa58544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x14, 0xffffffff80000000 # initialize rs2
c.sub x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xbd18eb27089ac665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000007fffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff80000001 # initialize rs2
c.sub x15, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x19, 0x0492abf7c75a7c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000000 # initialize leagalized rd to a random value that should get changed
li x9, 0xffffffff80000000 # initialize rs2
c.sub x11, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x4, 0x79ea0f0812ab1de2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000000 # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff7fffffff # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x21, 0x5acf1ed8b532c2e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x902553ec1b4f9e06 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000000 # initialize rs2
c.sub x13, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x3, 0x1d7473da73f44993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x84aa5e53a9517db8 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000001 # initialize rs2
c.sub x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x1589cf431dd0ab7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x22743151fb07cb53 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.sub x14, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x13, 0x39f82e82f9d57f67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55b9fa17fe288c42 # initialize leagalized rd to a random value that should get changed
li x13, 0x8000000000000000 # initialize rs2
c.sub x13, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x7, 0xf16018e301553cac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xce6585f282753e45 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000001 # initialize rs2
c.sub x15, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x22b58ce391f69a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x596cbf1956b5a82d # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.sub x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x9, 0x38229e6654d50dae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe4a789e11ec0008e # initialize leagalized rd to a random value that should get changed
li x11, 0x7ffffffffffffffe # initialize rs2
c.sub x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x13, 0x7c360df03d7626d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9f408fbf3fe9ce55 # initialize leagalized rd to a random value that should get changed
li x15, 0xffffffffffffffff # initialize rs2
c.sub x13, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0xb8b5509769061fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7282fd8e32af193e # initialize leagalized rd to a random value that should get changed
li x8, 0xfffffffffffffffe # initialize rs2
c.sub x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x14, 0x215f53b3de751f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3bca61c09fd3ca73 # initialize leagalized rd to a random value that should get changed
li x14, 0x5bbc887763ae86f7 # initialize rs2
c.sub x14, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x3ad560670c2c8d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x152902da720f7e2d # initialize leagalized rd to a random value that should get changed
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.sub x11, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x40c15b418f8ec899 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf92611fdd8d9c4e0 # initialize leagalized rd to a random value that should get changed
li x13, 0x5555555555555555 # initialize rs2
c.sub x11, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xbd442ced81cbfd1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda8bd3045b69331d # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000ffffffff # initialize rs2
c.sub x8, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0x467ee1ae47b4d3cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8fb7af4d01683023 # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000fffffffe # initialize rs2
c.sub x9, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x28, 0x60123dfb858da506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd2427d5d6bf3f22d # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000000 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x21, 0x4eebf2ce9ffc5cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8cc8876ac28485d2 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000100000001 # initialize rs2
c.sub x13, x8 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
