///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fmv.s.x.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.802460
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
li x13, 0x97a3b0f36cc92211 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x03f1362ea9ec716f # load immediate value into integer register
fmv.s.x f13, x0
# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0x2ecd9a57348d306a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf5808ab17c38612e # load immediate value into integer register
fmv.s.x f24, x1
# Testcase cp_rs1 (Test source rs1 = x2)
li x24, 0xc72ea6f61ebcab69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x11a6228f6b029a51 # load immediate value into integer register
fmv.s.x f24, x2
# Testcase cp_rs1 (Test source rs1 = x3)
li x31, 0x1f1acb7d2f224dd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfcd287e7d3f1b292 # load immediate value into integer register
fmv.s.x f31, x3
# Testcase cp_rs1 (Test source rs1 = x4)
li x24, 0x5249f9cc8a5df947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xad96d92a76c583c8 # load immediate value into integer register
fmv.s.x f24, x4
# Testcase cp_rs1 (Test source rs1 = x5)
li x28, 0x58d3c18d707c01a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x59aab8e01fd157de # load immediate value into integer register
fmv.s.x f28, x5
# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0x901bd95df4ab91b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x875b272ffa4c89ad # load immediate value into integer register
fmv.s.x f11, x6
# Testcase cp_rs1 (Test source rs1 = x7)
li x22, 0xae12a18111980117 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd0bc5a93eacc3e63 # load immediate value into integer register
fmv.s.x f22, x7
# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x2253a5aea69c3b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe86749e87b77ad55 # load immediate value into integer register
fmv.s.x f13, x8
# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0x60fc6aa4ee0c9377 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8303172536b6103b # load immediate value into integer register
fmv.s.x f30, x9
# Testcase cp_rs1 (Test source rs1 = x10)
li x25, 0x3ed4312f0cee4f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7a599ca08f34a9ed # load immediate value into integer register
fmv.s.x f25, x10
# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xe2118f179b3d2f46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2358633a9b2333b7 # load immediate value into integer register
fmv.s.x f16, x11
# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0x8af3db65c06b6717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1cd8beca22e9cf13 # load immediate value into integer register
fmv.s.x f3, x12
# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x38431759d950bc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x26b2e624f4d30090 # load immediate value into integer register
fmv.s.x f7, x13
# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0xf0e72c9e903a6ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0d97d5426d96f7d2 # load immediate value into integer register
fmv.s.x f12, x14
# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x468ce288ec3c5ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8124a8bd4c1e655b # load immediate value into integer register
fmv.s.x f5, x15
# Testcase cp_rs1 (Test source rs1 = x16)
li x26, 0x781e8241de36771e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x66094af326a55c87 # load immediate value into integer register
fmv.s.x f26, x16
# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0x958c9feea4c6dec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7e55ad28056e2f2c # load immediate value into integer register
fmv.s.x f18, x17
# Testcase cp_rs1 (Test source rs1 = x18)
li x3, 0xa309b98c3a65ce8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc0bda69e6b29c3f5 # load immediate value into integer register
fmv.s.x f3, x18
# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0xed8abc10c09b97e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfe5acc3b445a37a0 # load immediate value into integer register
fmv.s.x f15, x19
# Testcase cp_rs1 (Test source rs1 = x20)
li x11, 0x372a6d7b3adf8719 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd7c3dc1fda9e7bf2 # load immediate value into integer register
fmv.s.x f11, x20
# Testcase cp_rs1 (Test source rs1 = x21)
li x13, 0x07daf8c9bc7e749d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe633fc34c823504a # load immediate value into integer register
fmv.s.x f13, x21
# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x408ebbc3300d0ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd6a8f64bce659216 # load immediate value into integer register
fmv.s.x f9, x22
# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0xbe32ef1f9028f54e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x82e822ec8d49f0c0 # load immediate value into integer register
fmv.s.x f30, x23
# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0x606d34137fa1a3dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x38ff7920c1004fe5 # load immediate value into integer register
fmv.s.x f6, x24
# Testcase cp_rs1 (Test source rs1 = x25)
li x1, 0xfd8e56c269356d47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xe4da95c9267e83db # load immediate value into integer register
fmv.s.x f1, x25
# Testcase cp_rs1 (Test source rs1 = x26)
li x15, 0x26ceba259db6b260 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa0fba22acd5222ee # load immediate value into integer register
fmv.s.x f15, x26
# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x4c637362d471c2c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x349bdcfbe3d196d1 # load immediate value into integer register
fmv.s.x f31, x27
# Testcase cp_rs1 (Test source rs1 = x28)
li x5, 0xf71c134dffbec618 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa16eee5e279a111c # load immediate value into integer register
fmv.s.x f5, x28
# Testcase cp_rs1 (Test source rs1 = x29)
li x10, 0x0f6700c811298445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x9ab59ec2f628b143 # load immediate value into integer register
fmv.s.x f10, x29
# Testcase cp_rs1 (Test source rs1 = x30)
li x21, 0x3593d34cb35d8dcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xce8aeb21b97d115e # load immediate value into integer register
fmv.s.x f21, x30
# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0xada0c8d0b008f23f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xda47777ddc914df3 # load immediate value into integer register
fmv.s.x f14, x31
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x8728c87d5a606ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # load immediate value into integer register
fmv.s.x f30, x19
# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0xc781ca55c021ea25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # load immediate value into integer register
fmv.s.x f8, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0xb2ebc3e6d2445def # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # load immediate value into integer register
fmv.s.x f22, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x57b6eedf9e6f46c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # load immediate value into integer register
fmv.s.x f18, x11
# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x4, 0x2f37f30c52109fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8000000000000001 # load immediate value into integer register
fmv.s.x f4, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0xdff4f5151c7ecbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffffffffffff # load immediate value into integer register
fmv.s.x f3, x20
# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0xc57fcebdb2f39eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # load immediate value into integer register
fmv.s.x f26, x8
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0x1b606d345ecc6134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # load immediate value into integer register
fmv.s.x f8, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0x60aff3a8d28ca0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # load immediate value into integer register
fmv.s.x f26, x22
# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x7, 0x9dc9fd2b4a8e95ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc887763ae86f7 # load immediate value into integer register
fmv.s.x f7, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0x10b54e73ac24a1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # load immediate value into integer register
fmv.s.x f7, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0xa01355a3d7ecafac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5555555555555555 # load immediate value into integer register
fmv.s.x f29, x16
# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x81e1b413b8d4ab8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # load immediate value into integer register
fmv.s.x f18, x9
# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x5940a48d0dffa056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # load immediate value into integer register
fmv.s.x f10, x3
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x11, 0x46146d402de2af26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # load immediate value into integer register
fmv.s.x f11, x28
# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0xd1e2df36bc2eb5c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # load immediate value into integer register
fmv.s.x f24, x11
# Testcase cp_fd (Test destination fd = x0)
li x0, 0xf3bd624bf9a3eaa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x06b30bce7cf1ca5a # load immediate value into integer register
fmv.s.x f0, x30
# Testcase cp_fd (Test destination fd = x1)
li x1, 0x4836bdcb593682f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x110a613f2ce73e3f # load immediate value into integer register
fmv.s.x f1, x23
# Testcase cp_fd (Test destination fd = x2)
li x2, 0x7af0bce2699cf931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xecf6c88ae376da96 # load immediate value into integer register
fmv.s.x f2, x30
# Testcase cp_fd (Test destination fd = x3)
li x3, 0xbbc68a61910da90e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0a55e6c1c59b41e4 # load immediate value into integer register
fmv.s.x f3, x27
# Testcase cp_fd (Test destination fd = x4)
li x4, 0x572f7dd8809ebc67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x10009544ad21e73a # load immediate value into integer register
fmv.s.x f4, x14
# Testcase cp_fd (Test destination fd = x5)
li x5, 0x58c02921e06932bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x66a8d66a9622b303 # load immediate value into integer register
fmv.s.x f5, x11
# Testcase cp_fd (Test destination fd = x6)
li x6, 0x921c2f50c30a8d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdcf9787271cebb52 # load immediate value into integer register
fmv.s.x f6, x13
# Testcase cp_fd (Test destination fd = x7)
li x7, 0xae912fc451078b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x359b8a6d974416fb # load immediate value into integer register
fmv.s.x f7, x14
# Testcase cp_fd (Test destination fd = x8)
li x8, 0x673e2aaf9d05b001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xef3139c4ca923672 # load immediate value into integer register
fmv.s.x f8, x16
# Testcase cp_fd (Test destination fd = x9)
li x9, 0xf8908dad22b5b851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfc94273bf757213b # load immediate value into integer register
fmv.s.x f9, x11
# Testcase cp_fd (Test destination fd = x10)
li x10, 0x232da64dbb02c2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x743a1873ec934b9f # load immediate value into integer register
fmv.s.x f10, x16
# Testcase cp_fd (Test destination fd = x11)
li x11, 0x4ec4cc39aaf5f147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9f69130ac7b85244 # load immediate value into integer register
fmv.s.x f11, x25
# Testcase cp_fd (Test destination fd = x12)
li x12, 0xf86d6fa5c8c0dbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1ec66b2899177679 # load immediate value into integer register
fmv.s.x f12, x1
# Testcase cp_fd (Test destination fd = x13)
li x13, 0xcd0a0328e531335e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x60ee734fdae0d588 # load immediate value into integer register
fmv.s.x f13, x5
# Testcase cp_fd (Test destination fd = x14)
li x14, 0x4ae3e23d1b13a5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0cd188a86c47a87d # load immediate value into integer register
fmv.s.x f14, x21
# Testcase cp_fd (Test destination fd = x15)
li x15, 0x238473cdcadb40ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x05bffe4a7f87d87d # load immediate value into integer register
fmv.s.x f15, x25
# Testcase cp_fd (Test destination fd = x16)
li x16, 0x261ea6a8fa0cb818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x95314a45337848ab # load immediate value into integer register
fmv.s.x f16, x23
# Testcase cp_fd (Test destination fd = x17)
li x17, 0xb73c8dbe3854a5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xac99b6888a3084dd # load immediate value into integer register
fmv.s.x f17, x25
# Testcase cp_fd (Test destination fd = x18)
li x18, 0xdf503207a061a4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xef0f8ccd5575dadd # load immediate value into integer register
fmv.s.x f18, x4
# Testcase cp_fd (Test destination fd = x19)
li x19, 0xddea1f35e5b7b33a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4c68466703f66b14 # load immediate value into integer register
fmv.s.x f19, x25
# Testcase cp_fd (Test destination fd = x20)
li x20, 0xd3847357918b6ee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbf01f998d3494bc2 # load immediate value into integer register
fmv.s.x f20, x25
# Testcase cp_fd (Test destination fd = x21)
li x21, 0x3017f0b7cb3e5f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa1f3eb592d4e7e46 # load immediate value into integer register
fmv.s.x f21, x3
# Testcase cp_fd (Test destination fd = x22)
li x22, 0x278647ec65752160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbf9ed77b41e7ae12 # load immediate value into integer register
fmv.s.x f22, x25
# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5852178bde5af1eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3ce70a05b26e8b00 # load immediate value into integer register
fmv.s.x f23, x1
# Testcase cp_fd (Test destination fd = x24)
li x24, 0x55586694b67a61a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7e3506a9809462f4 # load immediate value into integer register
fmv.s.x f24, x19
# Testcase cp_fd (Test destination fd = x25)
li x25, 0xfcb61d21b46c444a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xec72ff7b1bd4b47a # load immediate value into integer register
fmv.s.x f25, x12
# Testcase cp_fd (Test destination fd = x26)
li x26, 0x7c7c7230a8b2c5cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2b849718fa8ca321 # load immediate value into integer register
fmv.s.x f26, x8
# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc9efb179769fa57f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe07c42f8022bbe5c # load immediate value into integer register
fmv.s.x f27, x18
# Testcase cp_fd (Test destination fd = x28)
li x28, 0x90a982a6e6e51290 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x65951e18c93def28 # load immediate value into integer register
fmv.s.x f28, x7
# Testcase cp_fd (Test destination fd = x29)
li x29, 0x03d29c2bb1b50e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x65798af3431ce6c2 # load immediate value into integer register
fmv.s.x f29, x10
# Testcase cp_fd (Test destination fd = x30)
li x30, 0x07a57882739168fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaede4ab0fb76147a # load immediate value into integer register
fmv.s.x f30, x11
# Testcase cp_fd (Test destination fd = x31)
li x31, 0xdd366036e0ff8bc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0d3afadd62a4dfc5 # load immediate value into integer register
fmv.s.x f31, x18
.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
