///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.h.lu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.039580
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
li x2, 0x04599fea2c5cf886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4fec46e9f99e3050 # load immediate value into integer register
fcvt.h.lu f2, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0x41362e5da0f05762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc19056110fe22c0a # load immediate value into integer register
fcvt.h.lu f27, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x3, 0x91da307998ab9b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x60dd1a0c108b4a49 # load immediate value into integer register
fcvt.h.lu f3, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x8, 0x1390d5bf3647c79f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4f8e0e746ffaacd2 # load immediate value into integer register
fcvt.h.lu f8, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x23, 0x0f65c6a3dae5c892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6d09133f5930026b # load immediate value into integer register
fcvt.h.lu f23, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x20, 0x781ca9a661fa3061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2704943609cffb33 # load immediate value into integer register
fcvt.h.lu f20, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0x04cb79e1ff9dfbdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe8a842b81516b73f # load immediate value into integer register
fcvt.h.lu f22, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0x8a0e3778a8f9fe3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x03e03c1b0cf56818 # load immediate value into integer register
fcvt.h.lu f25, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0xe90dc862c403e1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x70386b9251d7bed2 # load immediate value into integer register
fcvt.h.lu f6, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x8942d6fff4fddadf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd7417d62ded5f384 # load immediate value into integer register
fcvt.h.lu f10, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0x6bf5e66e07a8f429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa8e993b485fe1ea6 # load immediate value into integer register
fcvt.h.lu f29, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0xb48bdb187cc194f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe0ffd574e32242d5 # load immediate value into integer register
fcvt.h.lu f31, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x17, 0x445130de65ac77d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1b4d1ed7c17a83d8 # load immediate value into integer register
fcvt.h.lu f17, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x16, 0xd7b3d82270231467 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9e5b9d482b2ddb7c # load immediate value into integer register
fcvt.h.lu f16, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x2a372f874f7de3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe12fa4a5382b8262 # load immediate value into integer register
fcvt.h.lu f11, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x6a4d607202542ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xac99d1be6395b441 # load immediate value into integer register
fcvt.h.lu f13, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0xd2d08b0585f3e283 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x23947c7715de28cf # load immediate value into integer register
fcvt.h.lu f17, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0x402a47ff662a8c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x14712dce6eb122a5 # load immediate value into integer register
fcvt.h.lu f28, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0x89a83e0fdd1d705d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb60f95aa87027e47 # load immediate value into integer register
fcvt.h.lu f5, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0xfae0c61716988866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc748e2c5b7fcf1bb # load immediate value into integer register
fcvt.h.lu f29, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x10, 0xae59b5ddcd9e3fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x43367eb3a5b864a0 # load immediate value into integer register
fcvt.h.lu f10, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x9089474a9da8c425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3c483b641a348fa4 # load immediate value into integer register
fcvt.h.lu f31, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0x59a0db03fdea3631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x64b46f29a4295103 # load immediate value into integer register
fcvt.h.lu f28, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0x2041b42ced1b8600 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9e29c71f1c3cba42 # load immediate value into integer register
fcvt.h.lu f6, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0x6a02565222ebf0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6050e7ecb5ddeb02 # load immediate value into integer register
fcvt.h.lu f7, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x26, 0x18f3a009e8ccf095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4354d3afd882db8e # load immediate value into integer register
fcvt.h.lu f26, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x31, 0x9237558aba3febfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x436ad66dae12eca3 # load immediate value into integer register
fcvt.h.lu f31, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x25, 0x195ade1eacf661ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x765109ab2b1b5a79 # load immediate value into integer register
fcvt.h.lu f25, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x22, 0x31c47d1c9727404d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x799c59226fd6dad5 # load immediate value into integer register
fcvt.h.lu f22, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x13, 0xee1cc003edf87ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1b21beeb4fa78143 # load immediate value into integer register
fcvt.h.lu f13, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x28, 0x7f00eaff57191bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x4481a27962d04c47 # load immediate value into integer register
fcvt.h.lu f28, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x8, 0xa9b004611425ffb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x62c0c3a0bf1e0637 # load immediate value into integer register
fcvt.h.lu f8, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x23deb42b624095e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # load immediate value into integer register
fcvt.h.lu f6, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0xc9ba36d43859e8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # load immediate value into integer register
fcvt.h.lu f30, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x82c72840562f2c1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000002 # load immediate value into integer register
fcvt.h.lu f30, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x3ceb6c38660ad85c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # load immediate value into integer register
fcvt.h.lu f22, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0xbb3d20d7c0640260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # load immediate value into integer register
fcvt.h.lu f6, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x3283e33c2a841cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.lu f15, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x0b6e6ca25c7f71ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.lu f10, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0x253dea1150ac1ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.lu f13, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x27, 0x1b86da6c0fb53db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.lu f27, x17
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x29, 0xdf16ead367f41c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.h.lu f29, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xed94e117931ae8ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.lu f9, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x8121dfffe55c34fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # load immediate value into integer register
fcvt.h.lu f2, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0xeb098a36401101c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.lu f7, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0xcdae15042247f73d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.lu f3, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x02b7543cc5f827b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # load immediate value into integer register
fcvt.h.lu f9, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x4, 0x3ca4414d86deae41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # load immediate value into integer register
fcvt.h.lu f4, x2
# Testcase cp_frm
li x23, 0x862d39da6bfac2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x08e41b63afe8a23d # load immediate value into integer register
fcvt.h.lu f23, x21, dyn # perform operation
fcvt.h.lu f23, x21, rdn # perform operation
fcvt.h.lu f23, x21, rmm # perform operation
fcvt.h.lu f23, x21, rne # perform operation
fcvt.h.lu f23, x21, rtz # perform operation
fcvt.h.lu f23, x21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.lu f23, x21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.lu f23, x21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.lu f23, x21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.lu f23, x21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.lu f23, x21 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x24302868d9255001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x90c3ff6478665b50 # load immediate value into integer register
fcvt.h.lu f0, x9
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xbbaabe318fbe0810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x4ae613323ec14c8c # load immediate value into integer register
fcvt.h.lu f1, x29
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x26ba90d35b9123dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc95d86be1fc203f2 # load immediate value into integer register
fcvt.h.lu f2, x27
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x5a65c566a02822d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb81f40e098bb9f2d # load immediate value into integer register
fcvt.h.lu f3, x6
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xf686643fdced5ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7c696c0c3531d73e # load immediate value into integer register
fcvt.h.lu f4, x1
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xc9636388c8223c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x149bf73c2b123f60 # load immediate value into integer register
fcvt.h.lu f5, x29
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x8d5b31534bf77e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5ccbddf1ef20c50d # load immediate value into integer register
fcvt.h.lu f6, x7
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x7a0d224f83839f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x61beae091a0bc241 # load immediate value into integer register
fcvt.h.lu f7, x25
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x5024fe55493b5550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xea54d5b626950e0a # load immediate value into integer register
fcvt.h.lu f8, x10
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x70c2ea87e9337ea1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8f72199d6466e7d6 # load immediate value into integer register
fcvt.h.lu f9, x23
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x4c07d0ea78ab3e61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbdad94973af0a6f8 # load immediate value into integer register
fcvt.h.lu f10, x30
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xf065e07c06ea1dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1ea4b9912cb87b48 # load immediate value into integer register
fcvt.h.lu f11, x9
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x5eaea688f7f2c19a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3f9fc8db7897b0a8 # load immediate value into integer register
fcvt.h.lu f12, x8
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x6b9494f7f899e425 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf2cb3b048bc8e091 # load immediate value into integer register
fcvt.h.lu f13, x30
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xb20859cacf068c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd60e837f99b62ae9 # load immediate value into integer register
fcvt.h.lu f14, x12
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2bd4d6b78f7effc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7cb52a1faea63e59 # load immediate value into integer register
fcvt.h.lu f15, x25
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xc97f2e8086b2421a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xaa73676c0730a02b # load immediate value into integer register
fcvt.h.lu f16, x22
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x137ec0e6e6c20bbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbfc2bb1f0c4efd3d # load immediate value into integer register
fcvt.h.lu f17, x10
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x31451c8e446a1465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x02171e1cee4d64f7 # load immediate value into integer register
fcvt.h.lu f18, x7
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x1219261e51a6e9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9c5d94896f37b551 # load immediate value into integer register
fcvt.h.lu f19, x31
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcafed9b072d53ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9662b24c04f75668 # load immediate value into integer register
fcvt.h.lu f20, x7
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x9404ebaa81dacea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdf9caebdb05728ac # load immediate value into integer register
fcvt.h.lu f21, x30
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xfebf4f2d3c3efc05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7050ec29895b3fba # load immediate value into integer register
fcvt.h.lu f22, x5
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x151289d689fb482f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5a8d3509a9595551 # load immediate value into integer register
fcvt.h.lu f23, x5
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x4800aa7e016113c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1bb5a53c7ac7e198 # load immediate value into integer register
fcvt.h.lu f24, x23
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x27db5f1baae35046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x30f7a985d122d738 # load immediate value into integer register
fcvt.h.lu f25, x14
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x3dbd43625e7ba996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2d1e576f64a62f42 # load immediate value into integer register
fcvt.h.lu f26, x5
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x49173111a67237fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd19dbe514dc4a444 # load immediate value into integer register
fcvt.h.lu f27, x16
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x6cc0fe51b904a833 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x40a12be32c555962 # load immediate value into integer register
fcvt.h.lu f28, x10
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x281fa143d812a139 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7f3b863326759e8c # load immediate value into integer register
fcvt.h.lu f29, x19
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x443d6cb1aacd5a04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5415a3e3bbc23dd4 # load immediate value into integer register
fcvt.h.lu f30, x15
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x5ccd3a3923b6d6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3550c32824e169be # load immediate value into integer register
fcvt.h.lu f31, x27
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
