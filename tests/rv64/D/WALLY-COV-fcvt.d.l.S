///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.d.l.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.498580
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
li x20, 0x196ced889fc77aef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcc60ab05ac9a4b07 # load immediate value into integer register
fcvt.d.l f20, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x15, 0xd632f60bc8e1f46e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8099fc4843ae60bf # load immediate value into integer register
fcvt.d.l f15, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0xffca2dfe85dbf46a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x883fd6f5872dac83 # load immediate value into integer register
fcvt.d.l f18, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x31, 0x9f804713b78c079c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfd9a2ca970c47ae6 # load immediate value into integer register
fcvt.d.l f31, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x29, 0x7d88e7006a34b70a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdc704005483a4fb4 # load immediate value into integer register
fcvt.d.l f29, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x2, 0x1aae7b7e849b7231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe5e9d114cdce078f # load immediate value into integer register
fcvt.d.l f2, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0x49d893607489aac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x441eb99321f03d30 # load immediate value into integer register
fcvt.d.l f22, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x30, 0x96941b4b0ccb58c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9aaaca888f984aac # load immediate value into integer register
fcvt.d.l f30, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0x1678752aec8de766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe021a774702c093c # load immediate value into integer register
fcvt.d.l f16, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0x7d2234bb2f1c9840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xde1e83ef3dfa892e # load immediate value into integer register
fcvt.d.l f8, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x20, 0x67cec6fa4add9192 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa13d670441a7ae07 # load immediate value into integer register
fcvt.d.l f20, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0x7f73274911a22fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5c98a16e0d44146c # load immediate value into integer register
fcvt.d.l f25, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0xaa3154a06d7f0295 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1b5aee3f2f9fe7d7 # load immediate value into integer register
fcvt.d.l f8, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x26, 0xd1c9445d32267fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd50bbfbc64ad8e78 # load immediate value into integer register
fcvt.d.l f26, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x29, 0x707e53936740d23a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3859751774177bf3 # load immediate value into integer register
fcvt.d.l f29, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0xab20ccc8374b3b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x14acb28a3f114d71 # load immediate value into integer register
fcvt.d.l f24, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0xb0276f0c40cf2c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x857f461964f07e04 # load immediate value into integer register
fcvt.d.l f8, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0xdb9f1cba2494f9e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5791d13666d8ba71 # load immediate value into integer register
fcvt.d.l f10, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0xa47e750ca132c2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb4bc679e5eee5c89 # load immediate value into integer register
fcvt.d.l f14, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0x5b53f6d4af59ab15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1fe9e7caa8d43b5c # load immediate value into integer register
fcvt.d.l f17, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x11, 0x7d4aced383df066a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbc363ec726441755 # load immediate value into integer register
fcvt.d.l f11, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0x9ee1dd621d69beaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xebf93c9751beb469 # load immediate value into integer register
fcvt.d.l f31, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0x6352c92eaa5a8a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2f00736bd23fa6e9 # load immediate value into integer register
fcvt.d.l f15, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0x0a0beb8cedb1b3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x708bbeb437d7a3e2 # load immediate value into integer register
fcvt.d.l f15, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0xee832ea02323af6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6a730ef9d47fec22 # load immediate value into integer register
fcvt.d.l f5, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0x191f85f09ef6d04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb5a753538ee34800 # load immediate value into integer register
fcvt.d.l f10, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x9, 0x555a4fa4ffe54c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8444208abf60e1c6 # load immediate value into integer register
fcvt.d.l f9, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x3ac5ae9e838114e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5123b486ae26e305 # load immediate value into integer register
fcvt.d.l f3, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x13, 0xa84bbdb6d16818a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x42b72012a1f94849 # load immediate value into integer register
fcvt.d.l f13, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0x15d8576d8f731f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa8c3f66de2858b50 # load immediate value into integer register
fcvt.d.l f22, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x31, 0xed30157234076f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3d868a84ea290f6d # load immediate value into integer register
fcvt.d.l f31, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0xa99088b7847f62e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xea0ce1263a54048c # load immediate value into integer register
fcvt.d.l f12, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0xa7e2bc0d2ff9a9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # load immediate value into integer register
fcvt.d.l f23, x8
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x8e5a629b64436ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # load immediate value into integer register
fcvt.d.l f24, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x33e1f0a5dc1f4146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # load immediate value into integer register
fcvt.d.l f31, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0xc765bce57be5d8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # load immediate value into integer register
fcvt.d.l f2, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0xc02c2d9ddce18f1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # load immediate value into integer register
fcvt.d.l f10, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x9c11dbcea46302be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.l f6, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x27, 0x5b98fa056c18773f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.l f27, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0x84fd22e6209c7e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.l f3, x26
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0x8e1550d0f640187a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.l f23, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x19, 0x9e33acf3faef4d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.d.l f19, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0x2b1f15dffebf86c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.l f14, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x705921201cdcb254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5555555555555555 # load immediate value into integer register
fcvt.d.l f10, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x4a04191f7323a5d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.l f22, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x24, 0xdec849d2fa99d393 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.l f24, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0xb5d5568c36a05a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # load immediate value into integer register
fcvt.d.l f2, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x18, 0xa62fea51b00ffb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # load immediate value into integer register
fcvt.d.l f18, x11
# Testcase cp_frm
li x13, 0xbc2b96243652e6ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x2ab4d6010f54a1cf # load immediate value into integer register
fcvt.d.l f13, x16, dyn # perform operation
fcvt.d.l f13, x16, rdn # perform operation
fcvt.d.l f13, x16, rmm # perform operation
fcvt.d.l f13, x16, rne # perform operation
fcvt.d.l f13, x16, rtz # perform operation
fcvt.d.l f13, x16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.d.l f13, x16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.d.l f13, x16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.d.l f13, x16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.d.l f13, x16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.d.l f13, x16 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xf148ac220ffe1a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5d9bd4d658a52350 # load immediate value into integer register
fcvt.d.l f0, x6
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x1b6ce6e1ec7a3645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6486726c09774829 # load immediate value into integer register
fcvt.d.l f1, x2
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x259f62b04fcdcff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x05c815be08a04b8f # load immediate value into integer register
fcvt.d.l f2, x26
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x8d31fd4d9721a8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x29d4500256a8dd04 # load immediate value into integer register
fcvt.d.l f3, x12
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xd414b30cb06d0756 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x225a129fff614eaf # load immediate value into integer register
fcvt.d.l f4, x31
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x0a5ebb3732b72642 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd69f3530024b80c7 # load immediate value into integer register
fcvt.d.l f5, x9
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x4371f48a3086385a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x45ca8f48d41e468e # load immediate value into integer register
fcvt.d.l f6, x9
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x1978bb69853732b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x508baa8e0c0455c1 # load immediate value into integer register
fcvt.d.l f7, x25
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x41c2128b94616525 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xefddcd6a5df29041 # load immediate value into integer register
fcvt.d.l f8, x23
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xf4431da181e3602d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0078ad789b9d0a9a # load immediate value into integer register
fcvt.d.l f9, x27
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x003266461fe57047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x84274c5dfe2cc4f6 # load immediate value into integer register
fcvt.d.l f10, x23
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xad5846cb7807c8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd43753763264786b # load immediate value into integer register
fcvt.d.l f11, x3
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xf701828f2603065f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe86fd5e16f5588a2 # load immediate value into integer register
fcvt.d.l f12, x22
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x70e1b555d1cbce55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xadc33411a9eb3a46 # load immediate value into integer register
fcvt.d.l f13, x10
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x28dba3b0f69786d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa6700c45caf049d7 # load immediate value into integer register
fcvt.d.l f14, x21
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x97ab3d38573d8e1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc6b19ee287224478 # load immediate value into integer register
fcvt.d.l f15, x13
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xec72cd7a9d0a9223 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3c8b039d6650f8fb # load immediate value into integer register
fcvt.d.l f16, x29
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x4bb9adc1505b1fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x189015e479afee3b # load immediate value into integer register
fcvt.d.l f17, x24
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xced58c5d22f1d6d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x143d26a87d62780e # load immediate value into integer register
fcvt.d.l f18, x14
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x042bfb2f079f42df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdbee3c7844bcafd2 # load immediate value into integer register
fcvt.d.l f19, x17
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xfcaa1408068cebfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4c853a4cac54f378 # load immediate value into integer register
fcvt.d.l f20, x22
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xaaa37a4c387898f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3e5e3062622d2bcf # load immediate value into integer register
fcvt.d.l f21, x13
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xa468383668aa0ca0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc91f9c49fcb57577 # load immediate value into integer register
fcvt.d.l f22, x3
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x07b461cca12a1e43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xec5b25cffcdfaaf8 # load immediate value into integer register
fcvt.d.l f23, x20
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x3532d55f54b4fe9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x58c401e3f9c9975b # load immediate value into integer register
fcvt.d.l f24, x8
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x073d081215cf65a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x417d55ae9345eb52 # load immediate value into integer register
fcvt.d.l f25, x4
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xfb32f7c5929cb072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80589782582cb06e # load immediate value into integer register
fcvt.d.l f26, x18
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xde195331a1046cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6292ad78511f2f4d # load immediate value into integer register
fcvt.d.l f27, x29
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x85d429869067cf71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x349f8aacd85fa74c # load immediate value into integer register
fcvt.d.l f28, x29
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x040c7589e558274f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc11c1fe216d47b89 # load immediate value into integer register
fcvt.d.l f29, x28
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xa69698e0ffd2505c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6c31fc5e32743c14 # load immediate value into integer register
fcvt.d.l f30, x26
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe89dff087678330b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd34615e0de3f0fbc # load immediate value into integer register
fcvt.d.l f31, x15
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
