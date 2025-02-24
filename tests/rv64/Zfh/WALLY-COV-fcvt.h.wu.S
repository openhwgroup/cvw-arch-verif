///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.h.wu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.042673
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
li x5, 0xc291a4cb326a5710 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1a5a502d30c34395 # load immediate value into integer register
fcvt.h.wu f5, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x14, 0x1477208a904354c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbb18467695584611 # load immediate value into integer register
fcvt.h.wu f14, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x8, 0x915f10d6b3a4da90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb40a0b3e751be2e0 # load immediate value into integer register
fcvt.h.wu f8, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x13, 0x30df782f07e68cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4e07f1fbd8b694e6 # load immediate value into integer register
fcvt.h.wu f13, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x3, 0xeff3d3bd34dc5bfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5217c0847ae894e4 # load immediate value into integer register
fcvt.h.wu f3, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x31, 0x12ab679065f0ed93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8b587f0e1587863a # load immediate value into integer register
fcvt.h.wu f31, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x15, 0xcd7df82d01d067de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x25ee62dceabf6fbb # load immediate value into integer register
fcvt.h.wu f15, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x17, 0xf81b35e8060bf98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4c608f64a76ff9b7 # load immediate value into integer register
fcvt.h.wu f17, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x41f85e67187eaf5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1e60adb36750e595 # load immediate value into integer register
fcvt.h.wu f10, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0xa677c3af0e071fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2505612d6810f71c # load immediate value into integer register
fcvt.h.wu f3, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0x8e305a908858f7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x73cc4b27e80c9eeb # load immediate value into integer register
fcvt.h.wu f7, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x2e02607a7f9aaa9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x97fbfb1acae0cfe8 # load immediate value into integer register
fcvt.h.wu f3, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0xc9c4587cabff661e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5539285885fffe37 # load immediate value into integer register
fcvt.h.wu f26, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x0a354862ec2028e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xae7211c8d6d329c7 # load immediate value into integer register
fcvt.h.wu f31, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xcf009e2a853076e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xea4758b88bc6634a # load immediate value into integer register
fcvt.h.wu f13, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x4b035e18bcacde44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf42439cd55363b3e # load immediate value into integer register
fcvt.h.wu f27, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0x0312b82d38ba924c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x29775f4446f500e4 # load immediate value into integer register
fcvt.h.wu f7, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0x9a49d14737ed029e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf7ddabf3a831717a # load immediate value into integer register
fcvt.h.wu f27, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0x8d28c503c9953f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xd00b61f865bfe9f6 # load immediate value into integer register
fcvt.h.wu f10, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0xbe4760b9677e719a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6c696042fe056f7c # load immediate value into integer register
fcvt.h.wu f7, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x9, 0x1e12420c87bb6ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8f666f7c269dcc8c # load immediate value into integer register
fcvt.h.wu f9, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0x200e00a03a3d61e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1c3b9a5806fc763a # load immediate value into integer register
fcvt.h.wu f23, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0x855f853eff10270a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xef1ba60d5df518e7 # load immediate value into integer register
fcvt.h.wu f18, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x2, 0x7e92dc3e3675e9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5a500b5f8633393f # load immediate value into integer register
fcvt.h.wu f2, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x3, 0x7a9fccaa4c5debe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdd8a30227103879f # load immediate value into integer register
fcvt.h.wu f3, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x28, 0xaf6b656a99f70f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf696673abca3855a # load immediate value into integer register
fcvt.h.wu f28, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0xf0e106075312807b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x92428e180e077117 # load immediate value into integer register
fcvt.h.wu f14, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x25, 0xe5b3ac4e25275ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe69b79efa480e2e7 # load immediate value into integer register
fcvt.h.wu f25, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0xe99ac089f7b457af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x57eae564fe40057b # load immediate value into integer register
fcvt.h.wu f31, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x25, 0x5c0ecb1ceb30cc1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x12c4913f889bca72 # load immediate value into integer register
fcvt.h.wu f25, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x5fdcacca3d674f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc7034338e03fb86e # load immediate value into integer register
fcvt.h.wu f16, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0x1cdc40c182b8f6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0f05a87e397ceae4 # load immediate value into integer register
fcvt.h.wu f23, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x4, 0xcece285e0ed5cca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # load immediate value into integer register
fcvt.h.wu f4, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0xe92e9e617b326ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000001 # load immediate value into integer register
fcvt.h.wu f22, x24
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x247e4753b52dc319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000002 # load immediate value into integer register
fcvt.h.wu f26, x25
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0xc4aa9593ed6050ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # load immediate value into integer register
fcvt.h.wu f31, x6
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x376cbf275b1dec04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000001 # load immediate value into integer register
fcvt.h.wu f17, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0xc87dfc445c6aaf40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffffffffffff # load immediate value into integer register
fcvt.h.wu f10, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x4, 0xf5b017474b803269 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ffffffffffffffe # load immediate value into integer register
fcvt.h.wu f4, x30
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xd2e4eb678dbfb706 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # load immediate value into integer register
fcvt.h.wu f24, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0x48bc95e8109b72fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfffffffffffffffe # load immediate value into integer register
fcvt.h.wu f6, x7
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x6, 0x89705f32b64cbfd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5bbc887763ae86f7 # load immediate value into integer register
fcvt.h.wu f6, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xfaa7f7e2b6fd6d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fcvt.h.wu f17, x15
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0xd26a696ab670a286 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5555555555555555 # load immediate value into integer register
fcvt.h.wu f2, x14
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xc772d95ee55d98fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000ffffffff # load immediate value into integer register
fcvt.h.wu f9, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x8312e314b78c7322 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # load immediate value into integer register
fcvt.h.wu f14, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x4607368fbe68703a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # load immediate value into integer register
fcvt.h.wu f27, x18
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x30, 0x2e5ad6948968c5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000100000001 # load immediate value into integer register
fcvt.h.wu f30, x27
# Testcase cp_frm
li x25, 0x2c368a9470323af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x300e4edba1612af4 # load immediate value into integer register
fcvt.h.wu f25, x20, dyn # perform operation
fcvt.h.wu f25, x20, rdn # perform operation
fcvt.h.wu f25, x20, rmm # perform operation
fcvt.h.wu f25, x20, rne # perform operation
fcvt.h.wu f25, x20, rtz # perform operation
fcvt.h.wu f25, x20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.h.wu f25, x20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.h.wu f25, x20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.h.wu f25, x20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.h.wu f25, x20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.h.wu f25, x20 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x5a9bd751cbe54fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x10b8b580c63c1851 # load immediate value into integer register
fcvt.h.wu f0, x1
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x3388268ef37078fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0f64dcd52b618a97 # load immediate value into integer register
fcvt.h.wu f1, x1
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2828b17a9dcc1136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x47e202c337038aa2 # load immediate value into integer register
fcvt.h.wu f2, x17
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xc95530c5e55bb7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x887f00f6fd3315c0 # load immediate value into integer register
fcvt.h.wu f3, x4
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x5e249a2c03eb99c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xdc948efc62d9d573 # load immediate value into integer register
fcvt.h.wu f4, x26
# Testcase cp_fd (Test destination fd = x5)
li x5, 0xd68d44970c531b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa082e6b6a51c143d # load immediate value into integer register
fcvt.h.wu f5, x19
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x70541477fe4629e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5cec1a59ffb8030c # load immediate value into integer register
fcvt.h.wu f6, x2
# Testcase cp_fd (Test destination fd = x7)
li x7, 0x6f5d64ef665da506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcfb5cf72f50b10cf # load immediate value into integer register
fcvt.h.wu f7, x22
# Testcase cp_fd (Test destination fd = x8)
li x8, 0xd8de744733917acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6ae51881b77db152 # load immediate value into integer register
fcvt.h.wu f8, x20
# Testcase cp_fd (Test destination fd = x9)
li x9, 0x9f2dbb358fd166e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd21314e9e85127a4 # load immediate value into integer register
fcvt.h.wu f9, x25
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x7cd57799a0f4422c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x94b24ec3a7b93d0e # load immediate value into integer register
fcvt.h.wu f10, x19
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x0536e5c8dfca163e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x548ba9926072b6d7 # load immediate value into integer register
fcvt.h.wu f11, x14
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xdd37e8144bbe982e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0a133084037aef79 # load immediate value into integer register
fcvt.h.wu f12, x31
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xa888b19188f07e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc0a2f82ac98abc06 # load immediate value into integer register
fcvt.h.wu f13, x3
# Testcase cp_fd (Test destination fd = x14)
li x14, 0xdbaadd9efe55bbc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x1aab49a8c0dca0eb # load immediate value into integer register
fcvt.h.wu f14, x7
# Testcase cp_fd (Test destination fd = x15)
li x15, 0xb52e0c19b6d03761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x79c91a6066b3648b # load immediate value into integer register
fcvt.h.wu f15, x28
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x3705c5fcf68ce14f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x3ea58c54d2e735be # load immediate value into integer register
fcvt.h.wu f16, x3
# Testcase cp_fd (Test destination fd = x17)
li x17, 0x481ed826ae3a99cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x10a50c0ffdc9b559 # load immediate value into integer register
fcvt.h.wu f17, x9
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xdf7303c2db262f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x05fca8184ee01801 # load immediate value into integer register
fcvt.h.wu f18, x26
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xbc01a55e42203fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3bde22fe60a695d # load immediate value into integer register
fcvt.h.wu f19, x8
# Testcase cp_fd (Test destination fd = x20)
li x20, 0x7fe4f8f3bbedb5db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1161e6cbf0549794 # load immediate value into integer register
fcvt.h.wu f20, x10
# Testcase cp_fd (Test destination fd = x21)
li x21, 0xd4d6abc8bc615cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd674cffaa998d154 # load immediate value into integer register
fcvt.h.wu f21, x25
# Testcase cp_fd (Test destination fd = x22)
li x22, 0xbb08738b10ebd154 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd1b21df450ceab60 # load immediate value into integer register
fcvt.h.wu f22, x9
# Testcase cp_fd (Test destination fd = x23)
li x23, 0xbe72afb1255e1f29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x51f0e6a9cd3b4752 # load immediate value into integer register
fcvt.h.wu f23, x23
# Testcase cp_fd (Test destination fd = x24)
li x24, 0xd2273ddbd84bc48e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x936b72164b794c1c # load immediate value into integer register
fcvt.h.wu f24, x4
# Testcase cp_fd (Test destination fd = x25)
li x25, 0x80bccf92b547e4d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x72bbea753f9055c4 # load immediate value into integer register
fcvt.h.wu f25, x16
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x7f7aa526c1b025ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa6ea498a018ddacf # load immediate value into integer register
fcvt.h.wu f26, x16
# Testcase cp_fd (Test destination fd = x27)
li x27, 0x8ea92e4194a55634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x93a8478478383f28 # load immediate value into integer register
fcvt.h.wu f27, x24
# Testcase cp_fd (Test destination fd = x28)
li x28, 0xa5a01d8e63d3a53a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf8f09b5e06302a57 # load immediate value into integer register
fcvt.h.wu f28, x12
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x06ceab4b2b0da560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe00c53a4bebb67ca # load immediate value into integer register
fcvt.h.wu f29, x26
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x9323f82ac2a598e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd57c9fec076f29e6 # load immediate value into integer register
fcvt.h.wu f30, x30
# Testcase cp_fd (Test destination fd = x31)
li x31, 0x212e423c973103c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x81b083151110e40d # load immediate value into integer register
fcvt.h.wu f31, x14
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
