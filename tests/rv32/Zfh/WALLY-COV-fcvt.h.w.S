///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fcvt.h.w.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.538095
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
li x28, 0xa4494a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2558b4b7 # load immediate value into integer register
fcvt.h.w f28, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0xfb366027 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7950059d # load immediate value into integer register
fcvt.h.w f27, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x3, 0xa38d6cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3d0b6950 # load immediate value into integer register
fcvt.h.w f3, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0xba559ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x41e46df1 # load immediate value into integer register
fcvt.h.w f20, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x9, 0xd776a4ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2e4481f4 # load immediate value into integer register
fcvt.h.w f9, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x2, 0xff2c85e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x3701eb47 # load immediate value into integer register
fcvt.h.w f2, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0xe3421936 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe1a2a99a # load immediate value into integer register
fcvt.h.w f12, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x28, 0x90ce41a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xceba2297 # load immediate value into integer register
fcvt.h.w f28, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x4e638f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x499e2334 # load immediate value into integer register
fcvt.h.w f7, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x49ecc690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfc94f4cc # load immediate value into integer register
fcvt.h.w f17, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x0a7d6ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0b8a4c14 # load immediate value into integer register
fcvt.h.w f8, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x1e61212c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe1114bf0 # load immediate value into integer register
fcvt.h.w f3, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x9bde2347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3178fd0f # load immediate value into integer register
fcvt.h.w f31, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x30, 0x00ce23cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e2b6d93 # load immediate value into integer register
fcvt.h.w f30, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0xf5aff8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x87d2aa0a # load immediate value into integer register
fcvt.h.w f23, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0xaae8e678 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xef623237 # load immediate value into integer register
fcvt.h.w f6, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0x4dd8a440 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x86812e6d # load immediate value into integer register
fcvt.h.w f4, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x28, 0xf52063cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x69df9e8b # load immediate value into integer register
fcvt.h.w f28, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0xc1d62dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x240a56aa # load immediate value into integer register
fcvt.h.w f4, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x12, 0x2c51091f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2d34c9dd # load immediate value into integer register
fcvt.h.w f12, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x5, 0xcf41d640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbf93b02f # load immediate value into integer register
fcvt.h.w f5, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x14, 0x21d36a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe1ecbf08 # load immediate value into integer register
fcvt.h.w f14, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0xb3e2efe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xbfcb8f1b # load immediate value into integer register
fcvt.h.w f4, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0x23e0c5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x52e30353 # load immediate value into integer register
fcvt.h.w f8, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0xf7d5c347 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd739a1d0 # load immediate value into integer register
fcvt.h.w f16, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x4, 0xb46a21b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb44171d8 # load immediate value into integer register
fcvt.h.w f4, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x1, 0x6ee6dedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6eff0e90 # load immediate value into integer register
fcvt.h.w f1, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x23, 0xe1a03aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe2e23cf4 # load immediate value into integer register
fcvt.h.w f23, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x29, 0xea3ee591 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd269e7d8 # load immediate value into integer register
fcvt.h.w f29, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x6aa59b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbb1d0841 # load immediate value into integer register
fcvt.h.w f5, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x5, 0x76cb1061 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2fe1545e # load immediate value into integer register
fcvt.h.w f5, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0xe1326887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd7ec389f # load immediate value into integer register
fcvt.h.w f5, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0x5e9c27f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # load immediate value into integer register
fcvt.h.w f29, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0xc8b9b436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # load immediate value into integer register
fcvt.h.w f18, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0xb4961c86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # load immediate value into integer register
fcvt.h.w f31, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x7cada179 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000000 # load immediate value into integer register
fcvt.h.w f27, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x28, 0x5eaa8503 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80000001 # load immediate value into integer register
fcvt.h.w f28, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0xec13a203 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # load immediate value into integer register
fcvt.h.w f25, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x2, 0x1be431ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # load immediate value into integer register
fcvt.h.w f2, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x48d48247 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffff # load immediate value into integer register
fcvt.h.w f14, x17
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x2b83bb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # load immediate value into integer register
fcvt.h.w f9, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x6, 0x16586559 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # load immediate value into integer register
fcvt.h.w f6, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x16, 0x8338d9ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # load immediate value into integer register
fcvt.h.w f16, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x4, 0xaf6bf2f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # load immediate value into integer register
fcvt.h.w f4, x28
# Testcase cp_frm
li x29, 0xab8026ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfb8778ee # load immediate value into integer register
fcvt.h.w f29, x6, dyn # perform operation
fcvt.h.w f29, x6, rdn # perform operation
fcvt.h.w f29, x6, rmm # perform operation
fcvt.h.w f29, x6, rne # perform operation
fcvt.h.w f29, x6, rtz # perform operation
fcvt.h.w f29, x6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.w f29, x6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.w f29, x6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.w f29, x6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.w f29, x6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.w f29, x6 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x1f350fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x323a6225 # load immediate value into integer register
fcvt.h.w f0, x28
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x5b84bbc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x73c33ea7 # load immediate value into integer register
fcvt.h.w f1, x10
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x42719021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfe49feb1 # load immediate value into integer register
fcvt.h.w f2, x6
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x1692b71c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe4f1ee76 # load immediate value into integer register
fcvt.h.w f3, x6
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x9fe2e0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3d2a493e # load immediate value into integer register
fcvt.h.w f4, x29
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8c216084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xba41c252 # load immediate value into integer register
fcvt.h.w f5, x21
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x2c4e8973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x4c9fe979 # load immediate value into integer register
fcvt.h.w f6, x31
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xfd42cec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x81a5fbf4 # load immediate value into integer register
fcvt.h.w f7, x8
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x0ed19ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6f201c0d # load immediate value into integer register
fcvt.h.w f8, x9
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x597f65e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc1d9b84b # load immediate value into integer register
fcvt.h.w f9, x15
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x16988ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xcdf4cde9 # load immediate value into integer register
fcvt.h.w f10, x28
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x3f02eb53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x704d9134 # load immediate value into integer register
fcvt.h.w f11, x13
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x9c9e9266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcba4bfa4 # load immediate value into integer register
fcvt.h.w f12, x16
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xff44132b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3a712090 # load immediate value into integer register
fcvt.h.w f13, x22
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x05506747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xd27df8c0 # load immediate value into integer register
fcvt.h.w f14, x17
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x681099b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc4fbc3dc # load immediate value into integer register
fcvt.h.w f15, x26
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xbe1a6b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7cf8ab0b # load immediate value into integer register
fcvt.h.w f16, x6
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xd4d76cde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x72363506 # load immediate value into integer register
fcvt.h.w f17, x22
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x85c4ec5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x08b3fb27 # load immediate value into integer register
fcvt.h.w f18, x7
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x3cb9e140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8b33373a # load immediate value into integer register
fcvt.h.w f19, x5
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xf5a0933f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x2e9d8bf6 # load immediate value into integer register
fcvt.h.w f20, x28
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x9dbd3f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb50f2c80 # load immediate value into integer register
fcvt.h.w f21, x19
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xa8c26912 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x70950733 # load immediate value into integer register
fcvt.h.w f22, x14
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x51c8c200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x55e98eef # load immediate value into integer register
fcvt.h.w f23, x16
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x9d3de8de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6847e943 # load immediate value into integer register
fcvt.h.w f24, x29
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xccfab8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x14aad4d6 # load immediate value into integer register
fcvt.h.w f25, x24
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x8cce94bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcd320961 # load immediate value into integer register
fcvt.h.w f26, x26
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x281cd14a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x96b84e23 # load immediate value into integer register
fcvt.h.w f27, x23
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x1d5a9536 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfd27af36 # load immediate value into integer register
fcvt.h.w f28, x10
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x33008a4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x66b256af # load immediate value into integer register
fcvt.h.w f29, x10
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x5d431202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcafcb7a5 # load immediate value into integer register
fcvt.h.w f30, x4
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x75b158b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x81ba7627 # load immediate value into integer register
fcvt.h.w f31, x4
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
