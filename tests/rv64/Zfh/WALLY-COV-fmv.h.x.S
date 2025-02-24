///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fmv.h.x.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.203294
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
li x13, 0x21ffc0317d3baf70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5105320a9eae2065 # load immediate value into integer register
fmv.h.x f13, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0xcdc0e2254357d87a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x45f0fd588e40ca78 # load immediate value into integer register
fmv.h.x f25, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x4fa26557beb65c01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x87769688c6883262 # load immediate value into integer register
fmv.h.x f29, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x11, 0x8a10694f09810013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0193d220ef8e949c # load immediate value into integer register
fmv.h.x f11, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x10, 0x6b6fc9f98f45ebaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbfc4b64059abfc68 # load immediate value into integer register
fmv.h.x f10, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x6, 0xf8e91f5026388992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xba03b1beab8707c0 # load immediate value into integer register
fmv.h.x f6, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0xa2a3146762a2f454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x33340188461201b3 # load immediate value into integer register
fmv.h.x f29, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0xf49cb84372b42cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6db8ab80d4c6ffd6 # load immediate value into integer register
fmv.h.x f24, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0x630ac243f52e998c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xab012323b8d853fc # load immediate value into integer register
fmv.h.x f22, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0x63678c1afae9b81d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xba154cede229eda5 # load immediate value into integer register
fmv.h.x f20, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x30, 0x0b25060ab8a65700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4c10c621e9b6ca9d # load immediate value into integer register
fmv.h.x f30, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0xdd03087baa6177e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x474e8c47036c045f # load immediate value into integer register
fmv.h.x f9, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0x272e4fb56a8d9828 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd97e5cb1e8770117 # load immediate value into integer register
fmv.h.x f30, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x583b70a0a9db691f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6fc7f184c0a67349 # load immediate value into integer register
fmv.h.x f10, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0x6865d0e98a2d52c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf7c8f4c0803b738d # load immediate value into integer register
fmv.h.x f1, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x728ccdb24d93f1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa136e61e52817e64 # load immediate value into integer register
fmv.h.x f2, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0xa035ef67fa89991b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x552045bec088e385 # load immediate value into integer register
fmv.h.x f4, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x11, 0xcb369cd78ef6446e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x60ab85ce55ffd90c # load immediate value into integer register
fmv.h.x f11, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0xd1464a888ab7dc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa21e49e7d3b7450e # load immediate value into integer register
fmv.h.x f16, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0xa5977f1736f81ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2de5b0b6ae02b3c3 # load immediate value into integer register
fmv.h.x f7, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0x86aadea027745da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6e7924414ef9b6ef # load immediate value into integer register
fmv.h.x f21, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0x64c4ba77af2be772 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x60ce4e506407c9e8 # load immediate value into integer register
fmv.h.x f30, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x19, 0xce5671fe7299709d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe38876e0263b1933 # load immediate value into integer register
fmv.h.x f19, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0xbda32b9374887001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x73a90e264bd7343e # load immediate value into integer register
fmv.h.x f27, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x12, 0x49c64073f84e5750 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc5c1f3baa3ced372 # load immediate value into integer register
fmv.h.x f12, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0x93b767a7641c4c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x983430e13bc65cff # load immediate value into integer register
fmv.h.x f3, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x4ef129843c645068 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xab22502bd0ea3690 # load immediate value into integer register
fmv.h.x f13, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x12, 0xb479f03fc340b700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcbddaab5f77385a4 # load immediate value into integer register
fmv.h.x f12, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x4c2a29c017ab545e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x95d0809def05e2e8 # load immediate value into integer register
fmv.h.x f4, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0xae6289bb7de28550 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x827f912aa23b9ef0 # load immediate value into integer register
fmv.h.x f23, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x14, 0x78cd390105e6c87e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xf8f5bc0b885db664 # load immediate value into integer register
fmv.h.x f14, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x17, 0x1c022a78d7513c1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa606cf3e4ae80b24 # load immediate value into integer register
fmv.h.x f17, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0xf529904f7adfedcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # load immediate value into integer register
fmv.h.x f20, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x00c24d05105c3c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # load immediate value into integer register
fmv.h.x f6, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x10cc6ad31af35e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000002 # load immediate value into integer register
fmv.h.x f7, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x5ca1e6321255d1c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000000 # load immediate value into integer register
fmv.h.x f1, x23
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x4f9931e097059c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8000000000000001 # load immediate value into integer register
fmv.h.x f27, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0xac0fab7b0d3f1098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffffffffffff # load immediate value into integer register
fmv.h.x f15, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0xb03e2e5fa67f0182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # load immediate value into integer register
fmv.h.x f25, x5
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0x7a25a65e729391fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # load immediate value into integer register
fmv.h.x f26, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0x332afda88a40eebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffffffffffe # load immediate value into integer register
fmv.h.x f20, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x15, 0x1903add4d3a75a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc887763ae86f7 # load immediate value into integer register
fmv.h.x f15, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xdf36274358a9de85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.h.x f12, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x22, 0xc34def4521bb018e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5555555555555555 # load immediate value into integer register
fmv.h.x f22, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0xb697d64e42ac75e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # load immediate value into integer register
fmv.h.x f3, x23
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x78354621c6b2dd68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # load immediate value into integer register
fmv.h.x f9, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x459e711af455e965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000100000000 # load immediate value into integer register
fmv.h.x f22, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x17, 0x2f4c19c4a3ebebcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # load immediate value into integer register
fmv.h.x f17, x6
# Testcase cp_fd (Test destination fd = x0)
li x0, 0xb752828598d957dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x435f522fe3a89d40 # load immediate value into integer register
fmv.h.x f0, x20
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x582dec21bd9a437b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6c0a278ac98d2d8a # load immediate value into integer register
fmv.h.x f1, x14
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xf669ae10ca8b28e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdfc9190b5f4b16f1 # load immediate value into integer register
fmv.h.x f2, x8
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xbd9f450242f67fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe2a47df9fe18c6d7 # load immediate value into integer register
fmv.h.x f3, x22
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xeaa154d626a24b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x29b0eeab8ce63d97 # load immediate value into integer register
fmv.h.x f4, x7
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xcecd5c7c635bd2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbb750340f090da53 # load immediate value into integer register
fmv.h.x f5, x21
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x259c5e9264460dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3b14826d4ce69a98 # load immediate value into integer register
fmv.h.x f6, x24
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x43c04a20c857248b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x215b4bbee1bd1453 # load immediate value into integer register
fmv.h.x f7, x26
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x0ef51c72dc96bdfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x71e26e51ec00a398 # load immediate value into integer register
fmv.h.x f8, x8
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xf94e5ab8190bd2c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc02206b153bf1c66 # load immediate value into integer register
fmv.h.x f9, x20
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x67d6507ff9b0a2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0294721c2151da95 # load immediate value into integer register
fmv.h.x f10, x19
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x51b290a08383d934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbb59012aba57e473 # load immediate value into integer register
fmv.h.x f11, x12
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x604000c4af2d63f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2820633977c3f621 # load immediate value into integer register
fmv.h.x f12, x5
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x08ee913b102eb9a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa8a77b42452951f7 # load immediate value into integer register
fmv.h.x f13, x14
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x62694a515c6e563b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x68358fa4148008e4 # load immediate value into integer register
fmv.h.x f14, x18
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xb432c69e15b56697 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe63748bbb38824aa # load immediate value into integer register
fmv.h.x f15, x22
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x580722545fee99cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa445c8b92a36dc8c # load immediate value into integer register
fmv.h.x f16, x8
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x382bd10a32773b0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x35552203e4dec935 # load immediate value into integer register
fmv.h.x f17, x8
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xfa38f583542ab75a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x497205c6c5e046a0 # load immediate value into integer register
fmv.h.x f18, x17
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xee59cf2e394fe65e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5be0e0d6c6ab240e # load immediate value into integer register
fmv.h.x f19, x30
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x05928de17156db7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x92480b9ac5434bc3 # load immediate value into integer register
fmv.h.x f20, x14
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xdd4b3b2a066adc21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x732db60f9cc280d6 # load immediate value into integer register
fmv.h.x f21, x11
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x43e5ac52058f964a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x06ad77ee5369620b # load immediate value into integer register
fmv.h.x f22, x9
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x1dd6e647074abbd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xecf7ebc232e8a84f # load immediate value into integer register
fmv.h.x f23, x31
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x443027acfb444f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x45cf390e15371669 # load immediate value into integer register
fmv.h.x f24, x2
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xe1411ba954f8aa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdb33eee093b11208 # load immediate value into integer register
fmv.h.x f25, x26
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x3cd21eae2c38af24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2a506e1df49e3b8a # load immediate value into integer register
fmv.h.x f26, x12
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x85efda2d8663329a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x45f836a8110fabe8 # load immediate value into integer register
fmv.h.x f27, x31
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xa3fe932043d47efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x70d68dbbbf712a62 # load immediate value into integer register
fmv.h.x f28, x4
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x7a63debf568d67e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x37f31b350bb251a3 # load immediate value into integer register
fmv.h.x f29, x26
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x26f944ad2cfedbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6cec313c2febfb28 # load immediate value into integer register
fmv.h.x f30, x23
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x2aa447433f684743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x847f3546be248579 # load immediate value into integer register
fmv.h.x f31, x19
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
