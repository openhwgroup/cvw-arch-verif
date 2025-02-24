///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.h.l.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.038690
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
li x20, 0xd8cd795278e383d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x776f689c161baf8d # load immediate value into integer register
fcvt.h.l f20, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x29, 0xed6dadb177ab9365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x550d7e9522f297b4 # load immediate value into integer register
fcvt.h.l f29, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x15, 0x96aaaa98c2cb696e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xdf082ad24554b31b # load immediate value into integer register
fcvt.h.l f15, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0x5abc874c0b8c8907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x210c2e5adda2c25f # load immediate value into integer register
fcvt.h.l f30, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x28, 0xba4657b254b7d04b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5e4300dbe83fdde3 # load immediate value into integer register
fcvt.h.l f28, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x7, 0xc9f105d504028088 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5d7deb507396ea3a # load immediate value into integer register
fcvt.h.l f7, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0xe455dd8b1fb37473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd741ce8f3b497210 # load immediate value into integer register
fcvt.h.l f22, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x24, 0xc4ad4a170bf75094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1bca87c8a01c1ce3 # load immediate value into integer register
fcvt.h.l f24, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0x0f918b0262c63586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa01bddb4ac3dfc74 # load immediate value into integer register
fcvt.h.l f6, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x66dc54032681c161 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x02af1e6d058714b2 # load immediate value into integer register
fcvt.h.l f16, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x57201ad04b7776ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd79ecde563c395d6 # load immediate value into integer register
fcvt.h.l f14, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x7376046b87c952e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf8c12bcacbd8e2c1 # load immediate value into integer register
fcvt.h.l f22, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x907d2196a4f5e069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3592876075fd3fca # load immediate value into integer register
fcvt.h.l f5, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0x1f331ec4625c3242 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x012f01e4a50c2aed # load immediate value into integer register
fcvt.h.l f18, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xf73f66ee2b88d64d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x55234b72f76071b1 # load immediate value into integer register
fcvt.h.l f9, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x692f57d653c9dda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x64980781a97446a7 # load immediate value into integer register
fcvt.h.l f11, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x27, 0x55a57d89f65a5241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7d3ef7ee36f55c9a # load immediate value into integer register
fcvt.h.l f27, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x23, 0x3ef125aba4392714 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7c229d71f1f8e962 # load immediate value into integer register
fcvt.h.l f23, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0x70725116fb64e10d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xb04e13d902c2ea43 # load immediate value into integer register
fcvt.h.l f23, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x30, 0x0e427b1fc81c1271 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7740b5466c9ce5e1 # load immediate value into integer register
fcvt.h.l f30, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x5d2956aa040ac151 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6aa4ada1fb53867a # load immediate value into integer register
fcvt.h.l f1, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x960c98cfdf8cf834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0a4ea474d2cc6007 # load immediate value into integer register
fcvt.h.l f5, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0x7457f2201bc38648 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc0cc01f1086e0c1b # load immediate value into integer register
fcvt.h.l f11, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x980a4f3621193d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc39ba7e0fb543206 # load immediate value into integer register
fcvt.h.l f9, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x28, 0xca3f2568a5419ede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x459a50f2d5f13f62 # load immediate value into integer register
fcvt.h.l f28, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x20, 0xedd382e1b4496c4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6751953f409a399e # load immediate value into integer register
fcvt.h.l f20, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x22, 0x6a0c1ab598bea5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6b580d3bbdc55ace # load immediate value into integer register
fcvt.h.l f22, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0x823f48aa8818ef40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5252e7a459ce6d56 # load immediate value into integer register
fcvt.h.l f2, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x2, 0x5244e751c203ff8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd87ddef116d653cc # load immediate value into integer register
fcvt.h.l f2, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x16, 0x9e67a7b1f701ffee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x08caefa817d8fce9 # load immediate value into integer register
fcvt.h.l f16, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x24, 0x8942a7378188247c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc9bb8ca22f73af3a # load immediate value into integer register
fcvt.h.l f24, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x21, 0xb10af7c82d023181 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9f776f985caa339d # load immediate value into integer register
fcvt.h.l f21, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x28, 0xc48bd6d4c8ad2d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # load immediate value into integer register
fcvt.h.l f28, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x1263fbce27a34e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # load immediate value into integer register
fcvt.h.l f21, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x0924213307f62bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000002 # load immediate value into integer register
fcvt.h.l f31, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x15, 0x5418ae85a2a4c5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000000 # load immediate value into integer register
fcvt.h.l f15, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x0c86e5bae6191853 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # load immediate value into integer register
fcvt.h.l f17, x13
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x12fc57da59e0fe81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.l f25, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x3, 0xab339fdf2901fab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.l f3, x8
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x17, 0xa010564ec1c29bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.l f17, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0x7237fd726c53ee5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.l f14, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x17, 0x342054698e1fbd29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.h.l f17, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x97573b07a5717e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.l f11, x27
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x520aee06dc29bc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5555555555555555 # load immediate value into integer register
fcvt.h.l f13, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xb67f27ea8e0963a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.l f9, x4
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x47180f6e53fce9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.l f8, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0xb92fb27f0349da3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000100000000 # load immediate value into integer register
fcvt.h.l f6, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0xf1fbe7e2efe7eb46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000001 # load immediate value into integer register
fcvt.h.l f10, x28
# Testcase cp_frm
li x23, 0xd54fa2a90f834ec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffc8aec4d5d61db # load immediate value into integer register
fcvt.h.l f23, x4, dyn # perform operation
fcvt.h.l f23, x4, rdn # perform operation
fcvt.h.l f23, x4, rmm # perform operation
fcvt.h.l f23, x4, rne # perform operation
fcvt.h.l f23, x4, rtz # perform operation
fcvt.h.l f23, x4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.l f23, x4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.l f23, x4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.l f23, x4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.l f23, x4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.l f23, x4 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xc9a1334fa7b82e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa90fd96e4dfe1769 # load immediate value into integer register
fcvt.h.l f0, x29
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x1c64822fe857b7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x21ce480e1b0d3fdb # load immediate value into integer register
fcvt.h.l f1, x6
# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb43c92e116f54522 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8d1e15c2e095a680 # load immediate value into integer register
fcvt.h.l f2, x31
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x4686e8033eb68cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6e505083a7f8d487 # load immediate value into integer register
fcvt.h.l f3, x28
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x7fe507f71a862a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf0fee6830ec49d7e # load immediate value into integer register
fcvt.h.l f4, x5
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xa788f20d996998bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x14d5a1879ffd971f # load immediate value into integer register
fcvt.h.l f5, x18
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xedc2c792b0541d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf03992170150be45 # load immediate value into integer register
fcvt.h.l f6, x21
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x92280d5dd04e5ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaceda9ff6c5d9573 # load immediate value into integer register
fcvt.h.l f7, x5
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xda40b58be6db148a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x18c16645eacc7140 # load immediate value into integer register
fcvt.h.l f8, x30
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x73aef667b5e1058f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xef73291a961a9478 # load immediate value into integer register
fcvt.h.l f9, x20
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xefb901da6d2131b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8cb65b16f67031f1 # load immediate value into integer register
fcvt.h.l f10, x31
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x2bbf86c1812c5e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xad6c557578c3da4c # load immediate value into integer register
fcvt.h.l f11, x24
# Testcase cp_fd (Test destination fd = x12)
li x12, 0x4dbd67f60ecd3239 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb4e6bd09ec6c56eb # load immediate value into integer register
fcvt.h.l f12, x15
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc9a3135ea718e6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x8ed3b996679f2935 # load immediate value into integer register
fcvt.h.l f13, x19
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x930882e9e70295ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6c59c5c9b73fd696 # load immediate value into integer register
fcvt.h.l f14, x12
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xc9be061c48f0030c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcd06ac12abfb918c # load immediate value into integer register
fcvt.h.l f15, x18
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2d41beea8934fa31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd4351884667c56a8 # load immediate value into integer register
fcvt.h.l f16, x11
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xc304ec446c2cc5d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1e3ba38c0122842d # load immediate value into integer register
fcvt.h.l f17, x18
# Testcase cp_fd (Test destination fd = x18)
li x18, 0x9383dfffdab61d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x12cc20c09e45312f # load immediate value into integer register
fcvt.h.l f18, x22
# Testcase cp_fd (Test destination fd = x19)
li x19, 0x9bcd561520b521de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2634dc1aa93e30fd # load immediate value into integer register
fcvt.h.l f19, x2
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xfecca63615e577ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdd6603ff0788520f # load immediate value into integer register
fcvt.h.l f20, x7
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x4e2185d73dd26779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa7bdc8d4d1a61f95 # load immediate value into integer register
fcvt.h.l f21, x2
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x7d088f20985efb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x17f23bc4417911ee # load immediate value into integer register
fcvt.h.l f22, x13
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xac73a7d6cdc33ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe42159121c3e42a4 # load immediate value into integer register
fcvt.h.l f23, x15
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x2439ed9785894152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x23bc41643fb8dd86 # load immediate value into integer register
fcvt.h.l f24, x1
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x5e6158b77d448fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf0fbcfb20ca69a32 # load immediate value into integer register
fcvt.h.l f25, x28
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xb54032ded67f660c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x717b90cb7bce6103 # load immediate value into integer register
fcvt.h.l f26, x30
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd581fe5558ff1bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe953d6943899ce2c # load immediate value into integer register
fcvt.h.l f27, x9
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x525c5fa069e0a6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x9ac9557da87625a7 # load immediate value into integer register
fcvt.h.l f28, x20
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xcfc65c28b34111fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x90c871468786776c # load immediate value into integer register
fcvt.h.l f29, x3
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x6fb5abdfaf944fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3b4dfdf0b3b18469 # load immediate value into integer register
fcvt.h.l f30, x20
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe7de775ce70ea7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0d597424af87fbe0 # load immediate value into integer register
fcvt.h.l f31, x30
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
