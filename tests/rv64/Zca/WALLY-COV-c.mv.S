///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.mv.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.989633
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xac4a67f2f4ec5cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf2732950d2430a0e
c.mv x0, x12 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x0e1c9a5cc0fc4730 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa90f1031706521f8
c.mv x1, x23 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x273f10db933f12b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x655518bfed154712
c.mv x2, x8 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x252b458983a71fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2627ddad80611f37
c.mv x3, x26 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xcd51e77e6fe31bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xee9d438247c6b72c
c.mv x4, x3 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x5c184997d04adf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8098d08a3a631084
c.mv x5, x5 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xf2187272298dee43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa00fb0cc6a3e1b01
c.mv x6, x13 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5e354dc0c9944b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8939e6b913f799dd
c.mv x7, x12 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x89fe8bc23783ad0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc10939914b7cacd9
c.mv x8, x16 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xaf84582e72655a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6958a2243011a94d
c.mv x9, x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8ae360e238819c28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4a00394466d63e91
c.mv x10, x9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x586e90f8789c4181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80d11ebedc6bbb8e
c.mv x11, x13 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x529b48a371a2a3ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8225d204914fdbb0
c.mv x12, x22 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x14b77126a94b9116 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb39907075778227b
c.mv x13, x29 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x38bcd1b93c97019f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x99f46bfc0eb2de39
c.mv x14, x21 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xcbbda2f0dd572d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd59867ee808ac7ad
c.mv x15, x1 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x0d795c919e9bbaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x164e19c3eccdd2ee
c.mv x16, x27 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5dd925da79f9aa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbb8cb4806957a258
c.mv x17, x9 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x781186a1efda74ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x085ac5b9fcac19d8
c.mv x18, x5 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x3b8bb5bb9d0281f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc6179be53e0ce717
c.mv x19, x20 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x377796ed7e56bc67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa3d33b2506dad93d
c.mv x20, x28 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x1ca279763171852e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x75a24e4517bcf594
c.mv x21, x23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x832f1e901f7cedeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd2cf7fcfd42bc006
c.mv x22, x6 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xfa71b28a2e16286c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4f252c2397ba34d8
c.mv x23, x19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x758bcc8d2403ba55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdd7bf167b9900517
c.mv x24, x13 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x093a422d9fdc9b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa4b7b1dfad429db9
c.mv x25, x19 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x4bce480ec28667fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6343c7982fb7705a
c.mv x26, x26 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3bc0e3b4fd291eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1c3c91e938448151
c.mv x27, x18 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe7d9e096ed370ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x31901abb15dcf683
c.mv x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x8eb6dae50a00c5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb49673366fa1c518
c.mv x29, x14 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x91149e5a174cc9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x74bb95bee8e310e0
c.mv x30, x7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x067f5c870ceeb7e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x24cce03335709bfd
c.mv x31, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x9, 0x2658a1f040f3a30f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x792ee68ea21da15a
c.mv x9, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x5e66ec01a12cb45b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x72ea287ff0a3954e
c.mv x6, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0xdf27cf68477942ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfad827861bb667e3
c.mv x7, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x21, 0x41c9c6add0e1f71b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1d66852929cce7c2
c.mv x21, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x14, 0xc68a46a2f83e5e59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xae88e303be00eb58
c.mv x14, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x21, 0x88e00a6a08c18ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe1e661672c9c77eb
c.mv x21, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x3, 0xacb38e44a527b037 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5cecfb803eb28342
c.mv x3, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xbb5775dcf4acfc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5d0a6b4d7c220163
c.mv x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0xcd5f5a880aaecd63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4a69e0ee38ccdfd4
c.mv x20, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0x5a6bfab9ca4f9065 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x85819a8201e9c27d
c.mv x7, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x595f38e4756ef9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0afe57b921529534
c.mv x24, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0xeeb29f6557208bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x36dea94337846ffa
c.mv x25, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0xef5c6305e21d8bd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb75a17f6774c6478
c.mv x1, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x627eb779c4a6e297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa2d302cb23a539eb
c.mv x19, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x2e4c0cd1e659e840 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8488b4f43dca9721
c.mv x29, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x5, 0x9f92371faa68ff54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1848478bf1d4f83a
c.mv x5, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0xe97ea08e0f8ce0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe22babaa7a8b4833
c.mv x6, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x33ffa2b214015bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x13304f3f827d3be4
c.mv x27, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0x4b7372832398d280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x255f14be3b0fd131
c.mv x8, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x02ac7b8e42aa0f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5e80746bcb00ffa3
c.mv x26, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0x9c51d628c62e1118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x281b7a07bb8d2192
c.mv x13, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x25, 0xc12033dcf4c01fed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x20799bbf5c64c0cc
c.mv x25, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x1081003333c0ef72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x79571f77aceabcb0
c.mv x16, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x13910cd16ba0e70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbadf5c57a6047930
c.mv x11, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xdd9ce005921baed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1e6b79b8113de814
c.mv x20, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x19, 0xf4f55fc623012acd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xbdf01cc1f1d3c43f
c.mv x19, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0xa2aee0395ce67f53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x341bf6046bed18ed
c.mv x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x10, 0x32d9664c249f98ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb7142a28d6b6b75b
c.mv x10, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x8, 0x49d2fd92406bc850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x755cbbbf05979344
c.mv x8, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0xa1915691e30d7fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdce1f5b6cdb5ed2e
c.mv x13, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0xd7b350e5bbda93e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe2be38ff5cf0840a
c.mv x9, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x59154ed6bbd2f392)
li x31, 0x02c50b0a7b6e3757 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x59154ed6bbd2f392
c.mv x31, x4 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x75f714170a6db0cb)
li x28, 0xf9edc7609ae2fbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8a08ebe8f5924f35
c.mv x28, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x6cf8a5faa6f1e3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x93075a05590e1c3b
c.mv x30, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xa2a26e07777edc27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5d5d91f8888123da
c.mv x19, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x55852f9db9140cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaa7ad06246ebf34d
c.mv x18, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x29, 0xb01950f6a9a43a85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcfe6af09565bc57b
c.mv x29, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0x2cb4be36c879ef6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x534b41c937861097
c.mv x9, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x17, 0x831962793bb56851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfce69d86c44a97ae
c.mv x17, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x18, 0x29f3acabba86687c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x560c535445799782
c.mv x18, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x17, 0xfe7f09256c3f90a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0180f6da93c06f5a
c.mv x17, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x13, 0x1e2491796d34e12e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe1db6e8692cb1ed0
c.mv x13, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x7, 0x5e7c5a0431a2806f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfd402e73320c0688
c.mv x7, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xe60df2bb236d6946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc49cb7ef873d4164
c.mv x14, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x14, 0x5b06df7f2dc3b02a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfa4e75d62791a52b
c.mv x14, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x081519ee832ed9e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf7eae6127cd12617
c.mv x11, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0xd132868863480361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2ecd79789cb7fc9d
c.mv x31, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x15, 0xde1a051f808852bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x21e5fae17f77ad43
c.mv x15, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x17, 0x670ca8719238ad29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x98f3578f6dc752d8
c.mv x17, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x65080d770d77b0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000
c.mv x27, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x5193acb06e09e56a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001
c.mv x11, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x692a3ce6c83e9281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002
c.mv x22, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0x23ad4a07fd1ee877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000000
c.mv x19, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0xe334d903552f5c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001
c.mv x22, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x28656c67433100e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff
c.mv x18, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x93f3ef76c84b4665 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffffffffffe
c.mv x5, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x10, 0xd97a25cee830ac13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff
c.mv x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0x75538e60c1db8817 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe
c.mv x6, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x1, 0xb0cead06db92109a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7
c.mv x1, x21 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xca49dd1b609ff745 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa
c.mv x5, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x461ad2a6405e9511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5555555555555555
c.mv x7, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xee8c344bff45460b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000ffffffff
c.mv x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xdce58515e1243206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000fffffffe
c.mv x23, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x24, 0x5c628de12d4136d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000000
c.mv x24, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0x39a99a3836bd8e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001
c.mv x23, x1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
