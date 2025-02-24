///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fcvt.s.wu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.141453
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
li x4, 0x9fc1067d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd8732b8e # load immediate value into integer register
fcvt.s.wu f4, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x19, 0xadcf9d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf45a7918 # load immediate value into integer register
fcvt.s.wu f19, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x31, 0x5394a405 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc26f6687 # load immediate value into integer register
fcvt.s.wu f31, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0xe3c789cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6a656b49 # load immediate value into integer register
fcvt.s.wu f10, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x27, 0x4894b5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x17ac2484 # load immediate value into integer register
fcvt.s.wu f27, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x26, 0x7508fc21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa2f9765a # load immediate value into integer register
fcvt.s.wu f26, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x2fdbb29c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x54d34560 # load immediate value into integer register
fcvt.s.wu f17, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x26, 0x837df65f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2b2d6d93 # load immediate value into integer register
fcvt.s.wu f26, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xb9b3a0ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5483d6d4 # load immediate value into integer register
fcvt.s.wu f2, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x28, 0x1401044b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0c021399 # load immediate value into integer register
fcvt.s.wu f28, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0xa3e9963f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5cd05fb7 # load immediate value into integer register
fcvt.s.wu f7, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x30, 0xa5aeb361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc8c1ed12 # load immediate value into integer register
fcvt.s.wu f30, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x7a41c8fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf80743e6 # load immediate value into integer register
fcvt.s.wu f11, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0x6eae0a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2690bf58 # load immediate value into integer register
fcvt.s.wu f29, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xd5921d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3862b83b # load immediate value into integer register
fcvt.s.wu f5, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x20aa8511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb625ce5f # load immediate value into integer register
fcvt.s.wu f14, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x091ee5f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x64c22d7c # load immediate value into integer register
fcvt.s.wu f20, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x23, 0xa8e435a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6c0dd3f2 # load immediate value into integer register
fcvt.s.wu f23, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0xf683b46c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0e57c9e5 # load immediate value into integer register
fcvt.s.wu f1, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x20, 0x0bf02ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe4ba8587 # load immediate value into integer register
fcvt.s.wu f20, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x5, 0xc67e0713 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3333e660 # load immediate value into integer register
fcvt.s.wu f5, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0xf623208f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5785809e # load immediate value into integer register
fcvt.s.wu f31, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x14, 0xfe1b18ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x85584c6a # load immediate value into integer register
fcvt.s.wu f14, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x19, 0x44ccd13f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa7a467d5 # load immediate value into integer register
fcvt.s.wu f19, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0x1be9c468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x473bd91a # load immediate value into integer register
fcvt.s.wu f5, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x18, 0x9849961f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x50d8c980 # load immediate value into integer register
fcvt.s.wu f18, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0x0297c042 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbb8fa699 # load immediate value into integer register
fcvt.s.wu f3, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0xd94aff6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd1b04c3b # load immediate value into integer register
fcvt.s.wu f22, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x14, 0xe1bfe37a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x06e9c174 # load immediate value into integer register
fcvt.s.wu f14, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0x1967eadc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x38a4a064 # load immediate value into integer register
fcvt.s.wu f18, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0xc4ca867b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xbd08c739 # load immediate value into integer register
fcvt.s.wu f19, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x10, 0x5626ca58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x881068ff # load immediate value into integer register
fcvt.s.wu f10, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x59c680d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000 # load immediate value into integer register
fcvt.s.wu f3, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x5ea9cbf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # load immediate value into integer register
fcvt.s.wu f1, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x0942d2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000002 # load immediate value into integer register
fcvt.s.wu f1, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x24, 0x642ebf69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # load immediate value into integer register
fcvt.s.wu f24, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x4, 0x0622b22e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x80000001 # load immediate value into integer register
fcvt.s.wu f4, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x30, 0x3e14d521 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # load immediate value into integer register
fcvt.s.wu f30, x29
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0xfa17c8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # load immediate value into integer register
fcvt.s.wu f14, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xce19c75d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffff # load immediate value into integer register
fcvt.s.wu f13, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0xbdf5011e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffe # load immediate value into integer register
fcvt.s.wu f13, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x17, 0xba66eeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc8877 # load immediate value into integer register
fcvt.s.wu f17, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x24, 0x422f5005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaaaaaaaa # load immediate value into integer register
fcvt.s.wu f24, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0xd5d02d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x55555555 # load immediate value into integer register
fcvt.s.wu f25, x4
# Testcase cp_frm
li x30, 0x134f247d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x76b34e8b # load immediate value into integer register
fcvt.s.wu f30, x1, dyn # perform operation
fcvt.s.wu f30, x1, rdn # perform operation
fcvt.s.wu f30, x1, rmm # perform operation
fcvt.s.wu f30, x1, rne # perform operation
fcvt.s.wu f30, x1, rtz # perform operation
fcvt.s.wu f30, x1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.wu f30, x1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.wu f30, x1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.wu f30, x1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.wu f30, x1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.wu f30, x1 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xcfb77068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9937b7c8 # load immediate value into integer register
fcvt.s.wu f0, x9
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xde926fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x89da294f # load immediate value into integer register
fcvt.s.wu f1, x17
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xcf096ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x70d7f8d5 # load immediate value into integer register
fcvt.s.wu f2, x11
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x553240ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fe5c168 # load immediate value into integer register
fcvt.s.wu f3, x15
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xadadbd95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x51f9c6b2 # load immediate value into integer register
fcvt.s.wu f4, x28
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x82f2481a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0cfa5aa0 # load immediate value into integer register
fcvt.s.wu f5, x12
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x5372e335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf570c308 # load immediate value into integer register
fcvt.s.wu f6, x3
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x8b560790 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x916ca728 # load immediate value into integer register
fcvt.s.wu f7, x2
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xea397cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd4deebc4 # load immediate value into integer register
fcvt.s.wu f8, x15
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xb4745f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xea4a969e # load immediate value into integer register
fcvt.s.wu f9, x11
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x79bdae5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd3ae1705 # load immediate value into integer register
fcvt.s.wu f10, x6
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x33a66974 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x15fe30cf # load immediate value into integer register
fcvt.s.wu f11, x30
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd901e9cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc22dc4cb # load immediate value into integer register
fcvt.s.wu f12, x27
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xd1bd7302 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc733285f # load immediate value into integer register
fcvt.s.wu f13, x29
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x374eddd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdc74505b # load immediate value into integer register
fcvt.s.wu f14, x26
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xc23fda90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x69c7619d # load immediate value into integer register
fcvt.s.wu f15, x5
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x9e1ec332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0e612990 # load immediate value into integer register
fcvt.s.wu f16, x24
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x99692920 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xff1635b7 # load immediate value into integer register
fcvt.s.wu f17, x27
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc8934c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2bb9d9a5 # load immediate value into integer register
fcvt.s.wu f18, x25
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x9ddc665f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x84cddd4e # load immediate value into integer register
fcvt.s.wu f19, x31
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x8d4cabb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa753c8cd # load immediate value into integer register
fcvt.s.wu f20, x8
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xa9aaf321 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xd5ed1e92 # load immediate value into integer register
fcvt.s.wu f21, x2
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xc04db7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x121ca490 # load immediate value into integer register
fcvt.s.wu f22, x18
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xfac339db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdc7f553e # load immediate value into integer register
fcvt.s.wu f23, x18
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xa5a69e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xacd5af8a # load immediate value into integer register
fcvt.s.wu f24, x1
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x3e1c9b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x84047051 # load immediate value into integer register
fcvt.s.wu f25, x19
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x97d75007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb632cb20 # load immediate value into integer register
fcvt.s.wu f26, x4
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd2771bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x20775a18 # load immediate value into integer register
fcvt.s.wu f27, x18
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x93379822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3f048563 # load immediate value into integer register
fcvt.s.wu f28, x23
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x39a36985 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4ec88045 # load immediate value into integer register
fcvt.s.wu f29, x6
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x85484878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x454f7b6c # load immediate value into integer register
fcvt.s.wu f30, x16
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x378d2e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x75a54929 # load immediate value into integer register
fcvt.s.wu f31, x21
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
