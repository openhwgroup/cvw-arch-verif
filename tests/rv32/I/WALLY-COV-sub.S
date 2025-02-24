///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sub.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.005421
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x2f51addc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x496fe327 # initialize rs1
li x22, 0x93764b55 # initialize rs2
sub x0, x13, x22 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x51910eac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xf467a44e # initialize rs1
li x9, 0x54ee855c # initialize rs2
sub x1, x19, x9 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf73cf0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd8695250 # initialize rs1
li x22, 0x13ceac0a # initialize rs2
sub x2, x6, x22 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb3504c2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1bf7b513 # initialize rs1
li x16, 0xc3f0c23f # initialize rs2
sub x3, x30, x16 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x3fa01d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x142916fb # initialize rs1
li x24, 0x0d2f6ef1 # initialize rs2
sub x4, x3, x24 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xf6df4bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x40d5d3d7 # initialize rs1
li x25, 0xb8e38749 # initialize rs2
sub x5, x30, x25 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xcf1b76d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6cfe3421 # initialize rs1
li x28, 0x0fad2357 # initialize rs2
sub x6, x1, x28 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x017f9cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf5611eac # initialize rs1
li x14, 0x5f20e49a # initialize rs2
sub x7, x21, x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x402ddc2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6b43e3e0 # initialize rs1
li x12, 0x1ef5755b # initialize rs2
sub x8, x19, x12 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7027b667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7237b352 # initialize rs1
li x2, 0x6a2ab063 # initialize rs2
sub x9, x18, x2 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x47da2aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x9747d206 # initialize rs1
li x29, 0x5486b587 # initialize rs2
sub x10, x31, x29 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x01e69fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x27069ebf # initialize rs1
li x6, 0xd4380d8a # initialize rs2
sub x11, x11, x6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd41127b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2a923e5e # initialize rs1
li x19, 0xd625cbf9 # initialize rs2
sub x12, x8, x19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x8e3f7ce3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x954c927e # initialize rs1
li x1, 0xc2623b08 # initialize rs2
sub x13, x4, x1 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xea37f906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x4216f9a0 # initialize rs1
li x19, 0x46472855 # initialize rs2
sub x14, x28, x19 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc25f6ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1a2270c4 # initialize rs1
li x10, 0x25ec7b62 # initialize rs2
sub x15, x9, x10 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xccf74c2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf48b2110 # initialize rs1
li x30, 0x2762a98f # initialize rs2
sub x16, x29, x30 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x7779e7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x08f9b929 # initialize rs1
li x15, 0xd47a4b50 # initialize rs2
sub x17, x4, x15 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0e8538a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x32c9d1d9 # initialize rs1
li x6, 0x42fde070 # initialize rs2
sub x18, x23, x6 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x975ad6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6fa84c20 # initialize rs1
li x17, 0xf6ba5bd1 # initialize rs2
sub x19, x25, x17 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x969ea491 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x30872fc9 # initialize rs1
li x19, 0x7c94bf52 # initialize rs2
sub x20, x22, x19 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x3f5ba558 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xead64559 # initialize rs1
li x26, 0xbf0d74a9 # initialize rs2
sub x21, x9, x26 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xbf2a8ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x79a91b6d # initialize rs1
li x23, 0xdf2302a2 # initialize rs2
sub x22, x24, x23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x82b71644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x14961ce5 # initialize rs1
li x27, 0x2c44aa61 # initialize rs2
sub x23, x16, x27 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x375e43ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0bd51170 # initialize rs1
li x17, 0x607f5d6b # initialize rs2
sub x24, x24, x17 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xf2b1b022 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7d11d607 # initialize rs1
li x20, 0x372fd45d # initialize rs2
sub x25, x1, x20 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xa40bd24e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaf22dae # initialize rs1
li x28, 0xa295837d # initialize rs2
sub x26, x10, x28 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x4bf01c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3331e572 # initialize rs1
li x29, 0x7d8a1720 # initialize rs2
sub x27, x12, x29 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x28746ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x96f0258c # initialize rs1
li x3, 0xad7099d6 # initialize rs2
sub x28, x8, x3 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x79fae8de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdb128933 # initialize rs1
li x2, 0xd3260b36 # initialize rs2
sub x29, x28, x2 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1200dfd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x02d08cbe # initialize rs1
li x13, 0xb742f248 # initialize rs2
sub x30, x28, x13 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x4ad0430e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x86958e06 # initialize rs1
li x6, 0x0d6387fc # initialize rs2
sub x31, x21, x6 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x2, 0x8a11c9dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9ec9ae6f # initialize rs1
li x12, 0xac5a386a # initialize rs2
sub x2, x0, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x7, 0x87704cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8a9b75a4 # initialize rs1
li x25, 0x0eb2ea5b # initialize rs2
sub x7, x1, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x2160a609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00c243c1 # initialize rs1
li x10, 0x3ebd5131 # initialize rs2
sub x1, x2, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0xd306beba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8fff554a # initialize rs1
li x15, 0xa3ac34c4 # initialize rs2
sub x30, x3, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x10, 0xe6ff8a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa977f306 # initialize rs1
li x5, 0x47fe9c77 # initialize rs2
sub x10, x4, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x8, 0x6c77dddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaa053e2d # initialize rs1
li x9, 0x61b41cf8 # initialize rs2
sub x8, x5, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x5, 0xeed702f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaa037a4b # initialize rs1
li x30, 0x8b0f83e2 # initialize rs2
sub x5, x6, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x11, 0x2ceb9e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4971127f # initialize rs1
li x28, 0xf7ec8a6b # initialize rs2
sub x11, x7, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0xc0e038af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcad05238 # initialize rs1
li x12, 0x1b48e2c7 # initialize rs2
sub x25, x8, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0xc895634b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x252da219 # initialize rs1
li x30, 0x5432e686 # initialize rs2
sub x27, x9, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x5, 0x53b68e13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xce73138f # initialize rs1
li x8, 0x453515e8 # initialize rs2
sub x5, x10, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x20b928af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x11cea48b # initialize rs1
li x8, 0x76c13dbe # initialize rs2
sub x9, x11, x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x2, 0x694971ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfbe03769 # initialize rs1
li x16, 0x29b46e7b # initialize rs2
sub x2, x12, x16 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0xcb52a0e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xff7fd9e4 # initialize rs1
li x1, 0x0f8eb271 # initialize rs2
sub x5, x13, x1 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x30, 0xb3d36456 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb6ed7fb4 # initialize rs1
li x7, 0x87f1ccc5 # initialize rs2
sub x30, x14, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x9918be71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3ea922e6 # initialize rs1
li x31, 0xa5f4b5a6 # initialize rs2
sub x10, x15, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x8, 0x9844beec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa9c43d7d # initialize rs1
li x9, 0xe8c7f5ab # initialize rs2
sub x8, x16, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x22, 0x771b5ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x14f97c14 # initialize rs1
li x28, 0xa9e6be2c # initialize rs2
sub x22, x17, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x6ae0bfcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xe9867293 # initialize rs1
li x24, 0x015b9e50 # initialize rs2
sub x16, x18, x24 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x2c5c9821 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xa2825b06 # initialize rs1
li x23, 0x8f6ef530 # initialize rs2
sub x28, x19, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x5b5ed64a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfb976383 # initialize rs1
li x19, 0xf238ce02 # initialize rs2
sub x23, x20, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x15, 0x154356b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x74e46972 # initialize rs1
li x23, 0x9be2c18a # initialize rs2
sub x15, x21, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0xc65ee134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcd559452 # initialize rs1
li x18, 0xfda69b5e # initialize rs2
sub x27, x22, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x25, 0x28fc811d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe6da9cc3 # initialize rs1
li x15, 0x1fb85bf4 # initialize rs2
sub x25, x23, x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0xb1d672c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x99e8e160 # initialize rs1
li x27, 0x21a46f07 # initialize rs2
sub x9, x24, x27 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x06747694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x43b4c07b # initialize rs1
li x10, 0x480cf8b9 # initialize rs2
sub x29, x25, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0x948dcbc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x3546eae1 # initialize rs1
li x11, 0xec97f8a5 # initialize rs2
sub x7, x26, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x7, 0x1facdaf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x95014dc2 # initialize rs1
li x10, 0x71680e21 # initialize rs2
sub x7, x27, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xaf81f545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1370adc8 # initialize rs1
li x31, 0x1a5e988b # initialize rs2
sub x12, x28, x31 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0xefe7a2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7d4f32b9 # initialize rs1
li x12, 0x83be28ec # initialize rs2
sub x26, x29, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0x48966d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x47ed91d3 # initialize rs1
li x13, 0xcf9d6641 # initialize rs2
sub x3, x30, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0xc609ff70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xad0def46 # initialize rs1
li x5, 0xe2f777ce # initialize rs2
sub x11, x31, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x4, 0x1c0caf6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7ee5bf89 # initialize rs1
li x0, 0x971c2b80 # initialize rs2
sub x4, x30, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x31, 0x54af6bac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc7a0279e # initialize rs1
li x1, 0x1a917bc4 # initialize rs2
sub x31, x22, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x2f12fe26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x48f33452 # initialize rs1
li x2, 0x0e87d1ba # initialize rs2
sub x21, x14, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xed6dbf22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x99c9454a # initialize rs1
li x3, 0xd689feb8 # initialize rs2
sub x1, x8, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x30, 0x6bdc24d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3c77ba6e # initialize rs1
li x4, 0xb1da544a # initialize rs2
sub x30, x28, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x1, 0xa808bc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x399e62b7 # initialize rs1
li x5, 0x6b3c90a9 # initialize rs2
sub x1, x20, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x29, 0x4030afa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1a050487 # initialize rs1
li x6, 0x6d606a1c # initialize rs2
sub x29, x9, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x10, 0x8fd93b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x17521284 # initialize rs1
li x7, 0xf09c4c37 # initialize rs2
sub x10, x14, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x18, 0x3d1489dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9caf9cad # initialize rs1
li x8, 0x0d381853 # initialize rs2
sub x18, x11, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0xb67e76fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x91f80023 # initialize rs1
li x9, 0xd9e4f118 # initialize rs2
sub x10, x18, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x7641c7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x26f3c724 # initialize rs1
li x10, 0x435f3553 # initialize rs2
sub x3, x23, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x30, 0x1ececf5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7e745cb8 # initialize rs1
li x11, 0x0e1c016b # initialize rs2
sub x30, x2, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0xbf733c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x237ccd68 # initialize rs1
li x12, 0x96be5502 # initialize rs2
sub x29, x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0x3a8809fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcef41d83 # initialize rs1
li x13, 0xd3240240 # initialize rs2
sub x28, x5, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0x9767d836 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3c68b888 # initialize rs1
li x14, 0x1d108b65 # initialize rs2
sub x15, x17, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0x097c7961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xac283b7e # initialize rs1
li x15, 0x862effb9 # initialize rs2
sub x27, x8, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0xbbdb5e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x69ce04c4 # initialize rs1
li x16, 0x161b5695 # initialize rs2
sub x2, x4, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x14, 0x474e4946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x31440cdd # initialize rs1
li x17, 0x4a7d2986 # initialize rs2
sub x14, x9, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0x882c6711 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0b786759 # initialize rs1
li x18, 0x0584d84f # initialize rs2
sub x15, x19, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0xe8df1972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x351b1b90 # initialize rs1
li x19, 0x7a7e3181 # initialize rs2
sub x7, x23, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0xd4521254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2a260cf6 # initialize rs1
li x20, 0x31cdd676 # initialize rs2
sub x11, x30, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x8, 0xd731998b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x6dec4fc8 # initialize rs1
li x21, 0xf09b9887 # initialize rs2
sub x8, x27, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0x7fe3e2c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2efb7919 # initialize rs1
li x22, 0x0bbb59af # initialize rs2
sub x31, x24, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0xf29b9aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x530e8655 # initialize rs1
li x23, 0x24bad364 # initialize rs2
sub x19, x11, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0xf4cec638 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2ad143b8 # initialize rs1
li x24, 0x2f12d3a6 # initialize rs2
sub x18, x26, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xfddfc97c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x7a9ed1ee # initialize rs1
li x25, 0x933e55bf # initialize rs2
sub x2, x30, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0x8e8a865e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf7d2134d # initialize rs1
li x26, 0x892e243e # initialize rs2
sub x9, x18, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x7748fb3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0502968c # initialize rs1
li x27, 0x1c163037 # initialize rs2
sub x24, x8, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x4, 0xdaf9f1a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xa0c80baf # initialize rs1
li x28, 0x5c523ace # initialize rs2
sub x4, x31, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0x0ea2c895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe3c7b3a2 # initialize rs1
li x29, 0xa9597d47 # initialize rs2
sub x30, x21, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x9, 0xfcd60dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1b81f1ab # initialize rs1
li x30, 0x8ad8fc59 # initialize rs2
sub x9, x2, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x2dee021d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x49474c27 # initialize rs1
li x31, 0xe92760b1 # initialize rs2
sub x23, x13, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0xca847cc6)
li x9, 0xb7f29855 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb7f29855 # initialize rs1
li x0, 0x0523f591 # initialize rs2
sub x9, x31, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x7fba342e)
li x29, 0x7fba342e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7fba342e # initialize rs1
li x4, 0x7fba342e # initialize rs2
sub x29, x0, x4 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0xbd986cda)
li x30, 0x1f8f5a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbd986cda # initialize rs1
li x29, 0xbd986cda # initialize rs2
sub x30, x24, x29 # perform operation

