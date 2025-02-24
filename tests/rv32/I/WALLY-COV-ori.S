///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-ori.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.975265
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xa51c8ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x930b1ca4 # initialize rs1
ori x0, x16, -1446 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xbf12fbdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0aa0a154 # initialize rs1
ori x1, x16, 11 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xc67fb72c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x21bb5f6e # initialize rs1
ori x2, x6, -1865 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x34b14b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x34577757 # initialize rs1
ori x3, x29, -1595 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x351869ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x97a06130 # initialize rs1
ori x4, x16, 119 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x42768cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x417aa897 # initialize rs1
ori x5, x10, -887 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x9bd1dbcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd3bb27a1 # initialize rs1
ori x6, x3, 1082 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe60c2f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb2ff4bec # initialize rs1
ori x7, x14, 494 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc68418c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6e8ec44f # initialize rs1
ori x8, x9, -225 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x00fefeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x36445ac3 # initialize rs1
ori x9, x3, -986 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5e732f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x22c3baf2 # initialize rs1
ori x10, x14, -265 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc5284bba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x197b7dc7 # initialize rs1
ori x11, x28, 1161 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x688cbc32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4a04ea10 # initialize rs1
ori x12, x20, -2036 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x594cea90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4c991ee8 # initialize rs1
ori x13, x10, -895 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x157c2996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x472007ff # initialize rs1
ori x14, x6, 61 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xbb71548c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xae7bb7ab # initialize rs1
ori x15, x7, -285 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xcbff3228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdf8bc3ee # initialize rs1
ori x16, x18, -549 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe7fb4a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8b4a989e # initialize rs1
ori x17, x22, -979 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xbdaf0888 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7f826be0 # initialize rs1
ori x18, x4, 493 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x881e32eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x70dbdd8f # initialize rs1
ori x19, x9, -1313 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x775ae4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb30d6386 # initialize rs1
ori x20, x6, 576 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xafa6ceac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe9e45c37 # initialize rs1
ori x21, x21, 11 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa45b9f92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0ff5e49a # initialize rs1
ori x22, x31, 291 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x3cf7bf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x62356d8a # initialize rs1
ori x23, x3, -861 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x6d490f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaa770fc2 # initialize rs1
ori x24, x1, 1564 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x66b79787 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4ee23517 # initialize rs1
ori x25, x29, 956 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb13e93f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x26f21b4c # initialize rs1
ori x26, x22, -328 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe3f65f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2c7ffcf5 # initialize rs1
ori x27, x2, 522 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x36b550d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7f1b8b3d # initialize rs1
ori x28, x9, -1031 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x53f30b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xda88c226 # initialize rs1
ori x29, x17, 1546 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x625e45d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfe425d3b # initialize rs1
ori x30, x8, 937 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x8baa90dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x59d89f6e # initialize rs1
ori x31, x15, -913 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x22, 0x8a8b8887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x96670efe # initialize rs1
ori x22, x0, 168 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x16, 0x3ff19a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x46dbc29c # initialize rs1
ori x16, x1, -699 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x6, 0x22ee418a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7d44eaa3 # initialize rs1
ori x6, x2, 474 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0x1d0a4aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9e08594e # initialize rs1
ori x15, x3, 862 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x29, 0x78b53dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xff2b44bb # initialize rs1
ori x29, x4, -394 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x15, 0xe32ea383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x16686ea8 # initialize rs1
ori x15, x5, -1488 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x9, 0x3d67579b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x114593c0 # initialize rs1
ori x9, x6, -1936 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0xd127bc7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7b344fa6 # initialize rs1
ori x16, x7, 1647 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0xb89b8caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7055f139 # initialize rs1
ori x14, x8, 1977 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0xe1ab7d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5ff8f116 # initialize rs1
ori x4, x9, 532 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x9f15b142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a52a624 # initialize rs1
ori x13, x10, 1947 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0xb20d96d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4e52174d # initialize rs1
ori x7, x11, -1569 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x69532d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4797334c # initialize rs1
ori x31, x12, 471 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x24, 0x31dbb669 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x05189b50 # initialize rs1
ori x24, x13, 537 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x4, 0x03315a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x28f11eb3 # initialize rs1
ori x4, x14, 391 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x37f26c5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa9d99778 # initialize rs1
ori x18, x15, 1165 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0x9be8b64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0c0e157b # initialize rs1
ori x2, x16, -1386 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x3265797c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xde243566 # initialize rs1
ori x15, x17, -467 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0xb46eb7d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x58181f30 # initialize rs1
ori x14, x18, 627 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0x74d5ec36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x49f756ea # initialize rs1
ori x8, x19, -1360 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0xf1369830 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x50087cc0 # initialize rs1
ori x24, x20, -271 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x20, 0x88632d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x66b4c9be # initialize rs1
ori x20, x21, 50 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x21, 0x9ac2d5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x324e3588 # initialize rs1
ori x21, x22, -177 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x20, 0x05dd7a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xce1d7823 # initialize rs1
ori x20, x23, -105 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0x15505056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbd2923b4 # initialize rs1
ori x18, x24, -330 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0xd4038042 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xedf877a2 # initialize rs1
ori x29, x25, -160 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x4, 0xc3ea5302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6284a9dc # initialize rs1
ori x4, x26, 708 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0xa74020d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf0d46785 # initialize rs1
ori x2, x27, -265 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x5, 0x1d6fa494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdd224323 # initialize rs1
ori x5, x28, 1347 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x13, 0x90dde1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x126a9759 # initialize rs1
ori x13, x29, 1429 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0x192b9821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2079f9a2 # initialize rs1
ori x22, x30, -1195 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0x14a52bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4be26416 # initialize rs1
ori x13, x31, 226 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x322f47d9)
li x9, 0xbc473bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbc473bf7 # initialize rs1
ori x9, x6, 351 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x856ed1a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
ori x26, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x75230001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # initialize rs1
ori x9, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x0d8e2362 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
ori x13, x19, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0xea4abec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize rs1
ori x6, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0xa445d225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
ori x18, x17, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x7b2127e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
ori x6, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0xa374a41e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
ori x26, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0xf3347007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x15, x31, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0xcf35f6ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
ori x14, x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0x93dfa22b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000000 # initialize rs1
ori x11, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x10, 0x8f3af2a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
ori x10, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x8, 0xed17f338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
ori x8, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0x359e6633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
ori x25, x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x25, 0x28bbfcbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x80000001 # initialize rs1
ori x25, x24, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x7ba7211f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffff # initialize rs1
ori x15, x24, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0x2b767b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize rs1
ori x31, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x15, 0x6a5eea22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x15, x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x9be1a355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
ori x24, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x21, 0x5c234fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7ffffffe # initialize rs1
ori x21, x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0x795c8e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
ori x30, x8, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x29, 0x323fd7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
ori x29, x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0x91abafef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize rs1
ori x30, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0xdb354c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
ori x6, x3, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0xaaefcb04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
ori x30, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x9, 0x605bc20d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # initialize rs1
ori x9, x2, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x29, 0x8ff895c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # initialize rs1
ori x29, x30, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0xfd0a809f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
ori x10, x12, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0x2c8a080e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
ori x13, x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x10, 0x19857b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5bbc8877 # initialize rs1
ori x10, x27, -1929 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x23, 0x5a5aca2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffff # initialize rs1
ori x23, x28, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x19, 0x9af10510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaa # initialize rs1
ori x19, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x6, 0x4353e1b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
ori x6, x28, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x3, 0x7b98d979 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
ori x3, x16, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x13, 0x56fffd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
ori x13, x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0x0f5ac7a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # initialize rs1
ori x22, x25, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0xb7d5b119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize rs1
ori x1, x11, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x2d4f9dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
ori x17, x20, 755 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0xd7f74a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
ori x11, x17, -532 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x83775d5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
ori x18, x30, 1546 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x9789e983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
ori x3, x29, 124 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x18, 0x95f9d4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000001 # initialize rs1
ori x18, x9, 723 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x4750ac6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7fffffff # initialize rs1
ori x10, x5, -548 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x4b53547a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
ori x8, x20, -1565 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x247c2ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
ori x15, x20, -1459 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0xbfa41203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
ori x27, x25, -1098 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x29, 0x3a4c8feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
ori x29, x25, 290 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0x9a1f284f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
ori x9, x19, 1255 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x7b467c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
ori x9, x26, -1092 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x29576731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6b00dec7 # initialize rs1
ori x0, x0, 757 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9f278f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf90d0729 # initialize rs1
ori x1, x1, -1331 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5979e670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6843b134 # initialize rs1
ori x2, x2, 864 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xf4ae07e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf944d40b # initialize rs1
ori x3, x3, -2010 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x0cc58293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd1e9beaf # initialize rs1
ori x4, x4, 685 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x88f56e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xba3418f7 # initialize rs1
ori x5, x5, 1549 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x7ec01b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3d12d15f # initialize rs1
ori x6, x6, -782 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x1573b1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x3d742d51 # initialize rs1
ori x7, x7, -415 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf3fe81f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1e7a87b2 # initialize rs1
ori x8, x8, 586 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5e0e3be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7c3b68cc # initialize rs1
ori x9, x9, 1201 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd6e33f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2ec10d82 # initialize rs1
ori x10, x10, 1819 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3ede4e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb39b3d39 # initialize rs1
ori x11, x11, -1070 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xacf42e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfd33e4e7 # initialize rs1
ori x12, x12, -798 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1ac5721c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xba8f6d8d # initialize rs1
ori x13, x13, 421 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x538c4bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8465aa9b # initialize rs1
ori x14, x14, -1076 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5cb4c0a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf06b929d # initialize rs1
ori x15, x15, 0 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xca00d6da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7a341414 # initialize rs1
ori x16, x16, 1056 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x252671fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8874b3bd # initialize rs1
ori x17, x17, -377 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdf64fc0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xff519277 # initialize rs1
ori x18, x18, -912 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3b5d0cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc7f1d0c0 # initialize rs1
ori x19, x19, 824 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xae320a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe0b5c48f # initialize rs1
ori x20, x20, 547 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x78faaf9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf9bea717 # initialize rs1
ori x21, x21, 87 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x84b2e4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa77ab48c # initialize rs1
ori x22, x22, 601 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb30e5c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x95b5fcda # initialize rs1
ori x23, x23, -86 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x724c3b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4b0eff75 # initialize rs1
ori x24, x24, -1278 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0899ea9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x77bccf9d # initialize rs1
ori x25, x25, -797 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x63eb12e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3b2df389 # initialize rs1
ori x26, x26, -1306 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4b16e2bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5964069c # initialize rs1
ori x27, x27, 1599 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x268722f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x695f2a8c # initialize rs1
ori x28, x28, -583 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9954af6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x024913b4 # initialize rs1
ori x29, x29, 1627 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xdd9b146e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3dc7f24c # initialize rs1
ori x30, x30, -1399 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x72ef09c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfd14affa # initialize rs1
ori x31, x31, 604 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x254feefd)
li x9, 0x1c9b4f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x254feefd # initialize rs1
ori x9, x27, 1775 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x4cb02563)
li x13, 0xfc70f0e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb34fda9d # initialize rs1
ori x13, x7, -671 # perform operation

# Testcase cp_imm_zero
li x10, 0x68a6b6eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd6eec5d4 # initialize rs1
ori x10, x1, 0 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, 0 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, 1 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, 2 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, 1023 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, 1024 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, 2047 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, -2048 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, -2047 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, -2 # perform operation

# Testcase cp_imm_corners
li x1, 0x95369372 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x352f80e3 # initialize rs1
ori x1, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000000 # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffff # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfffffffe # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc8877 # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
ori x14, x31, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x14, 0xa30b026b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x55555555 # initialize rs1
ori x14, x31, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
