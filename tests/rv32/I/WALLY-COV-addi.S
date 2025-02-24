///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-addi.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.925608
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd9d7b48a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe9f1c34d # initialize rs1
addi x0, x18, 1710 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x27ca4492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x754efc5d # initialize rs1
addi x1, x28, -1073 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe077fb54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6b9cfa61 # initialize rs1
addi x2, x28, -1293 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xd7a750e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaa8c4f54 # initialize rs1
addi x3, x13, -2006 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x45ba13ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80678ee3 # initialize rs1
addi x4, x10, -1213 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x4da3ea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbe46a5d2 # initialize rs1
addi x5, x26, -724 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf032172d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x88af77d3 # initialize rs1
addi x6, x7, -1611 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa38587a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x79fb3bcd # initialize rs1
addi x7, x13, 1343 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9a979f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x43d3c1cd # initialize rs1
addi x8, x26, 829 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9727212f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6cf1c526 # initialize rs1
addi x9, x26, -464 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xa34ac29a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8f28b6f3 # initialize rs1
addi x10, x30, -672 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x46b004ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x318f7ba9 # initialize rs1
addi x11, x9, -1962 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x664332af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x618a327d # initialize rs1
addi x12, x24, -197 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd5bd5a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x82562466 # initialize rs1
addi x13, x3, -1259 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xcd62fd36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xec5f3b26 # initialize rs1
addi x14, x21, 737 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2913689e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x05dde624 # initialize rs1
addi x15, x4, -683 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x41fb9b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbb655d51 # initialize rs1
addi x16, x24, 1209 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x896642b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9c834a7c # initialize rs1
addi x17, x26, -1283 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x89fdfb99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfcbbb96c # initialize rs1
addi x18, x27, -1684 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xee9f143d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5a9ba498 # initialize rs1
addi x19, x24, -1230 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb8d59b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6ba735b1 # initialize rs1
addi x20, x19, -1323 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x47468251 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2f42cb58 # initialize rs1
addi x21, x27, 248 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x81cd34bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x910f0fed # initialize rs1
addi x22, x5, 893 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x43e3af49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb828ceb0 # initialize rs1
addi x23, x5, -2042 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x9fe62e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xbb047d03 # initialize rs1
addi x24, x17, 998 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6b46214c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4b5c31ed # initialize rs1
addi x25, x27, 568 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb94f6849 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc4e813db # initialize rs1
addi x26, x28, -1835 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xc1a1d053 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc27efe7e # initialize rs1
addi x27, x11, 33 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x7380527c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3f377baa # initialize rs1
addi x28, x19, -482 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7c7718ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6559f2d5 # initialize rs1
addi x29, x2, -768 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x19e3bfe6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5945e764 # initialize rs1
addi x30, x4, 499 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xdf1b925e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x30dc2737 # initialize rs1
addi x31, x22, 551 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x7, 0x746ddff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xba8a82ea # initialize rs1
addi x7, x0, -2001 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x14, 0x9e82aeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb205b5f7 # initialize rs1
addi x14, x1, 835 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0x89c936a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6b7d2713 # initialize rs1
addi x16, x2, 633 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x22, 0xefac7228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf850cbec # initialize rs1
addi x22, x3, -222 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x3, 0xa556df18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa6e880af # initialize rs1
addi x3, x4, 2024 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x23, 0x868a9123 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5c724d49 # initialize rs1
addi x23, x5, -171 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0x6f4f1e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf3430638 # initialize rs1
addi x3, x6, 1222 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x14, 0xf7f3032b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe960a9f6 # initialize rs1
addi x14, x7, -1743 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x20, 0x04da2f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x35ba9da1 # initialize rs1
addi x20, x8, -276 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x7d1271b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd0506f58 # initialize rs1
addi x5, x9, 195 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xa3167929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x12665bdc # initialize rs1
addi x21, x10, -120 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0x265cad5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc500db2c # initialize rs1
addi x28, x11, -755 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x113ed69c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfae203e1 # initialize rs1
addi x11, x12, 869 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x1c6258f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe06ecd8a # initialize rs1
addi x14, x13, -900 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x087bc43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0c9aaa56 # initialize rs1
addi x13, x14, 1557 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0xc314f367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd3cbdcdc # initialize rs1
addi x26, x15, -1709 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0xeae9c546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x43cc31cf # initialize rs1
addi x8, x16, -583 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x234877e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x689f2d23 # initialize rs1
addi x3, x17, 1551 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x9e54afa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3458596e # initialize rs1
addi x8, x18, 401 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0x90916a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x16bb04c1 # initialize rs1
addi x18, x19, 520 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0x5028fbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x815c77ed # initialize rs1
addi x15, x20, -945 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x6c10e433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcb6729d4 # initialize rs1
addi x31, x21, -1874 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x5, 0x317f1e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xab5fc283 # initialize rs1
addi x5, x22, -56 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x5b902e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd9057a48 # initialize rs1
addi x26, x23, 1253 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x5a344fd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc4791523 # initialize rs1
addi x11, x24, -171 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0x4a1e1ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb41fdcad # initialize rs1
addi x1, x25, -801 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x13779d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3affeda3 # initialize rs1
addi x2, x26, 1524 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0xb1ddd811 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x992c6631 # initialize rs1
addi x30, x27, -2043 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x1, 0x74a70ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0f332bab # initialize rs1
addi x1, x28, -263 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0x772b2984 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa51550ef # initialize rs1
addi x22, x29, 2017 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x1, 0xebc295a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf37412b0 # initialize rs1
addi x1, x30, -523 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0xeda3852f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x62e32fee # initialize rs1
addi x14, x31, 481 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xfbda1657)
li x15, 0x7c16b60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7c16b60a # initialize rs1
addi x15, x20, -1558 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x6ca812e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize rs1
addi x21, x9, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0xf2d62fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs1
addi x2, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0xb36e40a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
addi x11, x19, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0xd22acfa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs1
addi x30, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x662cd6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs1
addi x26, x5, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x5df0ff7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffff # initialize rs1
addi x14, x27, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x04502efc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
addi x1, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xf883d4ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs1
addi x3, x21, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x10fe6843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
addi x10, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x15, 0x4e132492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80000000 # initialize rs1
addi x15, x10, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0x983af186 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs1
addi x11, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x25, 0x0c899ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffff # initialize rs1
addi x25, x7, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x21, 0xe107e332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80000001 # initialize rs1
addi x21, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x28, 0x8aab78d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x80000001 # initialize rs1
addi x28, x20, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x12, 0xf81dbbf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
addi x12, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x56faae4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fffffff # initialize rs1
addi x18, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x391b0ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize rs1
addi x24, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0xfb47c30a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
addi x30, x6, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x27, 0xc9ce7799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs1
addi x27, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x27, 0x4ec72b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffe # initialize rs1
addi x27, x7, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x12, 0x8f356b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # initialize rs1
addi x12, x1, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0xe15605ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
addi x20, x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x26, 0xa54b2f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
addi x26, x17, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0x3e7bb18f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
addi x30, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x5d3dc7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
addi x11, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0x883f0c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
addi x24, x27, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0x75d0578c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xffffffff # initialize rs1
addi x31, x2, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x17, 0xd614015d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x17, x4, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x16, 0xe9b3cd98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc8877 # initialize rs1
addi x16, x26, -1929 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0xd297a189 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
addi x12, x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0x9346212a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
addi x27, x8, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x7, 0x1abb092d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
addi x7, x14, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x22, 0xe77bebcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # initialize rs1
addi x22, x17, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x4, 0x1c1b009e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
addi x4, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x18, 0x256b0d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x55555555 # initialize rs1
addi x18, x17, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x27, 0xa3323af3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
addi x27, x22, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x96d3e516 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
addi x30, x6, -1172 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x2650b124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
addi x1, x20, -890 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0xac29c1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs1
addi x3, x30, -1340 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x01e9dca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000 # initialize rs1
addi x16, x23, 138 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0xf26fd260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
addi x30, x8, 1379 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x16a7276e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize rs1
addi x7, x12, -1569 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x739f3249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # initialize rs1
addi x20, x26, -445 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xce920ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize rs1
addi x30, x8, 1778 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x35e98768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # initialize rs1
addi x6, x27, 347 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x2, 0xb4e2c460 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
addi x2, x9, -1241 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0x9f995992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaa # initialize rs1
addi x25, x3, 673 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0xb2564c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x12, x4, -713 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc66596e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5bcdf979 # initialize rs1
addi x0, x0, -398 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd71bd58f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x76c8c182 # initialize rs1
addi x1, x1, 1247 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x79b638c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd230ebcd # initialize rs1
addi x2, x2, 604 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0c099d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4a53ba16 # initialize rs1
addi x3, x3, 1161 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x6776ede0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf109bc67 # initialize rs1
addi x4, x4, -637 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x65200e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3d166f56 # initialize rs1
addi x5, x5, 1195 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xb8daa0d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8b3d5eb0 # initialize rs1
addi x6, x6, -1415 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xd09aa3b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x04e7d97c # initialize rs1
addi x7, x7, -1917 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x43893bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc5fd4007 # initialize rs1
addi x8, x8, -1050 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x60b9ad71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x90b89776 # initialize rs1
addi x9, x9, 1292 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc7175f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6ac04ece # initialize rs1
addi x10, x10, 878 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xea430e3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x579162f7 # initialize rs1
addi x11, x11, -598 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb876a4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8dd0716d # initialize rs1
addi x12, x12, 1693 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0ca97ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x791d4347 # initialize rs1
addi x13, x13, 101 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x62d63c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x97bfe2e4 # initialize rs1
addi x14, x14, 1261 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x09bb66d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x623fc5b9 # initialize rs1
addi x15, x15, 45 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4ad99685 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x74364a93 # initialize rs1
addi x16, x16, 1692 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1aa92108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x88192f8a # initialize rs1
addi x17, x17, -516 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe6214fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdda72833 # initialize rs1
addi x18, x18, -2009 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x21e8b48d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a14be4a # initialize rs1
addi x19, x19, -1468 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf0924ea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf0bed3ed # initialize rs1
addi x20, x20, 1936 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x387b0847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe2d371cc # initialize rs1
addi x21, x21, 1464 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x34d2573b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7a1e3ce6 # initialize rs1
addi x22, x22, 239 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x63a081a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe368fc63 # initialize rs1
addi x23, x23, -1698 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x607544b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4e94228c # initialize rs1
addi x24, x24, 182 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0c0a80c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0d08f653 # initialize rs1
addi x25, x25, -830 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x08268550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x071c6ee3 # initialize rs1
addi x26, x26, -1775 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc88ba627 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb55dc17a # initialize rs1
addi x27, x27, -215 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x1dafc318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe188bdf5 # initialize rs1
addi x28, x28, -1441 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe0309963 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x801286e8 # initialize rs1
addi x29, x29, 1439 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x2970243b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x25b09e48 # initialize rs1
addi x30, x30, -425 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2c92f772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaffef87 # initialize rs1
addi x31, x31, -98 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x3a220bde)
li x27, 0xc40421fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3a220bde # initialize rs1
addi x27, x16, 1079 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x2e0d14ad)
li x8, 0x06a70ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd1f2eb53 # initialize rs1
addi x8, x21, 1916 # perform operation

# Testcase cp_imm_zero
li x20, 0x15dc9a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x081797ca # initialize rs1
addi x20, x6, 0 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, 0 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, 1 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, 2 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, 1023 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, 1024 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, 2047 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, -2048 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, -2047 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, -2 # perform operation

# Testcase cp_imm_corners
li x29, 0xc9100581 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc7caa96b # initialize rs1
addi x29, x21, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000002 # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000000 # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7ffffffe # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
addi x22, x4, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x22, 0x8f484ea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # initialize rs1
addi x22, x4, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
