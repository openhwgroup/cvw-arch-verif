///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fcvt.d.wu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.851790
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cp_rs1 (Test source rs1 = x0)
li x24, 0xa5e7dd9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbee619b0 # load immediate value into integer register
fcvt.d.wu f24, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x16, 0xac33ce54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x362372ce # load immediate value into integer register
fcvt.d.wu f16, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x6, 0x881ec2c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xededf292 # load immediate value into integer register
fcvt.d.wu f6, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x1, 0x7adf43a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6b4991da # load immediate value into integer register
fcvt.d.wu f1, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x20, 0x99cc9a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb4b79231 # load immediate value into integer register
fcvt.d.wu f20, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0xbe11a10f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6f49419c # load immediate value into integer register
fcvt.d.wu f9, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0x1b6d3820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x872ba45b # load immediate value into integer register
fcvt.d.wu f26, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x6f803cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8b6a0dde # load immediate value into integer register
fcvt.d.wu f19, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x18, 0x5b8fbd3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x45980903 # load immediate value into integer register
fcvt.d.wu f18, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x31, 0xe3293a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd337002b # load immediate value into integer register
fcvt.d.wu f31, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x3a35ec63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb45c2ba6 # load immediate value into integer register
fcvt.d.wu f31, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0xf33aa31d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x12ac5d97 # load immediate value into integer register
fcvt.d.wu f29, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0xd8196b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5637456c # load immediate value into integer register
fcvt.d.wu f6, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x4, 0xd7ce654a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xef332dfd # load immediate value into integer register
fcvt.d.wu f4, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x2d01a838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe824e8df # load immediate value into integer register
fcvt.d.wu f11, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x984d844f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x14da9924 # load immediate value into integer register
fcvt.d.wu f14, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x12, 0x514fb419 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3d972ea5 # load immediate value into integer register
fcvt.d.wu f12, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0x3f63e725 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdf163971 # load immediate value into integer register
fcvt.d.wu f22, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x69643263 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x6b04b7ab # load immediate value into integer register
fcvt.d.wu f19, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0x439f8c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x24b229fb # load immediate value into integer register
fcvt.d.wu f3, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x27, 0x46b2c5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x81557832 # load immediate value into integer register
fcvt.d.wu f27, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0x2bb65b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc587c7cd # load immediate value into integer register
fcvt.d.wu f25, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0x1d8f216c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1c42779b # load immediate value into integer register
fcvt.d.wu f18, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x29, 0xffb16e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9bb6a034 # load immediate value into integer register
fcvt.d.wu f29, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x21, 0x01d3095f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcc7b8963 # load immediate value into integer register
fcvt.d.wu f21, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0x1512d721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe15491ca # load immediate value into integer register
fcvt.d.wu f28, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0x26f016f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xeb15de30 # load immediate value into integer register
fcvt.d.wu f31, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x8, 0x7674ddcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb6e70663 # load immediate value into integer register
fcvt.d.wu f8, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0xe8f29b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x87e5fc34 # load immediate value into integer register
fcvt.d.wu f31, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0x4c432cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b0a16bc # load immediate value into integer register
fcvt.d.wu f18, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x66ad0e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1f4126cd # load immediate value into integer register
fcvt.d.wu f25, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x1, 0x8ff65023 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2f38efa3 # load immediate value into integer register
fcvt.d.wu f1, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x5, 0xfe098a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000 # load immediate value into integer register
fcvt.d.wu f5, x17
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x18fbc534 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # load immediate value into integer register
fcvt.d.wu f31, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0xd3efef35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # load immediate value into integer register
fcvt.d.wu f8, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x5fb542b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # load immediate value into integer register
fcvt.d.wu f21, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0xfbd31b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x80000001 # load immediate value into integer register
fcvt.d.wu f12, x21
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0xb4819bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # load immediate value into integer register
fcvt.d.wu f13, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0xc7a53fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffe # load immediate value into integer register
fcvt.d.wu f25, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0xec39465f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # load immediate value into integer register
fcvt.d.wu f22, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x08deac69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # load immediate value into integer register
fcvt.d.wu f22, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x8, 0x38b899e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc8877 # load immediate value into integer register
fcvt.d.wu f8, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xbb25ab5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # load immediate value into integer register
fcvt.d.wu f1, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x89be4dcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # load immediate value into integer register
fcvt.d.wu f19, x3
# Testcase cp_fd (Test destination fd = x0)
li x0, 0x7fb4a61e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdd2644e1 # load immediate value into integer register
fcvt.d.wu f0, x13
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x3671db9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4697b13f # load immediate value into integer register
fcvt.d.wu f1, x31
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x309cfea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x92de0374 # load immediate value into integer register
fcvt.d.wu f2, x3
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x8a4efa33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9709af24 # load immediate value into integer register
fcvt.d.wu f3, x21
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xd2b2eef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0066425a # load immediate value into integer register
fcvt.d.wu f4, x2
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x1e079642 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x8ba5243a # load immediate value into integer register
fcvt.d.wu f5, x17
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x7840485b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8a213b72 # load immediate value into integer register
fcvt.d.wu f6, x13
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd3fb6156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfcaceb88 # load immediate value into integer register
fcvt.d.wu f7, x9
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x656c2106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2ade0c8c # load immediate value into integer register
fcvt.d.wu f8, x10
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x406cb115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc258fa85 # load immediate value into integer register
fcvt.d.wu f9, x5
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xf32d7931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x61416660 # load immediate value into integer register
fcvt.d.wu f10, x16
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xfc4aa33e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3eea6b44 # load immediate value into integer register
fcvt.d.wu f11, x17
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xdbf92792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9ac77ed8 # load immediate value into integer register
fcvt.d.wu f12, x13
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xd2a44cdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x76eda111 # load immediate value into integer register
fcvt.d.wu f13, x16
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xd8fffa6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x32c90ce0 # load immediate value into integer register
fcvt.d.wu f14, x16
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x6e8e304f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8fe7589a # load immediate value into integer register
fcvt.d.wu f15, x22
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xf9f4bde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x14dcdd83 # load immediate value into integer register
fcvt.d.wu f16, x3
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x679f8d7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x59272b02 # load immediate value into integer register
fcvt.d.wu f17, x25
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xfcaed88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1ae95a66 # load immediate value into integer register
fcvt.d.wu f18, x4
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xdf266c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x45256134 # load immediate value into integer register
fcvt.d.wu f19, x31
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x1e2517b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x94d4375f # load immediate value into integer register
fcvt.d.wu f20, x30
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xcd827e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xd85908a0 # load immediate value into integer register
fcvt.d.wu f21, x29
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x756924c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x02f96d7d # load immediate value into integer register
fcvt.d.wu f22, x18
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x9ffabe8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x320b3895 # load immediate value into integer register
fcvt.d.wu f23, x28
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x697e1f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x458e72b7 # load immediate value into integer register
fcvt.d.wu f24, x18
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x794d5d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x804c0f75 # load immediate value into integer register
fcvt.d.wu f25, x19
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x30382742 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa7dbfa66 # load immediate value into integer register
fcvt.d.wu f26, x24
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb0fc9028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x59f22a96 # load immediate value into integer register
fcvt.d.wu f27, x18
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xa91bb377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xafcd415c # load immediate value into integer register
fcvt.d.wu f28, x28
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x40bf3280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x178ee8c3 # load immediate value into integer register
fcvt.d.wu f29, x11
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x96fb6f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb92251c1 # load immediate value into integer register
fcvt.d.wu f30, x19
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x0eb82c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x14db9f4d # load immediate value into integer register
fcvt.d.wu f31, x12
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
