///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fcvt.s.w.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.140226
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
li x9, 0xc056e6e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbc6d0f84 # load immediate value into integer register
fcvt.s.w f9, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x29, 0xb378ec1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x59ea966a # load immediate value into integer register
fcvt.s.w f29, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x3290044f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf9e291fa # load immediate value into integer register
fcvt.s.w f7, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x11, 0x967de3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc92b286c # load immediate value into integer register
fcvt.s.w f11, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x10, 0xc295c30c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x23967645 # load immediate value into integer register
fcvt.s.w f10, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0xddb8a2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x330703f6 # load immediate value into integer register
fcvt.s.w f30, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x14, 0x6a229790 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1fcb1e78 # load immediate value into integer register
fcvt.s.w f14, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x26, 0xb77483e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2e4dfccc # load immediate value into integer register
fcvt.s.w f26, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0x1eb8bcae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf5731e75 # load immediate value into integer register
fcvt.s.w f25, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x46c9883b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc18b75be # load immediate value into integer register
fcvt.s.w f16, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0xef038648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xccf669b6 # load immediate value into integer register
fcvt.s.w f6, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0xeda180a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2ba4cd84 # load immediate value into integer register
fcvt.s.w f22, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0xade6dbbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa9932903 # load immediate value into integer register
fcvt.s.w f19, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x7d49e2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7dfed078 # load immediate value into integer register
fcvt.s.w f7, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x25, 0x1ec73450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb1b72498 # load immediate value into integer register
fcvt.s.w f25, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x6, 0xbe03fa41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6b8a3c43 # load immediate value into integer register
fcvt.s.w f6, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0x3315051e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x79a4e99a # load immediate value into integer register
fcvt.s.w f4, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x11, 0xf964b255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x280f658d # load immediate value into integer register
fcvt.s.w f11, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x29, 0x3fb858ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0f153082 # load immediate value into integer register
fcvt.s.w f29, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0xa730ceef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x3ca51478 # load immediate value into integer register
fcvt.s.w f13, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0xfc9ac61c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00e4b0bb # load immediate value into integer register
fcvt.s.w f12, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x10, 0x79ba3342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x745abe8a # load immediate value into integer register
fcvt.s.w f10, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0x2faaef4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00de2016 # load immediate value into integer register
fcvt.s.w f31, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0xa37a8ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9afbc9fa # load immediate value into integer register
fcvt.s.w f8, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0x36c83209 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8c5a5768 # load immediate value into integer register
fcvt.s.w f20, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x24, 0xf9a0db57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x59a02f1b # load immediate value into integer register
fcvt.s.w f24, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0x4b327d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb2ac576c # load immediate value into integer register
fcvt.s.w f20, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x28, 0xd4405834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa688a6ae # load immediate value into integer register
fcvt.s.w f28, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x16, 0x5503164a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x909e7bf9 # load immediate value into integer register
fcvt.s.w f16, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0xa33b4cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa8470c4c # load immediate value into integer register
fcvt.s.w f26, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x6, 0x444367a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0322ecfa # load immediate value into integer register
fcvt.s.w f6, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0xb8fdfa5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8b1e07e5 # load immediate value into integer register
fcvt.s.w f29, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x9, 0xf2a6e31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # load immediate value into integer register
fcvt.s.w f9, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x5db866ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # load immediate value into integer register
fcvt.s.w f9, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0xe7e91be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # load immediate value into integer register
fcvt.s.w f20, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0xebfdbedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # load immediate value into integer register
fcvt.s.w f16, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x1d59d10c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # load immediate value into integer register
fcvt.s.w f13, x29
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0x52779f5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # load immediate value into integer register
fcvt.s.w f31, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x27, 0x0ba1eea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffe # load immediate value into integer register
fcvt.s.w f27, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x29e5c49b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # load immediate value into integer register
fcvt.s.w f2, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x2dc7e8cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffe # load immediate value into integer register
fcvt.s.w f13, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x30, 0xf9efe878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5bbc8877 # load immediate value into integer register
fcvt.s.w f30, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xebdfa355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # load immediate value into integer register
fcvt.s.w f10, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x29, 0xab8dc26b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # load immediate value into integer register
fcvt.s.w f29, x25
# Testcase cp_frm
li x29, 0xf0fdc9e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb466b869 # load immediate value into integer register
fcvt.s.w f29, x31, dyn # perform operation
fcvt.s.w f29, x31, rdn # perform operation
fcvt.s.w f29, x31, rmm # perform operation
fcvt.s.w f29, x31, rne # perform operation
fcvt.s.w f29, x31, rtz # perform operation
fcvt.s.w f29, x31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.w f29, x31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.w f29, x31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.w f29, x31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.w f29, x31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.w f29, x31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x14af3632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xee30c184 # load immediate value into integer register
fcvt.s.w f0, x29
# Testcase cp_fd (Test destination fd = x1)
li x1, 0xcb3980b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xee90bbd0 # load immediate value into integer register
fcvt.s.w f1, x5
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x9ea37456 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00be0dc5 # load immediate value into integer register
fcvt.s.w f2, x28
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x77f45578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa18f1b3f # load immediate value into integer register
fcvt.s.w f3, x11
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xef865cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0e3b71e2 # load immediate value into integer register
fcvt.s.w f4, x14
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x7e0eba22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbccda355 # load immediate value into integer register
fcvt.s.w f5, x27
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x89af630a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcb11e3a9 # load immediate value into integer register
fcvt.s.w f6, x11
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xcab73cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe416e8a8 # load immediate value into integer register
fcvt.s.w f7, x18
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xb9a0602b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x98339ce9 # load immediate value into integer register
fcvt.s.w f8, x28
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x48a985f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1b681ae1 # load immediate value into integer register
fcvt.s.w f9, x11
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x6c3204a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbcfc9f4c # load immediate value into integer register
fcvt.s.w f10, x28
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x59770386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdd52a56b # load immediate value into integer register
fcvt.s.w f11, x11
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x70ef5e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc6a1fc86 # load immediate value into integer register
fcvt.s.w f12, x18
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8ea5c9f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6724440f # load immediate value into integer register
fcvt.s.w f13, x14
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x63700b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa7e24914 # load immediate value into integer register
fcvt.s.w f14, x13
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x7751e296 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xb474d977 # load immediate value into integer register
fcvt.s.w f15, x23
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xae17d11f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfc53a202 # load immediate value into integer register
fcvt.s.w f16, x27
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x44648f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x52363107 # load immediate value into integer register
fcvt.s.w f17, x17
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x5b18e8fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7de8b391 # load immediate value into integer register
fcvt.s.w f18, x9
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x789985af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe8e43114 # load immediate value into integer register
fcvt.s.w f19, x24
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xf6621e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x783d7dc1 # load immediate value into integer register
fcvt.s.w f20, x12
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x6e85db69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x83a99b2d # load immediate value into integer register
fcvt.s.w f21, x1
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x769365ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1799d3c7 # load immediate value into integer register
fcvt.s.w f22, x14
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6ff5ae8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x52b83bac # load immediate value into integer register
fcvt.s.w f23, x22
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x6452018b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0d27c6e2 # load immediate value into integer register
fcvt.s.w f24, x2
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x0820fa40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x14604158 # load immediate value into integer register
fcvt.s.w f25, x9
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xd9c04940 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x862f217e # load immediate value into integer register
fcvt.s.w f26, x4
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xa3e4b9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x47fe5b72 # load immediate value into integer register
fcvt.s.w f27, x2
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x3cc16505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe77a2d50 # load immediate value into integer register
fcvt.s.w f28, x24
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xc7c7e359 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3c4e4f88 # load immediate value into integer register
fcvt.s.w f29, x21
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xd0ba85a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x710ed1ad # load immediate value into integer register
fcvt.s.w f30, x9
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x89ca349c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xda36c5f2 # load immediate value into integer register
fcvt.s.w f31, x11
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
