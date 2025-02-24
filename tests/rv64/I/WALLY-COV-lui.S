///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lui.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.483620
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xee03958fe2b6840a # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x0, 290671 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x29bce891c3c6aacd # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x1, 277347 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x38b0947bbee2737c # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x2, 725332 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xd9eee906d9f5694b # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x3, 825416 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x4250765024a10029 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x4, 330064 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x3df5e8c19cd5a428 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x5, 46902 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x57b17ff7bea228ff # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x6, 959234 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x6f29dad84f35d56c # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x7, 241984 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xfcf01295ba5a48cb # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x8, 910864 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe16df6ae3ecf01ce # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x9, 642899 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb9db1d2c2dcbc2db # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x10, 803613 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x710ca77dd6c846ca # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x11, 60491 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1529905d88b34b31 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x12, 479972 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe80d85a1f1f2f69a # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x13, 795919 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xf5457b85e202435a # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x14, 652208 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x46869c7bf09eeec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x15, 797907 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xe2a010c3e4c4ee8f # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x16, 430954 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5b3cdae59766c15c # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x17, 149767 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0cf7dda5a77750f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x18, 432693 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x4f88d8581926fed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x19, 549286 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x17b0180e12c47686 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x20, 215204 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3acceba1eb6c8952 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x21, 437021 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xa72e76fbbfafdaa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x22, 350768 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x39516b5243d5aa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x23, 678923 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xfce834a453819630 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x24, 40837 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6298889567fdd7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x25, 892981 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x16907295fef62c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x26, 530447 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x4176287b55dfeb9e # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x27, 795641 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x832b9b95490b64f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x28, 492480 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xfb60cba05a6748ef # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x29, 948768 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x9be8bf9f52b0da51 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x30, 732071 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x65b622630efbffe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x31, 957457 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x0)
li x13, 0xba52b02aa8b2c7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x13, 0 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0xfffff000)
li x21, 0x6769b7f8c071b3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x21, 1048575 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x80000000)
li x29, 0x766a51e63fde414b # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x29, 524288 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x1000)
li x22, 0x3d4917fab88487e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x22, 1 # perform operation

# Testcase cp_rd_corners_lui (Test rd value = 0x4ae20000)
li x11, 0xa177b8997e3d34b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x11, 306720 # perform operation

# Testcase cp_imm_zero
li x6, 0x231814b86d03f4f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
lui x6, 0 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
