///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZcbZbb//WALLY-COV-c.zext.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.417906
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
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


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
