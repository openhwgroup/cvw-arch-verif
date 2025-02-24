///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fmv.h.x.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.715487
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
li x19, 0xa5b4e029 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xda3b0a4d # load immediate value into integer register
fmv.h.x f19, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x15, 0x47f40e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xccdbc3e9 # load immediate value into integer register
fmv.h.x f15, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x9, 0xfecfed8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8870657f # load immediate value into integer register
fmv.h.x f9, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x22, 0xc4cafe7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xca806433 # load immediate value into integer register
fmv.h.x f22, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0x2e25ec00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbacfb884 # load immediate value into integer register
fmv.h.x f12, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0xb27d9bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2ed0c79b # load immediate value into integer register
fmv.h.x f14, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x9, 0x4d17ec0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x3047e6ea # load immediate value into integer register
fmv.h.x f9, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x13, 0x376ed42f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x791ae592 # load immediate value into integer register
fmv.h.x f13, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0x78f3d4a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd054988f # load immediate value into integer register
fmv.h.x f6, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0xa40c81ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1c958794 # load immediate value into integer register
fmv.h.x f4, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0x6aba257f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x90d3cf1e # load immediate value into integer register
fmv.h.x f16, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x521a9cae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe554b3f2 # load immediate value into integer register
fmv.h.x f12, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0xe2f3ee42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb4d7144e # load immediate value into integer register
fmv.h.x f23, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x20, 0x5b8aee93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf753b483 # load immediate value into integer register
fmv.h.x f20, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x039f898c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9f74e053 # load immediate value into integer register
fmv.h.x f11, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0x31431bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfc6174bf # load immediate value into integer register
fmv.h.x f3, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0xe07d0600 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x80bf9934 # load immediate value into integer register
fmv.h.x f15, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x31, 0x4e37caaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x33d71656 # load immediate value into integer register
fmv.h.x f31, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0x1708a303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x34de5f1e # load immediate value into integer register
fmv.h.x f4, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0x4974c5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x479bb09e # load immediate value into integer register
fmv.h.x f7, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0xb0e5f7c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1fa62b3f # load immediate value into integer register
fmv.h.x f2, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x46549ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2a087c4f # load immediate value into integer register
fmv.h.x f28, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0xc86c2e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2cecaf2f # load immediate value into integer register
fmv.h.x f3, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0xab4c6ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x78f54cc4 # load immediate value into integer register
fmv.h.x f4, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0x5126dd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfcc27916 # load immediate value into integer register
fmv.h.x f12, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x1617f31c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x11f2d100 # load immediate value into integer register
fmv.h.x f29, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0xa5a60bda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xcae91faf # load immediate value into integer register
fmv.h.x f13, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0x2f72b9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd1905761 # load immediate value into integer register
fmv.h.x f12, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0x3bac919a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3987e6d2 # load immediate value into integer register
fmv.h.x f30, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x9, 0xf60c885a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3da3da1b # load immediate value into integer register
fmv.h.x f9, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x85e6d803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdb46103f # load immediate value into integer register
fmv.h.x f9, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x27, 0x73082b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1e477ce2 # load immediate value into integer register
fmv.h.x f27, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0xb7d108c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000 # load immediate value into integer register
fmv.h.x f8, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x95f2e705 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000001 # load immediate value into integer register
fmv.h.x f21, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x78475527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000002 # load immediate value into integer register
fmv.h.x f11, x29
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x24, 0x9fd7ecd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # load immediate value into integer register
fmv.h.x f24, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x31, 0xc1e4f892 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # load immediate value into integer register
fmv.h.x f31, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0xb446c07e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # load immediate value into integer register
fmv.h.x f18, x21
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x23, 0xcd2cf0f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # load immediate value into integer register
fmv.h.x f23, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00b1e0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # load immediate value into integer register
fmv.h.x f28, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x83074243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # load immediate value into integer register
fmv.h.x f8, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x1, 0xd2566b99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # load immediate value into integer register
fmv.h.x f1, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0x1ed297c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # load immediate value into integer register
fmv.h.x f31, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0xf2cf0ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555 # load immediate value into integer register
fmv.h.x f9, x25
# Testcase cp_fd (Test destination fd = x0)
li x0, 0xd4f1d70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3e4f0b27 # load immediate value into integer register
fmv.h.x f0, x13
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x99ae973d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x347d359e # load immediate value into integer register
fmv.h.x f1, x28
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x869968fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd93f9a3b # load immediate value into integer register
fmv.h.x f2, x10
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xb676e442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x43ff9426 # load immediate value into integer register
fmv.h.x f3, x5
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x827aa5de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x62817bf8 # load immediate value into integer register
fmv.h.x f4, x5
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x0806c4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb8f6aa10 # load immediate value into integer register
fmv.h.x f5, x4
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xea82099c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9674c343 # load immediate value into integer register
fmv.h.x f6, x30
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x4ab68bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe6c3e97d # load immediate value into integer register
fmv.h.x f7, x16
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xb46488f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd0b1493c # load immediate value into integer register
fmv.h.x f8, x16
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x87665484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc603ebb3 # load immediate value into integer register
fmv.h.x f9, x4
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc0165377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x23ac28d6 # load immediate value into integer register
fmv.h.x f10, x30
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xf76c2fd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2edff3db # load immediate value into integer register
fmv.h.x f11, x4
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x0a181ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9515be5b # load immediate value into integer register
fmv.h.x f12, x28
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xddc5ad16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x18e3e9da # load immediate value into integer register
fmv.h.x f13, x3
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xaf49112a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa5752071 # load immediate value into integer register
fmv.h.x f14, x22
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x63ee8c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xcc38f3f0 # load immediate value into integer register
fmv.h.x f15, x11
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xa32323a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xadff533b # load immediate value into integer register
fmv.h.x f16, x21
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x8ac4db56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0f7d2428 # load immediate value into integer register
fmv.h.x f17, x5
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x740d662b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x244bdc6e # load immediate value into integer register
fmv.h.x f18, x25
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x01ffc94f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaef5836c # load immediate value into integer register
fmv.h.x f19, x31
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x8364b0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3339b689 # load immediate value into integer register
fmv.h.x f20, x10
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x4b4b649c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb44b80b3 # load immediate value into integer register
fmv.h.x f21, x28
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x1eb77097 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xee20bbbc # load immediate value into integer register
fmv.h.x f22, x1
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x403f3b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe342b621 # load immediate value into integer register
fmv.h.x f23, x23
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xeed17180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x799cc2f1 # load immediate value into integer register
fmv.h.x f24, x8
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x08ecbf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe890025d # load immediate value into integer register
fmv.h.x f25, x12
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x7c871648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10fd774c # load immediate value into integer register
fmv.h.x f26, x1
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x7d86ef64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9b80c0e6 # load immediate value into integer register
fmv.h.x f27, x7
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x836da36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5e2bf0ba # load immediate value into integer register
fmv.h.x f28, x11
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x279c2fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x31b36f2b # load immediate value into integer register
fmv.h.x f29, x18
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x351b7b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc1e692ab # load immediate value into integer register
fmv.h.x f30, x9
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xfb5f3c1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x29ec9ef1 # load immediate value into integer register
fmv.h.x f31, x23
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
