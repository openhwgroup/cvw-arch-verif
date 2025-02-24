///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.add.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.973608
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x483b7b8c87779827 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xcb3c0b888d54ae0a
c.add x0, x27 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3c29b12b93f73408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x84e6250e9b64aee8
c.add x1, x14 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x2efaace2181f0008 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7c330aa365363bfe
c.add x2, x25 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x45a3eab416809300 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb526b32bf16f4248
c.add x3, x10 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x827801886e9cbc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x336fb13172beaa59
c.add x4, x28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x986c79dad4b07c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe6e35a549af68bf6
c.add x5, x16 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xb0653a7fff2d03d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6ad6d7f9c8edd610
c.add x6, x2 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xb984ab8a40d88bde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xeaf151c8de8610aa
c.add x7, x3 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0b950284ca20decd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7177fd718dc0dc7a
c.add x8, x19 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6788764ec745e0af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x34776a29e3373feb
c.add x9, x19 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x1141323f7f31e87b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x921998e45468660f
c.add x10, x15 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xae9d3a64594a5413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4df60c6f1d6e5963
c.add x11, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x074038ba49f5237f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7fc24e8c264a39d2
c.add x12, x17 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6a52e7ceafb27103 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8a02d2964a643538
c.add x13, x1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xa246a5e2fe2693da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x26c34a8603aefbf0
c.add x14, x1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x59bbb808b3187ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa39e833ce1214edf
c.add x15, x23 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd59f318fc5bcd434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa16f405dec7d6703
c.add x16, x6 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x74e4c393e02de8df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x684f31980ec96dfc
c.add x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc088f758bb222845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x062c088963e2331f
c.add x18, x6 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x5e34518b5c506013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5390858d905d3e5a
c.add x19, x25 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc3dfe046cd91cfad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf641872968c3fef7
c.add x20, x11 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x46645b414ef452e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x91f38a7908eacea2
c.add x21, x21 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x266a9be642229fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2615f29c8f74a822
c.add x22, x4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x204184df8ab69d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe6034b547ec0c452
c.add x23, x24 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x24c4a07bf022cbfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0841eb10d6bba38b
c.add x24, x14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3c85e9d477c2f86e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd4fdad43ecbf644e
c.add x25, x27 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x76fa526d1fa31c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb5cce820d61d2f6b
c.add x26, x7 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5b0cf1ed2d293852 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa6fa6320ba7884d6
c.add x27, x28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x8179b250162dd565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6642463f92565f03
c.add x28, x9 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7910d7f329af7469 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x64091ee155cbbd59
c.add x29, x15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x527e716b8263cd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xb9b1d66a0c1cf5b3
c.add x30, x17 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x6024cf0eeac30ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc01091a817356c5b
c.add x31, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0xb40dc1a7dd3472cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1141c64351c50dfc
c.add x25, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x5, 0xecad4a3c800dc89a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x673195bd4917e9e0
c.add x5, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0xdba27587f4531803 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x813fceaeea5b3357
c.add x19, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x17, 0xb1ca71ac2b85425a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x2fc5afdbfe1279a0
c.add x17, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x11, 0x3e4baeff15e6e964 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x79a4c5546baa9a7d
c.add x11, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x26, 0xd7d08d297d5768d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xabd17e75259b0ee9
c.add x26, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0xb8ffcdd2ab5f1f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xb715854289f2271e
c.add x31, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0x9956cf76934f51c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6e1bdc52aa143402
c.add x21, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0xbf1c45eba5127fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x28a52d5b544dbee2
c.add x7, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x16, 0x4dc9776605d98078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd0d667920eff3909
c.add x16, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0x91fca0d9261f4c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9380a6dee630d3cf
c.add x28, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0xbeada25424a96eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf35e9262ddcb46e5
c.add x13, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0x15018e1e4a41ec57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9fd69d0ab8ad4f52
c.add x2, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x49954345ec615bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x843732bf88892d2a
c.add x31, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0x1c0393c456298e90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x17dd2b6ab44b0493
c.add x28, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x6, 0xc29e3fa4fe3a6af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xda64592b504dd716
c.add x6, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0xcc57915d1a276e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1e8290db7a548d3b
c.add x13, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0xbf4805085e685e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe10bf61e3d379ed0
c.add x9, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x12, 0xccf4d31cde344d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7a5be3510f108b9b
c.add x12, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0x41a3df92d484981d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc93a6136e73a05b9
c.add x24, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0x2da4dd515154a9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xbc55c26d98da6a24
c.add x20, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x04a8e997ecc897a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1f74e65d73c399db
c.add x2, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0xcb956722d04d7a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x97c27cb24513a9cc
c.add x15, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x078069feb0093b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7e225831a85b3e68
c.add x18, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x17, 0xa70a4026d378543d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf4fb47c047453b6f
c.add x17, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0x6f44871fa3c1e08b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc71ada3de2af1c64
c.add x28, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x6496113fb2648d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x35d477d7b222b752
c.add x12, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x16, 0x554b5c88a94ba50d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xedc282329fcc0154
c.add x16, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0x5cedc7ac33b144ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc3040fb777f90b84
c.add x28, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x06e62ffc8f0e7b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xce41072aa55ffea9
c.add x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0xbe3f5ebfd97826ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc32df0b15820807d
c.add x24, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x7dcc849449778486)
li x30, 0x384af6be1e2e4a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7dcc849449778486
c.add x30, x25 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4a84b4fef6f77df4)
li x14, 0x23b3418ed59b83e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb57b4b010908820c
c.add x14, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x4da1fe384020e856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb25e01c7bfdf17aa
c.add x26, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xd35491d5798c6854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x2cab6e2a867397ad
c.add x27, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0xe5b5445a1d73aac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1a4abba5e28c553d
c.add x18, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x7, 0x67d115d9ffa51b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x182eea26005ae4a7
c.add x7, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x40d953027a157d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3f26acfd85ea82e8
c.add x27, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x28, 0x3863f4c1958b010e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x479c0b3e6a74fef1
c.add x28, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x7, 0x48cacf6276fd0315 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3735309d8902fce9
c.add x7, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x27, 0x107e7e417ae41f1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xef8181be851be0e1
c.add x27, x7 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x18, 0x9f6e86b1d83ab4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6091794e27c54b16
c.add x18, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x20, 0x8e2efe6af7aa986a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcd8d8a0c6c03ee8d
c.add x20, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x20, 0x6fd29d28f6ef8f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3ad80d81b3bb1b1b
c.add x20, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x13, 0x769dda6c11b86ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xdeb77ae9439ce55c
c.add x13, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0xe7a93afbc1e7c659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1856c5053e1839a6
c.add x6, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0xc5e6089233fded3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a19f76ecc0212c2
c.add x7, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x15, 0xecdf71330390e5b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x13208ecdfc6f1a48
c.add x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x28, 0x2827819da5c273cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd7d87e635a3d8c34
c.add x28, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0xcf4027f595e1eb80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000
c.add x13, x16 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x146bc8eec6218576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001
c.add x13, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x2aeaec2ea57ae25e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002
c.add x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x30, 0xfb49a8edf773fd46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000
c.add x30, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x8, 0x97629aa49349a8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001
c.add x8, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x14, 0x8e05eb2137d9ac9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff
c.add x14, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x26, 0xe622b9a3b0e5372d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe
c.add x26, x29 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x17, 0x64ae0e3a75e39f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff
c.add x17, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x19, 0x2ebc67d5d5623bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe
c.add x19, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x11, 0x5c06dd21a106d973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7
c.add x11, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0094706fc465efcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa
c.add x18, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x28, 0xfb9aeaf61aca811f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555
c.add x28, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0xfeb62c0d899db792 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff
c.add x14, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x20b027cf733ad569 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000fffffffe
c.add x6, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0xa21a25849538c10e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000000
c.add x7, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x20, 0xd74fd04b7093f7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000100000001
c.add x20, x19 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