# Testcase cmp_gpr_hazard raw test
sub x21, x11, x24 # perform first operation
sub x2, x21, x25 # perform second operation

# Testcase cmp_gpr_hazard raw test
sub x9, x23, x13 # perform first operation
sub x21, x9, x9 # perform second operation

# Testcase cmp_gpr_hazard waw test
sub x12, x25, x26 # perform first operation
sub x12, x9, x24 # perform second operation

# Testcase cmp_gpr_hazard waw test
sub x8, x20, x7 # perform first operation
sub x8, x14, x9 # perform second operation

# Testcase cmp_gpr_hazard war test
sub x8, x6, x7 # perform first operation
sub x6, x6, x20 # perform second operation

# Testcase cmp_gpr_hazard war test
sub x6, x8, x1 # perform first operation
sub x1, x19, x4 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x4a189c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
li x0, 0x58fce18d # initialize rs2
sub x19, x12, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0xe58d9441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000 # initialize rs1
li x22, 0x00000000 # initialize rs2
sub x16, x1, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x474ceaea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
sub x22, x29, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x781af67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x0, 0xa8402ebc # initialize rs2
sub x7, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0xe5b01131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
sub x28, x1, x20 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x61b5cae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
sub x26, x31, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0x2caa1d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000002 # initialize rs1
li x0, 0x2508d3a1 # initialize rs2
sub x26, x22, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0x0485528a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000002 # initialize rs1
li x4, 0x00000002 # initialize rs2
sub x30, x7, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x26, 0xfa587166 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xffffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
sub x26, x5, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0x145cb0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000000 # initialize rs1
li x0, 0xca22557b # initialize rs2
sub x6, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0xdd3d9963 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs1
li x4, 0x80000000 # initialize rs2
sub x9, x26, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x31, 0xf3b76890 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x14, 0x80000000 # initialize rs2
sub x31, x26, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x29, 0xb9eea877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x80000001 # initialize rs1
li x0, 0xad7eb8cd # initialize rs2
sub x29, x31, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x16, 0xd9fe87ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000001 # initialize rs1
li x4, 0x80000001 # initialize rs2
sub x16, x2, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x26, 0x5bc80c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
sub x26, x18, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xfe89a961 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff # initialize rs1
li x0, 0x483d6697 # initialize rs2
sub x28, x27, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0x2d14dcf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffff # initialize rs1
li x31, 0x7fffffff # initialize rs2
sub x29, x24, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x21, 0xee235c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
sub x21, x26, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0xeb0e6136 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x0, 0xedc8f773 # initialize rs2
sub x24, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x16, 0xb8a98c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sub x16, x28, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x18, 0x7bb0ccb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sub x18, x20, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x31, 0x7064a662 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x0, 0x37a91d38 # initialize rs2
sub x31, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x23, 0x13718a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xffffffff # initialize rs1
li x15, 0xffffffff # initialize rs2
sub x23, x18, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x17, 0x3b053496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x23, 0xffffffff # initialize rs2
sub x17, x29, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x30, 0x92ca081a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # initialize rs1
li x0, 0x6fc3bcbb # initialize rs2
sub x30, x2, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x22, 0xf56584f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
sub x22, x28, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x21, 0x98688d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
sub x21, x3, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x30, 0xf5710f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize rs1
li x0, 0x74e9b13c # initialize rs2
sub x30, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x21, 0x3456c26e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc8877 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
sub x21, x30, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x9, 0x810a15d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs1
li x23, 0x5bbc8877 # initialize rs2
sub x9, x12, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x18, 0x297a2df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs1
li x0, 0x88e2d6f6 # initialize rs2
sub x18, x14, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x8, 0xb797197b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
sub x8, x16, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x11, 0x06f59ea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sub x11, x19, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0x68342e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs1
li x0, 0x282eee60 # initialize rs2
sub x15, x6, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x25, 0x707c2e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
sub x25, x18, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x15, 0x4acdd92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
sub x15, x22, x27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x89816c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x4, 0x47386b3d # initialize rs2
sub x20, x31, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x5faa4dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000001 # initialize rs1
li x1, 0x0146d7ab # initialize rs2
sub x7, x4, x1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x45431a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x30, 0x4c6534d7 # initialize rs2
sub x12, x2, x30 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x4373654a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x80000000 # initialize rs1
li x8, 0x005e249a # initialize rs2
sub x30, x2, x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x1, 0x9ac30032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x80000001 # initialize rs1
li x24, 0x329c90a9 # initialize rs2
sub x1, x30, x24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x22ffb2bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffff # initialize rs1
li x18, 0x283fbb0a # initialize rs2
sub x27, x28, x18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0xed8f48fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x11, 0x8dfe4d6d # initialize rs2
sub x28, x31, x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0x627d4e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffff # initialize rs1
li x6, 0x1572867a # initialize rs2
sub x22, x4, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x18d5f426 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs1
li x31, 0x98d16c74 # initialize rs2
sub x3, x26, x31 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x29, 0xd8a1fc10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs1
li x21, 0x8ddc4ec6 # initialize rs2
sub x29, x11, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x4, 0x345ba82f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x22, 0x79d02df9 # initialize rs2
sub x4, x31, x22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x11b95a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x55555555 # initialize rs1
li x14, 0x2b894411 # initialize rs2
sub x12, x28, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x16e870aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8b21eeaa # initialize rs1
li x15, 0x00000000 # initialize rs2
sub x9, x21, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0xaf8471c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbdcac9e5 # initialize rs1
li x23, 0x00000001 # initialize rs2
sub x20, x4, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x4b2b9289 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc297e3bc # initialize rs1
li x28, 0x00000002 # initialize rs2
sub x29, x7, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x19, 0x290204d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5910b410 # initialize rs1
li x27, 0x80000000 # initialize rs2
sub x19, x16, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x21, 0x3b50bede # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xcb64dc39 # initialize rs1
li x19, 0x80000001 # initialize rs2
sub x21, x14, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x20, 0x60d10af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xeb5492a4 # initialize rs1
li x22, 0x7fffffff # initialize rs2
sub x20, x1, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0x59bf1ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf443279c # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sub x31, x6, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x9edb8013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb2fed840 # initialize rs1
li x3, 0xffffffff # initialize rs2
sub x16, x30, x3 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x54877084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe4ecae8f # initialize rs1
li x5, 0xfffffffe # initialize rs2
sub x6, x19, x5 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0xe0497a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x98d679c9 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
sub x28, x15, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x10, 0xc65277ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2ea7d594 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sub x10, x19, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x19, 0x9099de8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0195dfc9 # initialize rs1
li x29, 0x55555555 # initialize rs2
sub x19, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x17, 0xd1320f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
sub x17, x26, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x888f1066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x24, 0x00000001 # initialize rs2
sub x11, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x19, 0x02ee243b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs1
li x5, 0x00000002 # initialize rs2
sub x19, x15, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x12, 0x8ce74206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
sub x12, x31, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x12, 0xff00f666 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
sub x12, x8, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x28, 0x3e6ba09e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sub x28, x8, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0xb38996fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sub x3, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x8, 0x7c8af3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000 # initialize rs1
li x26, 0xffffffff # initialize rs2
sub x8, x20, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x5, 0x7788432e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sub x5, x10, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8877)
li x6, 0x55559731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs1
li x30, 0x5bbc8877 # initialize rs2
sub x6, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x2, 0x1ea27edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sub x2, x27, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x18, 0xf009b15b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
sub x18, x7, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x15, 0xa24a502e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs1
li x19, 0x00000000 # initialize rs2
sub x15, x10, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0xd02069e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
sub x30, x7, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x12, 0xfa91de92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x31, 0x00000002 # initialize rs2
sub x12, x29, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x9, 0x2e7a508f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000001 # initialize rs1
li x12, 0x80000000 # initialize rs2
sub x9, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x9, 0x70956453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize rs1
li x6, 0x80000001 # initialize rs2
sub x9, x13, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x14, 0x4d3ee138 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
sub x14, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x19, 0xd2665f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000001 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sub x19, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0xa4182616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
sub x1, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0x452664c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sub x14, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8877)
li x7, 0x3eecd220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000001 # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
sub x7, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x2, 0xdb3fa7f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000001 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sub x2, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x8a99e9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000001 # initialize rs1
li x16, 0x55555555 # initialize rs2
sub x9, x29, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x24, 0x5eb41bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000002 # initialize rs1
li x30, 0x00000000 # initialize rs2
sub x24, x9, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x4b3a5826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000002 # initialize rs1
li x21, 0x00000001 # initialize rs2
sub x29, x31, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x1a09eb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs1
li x18, 0x00000002 # initialize rs2
sub x13, x11, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x26, 0x0a2aae65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000002 # initialize rs1
li x8, 0x80000000 # initialize rs2
sub x26, x19, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x30, 0x0c840d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000002 # initialize rs1
li x19, 0x80000001 # initialize rs2
sub x30, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x7, 0xd915dc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sub x7, x18, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x29, 0x1fe98188 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sub x29, x10, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0xcad59a87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002 # initialize rs1
li x23, 0xffffffff # initialize rs2
sub x11, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x22, 0x4bdccd64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000002 # initialize rs1
li x17, 0xfffffffe # initialize rs2
sub x22, x3, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8877)
li x28, 0xa6ff2c4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000002 # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
sub x28, x18, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x11, 0x4cf509e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sub x11, x15, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x2, 0x05675f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000002 # initialize rs1
li x7, 0x55555555 # initialize rs2
sub x2, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x5, 0xd7170850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
sub x5, x3, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x17, 0xef7ccfec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000000 # initialize rs1
li x7, 0x00000001 # initialize rs2
sub x17, x18, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x27, 0x4de0b241 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x6, 0x00000002 # initialize rs2
sub x27, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x4, 0xff1fda76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000000 # initialize rs1
li x9, 0x80000000 # initialize rs2
sub x4, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x19, 0xfe3a0b2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000000 # initialize rs1
li x22, 0x80000001 # initialize rs2
sub x19, x3, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x30, 0x805c1a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x4, 0x7fffffff # initialize rs2
sub x30, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x5, 0xb0c379c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sub x5, x13, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x23, 0x60a71eed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x80000000 # initialize rs1
li x6, 0xffffffff # initialize rs2
sub x23, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0x9fe6ed6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sub x23, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8877)
li x3, 0x35a8afd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000000 # initialize rs1
li x11, 0x5bbc8877 # initialize rs2
sub x3, x7, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x13, 0xcad4427f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x80000000 # initialize rs1
li x4, 0xaaaaaaaa # initialize rs2
sub x13, x28, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x9, 0x037807e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000000 # initialize rs1
li x13, 0x55555555 # initialize rs2
sub x9, x29, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x2, 0x76a56645 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
sub x2, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x23, 0x74ba4444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
sub x23, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x32e581ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x80000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
sub x3, x5, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x5, 0x7f5fe9ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs1
li x23, 0x80000000 # initialize rs2
sub x5, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x25, 0xcf25800d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x80000001 # initialize rs1
li x19, 0x80000001 # initialize rs2
sub x25, x18, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x29, 0x3bf2988f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x80000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
sub x29, x3, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x11, 0x0f0edc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sub x11, x12, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x23, 0x511331a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs1
li x12, 0xffffffff # initialize rs2
sub x23, x8, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x12, 0xd6f5896a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sub x12, x4, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8877)
li x2, 0xe83b67af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x27, 0x5bbc8877 # initialize rs2
sub x2, x11, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x5, 0x5b35da0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sub x5, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x18, 0x0e5f8507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x80000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
sub x18, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x20, 0xa74b4927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
sub x20, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x15, 0xfc79b4ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff # initialize rs1
li x13, 0x00000001 # initialize rs2
sub x15, x10, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x374b1754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
sub x30, x21, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x3, 0x89fac2af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffff # initialize rs1
li x30, 0x80000000 # initialize rs2
sub x3, x6, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x30, 0xf6fb8d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
li x29, 0x80000001 # initialize rs2
sub x30, x11, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x22, 0x71bbdbc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7fffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
sub x22, x18, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x98d2a5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sub x28, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x10, 0x6b789a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffff # initialize rs1
li x4, 0xffffffff # initialize rs2
sub x10, x2, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x29, 0x696b9968 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs1
li x31, 0xfffffffe # initialize rs2
sub x29, x16, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8877)
li x31, 0x236e69ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffff # initialize rs1
li x25, 0x5bbc8877 # initialize rs2
sub x31, x7, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x28, 0xc385a465 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7fffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sub x28, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x3, 0xfb51c2c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
sub x3, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x26, 0x2c72656c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
sub x26, x27, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x9, 0xe0609c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffe # initialize rs1
li x3, 0x00000001 # initialize rs2
sub x9, x31, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x18, 0xabb5ef67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffe # initialize rs1
li x16, 0x00000002 # initialize rs2
sub x18, x20, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0x16c763af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
sub x18, x8, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x8, 0x82e0a485 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x2, 0x80000001 # initialize rs2
sub x8, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x20, 0x5561a848 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7ffffffe # initialize rs1
li x29, 0x7fffffff # initialize rs2
sub x20, x16, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x6, 0x23ad6cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7ffffffe # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sub x6, x2, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x8, 0x4044bb58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe # initialize rs1
li x15, 0xffffffff # initialize rs2
sub x8, x22, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x11, 0xabfbb04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x7ffffffe # initialize rs1
li x14, 0xfffffffe # initialize rs2
sub x11, x17, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8877)
li x13, 0x128befd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8877 # initialize rs2
sub x13, x12, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x9, 0x0f4d6726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sub x9, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x21, 0xb14ebe67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7ffffffe # initialize rs1
li x11, 0x55555555 # initialize rs2
sub x21, x10, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0x45a8f2c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
sub x24, x31, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0x11f99daa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xffffffff # initialize rs1
li x23, 0x00000001 # initialize rs2
sub x21, x19, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x4, 0xfd68ddd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x22, 0x00000002 # initialize rs2
sub x4, x15, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x15, 0x3eb899d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
sub x15, x6, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x28, 0xe3c4f60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffff # initialize rs1
li x22, 0x80000001 # initialize rs2
sub x28, x29, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x1, 0xa3fc6233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs1
li x6, 0x7fffffff # initialize rs2
sub x1, x25, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x7, 0x1d955099 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sub x7, x6, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x17, 0x1fb18e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs1
li x27, 0xffffffff # initialize rs2
sub x17, x15, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x26, 0x7587c9bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs1
li x18, 0xfffffffe # initialize rs2
sub x26, x6, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8877)
li x23, 0x1e0f9233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffff # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
sub x23, x22, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x25, 0xb256dd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
sub x25, x16, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x26, 0x6b9ef5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
sub x26, x21, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0xc6be59ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
sub x10, x29, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x9be5f72e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffe # initialize rs1
li x28, 0x00000001 # initialize rs2
sub x17, x15, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x12, 0xc6677cb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs1
li x27, 0x00000002 # initialize rs2
sub x12, x13, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x15, 0xa2c6f70f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffe # initialize rs1
li x6, 0x80000000 # initialize rs2
sub x15, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x2, 0xff224bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
sub x2, x4, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x28, 0xd134df50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe # initialize rs1
li x14, 0x7fffffff # initialize rs2
sub x28, x25, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0x58ac06cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffe # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sub x16, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x932040b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe # initialize rs1
li x13, 0xffffffff # initialize rs2
sub x6, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0xb2bfec28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
sub x8, x3, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8877)
li x16, 0x4b6e3167 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
sub x16, x14, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x6, 0xd9c0bd50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sub x6, x22, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x14, 0x83249841 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
li x13, 0x55555555 # initialize rs2
sub x14, x8, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x0)
li x18, 0x024d1abd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5bbc8877 # initialize rs1
li x24, 0x00000000 # initialize rs2
sub x18, x19, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x1)
li x28, 0xcacbd8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x27, 0x00000001 # initialize rs2
sub x28, x24, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x2)
li x4, 0xf5626acb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x21, 0x00000002 # initialize rs2
sub x4, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000000)
li x11, 0x3227836c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc8877 # initialize rs1
li x24, 0x80000000 # initialize rs2
sub x11, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x80000001)
li x20, 0x3c82859b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
li x27, 0x80000001 # initialize rs2
sub x20, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7fffffff)
li x25, 0xe18ef1fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc8877 # initialize rs1
li x16, 0x7fffffff # initialize rs2
sub x25, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x7ffffffe)
li x2, 0x9dca30b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5bbc8877 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sub x2, x17, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xffffffff)
li x23, 0xa5cecf40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877 # initialize rs1
li x2, 0xffffffff # initialize rs2
sub x23, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xfffffffe)
li x25, 0x78dfad9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5bbc8877 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sub x25, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x5bbc8877)
li x30, 0x339f04c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x5bbc8877 # initialize rs1
li x21, 0x5bbc8877 # initialize rs2
sub x30, x15, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0xaaaaaaaa)
li x25, 0x8b5c8f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc8877 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sub x25, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8877 rs2 = 0x55555555)
li x6, 0x1908ff38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc8877 # initialize rs1
li x2, 0x55555555 # initialize rs2
sub x6, x25, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x18, 0x3a9540e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize rs1
li x4, 0x00000000 # initialize rs2
sub x18, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x15, 0xa3da545a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaa # initialize rs1
li x29, 0x00000001 # initialize rs2
sub x15, x31, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x29, 0x6ef2fe4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaaaaaaaa # initialize rs1
li x19, 0x00000002 # initialize rs2
sub x29, x1, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x11, 0x1babea52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaa # initialize rs1
li x13, 0x80000000 # initialize rs2
sub x11, x19, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x24, 0xe0540fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaa # initialize rs1
li x21, 0x80000001 # initialize rs2
sub x24, x28, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x22, 0xf56a60ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaa # initialize rs1
li x9, 0x7fffffff # initialize rs2
sub x22, x16, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x2, 0x3e81cf27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaa # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sub x2, x6, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x19, 0x8825e7f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
sub x19, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x8, 0x7089180d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xaaaaaaaa # initialize rs1
li x3, 0xfffffffe # initialize rs2
sub x8, x30, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8877)
li x11, 0x49c17783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs1
li x26, 0x5bbc8877 # initialize rs2
sub x11, x4, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x15, 0x5630577a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sub x15, x17, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x14, 0x5579b78e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa # initialize rs1
li x9, 0x55555555 # initialize rs2
sub x14, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x19, 0xd0b402de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
sub x19, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x24, 0x83069d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x55555555 # initialize rs1
li x2, 0x00000001 # initialize rs2
sub x24, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x22, 0x5cc1733a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x30, 0x00000002 # initialize rs2
sub x22, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x18, 0xa0bed46d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x55555555 # initialize rs1
li x30, 0x80000000 # initialize rs2
sub x18, x19, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x1, 0x826e595c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
sub x1, x15, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x9, 0xce0adc79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
li x17, 0x7fffffff # initialize rs2
sub x9, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x1, 0x7ce411d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sub x1, x7, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x31, 0x4a83844e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555 # initialize rs1
li x3, 0xffffffff # initialize rs2
sub x31, x13, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x22, 0xd433157c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x55555555 # initialize rs1
li x9, 0xfffffffe # initialize rs2
sub x22, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8877)
li x2, 0xc2ecd670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55555555 # initialize rs1
li x19, 0x5bbc8877 # initialize rs2
sub x2, x3, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x1, 0x2db6959d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x55555555 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sub x1, x5, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x19, 0xc7b9a083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x55555555 # initialize rs1
li x7, 0x55555555 # initialize rs2
sub x19, x26, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x0dc3ec52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1e7a145b # initialize rs1
li x13, 0x9ff1c2d3 # initialize rs2
sub x0, x0, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x0153bd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd929b6bb # initialize rs1
li x27, 0x54285c73 # initialize rs2
sub x1, x1, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x86208414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x3eb1baf7 # initialize rs1
li x26, 0xde02298a # initialize rs2
sub x2, x2, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa0e84537 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x17627474 # initialize rs1
li x14, 0x5c37a548 # initialize rs2
sub x3, x3, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x9dc3cf28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdd3da497 # initialize rs1
li x21, 0xfb42e7b3 # initialize rs2
sub x4, x4, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xfaaf0f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xde676c01 # initialize rs1
li x13, 0x48cdadec # initialize rs2
sub x5, x5, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x06320666 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd30da57a # initialize rs1
li x2, 0x0dfebae8 # initialize rs2
sub x6, x6, x2 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xb35d9640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf8980e87 # initialize rs1
li x23, 0x664997dd # initialize rs2
sub x7, x7, x23 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x77a4125a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x86c9889a # initialize rs1
li x17, 0xbf262655 # initialize rs2
sub x8, x8, x17 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc1961a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x42a32e95 # initialize rs1
li x1, 0x27c75eff # initialize rs2
sub x9, x9, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xfbbb0301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4d11590b # initialize rs1
li x29, 0x413912b9 # initialize rs2
sub x10, x10, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x76d3a41f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa93b6324 # initialize rs1
li x25, 0xdc00c7ed # initialize rs2
sub x11, x11, x25 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfc7d214b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd773a6f9 # initialize rs1
li x16, 0xc9611404 # initialize rs2
sub x12, x12, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x332444b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa9f99d56 # initialize rs1
li x30, 0x97940e5d # initialize rs2
sub x13, x13, x30 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xa5b48380 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x795c9532 # initialize rs1
li x26, 0xbb3e9a1a # initialize rs2
sub x14, x14, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe8adf592 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe4667c69 # initialize rs1
li x7, 0xbaf8f6d3 # initialize rs2
sub x15, x15, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xdc455434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xda2174fe # initialize rs1
li x9, 0xd7ed1843 # initialize rs2
sub x16, x16, x9 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xf0ea2a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xee8c7b23 # initialize rs1
li x28, 0x917f59aa # initialize rs2
sub x17, x17, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x9568e79e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfd4f7e34 # initialize rs1
li x12, 0x306b0664 # initialize rs2
sub x18, x18, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xb59d0519 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x980edf35 # initialize rs1
li x22, 0x8b272056 # initialize rs2
sub x19, x19, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x607e4056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7756d43c # initialize rs1
li x18, 0x303e8f04 # initialize rs2
sub x20, x20, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2f7a2050 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xe017f921 # initialize rs1
li x31, 0x25dfc446 # initialize rs2
sub x21, x21, x31 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xf7e2b40d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8cc6262e # initialize rs1
li x14, 0xde0eb552 # initialize rs2
sub x22, x22, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x6b662d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3cb047d0 # initialize rs1
li x14, 0x58bdc339 # initialize rs2
sub x23, x23, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa6e2b81f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfc89427a # initialize rs1
li x21, 0xc38fe295 # initialize rs2
sub x24, x24, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9f4a8834 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1a111130 # initialize rs1
li x29, 0x0bc246b4 # initialize rs2
sub x25, x25, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xea5fc487 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x01b8c27e # initialize rs1
li x5, 0x0146f8e9 # initialize rs2
sub x26, x26, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5e32a95a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xfa39c559 # initialize rs1
li x1, 0x55531143 # initialize rs2
sub x27, x27, x1 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x83883c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x23b7d333 # initialize rs1
li x3, 0x4b80e48b # initialize rs2
sub x28, x28, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfe63d59e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3d07eaaf # initialize rs1
li x15, 0xb74bedfe # initialize rs2
sub x29, x29, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb85397a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x27056a7d # initialize rs1
li x5, 0x8fe09bcd # initialize rs2
sub x30, x30, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9e268047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x563c4f94 # initialize rs1
li x16, 0x4a10ca2c # initialize rs2
sub x31, x31, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0xa42dbf68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x532e0995 # initialize rs1
li x0, 0xe2b19768 # initialize rs2
sub x0, x4, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x91fe06a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x52f7e54e # initialize rs1
li x1, 0xb90de301 # initialize rs2
sub x1, x6, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0xe7f3f1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x94586df3 # initialize rs1
li x2, 0xbea8ba12 # initialize rs2
sub x2, x11, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0x1605ea8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x82ffc2f6 # initialize rs1
li x3, 0xd720ed31 # initialize rs2
sub x3, x31, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x2f49ceb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2828e26b # initialize rs1
li x4, 0x53fd3a28 # initialize rs2
sub x4, x2, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0xc9ec2483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x61429930 # initialize rs1
li x5, 0x1c94b1cb # initialize rs2
sub x5, x12, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x10ddbc69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x8e955e5d # initialize rs1
li x6, 0xa8745994 # initialize rs2
sub x6, x25, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0x71b8b8f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa5dfbbc4 # initialize rs1
li x7, 0x91dab613 # initialize rs2
sub x7, x14, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x48d4f414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xcdbad3b6 # initialize rs1
li x8, 0x12dc1fa5 # initialize rs2
sub x8, x3, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x076ed6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a0471b4 # initialize rs1
li x9, 0xe61c395d # initialize rs2
sub x9, x11, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xf8f92abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x406dd302 # initialize rs1
li x10, 0x714d7968 # initialize rs2
sub x10, x23, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x598330e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5c3d16b1 # initialize rs1
li x11, 0xec4d892f # initialize rs2
sub x11, x23, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x86a77014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1cde7e85 # initialize rs1
li x12, 0x2a86fc8d # initialize rs2
sub x12, x3, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x642c3589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x23a8394b # initialize rs1
li x13, 0x055d1290 # initialize rs2
sub x13, x2, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0xc2eb7d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd4f5e189 # initialize rs1
li x14, 0x481eba4d # initialize rs2
sub x14, x6, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x262b8cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaa059c94 # initialize rs1
li x15, 0x9994d335 # initialize rs2
sub x15, x6, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0xd0b94a69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd85fc073 # initialize rs1
li x16, 0x16f97c65 # initialize rs2
sub x16, x12, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0x93137965 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x94facf62 # initialize rs1
li x17, 0x7599da31 # initialize rs2
sub x17, x25, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0x60096c15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb18b1dbf # initialize rs1
li x18, 0x7029d723 # initialize rs2
sub x18, x9, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0xac00fdd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf7363f04 # initialize rs1
li x19, 0x2170ef86 # initialize rs2
sub x19, x21, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x2ad4240a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xddbab113 # initialize rs1
li x20, 0x2786eb71 # initialize rs2
sub x20, x29, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x9a47ac79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9eb4bc3b # initialize rs1
li x21, 0x1931527a # initialize rs2
sub x21, x3, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0xc81292fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x2a355d0c # initialize rs1
li x22, 0xdf29018d # initialize rs2
sub x22, x18, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0x30de4f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x689b7c12 # initialize rs1
li x23, 0xfb6a59d0 # initialize rs2
sub x23, x23, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x714666a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb206d372 # initialize rs1
li x24, 0xaade581b # initialize rs2
sub x24, x20, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0xef7c3b9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x16671589 # initialize rs1
li x25, 0x5f3ac9f3 # initialize rs2
sub x25, x8, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x6d44c1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9ec32268 # initialize rs1
li x26, 0x48987a26 # initialize rs2
sub x26, x7, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x6325f572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x2903f298 # initialize rs1
li x27, 0xce12c22a # initialize rs2
sub x27, x30, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0xd5275c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x29687e02 # initialize rs1
li x28, 0xcb525d34 # initialize rs2
sub x28, x27, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xda9d3e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x573b0c22 # initialize rs1
li x29, 0xd9590763 # initialize rs2
sub x29, x13, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0x1bf132aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd064095e # initialize rs1
li x30, 0xe3a79914 # initialize rs2
sub x30, x22, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x6a4525ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x99f07181 # initialize rs1
li x31, 0xa63385e9 # initialize rs2
sub x31, x9, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xcbcacfe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5f03d0bb # initialize rs1
li x0, 0xe23c7948 # initialize rs2
sub x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x33b9553a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9a6b1974 # initialize rs1
li x1, 0x05cc418c # initialize rs2
sub x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x80148da8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x653db351 # initialize rs1
li x2, 0xc198a483 # initialize rs2
sub x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x66d1acd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd3d01024 # initialize rs1
li x3, 0xac7e1487 # initialize rs2
sub x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x5abb23c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfaea951a # initialize rs1
li x4, 0x5a451081 # initialize rs2
sub x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0x1b03efdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x87bf8320 # initialize rs1
li x5, 0x4d4bb212 # initialize rs2
sub x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0xd250715a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x33be9657 # initialize rs1
li x6, 0x4c5e083c # initialize rs2
sub x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x39bd0724 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x31d35ced # initialize rs1
li x7, 0xea8c99dd # initialize rs2
sub x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc763c2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdc55be5e # initialize rs1
li x8, 0xfe811d77 # initialize rs2
sub x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x1fe49649 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x028e22b9 # initialize rs1
li x9, 0xa935c462 # initialize rs2
sub x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0523735e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5f10ff03 # initialize rs1
li x10, 0x793d22bf # initialize rs2
sub x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x201cb9f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x59f134b7 # initialize rs1
li x11, 0x05250dec # initialize rs2
sub x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x07381bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9a2c6ed0 # initialize rs1
li x12, 0x751ac29d # initialize rs2
sub x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x8ec178aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf8121ffe # initialize rs1
li x13, 0x16d96210 # initialize rs2
sub x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xee491d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x06d14ebf # initialize rs1
li x14, 0x9f342085 # initialize rs2
sub x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x017721a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb1c75139 # initialize rs1
li x15, 0x33f19dbd # initialize rs2
sub x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x594453e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x1b2272ea # initialize rs1
li x16, 0x44b358e9 # initialize rs2
sub x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x69187f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x38b44338 # initialize rs1
li x17, 0x42abf6be # initialize rs2
sub x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x4b9d2c30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf8d62514 # initialize rs1
li x18, 0x58ecdf0b # initialize rs2
sub x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xa0733c72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x392d5ceb # initialize rs1
li x19, 0x6c5f2e7c # initialize rs2
sub x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x209ffc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcc3aab43 # initialize rs1
li x20, 0x0de63194 # initialize rs2
sub x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x92554a4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x608ef7bb # initialize rs1
li x21, 0x44132b83 # initialize rs2
sub x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x11306204 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x41e9d591 # initialize rs1
li x22, 0xc5327c61 # initialize rs2
sub x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xb3ae5a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9a41940c # initialize rs1
li x23, 0x2f23504c # initialize rs2
sub x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x74831093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf26ad8fa # initialize rs1
li x24, 0xcf7819dd # initialize rs2
sub x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x1649d5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb4c279e7 # initialize rs1
li x25, 0x1ca0c191 # initialize rs2
sub x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xdf77234e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9411c240 # initialize rs1
li x26, 0xaeae01e4 # initialize rs2
sub x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x8253809c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe89a6836 # initialize rs1
li x27, 0x547fa3a7 # initialize rs2
sub x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x2e3f7722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8ee67d3a # initialize rs1
li x28, 0xafa64005 # initialize rs2
sub x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xf981254f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x41752253 # initialize rs1
li x29, 0x0940b567 # initialize rs2
sub x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0b4d8a60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5f298105 # initialize rs1
li x30, 0xd8bbc101 # initialize rs2
sub x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xdaad0f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x59e045e7 # initialize rs1
li x31, 0xfe1130d4 # initialize rs2
sub x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x7, 0x9e363e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2fa9b493 # initialize rs1
li x0, 0x1c8cf3e1 # initialize rs2
sub x7, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x7, 0xc5616fda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x239a1ebd # initialize rs1
li x1, 0x6637c9cc # initialize rs2
sub x7, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x16, 0xe5e4511c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x401756e4 # initialize rs1
li x2, 0xfba04f86 # initialize rs2
sub x16, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x4, 0xd18b6596 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbfb42188 # initialize rs1
li x3, 0xcda40a69 # initialize rs2
sub x4, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x15, 0x832a1dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf32c29a6 # initialize rs1
li x4, 0xb6d54bd1 # initialize rs2
sub x15, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x3, 0x9d953468 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x1e5a7b46 # initialize rs1
li x5, 0x61dae4e4 # initialize rs2
sub x3, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x21, 0xe298c562 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2cc8aa93 # initialize rs1
li x6, 0x5724f2a7 # initialize rs2
sub x21, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x6, 0x1c7bd4da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xfdffb07d # initialize rs1
li x7, 0x7934a957 # initialize rs2
sub x6, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x11, 0xcbf2e4b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0333003a # initialize rs1
li x8, 0x27b9b9bf # initialize rs2
sub x11, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x5, 0x3788805e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x74e8b75c # initialize rs1
li x9, 0x7bdc9a16 # initialize rs2
sub x5, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x31, 0x6f52f6c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x91fa76a5 # initialize rs1
li x10, 0x8facb67c # initialize rs2
sub x31, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x30, 0xf8ad0906 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa7fab92d # initialize rs1
li x11, 0x9417e4ec # initialize rs2
sub x30, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x2, 0x65a48707 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xedbe3e4c # initialize rs1
li x12, 0xdbb11499 # initialize rs2
sub x2, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x7, 0x0e3764b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0029c960 # initialize rs1
li x13, 0x20785e13 # initialize rs2
sub x7, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x15, 0x7ec8cf90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2e7b7974 # initialize rs1
li x14, 0xd9550c3c # initialize rs2
sub x15, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x20, 0x460bcff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x702d73a6 # initialize rs1
li x15, 0x54e97010 # initialize rs2
sub x20, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x3, 0x1a917bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x214e7ba7 # initialize rs1
li x16, 0x6abc6d2d # initialize rs2
sub x3, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x6, 0x5927ab0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5af85829 # initialize rs1
li x17, 0x2573b2e6 # initialize rs2
sub x6, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x375d50ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7eb0e68a # initialize rs1
li x18, 0x96ecf900 # initialize rs2
sub x18, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x10, 0xe8cc28cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x04b9319e # initialize rs1
li x19, 0x18761298 # initialize rs2
sub x10, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x15, 0xd83db3b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaa670264 # initialize rs1
li x20, 0xa15bfb86 # initialize rs2
sub x15, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x4, 0xbebda15f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x06e85192 # initialize rs1
li x21, 0x2f408c47 # initialize rs2
sub x4, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x17, 0x5a4df392 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8285379a # initialize rs1
li x22, 0x591005de # initialize rs2
sub x17, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x20, 0xdb3b2bae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x442849cc # initialize rs1
li x23, 0x721e12f9 # initialize rs2
sub x20, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x5, 0xe59d153b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdbf0ea11 # initialize rs1
li x24, 0x47c907f8 # initialize rs2
sub x5, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x11, 0x341adb82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfec91d2b # initialize rs1
li x25, 0x9ceaed24 # initialize rs2
sub x11, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x10, 0x02fbf01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5e5c2234 # initialize rs1
li x26, 0x3398a63c # initialize rs2
sub x10, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x8, 0xabe5b3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xba9e20ef # initialize rs1
li x27, 0xfadedd29 # initialize rs2
sub x8, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x7, 0x150988bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb94df357 # initialize rs1
li x28, 0x44205969 # initialize rs2
sub x7, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x16, 0x8c277520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc58ce12a # initialize rs1
li x29, 0xae6e6da1 # initialize rs2
sub x16, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x11, 0x965bb231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x12b57632 # initialize rs1
li x30, 0x356b03af # initialize rs2
sub x11, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x5, 0xfb1bf959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xac079a42 # initialize rs1
li x31, 0x623a9e53 # initialize rs2
sub x5, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x177425bd)
li x14, 0xcb18a56c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x177425bd # initialize rs1
li x3, 0x4b805a14 # initialize rs2
sub x14, x30, x3 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x38bb4132)
li x19, 0xf97959f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc744bece # initialize rs1
li x1, 0x4b877bc4 # initialize rs2
sub x19, x13, x1 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x241d5ec5)
li x23, 0xc0d72e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7a24e51a # initialize rs1
li x9, 0x241d5ec5 # initialize rs2
sub x23, x24, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0xd3cc7e5)
li x17, 0xa8ee31cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xdf109c67 # initialize rs1
li x24, 0xf2c3381b # initialize rs2
sub x17, x30, x24 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
