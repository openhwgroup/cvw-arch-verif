///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fcvt.s.lu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.710920
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
li x28, 0x20a2f287c7524768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbb133f8cb351c2c4 # load immediate value into integer register
fcvt.s.lu f28, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x3, 0xfcc776a1a9228826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb8d156ef8bce0568 # load immediate value into integer register
fcvt.s.lu f3, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x23, 0x5fbaf06c67786b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3ccc1e3ad6681720 # load immediate value into integer register
fcvt.s.lu f23, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0x33c3d39f67e0b53e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x59a0a60f4186889e # load immediate value into integer register
fcvt.s.lu f10, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x18, 0x535eceee9989a638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa752f843a5eed67c # load immediate value into integer register
fcvt.s.lu f18, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x9f23174f562cf872 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x63930e59b6f881bc # load immediate value into integer register
fcvt.s.lu f14, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x23, 0x285a9dc6a17e0f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0c841a3e36fbeb15 # load immediate value into integer register
fcvt.s.lu f23, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x23, 0x1bc36add5771a579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x439b6f1f6f5aa09b # load immediate value into integer register
fcvt.s.lu f23, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0xd14675cfce72292f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x87f9f719b8776a4f # load immediate value into integer register
fcvt.s.lu f6, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x30a6efb6c31e19a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8fa83ad9c3d8d7ef # load immediate value into integer register
fcvt.s.lu f19, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0x2103958343bc6a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xebfa7aa681219bc3 # load immediate value into integer register
fcvt.s.lu f16, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0x8e7aa260b56f2eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xbf1204e62561839e # load immediate value into integer register
fcvt.s.lu f6, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x66b288a7556ca1f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbf1f0ad45a5b6dd8 # load immediate value into integer register
fcvt.s.lu f9, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x20, 0xa552d0313acad2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc3e5720b3eb2cf0a # load immediate value into integer register
fcvt.s.lu f20, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0x11395b1dc8d088b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0228b7c91a8e66f8 # load immediate value into integer register
fcvt.s.lu f1, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x972a61dd624783c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x188e8cf3ad7b4e56 # load immediate value into integer register
fcvt.s.lu f16, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x4, 0xcb01a5d9f841feb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9136d3d7e7a8b507 # load immediate value into integer register
fcvt.s.lu f4, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0x183541a70181dde1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x47ac8a936bee0b2a # load immediate value into integer register
fcvt.s.lu f10, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0xd893664be4e39160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8caceb28de8c0c10 # load immediate value into integer register
fcvt.s.lu f20, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x6, 0x6b919d171c9f0f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xcb4a4c893dbdbd69 # load immediate value into integer register
fcvt.s.lu f6, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0xab726322333eeb0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x877b61f6c2dd2108 # load immediate value into integer register
fcvt.s.lu f14, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0xd7343a75449d0a37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xacc595970f4694c1 # load immediate value into integer register
fcvt.s.lu f23, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x21, 0x472a596b9550a8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xecaa8e1a773d04d3 # load immediate value into integer register
fcvt.s.lu f21, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0x40a086fe3216376d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdbfc26d696c0eb79 # load immediate value into integer register
fcvt.s.lu f13, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0xddb904c01102a13d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xcb69a67262387845 # load immediate value into integer register
fcvt.s.lu f23, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x9, 0xe76506ead9487ad0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb8a81f4757a6c966 # load immediate value into integer register
fcvt.s.lu f9, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x28, 0x43a3ff71ef99f737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xca93da8d02dc94d5 # load immediate value into integer register
fcvt.s.lu f28, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0x96bf722d1d240e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x54beb551db24fc32 # load immediate value into integer register
fcvt.s.lu f19, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0x357ce893715e8b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x743b47c803a72187 # load immediate value into integer register
fcvt.s.lu f10, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x12, 0xa17aa7faf67be4be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x15ecd02f23ff7435 # load immediate value into integer register
fcvt.s.lu f12, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x26, 0x5dd3ee244b8a8066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xec061c2acc86a735 # load immediate value into integer register
fcvt.s.lu f26, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x21, 0x99f3cde1de919714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x63f4d6557f2cbd39 # load immediate value into integer register
fcvt.s.lu f21, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x6a6149f0c1da2fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # load immediate value into integer register
fcvt.s.lu f12, x10
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0xd2e0e04bef65b9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000001 # load immediate value into integer register
fcvt.s.lu f14, x2
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x54766debf8084b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # load immediate value into integer register
fcvt.s.lu f20, x21
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0x717d8c252c29573e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # load immediate value into integer register
fcvt.s.lu f15, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x60bbbe25f3cd648e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # load immediate value into integer register
fcvt.s.lu f12, x21
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x8521c75e2dcd5677 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffffffffffff # load immediate value into integer register
fcvt.s.lu f2, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0xbcbdb25130c01a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.s.lu f14, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0x3fd799ed1ee7db55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # load immediate value into integer register
fcvt.s.lu f25, x29
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xa5a68c1def2abea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # load immediate value into integer register
fcvt.s.lu f9, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x20, 0x05570d25c2f60ee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.s.lu f20, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0x497260b8128725c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.s.lu f23, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0xba84d2c0114ebe45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5555555555555555 # load immediate value into integer register
fcvt.s.lu f9, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0x773b55af6d74519f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # load immediate value into integer register
fcvt.s.lu f26, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x23172003686c923e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # load immediate value into integer register
fcvt.s.lu f20, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0xdc8d8f805b6548df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # load immediate value into integer register
fcvt.s.lu f28, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0xb32e2d71033c2fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # load immediate value into integer register
fcvt.s.lu f9, x30
# Testcase cp_frm
li x8, 0x121acdbeed6c57c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe5cd01ec42bcb166 # load immediate value into integer register
fcvt.s.lu f8, x31, dyn # perform operation
fcvt.s.lu f8, x31, rdn # perform operation
fcvt.s.lu f8, x31, rmm # perform operation
fcvt.s.lu f8, x31, rne # perform operation
fcvt.s.lu f8, x31, rtz # perform operation
fcvt.s.lu f8, x31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.s.lu f8, x31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.s.lu f8, x31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.s.lu f8, x31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.s.lu f8, x31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.s.lu f8, x31 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xce7591540e5b7bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xdd78a67992d604e5 # load immediate value into integer register
fcvt.s.lu f0, x23
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x4b4fc974c229eb19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb211ee8b8a391e47 # load immediate value into integer register
fcvt.s.lu f1, x26
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xafee023f1344005a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xee6153db6e76b6db # load immediate value into integer register
fcvt.s.lu f2, x7
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x9ece39b296dff394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa65ce02256c24758 # load immediate value into integer register
fcvt.s.lu f3, x5
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x0fdf918fb2b5790a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0f0270b226e8f936 # load immediate value into integer register
fcvt.s.lu f4, x11
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x0675388bfe0de056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x590054d50e0682a4 # load immediate value into integer register
fcvt.s.lu f5, x11
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xf70c03d99293dc56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5434201b38c83fa1 # load immediate value into integer register
fcvt.s.lu f6, x8
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xe2a477deada5390a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x85cd92a4c51ee034 # load immediate value into integer register
fcvt.s.lu f7, x2
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xa12ec7f829ce1995 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8e7d7bef6683a449 # load immediate value into integer register
fcvt.s.lu f8, x3
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xe019feb30f662cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf10f169aca2a7251 # load immediate value into integer register
fcvt.s.lu f9, x17
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb41ee38af5a45284 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xee62ae5c943c2e16 # load immediate value into integer register
fcvt.s.lu f10, x13
# Testcase cp_fd (Test destination fd = x11)
li x11, 0xc1063596f9b3a316 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdb7bfb245c475ac3 # load immediate value into integer register
fcvt.s.lu f11, x14
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xf4a5d6529ca9b8a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x085b09fd8f5c87f2 # load immediate value into integer register
fcvt.s.lu f12, x21
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x7b1a7d41581dbb8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6a727dd87eaf8eb6 # load immediate value into integer register
fcvt.s.lu f13, x30
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x825294fa0b02e396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xee4024d7e7fc111b # load immediate value into integer register
fcvt.s.lu f14, x30
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xe57790360e7d22af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb39fee88e500ff1d # load immediate value into integer register
fcvt.s.lu f15, x19
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x3ece4ffc39360f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcb5e8326c3ba7e98 # load immediate value into integer register
fcvt.s.lu f16, x10
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x93b6be8ff047a459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc9ec87643f2261b7 # load immediate value into integer register
fcvt.s.lu f17, x2
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x2eed96657fb30cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x010d3d794a27b720 # load immediate value into integer register
fcvt.s.lu f18, x20
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xd4f6ee66410a2f97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xedd596d24126adad # load immediate value into integer register
fcvt.s.lu f19, x4
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x9687fa6339fd3444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf36685b441ff2621 # load immediate value into integer register
fcvt.s.lu f20, x5
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x84e795c929fe5703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe1654119289d8611 # load immediate value into integer register
fcvt.s.lu f21, x1
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x825c9ae71ea1786d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9d3c4eb90a1520c9 # load immediate value into integer register
fcvt.s.lu f22, x23
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xfd21cbfa267a5feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x226e46984a26bf9d # load immediate value into integer register
fcvt.s.lu f23, x1
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x0b778a537fe37b36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xda7849240c263ad5 # load immediate value into integer register
fcvt.s.lu f24, x31
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xfcd583114013181d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x678c6878d242cff6 # load immediate value into integer register
fcvt.s.lu f25, x7
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x0cd393e03377dde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdd4d2888aded2453 # load immediate value into integer register
fcvt.s.lu f26, x6
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x8cccc51ee1735930 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6002b92ad9ff2d24 # load immediate value into integer register
fcvt.s.lu f27, x27
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x581923a4b97c8c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x611da2f91eecce8a # load immediate value into integer register
fcvt.s.lu f28, x23
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x201fdfbeef1a8a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaeb1d202d26a9455 # load immediate value into integer register
fcvt.s.lu f29, x5
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xd9d8b710b9499cad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf86833dd22048c00 # load immediate value into integer register
fcvt.s.lu f30, x13
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xcf7b29300659cbda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b43bd8a7aaf6794 # load immediate value into integer register
fcvt.s.lu f31, x13
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
