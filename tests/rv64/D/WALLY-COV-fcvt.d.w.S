///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fcvt.d.w.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.502376
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
li x5, 0xb8f5a556845a29a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0627b1f1ce49d13e # load immediate value into integer register
fcvt.d.w f5, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0x5648aef25c98aa00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb811615bc2087d02 # load immediate value into integer register
fcvt.d.w f24, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x802431f7aace2011 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x24a44ddd566790b1 # load immediate value into integer register
fcvt.d.w f13, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0x720e826f780358b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7d59ecd5fdb0d3d2 # load immediate value into integer register
fcvt.d.w f20, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0x0779720c44b630ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4f91afb027da33ba # load immediate value into integer register
fcvt.d.w f22, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x25, 0xa694d28947681a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7d49ed5901b67fd2 # load immediate value into integer register
fcvt.d.w f25, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0xa48461fbe3b9f468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x83e33879de8d7834 # load immediate value into integer register
fcvt.d.w f26, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x4, 0x12c188b3c52785f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5a0baf01dfdf297b # load immediate value into integer register
fcvt.d.w f4, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x3d37172ac2e1275e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfc1aa230179ed9ed # load immediate value into integer register
fcvt.d.w f23, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x83b1dc42faeffe84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4567968d6c52ed45 # load immediate value into integer register
fcvt.d.w f25, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x15c49433d13f33fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x92f0253477cf85c7 # load immediate value into integer register
fcvt.d.w f3, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0xcdd750af1a1a9aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa9f527470da89de3 # load immediate value into integer register
fcvt.d.w f25, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0xd2bac3c117a82a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3ac1300d051e07f3 # load immediate value into integer register
fcvt.d.w f13, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x2bdcea634454b085 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7af10fd238a055c8 # load immediate value into integer register
fcvt.d.w f2, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x2, 0xc1694bc15734e76b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5dda3e66cc851e1c # load immediate value into integer register
fcvt.d.w f2, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0xfa81b59c733c8b06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xad8d954c8929a0ec # load immediate value into integer register
fcvt.d.w f22, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x26, 0x57c7901b26a0b3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4b7842bf26cdede7 # load immediate value into integer register
fcvt.d.w f26, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x11, 0x9bb7e3cc621e11e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4f049c283760522e # load immediate value into integer register
fcvt.d.w f11, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0x0379c9cc440e0f7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x770ad5fb8bb5d201 # load immediate value into integer register
fcvt.d.w f4, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x20, 0x154f12d3492d3a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe4cd42c1de2341e9 # load immediate value into integer register
fcvt.d.w f20, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x1f5aa7f6ed63dd5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3eb850456fa53ddd # load immediate value into integer register
fcvt.d.w f2, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0x250a8efb8918b6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf467c2b5b86c40c5 # load immediate value into integer register
fcvt.d.w f23, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x13, 0xc0640d045ff811c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe1e2cb6dffe71579 # load immediate value into integer register
fcvt.d.w f13, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x11, 0xd87e79962d6330c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8e04e99c341dca57 # load immediate value into integer register
fcvt.d.w f11, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xd064d820fb501212 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9b250bfc4008b2e7 # load immediate value into integer register
fcvt.d.w f19, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x10, 0xd95b43e89654efa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0b5b3125352c83b2 # load immediate value into integer register
fcvt.d.w f10, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x13, 0x21ce6c53e9592ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe6913a85670a5861 # load immediate value into integer register
fcvt.d.w f13, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x10, 0xaf25ce787dc4c5df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7d2eddf83a7c674c # load immediate value into integer register
fcvt.d.w f10, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0xa90893f36559c3d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3d350815fd0ace02 # load immediate value into integer register
fcvt.d.w f17, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x15, 0x66bd40f529eb5cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x54b81424210f81cb # load immediate value into integer register
fcvt.d.w f15, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x23, 0xb934b098bf7ed2d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe045f45a5779b024 # load immediate value into integer register
fcvt.d.w f23, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0x378ad2cc187ee149 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x74705d99a9602aa5 # load immediate value into integer register
fcvt.d.w f23, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0xc8726f8ab2bfbffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000000 # load immediate value into integer register
fcvt.d.w f19, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x11c54f44a4095caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # load immediate value into integer register
fcvt.d.w f15, x12
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x9954e634e314f586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000002 # load immediate value into integer register
fcvt.d.w f16, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x4, 0x606c8ca6af1e5dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8000000000000000 # load immediate value into integer register
fcvt.d.w f4, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x6, 0x32912dd4c735c47f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # load immediate value into integer register
fcvt.d.w f6, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0xf978d6b527a4f249 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # load immediate value into integer register
fcvt.d.w f31, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x30, 0x5c1b2b24e53b8c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.d.w f30, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x30, 0x2cef020c5d18bb14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # load immediate value into integer register
fcvt.d.w f30, x29
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xaab0c2fd908e992c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # load immediate value into integer register
fcvt.d.w f3, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x27, 0x8e87054951f3e4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.d.w f27, x17
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x06b395efb3c0ecb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.d.w f8, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0x46cc6dab7981059f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # load immediate value into integer register
fcvt.d.w f9, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xb1cd5607091592c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000ffffffff # load immediate value into integer register
fcvt.d.w f17, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x937c6227c4079c97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000fffffffe # load immediate value into integer register
fcvt.d.w f2, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0xeb35171c9f5d78f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000000 # load immediate value into integer register
fcvt.d.w f24, x1
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x6121fcc54c7af219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000001 # load immediate value into integer register
fcvt.d.w f13, x14
# Testcase cp_fd (Test destination fd = x0)
li x0, 0xcd763c4f2c486fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc888034655d346e9 # load immediate value into integer register
fcvt.d.w f0, x23
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x38acd909375ca48c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2a88f6225b32bc1a # load immediate value into integer register
fcvt.d.w f1, x13
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x49675025970e5322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x52509d79c3f0a8be # load immediate value into integer register
fcvt.d.w f2, x9
# Testcase cp_fd (Test destination fd = x3)
li x3, 0x680b3460f0fd7a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7029b9c8fd1428d2 # load immediate value into integer register
fcvt.d.w f3, x4
# Testcase cp_fd (Test destination fd = x4)
li x4, 0xb4094bd7a14ab2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb82f7ca8325da02b # load immediate value into integer register
fcvt.d.w f4, x30
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x80ec52a12a7c5c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1584314ee7cde7f6 # load immediate value into integer register
fcvt.d.w f5, x6
# Testcase cp_fd (Test destination fd = x6)
li x6, 0xc0f7561bc3ee5e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa0819de198c40ba0 # load immediate value into integer register
fcvt.d.w f6, x5
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x0ad2e6ba9239a138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8f07c982610305c2 # load immediate value into integer register
fcvt.d.w f7, x30
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x406a07b3460ff2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5ce256b7ee613752 # load immediate value into integer register
fcvt.d.w f8, x12
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x0f99a9f1f4ee5996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2f9ce5e37c57a40f # load immediate value into integer register
fcvt.d.w f9, x10
# Testcase cp_fd (Test destination fd = x10)
li x10, 0xea1baff3974c3b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc9511ceca0c25956 # load immediate value into integer register
fcvt.d.w f10, x12
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x8dabd29f64aa4add # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe1abdf0ebd4a0e83 # load immediate value into integer register
fcvt.d.w f11, x13
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xf4685b9409333025 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3739c2bbcc6077c2 # load immediate value into integer register
fcvt.d.w f12, x27
# Testcase cp_fd (Test destination fd = x13)
li x13, 0x672ab505ea066fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x266ce648d508de23 # load immediate value into integer register
fcvt.d.w f13, x18
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x07957d5e5ce1ebc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x876aec3e6d70a216 # load immediate value into integer register
fcvt.d.w f14, x11
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x1fcb4891affa89c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3c1251baa94275ca # load immediate value into integer register
fcvt.d.w f15, x29
# Testcase cp_fd (Test destination fd = x16)
li x16, 0xf9a632a1750b3397 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb2a899203d64d44a # load immediate value into integer register
fcvt.d.w f16, x6
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x0748da86eac91e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x505ae6ddf7541c6e # load immediate value into integer register
fcvt.d.w f17, x17
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xbfdc5444f04d2352 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb314cdc228a5a2c0 # load immediate value into integer register
fcvt.d.w f18, x20
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xf1c5e5601d1e63ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0b4056a4171d07ff # load immediate value into integer register
fcvt.d.w f19, x22
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x0206bde50e2ae0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdff64484a2c6a396 # load immediate value into integer register
fcvt.d.w f20, x6
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xc9da9202fd20b81c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb4b9881f08ad29bb # load immediate value into integer register
fcvt.d.w f21, x6
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xeaa80a1e5b9a7ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3a89303ddcf58ae2 # load immediate value into integer register
fcvt.d.w f22, x31
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x7d9b734ec9d8c5ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9090614de44a6752 # load immediate value into integer register
fcvt.d.w f23, x29
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x3bebeda68408af06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3dec06b9ba2f088e # load immediate value into integer register
fcvt.d.w f24, x8
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xd8bee3da9acb546d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x354548822e82d5ef # load immediate value into integer register
fcvt.d.w f25, x20
# Testcase cp_fd (Test destination fd = x26)
li x26, 0xfcf5e0da855510fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb5d70f23127d5b9e # load immediate value into integer register
fcvt.d.w f26, x1
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xfe22579ae637bb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x924e3500f36a803f # load immediate value into integer register
fcvt.d.w f27, x25
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x2ae18888a7411a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x540a38efab87059a # load immediate value into integer register
fcvt.d.w f28, x13
# Testcase cp_fd (Test destination fd = x29)
li x29, 0xdd4a82cc771c2286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0fdaa285f6713b90 # load immediate value into integer register
fcvt.d.w f29, x31
# Testcase cp_fd (Test destination fd = x30)
li x30, 0xd2e9688f598338d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x29f064ece07ba937 # load immediate value into integer register
fcvt.d.w f30, x15
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x18f7f0945a246fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8da7fb4f3eda77d4 # load immediate value into integer register
fcvt.d.w f31, x14
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
