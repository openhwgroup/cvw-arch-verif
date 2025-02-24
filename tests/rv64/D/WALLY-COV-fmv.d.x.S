///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fmv.d.x.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.696388
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
li x12, 0x15b6b1e8ecb8333d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfb7b9907239fe976 # load immediate value into integer register
fmv.d.x f12, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x10, 0x90c8ba59bd775228 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc44c3198e6353326 # load immediate value into integer register
fmv.d.x f10, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0xa142cda1b61a930e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa343b174d65936fe # load immediate value into integer register
fmv.d.x f8, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0xd39ecad2708ee576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6a371d7ca59ba0cc # load immediate value into integer register
fmv.d.x f2, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x3, 0x908266276b9b5369 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xca7b56cbd87732f1 # load immediate value into integer register
fmv.d.x f3, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x20, 0x6df1240ad17ee701 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x68b6efe2b7bdf543 # load immediate value into integer register
fmv.d.x f20, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x13, 0x5fbdef7e6a706344 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2a2a54b68fe8e00d # load immediate value into integer register
fmv.d.x f13, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0xec4ff1e0174cf3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x66b654e0c0f7088d # load immediate value into integer register
fmv.d.x f29, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x02200eb6da0183e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xba59c1b2ca19c104 # load immediate value into integer register
fmv.d.x f9, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0xae0c58857e0fa87d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaf118625a1ec7771 # load immediate value into integer register
fmv.d.x f17, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x4, 0x293f1ab6eb872bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3081b143c5a3770c # load immediate value into integer register
fmv.d.x f4, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x788ab4073dddcae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xce62518815fc1b36 # load immediate value into integer register
fmv.d.x f13, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x4, 0x88f06598b38e9839 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3032b3c707faca8 # load immediate value into integer register
fmv.d.x f4, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0xa3d10a08e77ee205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x91eadc0ea7a486d9 # load immediate value into integer register
fmv.d.x f14, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x4, 0x3c2927d1974c5149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc8ac263366ccbf01 # load immediate value into integer register
fmv.d.x f4, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x2902ed5d1acf2080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe206d3af7823ef07 # load immediate value into integer register
fmv.d.x f2, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x6df0ddd95573b3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe9b7a31c9a996a0e # load immediate value into integer register
fmv.d.x f15, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x16, 0xbdba905650c3c2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6a92f9bc5cba37d7 # load immediate value into integer register
fmv.d.x f16, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x29, 0x64647aa0d40acf99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc66f6b56af9c6226 # load immediate value into integer register
fmv.d.x f29, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x25, 0xbe6184648994ccde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x001ec62d52e55271 # load immediate value into integer register
fmv.d.x f25, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x19, 0x2d3903402385ee46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xedf40b9a1715ae12 # load immediate value into integer register
fmv.d.x f19, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x8e28d79cc142162a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x91302f78eadcf337 # load immediate value into integer register
fmv.d.x f7, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x2, 0xcf1b84fbd4cf0784 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x50a6bfb313970415 # load immediate value into integer register
fmv.d.x f2, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x5, 0x355628ea7752c07b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9e397379683a5307 # load immediate value into integer register
fmv.d.x f5, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x13, 0xdc44cf4d61d7f580 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd35d401d53ec6da6 # load immediate value into integer register
fmv.d.x f13, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0x4621fe6d44652304 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x02a2735e114d9485 # load immediate value into integer register
fmv.d.x f6, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x47886ed37d616398 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7f596068863ab40d # load immediate value into integer register
fmv.d.x f23, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0xf02b6137d423b6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb001ec562b95ba85 # load immediate value into integer register
fmv.d.x f12, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x8, 0x48667b22be8e22a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x15e026fc0674981e # load immediate value into integer register
fmv.d.x f8, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x1, 0x04c6254c503af3c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6e1bfbf0c20f3957 # load immediate value into integer register
fmv.d.x f1, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0xb186bf6468c29dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x58f47ac3eee2713d # load immediate value into integer register
fmv.d.x f25, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0x61f109c16c24bd82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7b3d51268599b737 # load immediate value into integer register
fmv.d.x f16, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x28d579e9b6085ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # load immediate value into integer register
fmv.d.x f3, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0xa892bccc06416138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # load immediate value into integer register
fmv.d.x f21, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0xa049e7de941cf749 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # load immediate value into integer register
fmv.d.x f7, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0xa96f00d0e7c595d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # load immediate value into integer register
fmv.d.x f15, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x09a8401275b1f4ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000001 # load immediate value into integer register
fmv.d.x f28, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x5943f8303886ec58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # load immediate value into integer register
fmv.d.x f15, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0xf4fe65557c51ec96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7ffffffffffffffe # load immediate value into integer register
fmv.d.x f13, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0x1b7bd84bd68cfca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # load immediate value into integer register
fmv.d.x f24, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0x3da75c8762880151 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfffffffffffffffe # load immediate value into integer register
fmv.d.x f30, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x1, 0xf496569ef7ad4998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5bbc887763ae86f7 # load immediate value into integer register
fmv.d.x f1, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x15, 0x8d6c5ea6ede9fbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.d.x f15, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x79a4e6dc1faa33a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5555555555555555 # load immediate value into integer register
fmv.d.x f2, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xbf4f6cb8c9448a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # load immediate value into integer register
fmv.d.x f28, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xb4505735ab0bae2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # load immediate value into integer register
fmv.d.x f19, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0xc3ba503ec24c027a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000000 # load immediate value into integer register
fmv.d.x f6, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x935ae6a3ca4f0c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000001 # load immediate value into integer register
fmv.d.x f20, x12
# Testcase cp_fd (Test destination fd = x0)
li x0, 0x77e4809cd6696a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5900c88040d28db2 # load immediate value into integer register
fmv.d.x f0, x21
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x3e3e0db54ee6b0f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3fc9c19040efcc9f # load immediate value into integer register
fmv.d.x f1, x20
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x3c71812e9349cc23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0379a3e91d8d41d5 # load immediate value into integer register
fmv.d.x f2, x10
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xc0ff5e505c55b5f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xfc846fffce77ca89 # load immediate value into integer register
fmv.d.x f3, x21
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x5b46586b541fa3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x431f40d281a67008 # load immediate value into integer register
fmv.d.x f4, x20
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x0fb5992f83f67dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa8ccb4a356afb9b5 # load immediate value into integer register
fmv.d.x f5, x31
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x01521bf7dfe7835b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00ef867e17340bd0 # load immediate value into integer register
fmv.d.x f6, x28
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x393d55b381086a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6298a3410cba9975 # load immediate value into integer register
fmv.d.x f7, x7
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x23ee7a439fd0413f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa55f929c24d06805 # load immediate value into integer register
fmv.d.x f8, x16
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x1e381caf80337f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1e33589317d5cf2a # load immediate value into integer register
fmv.d.x f9, x12
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x9d0d89322fa1de0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x73648b5fd518c11b # load immediate value into integer register
fmv.d.x f10, x7
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x7805f2b248c4ecd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd764558bad7ed1da # load immediate value into integer register
fmv.d.x f11, x12
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd483d51e28e30448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x89a789dabe9b8f15 # load immediate value into integer register
fmv.d.x f12, x9
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc82add90caef58e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8c797ec1db12d392 # load immediate value into integer register
fmv.d.x f13, x20
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xa6944cf21c9b1116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa502de50e431f761 # load immediate value into integer register
fmv.d.x f14, x16
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xbd9bd0ea4c2578fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x66dd5b5f0adbc979 # load immediate value into integer register
fmv.d.x f15, x17
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x4a4ad974d478b7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4ae47a0effcd9f0c # load immediate value into integer register
fmv.d.x f16, x23
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xfd8baf8f0a042e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa304b21c9ad4c3f2 # load immediate value into integer register
fmv.d.x f17, x10
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xc88211ee5146481b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5ded25b790fa102f # load immediate value into integer register
fmv.d.x f18, x27
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xd3de542d4b24204d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0aca907d46922225 # load immediate value into integer register
fmv.d.x f19, x29
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x7900ff0cfb76b39b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x27c98277f2a00f48 # load immediate value into integer register
fmv.d.x f20, x24
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x0b7fb109e0e7428b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x38433ccbb31dbbdf # load immediate value into integer register
fmv.d.x f21, x10
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xd6346e0b22291e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x23f18eb5502d4810 # load immediate value into integer register
fmv.d.x f22, x12
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x9ffe04ec5ff9fcb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5e5c45defaf32202 # load immediate value into integer register
fmv.d.x f23, x3
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x10ae30ebe78c79d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1fc626807e788dc9 # load immediate value into integer register
fmv.d.x f24, x24
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x38cdcdbf20f92b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9e445845db910e17 # load immediate value into integer register
fmv.d.x f25, x21
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x490ce87ee114f815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbea340b9eda8a9d5 # load immediate value into integer register
fmv.d.x f26, x7
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x30d25f50f4e23450 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7181daf1e1e09bcc # load immediate value into integer register
fmv.d.x f27, x13
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x3f571f6c7845083f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaa692844f03d3bfb # load immediate value into integer register
fmv.d.x f28, x12
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x98a7ae88d4b10823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x64186b9200cea09a # load immediate value into integer register
fmv.d.x f29, x27
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x11ceb994a5bc6c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc761c7584c44e1a1 # load immediate value into integer register
fmv.d.x f30, x4
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x7b84bd025bf3475b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffa30f41f2b7718a # load immediate value into integer register
fmv.d.x f31, x12
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
