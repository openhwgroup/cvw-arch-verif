//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    

// ******************
// Tests from: WALLY-COV-c.srai.S
// ******************


    
# Testcase cp_imm_shift
li x16, 0x64430245 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2b0598a9
c.srai x8, 1 # perform operation

# Testcase cp_imm_shift
li x30, 0xb4e378fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x14938f63
c.srai x14, 2 # perform operation

# Testcase cp_imm_shift
li x31, 0x3583a8e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb65cbc61
c.srai x15, 3 # perform operation

# Testcase cp_imm_shift
li x27, 0xe0f3ce79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf03d1f48
c.srai x11, 4 # perform operation

# Testcase cp_imm_shift
li x20, 0xfebe8cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7a273ced
c.srai x12, 5 # perform operation

# Testcase cp_imm_shift
li x19, 0x962d3687 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8a57f5b5
c.srai x11, 6 # perform operation

# Testcase cp_imm_shift
li x1, 0xbef3eb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcd8a73e7
c.srai x9, 7 # perform operation

# Testcase cp_imm_shift
li x26, 0x11bc2ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6af5f71b
c.srai x10, 8 # perform operation

# Testcase cp_imm_shift
li x2, 0x2bbaa829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb5f4225c
c.srai x10, 9 # perform operation

# Testcase cp_imm_shift
li x25, 0x5f3105e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8ab33b71
c.srai x9, 10 # perform operation

# Testcase cp_imm_shift
li x1, 0x2a04e783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0ba85a8a
c.srai x9, 11 # perform operation

# Testcase cp_imm_shift
li x12, 0x213fafcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x667f7355
c.srai x12, 12 # perform operation

# Testcase cp_imm_shift
li x12, 0x9d02d507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x004a11fc
c.srai x12, 13 # perform operation

# Testcase cp_imm_shift
li x4, 0x5b08f45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2a3f2c1e
c.srai x12, 14 # perform operation

# Testcase cp_imm_shift
li x28, 0x164883d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe76482bb
c.srai x12, 15 # perform operation

# Testcase cp_imm_shift
li x14, 0x0bc89902 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7644cc53
c.srai x14, 16 # perform operation

# Testcase cp_imm_shift
li x28, 0x44dd8449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xadd84f36
c.srai x12, 17 # perform operation

# Testcase cp_imm_shift
li x13, 0x125c5fec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8d047fd8
c.srai x13, 18 # perform operation

# Testcase cp_imm_shift
li x16, 0x03bd52b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc47f589e
c.srai x8, 19 # perform operation

# Testcase cp_imm_shift
li x18, 0xeba5a7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xad30ec5a
c.srai x10, 20 # perform operation

# Testcase cp_imm_shift
li x7, 0x152c611e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd1fa6f3c
c.srai x15, 21 # perform operation

# Testcase cp_imm_shift
li x16, 0x76183137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb17950be
c.srai x8, 22 # perform operation

# Testcase cp_imm_shift
li x12, 0x4fdc99df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x196f5e70
c.srai x12, 23 # perform operation

# Testcase cp_imm_shift
li x8, 0xeb3090e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x980f8746
c.srai x8, 24 # perform operation

# Testcase cp_imm_shift
li x17, 0x231994f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x631b9019
c.srai x9, 25 # perform operation

# Testcase cp_imm_shift
li x13, 0x50608520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfd00dd40
c.srai x13, 26 # perform operation

# Testcase cp_imm_shift
li x2, 0x7686eed2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x254fe3bb
c.srai x10, 27 # perform operation

# Testcase cp_imm_shift
li x21, 0xfc6fc89c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe28ed40d
c.srai x13, 28 # perform operation

# Testcase cp_imm_shift
li x29, 0x8b86a668 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x87acba8e
c.srai x13, 29 # perform operation

# Testcase cp_imm_shift
li x20, 0xcdc55a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x74f6efa5
c.srai x12, 30 # perform operation

# Testcase cp_imm_shift
li x17, 0x62a20e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x20c31158
c.srai x9, 31 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0a76ab1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xbbff2145
c.srai x8, 26 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe91fa2a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf9adb7e9
c.srai x9, 16 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x622864ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x74ddc4e5
c.srai x10, 27 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd93d5381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6c4bdddf
c.srai x11, 6 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf50c6d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x01ba7613
c.srai x12, 21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x73a386b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x79ad68f0
c.srai x13, 12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5e3a29e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd2a2552a
c.srai x14, 28 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2cf67914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0d0d4081
c.srai x15, 19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x15, 0x90064939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000
c.srai x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2 Shifted by 1)
li x23, 0xa73e890c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002
c.srai x15, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4 Shifted by 1)
li x1, 0x73903dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000004
c.srai x9, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe Shifted by 1)
li x24, 0xe3771b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe
c.srai x8, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x377910ee Shifted by 1)
li x29, 0xfa886773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x377910ee
c.srai x13, 1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.slli.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xeae163f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x05b4116a
c.slli x0, 16 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xd79aac38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55aece89
c.slli x1, 12 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x96c8234c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8b5a8f4b
c.slli x2, 22 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7d9688b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x000f2101
c.slli x3, 7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x79aff440 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3c44cfab
c.slli x4, 4 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x751ba369 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x476d53b2
c.slli x5, 10 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe97266e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xee36c007
c.slli x6, 21 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x32948c1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x87b3c481
c.slli x7, 28 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x850e36c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x62606997
c.slli x8, 17 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc7b013e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3e99b22d
c.slli x9, 29 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2ebea87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x58e5915b
c.slli x10, 29 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd07387d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd8f962fd
c.slli x11, 24 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xcc9b0c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4a5a687a
c.slli x12, 18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa7341eca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x77957c69
c.slli x13, 2 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x7b9bc17a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4bb6fb63
c.slli x14, 23 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0acac135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x84f53b35
c.slli x15, 18 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x45fe88c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x4339cc26
c.slli x16, 23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x55af1ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x6d57cd45
c.slli x17, 8 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4481bf8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa4759d44
c.slli x18, 4 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfafb8de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9c050071
c.slli x19, 2 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xad7defda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4e14ca4f
c.slli x20, 13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x444c9d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x165b7234
c.slli x21, 6 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4c898ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa802b969
c.slli x22, 29 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x74daef1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8cb36ced
c.slli x23, 5 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc1402eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x553f8295
c.slli x24, 12 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd6e1a13c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6067b3e2
c.slli x25, 7 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x5b85e5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x66e496d5
c.slli x26, 19 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x2b2082e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x41536901
c.slli x27, 22 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc5366582 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa2e8ce77
c.slli x28, 29 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x3441a878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x514a9f5e
c.slli x29, 18 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x89526ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6bfd0078
c.slli x30, 19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf4ff33cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe97be685
c.slli x31, 19 # perform operation

# Testcase cp_imm_shift
li x2, 0x2b41abb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xeb53432e
c.slli x2, 1 # perform operation

# Testcase cp_imm_shift
li x10, 0x34899365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x297acf53
c.slli x10, 2 # perform operation

# Testcase cp_imm_shift
li x24, 0x7ec822a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0caf8373
c.slli x24, 3 # perform operation

# Testcase cp_imm_shift
li x21, 0x9fe4b5b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaf3e91d
c.slli x21, 4 # perform operation

# Testcase cp_imm_shift
li x17, 0x22235337 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5381c5c9
c.slli x17, 5 # perform operation

# Testcase cp_imm_shift
li x30, 0x2d1af953 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc1749780
c.slli x30, 6 # perform operation

# Testcase cp_imm_shift
li x22, 0xe1d898bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x20dfcc7a
c.slli x22, 7 # perform operation

# Testcase cp_imm_shift
li x19, 0x949a3b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb2f0a209
c.slli x19, 8 # perform operation

# Testcase cp_imm_shift
li x30, 0xd6f549ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1abd7431
c.slli x30, 9 # perform operation

# Testcase cp_imm_shift
li x4, 0x3e12371e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd7d67719
c.slli x4, 10 # perform operation

# Testcase cp_imm_shift
li x13, 0xdcfdfc6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc0e8b9d0
c.slli x13, 11 # perform operation

# Testcase cp_imm_shift
li x31, 0x42f8ef86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x687e633e
c.slli x31, 12 # perform operation

# Testcase cp_imm_shift
li x4, 0x446c78a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe785f510
c.slli x4, 13 # perform operation

# Testcase cp_imm_shift
li x21, 0x92f2349f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd7bb6ef5
c.slli x21, 14 # perform operation

# Testcase cp_imm_shift
li x9, 0x678c0783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7b3b2e04
c.slli x9, 15 # perform operation

# Testcase cp_imm_shift
li x1, 0x7e36b3c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7be8ed21
c.slli x1, 16 # perform operation

# Testcase cp_imm_shift
li x3, 0xdb780453 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xb44f6853
c.slli x3, 17 # perform operation

# Testcase cp_imm_shift
li x27, 0xb72b6c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdb1c9ae2
c.slli x27, 18 # perform operation

# Testcase cp_imm_shift
li x5, 0x6e7258b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf5775235
c.slli x5, 19 # perform operation

# Testcase cp_imm_shift
li x19, 0x349abc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x349f9ba1
c.slli x19, 20 # perform operation

# Testcase cp_imm_shift
li x26, 0x4b1b23b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc9fea648
c.slli x26, 21 # perform operation

# Testcase cp_imm_shift
li x5, 0x9cf00851 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcd793877
c.slli x5, 22 # perform operation

# Testcase cp_imm_shift
li x27, 0xeeae30f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x4eacbbff
c.slli x27, 23 # perform operation

# Testcase cp_imm_shift
li x19, 0xb4917edd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x96808819
c.slli x19, 24 # perform operation

# Testcase cp_imm_shift
li x23, 0x49d2de8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf9ee1cd8
c.slli x23, 25 # perform operation

# Testcase cp_imm_shift
li x4, 0xf3b3dc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x73754961
c.slli x4, 26 # perform operation

# Testcase cp_imm_shift
li x28, 0xd51d802f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8f0b394b
c.slli x28, 27 # perform operation

# Testcase cp_imm_shift
li x10, 0xbdac36c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1c20fc03
c.slli x10, 28 # perform operation

# Testcase cp_imm_shift
li x17, 0x47cc91a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe2a064e1
c.slli x17, 29 # perform operation

# Testcase cp_imm_shift
li x8, 0xd78822f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5f33f88a
c.slli x8, 30 # perform operation

# Testcase cp_imm_shift
li x20, 0x034037b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc163d6ee
c.slli x20, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x10, 0x35511d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000
c.slli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1 Shifted by 1)
li x5, 0x43393ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001
c.slli x5, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x40000000 Shifted by 1)
li x30, 0x24f904c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x40000000
c.slli x30, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3fffffff Shifted by 1)
li x13, 0xf4202135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3fffffff
c.slli x13, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff Shifted by 1)
li x27, 0xfa122d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7fffffff
c.slli x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555 Shifted by 1)
li x7, 0x5c1b4703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x55555555
c.slli x7, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2dde443b Shifted by 1)
li x10, 0x6ca0b1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2dde443b
c.slli x10, 1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.bnez.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x5aac1f38)
li x2, 0x225ac4a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5aac1f38 # initialize rs1
c.bnez x12, some_label_for_cbtype_1477295752 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1477295752:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x63254b63)
li x16, 0x67650348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9cdab49d # initialize rs1
c.bnez x12, some_label_for_cbtype_3301010222 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3301010222:
addi x0, x2, 2
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 1 # initialize rs1 to 1
c.bnez x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x55b89ec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0b5594ad # initialize rs1
c.bnez x8, some_label_for_cbtype_1255402222 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1255402222:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x370c9c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbcc15cf2 # initialize rs1
c.bnez x9, some_label_for_cbtype_176158302 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_176158302:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x23, 0xd13659f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x207acb22 # initialize rs1
c.bnez x10, some_label_for_cbtype_3208042228 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3208042228:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0x473c7e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x16877d17 # initialize rs1
c.bnez x11, some_label_for_cbtype_3283739238 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3283739238:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x1cbb99f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4aa228ab # initialize rs1
c.bnez x12, some_label_for_cbtype_2135734627 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2135734627:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0xb5aa4c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x771497c8 # initialize rs1
c.bnez x13, some_label_for_cbtype_188831216 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_188831216:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0x0f6b7ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd97b90ee # initialize rs1
c.bnez x14, some_label_for_cbtype_1853578853 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1853578853:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0x3f872d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x304b87fb # initialize rs1
c.bnez x15, some_label_for_cbtype_218493192 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_218493192:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0xd8c5da22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize rs1
c.bnez x11, some_label_for_cbtype_2657799901 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2657799901:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x966782f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs1
c.bnez x15, some_label_for_cbtype_2180004780 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2180004780:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x990a9cee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs1
c.bnez x12, some_label_for_cbtype_1715495740 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1715495740:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0xa3abea36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
c.bnez x11, some_label_for_cbtype_3775718773 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3775718773:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x29, 0xac71a13e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs1
c.bnez x14, some_label_for_cbtype_1801219234 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1801219234:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x6, 0x54fa0ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs1
c.bnez x13, some_label_for_cbtype_498211284 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_498211284:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x91040238 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
c.bnez x11, some_label_for_cbtype_191655879 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_191655879:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x3ca15971 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize rs1
c.bnez x10, some_label_for_cbtype_230324509 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_230324509:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x3fe16c8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffe # initialize rs1
c.bnez x12, some_label_for_cbtype_1510669804 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1510669804:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x22, 0xc38e27e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877 # initialize rs1
c.bnez x10, some_label_for_cbtype_4264408016 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_4264408016:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x28, 0xc7b8cbca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs1
c.bnez x10, some_label_for_cbtype_3262957418 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3262957418:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0xe80f8eee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs1
c.bnez x8, some_label_for_cbtype_326062540 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_326062540:
addi x0, x2, 2
nop
nop

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.mv.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x8e51a3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9ec31c5d
c.mv x0, x1 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5e413ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xecb73cc0
c.mv x1, x24 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x22e01b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x78f24d26
c.mv x2, x16 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x41287459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc283b4c1
c.mv x3, x28 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x8ac18f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9024c1ec
c.mv x4, x30 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x882805d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf03cdaa8
c.mv x5, x17 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x5fca63dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe019485f
c.mv x6, x31 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x40f2bc76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd8eea8f5
c.mv x7, x24 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xcb9ddaba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa4026722
c.mv x8, x6 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6d6bc782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8840db0d
c.mv x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x90fb3cda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa888917c
c.mv x10, x2 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x16944dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x570f9f16
c.mv x11, x30 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7a86e4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x39b5142c
c.mv x12, x21 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x30e92a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc95933a9
c.mv x13, x26 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x72b52579 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1eeadbbf
c.mv x14, x17 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4492700d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xb8baa5ec
c.mv x15, x4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x87e50c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xd79d5315
c.mv x16, x26 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x167ede00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0a32f2ca
c.mv x17, x26 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xefb63e7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x47756661
c.mv x18, x27 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xec6d7d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8ed7125a
c.mv x19, x8 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xdd4a7a9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9905064a
c.mv x20, x12 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xda3ee22d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9a6f8302
c.mv x21, x25 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe555acd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x683b1173
c.mv x22, x4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa0856194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5134fd35
c.mv x23, x16 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb24cb994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0e74365b
c.mv x24, x4 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd2517973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x56726e41
c.mv x25, x28 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3e9c0dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9f782073
c.mv x26, x27 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x606b14d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa4df60ec
c.mv x27, x29 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x396d41a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1cd53f1f
c.mv x28, x15 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x57c1be9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7677ac18
c.mv x29, x20 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x26eb2c99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdbb71ee3
c.mv x30, x15 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5decf9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1947d692
c.mv x31, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xc9131363 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x94361802
c.mv x5, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xd4c27ced # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x66ffcacd
c.mv x8, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x17, 0x01af261f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x906c90bb
c.mv x17, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x31, 0x1bb07eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x1f5b17ee
c.mv x31, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x26, 0x2709e44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x627e1467
c.mv x26, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x15, 0x57b44b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5fb54516
c.mv x15, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x10, 0x9c5f1aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x123b96cf
c.mv x10, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0xb54bb42d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64c9447b
c.mv x2, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x476325b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd602887a
c.mv x25, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x31, 0x305e7ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x36b358c4
c.mv x31, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xf98015bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe291805a
c.mv x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xf5641847 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x61ac005e
c.mv x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xd10de3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeda00bb0
c.mv x25, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x0a5f3308 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x37525afa
c.mv x19, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x26, 0x3fd5acd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8bd41bee
c.mv x26, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x10, 0xb8d0abf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xefbdcd6b
c.mv x10, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0xd176b907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x19453d8e
c.mv x11, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x9, 0x1daa4046 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x833f223d
c.mv x9, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x7cd32043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5dfec68c
c.mv x21, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x16, 0xa17ede22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1e54bd4a
c.mv x16, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0x29adee77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5d2e4428
c.mv x9, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x4, 0x54bf66f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x61896b7d
c.mv x4, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0x79add4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8689ace6
c.mv x16, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x27, 0xa274a501 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd0bde117
c.mv x27, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xacf9b7be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x072d0383
c.mv x23, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x16, 0x4fb6903a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x6ca8d409
c.mv x16, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x90d1f413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x729e3bed
c.mv x5, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x12, 0xaa699910 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5ccac2c4
c.mv x12, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x5a629f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xaa957fb4
c.mv x10, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x6e03ab06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9324113
c.mv x26, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0xfef61dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x84f584cc
c.mv x1, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x4a125070)
li x7, 0xd8b2d182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4a125070
c.mv x7, x26 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x115155d3)
li x13, 0x2e00cf74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xeeaeaa2d
c.mv x13, x29 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x24, 0x1c399871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe3c6678f
c.mv x24, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x9390abbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6c6f5446
c.mv x15, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0xe2bc50bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1d43af43
c.mv x1, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0xdb741d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa48be29b
c.mv x11, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x24, 0x1b91151c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x646eeae5
c.mv x24, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0x85dcaa47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfa2355b8
c.mv x14, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x15, 0xb8cf9a8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc7306570
c.mv x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x22, 0x82313f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7dcec0ea
c.mv x22, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0xf3b498a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0c4b675b
c.mv x11, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x13, 0x756a9ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe651e995
c.mv x13, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x16, 0x417a9486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x69301624
c.mv x16, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0x5f6edbe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf5e67975
c.mv x8, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0x8a807933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00000000
c.mv x17, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x0e6fbe21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001
c.mv x6, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x38273388 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000002
c.mv x25, x2 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x4, 0xc5fd49fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000000
c.mv x4, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x4d58d626 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x80000001
c.mv x8, x7 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x4, 0xe379ca4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffff
c.mv x4, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0xeabe163c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffe
c.mv x13, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x12e227aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff
c.mv x29, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x8, 0x71498317 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffe
c.mv x8, x24 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x5, 0x50662feb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.mv x5, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x21, 0x33b1ebf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaa
c.mv x21, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0xe6ab1f0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x55555555
c.mv x13, x25 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.and.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x785152a0)
li x13, 0x785152a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x785152a0 # initialize leagalized rd to a random value that should get changed
li x13, 0x785152a0 # initialize rs2
c.and x13, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x17682e19)
li x8, 0x869437a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6f0b85ed # initialize leagalized rd to a random value that should get changed
li x12, 0x17682e19 # initialize rs2
c.and x8, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x1d920cef)
li x31, 0x1e79b35a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcb0652a9 # initialize leagalized rd to a random value that should get changed
li x14, 0xe26df311 # initialize rs2
c.and x15, x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb7935d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2794d2b1 # initialize leagalized rd to a random value that should get changed
li x8, 0xc3823559 # initialize rs2
c.and x8, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xfdfa4ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3ecb59d7 # initialize leagalized rd to a random value that should get changed
li x11, 0xf56f2823 # initialize rs2
c.and x9, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x45c8595f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa71df449 # initialize leagalized rd to a random value that should get changed
li x10, 0x50fc12a9 # initialize rs2
c.and x10, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x380d207b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf84f11f8 # initialize leagalized rd to a random value that should get changed
li x14, 0x4decaa52 # initialize rs2
c.and x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd80e33a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x19ea612b # initialize leagalized rd to a random value that should get changed
li x9, 0xf3057715 # initialize rs2
c.and x12, x9 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe72bed7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2fcde917 # initialize leagalized rd to a random value that should get changed
li x10, 0x6db91a52 # initialize rs2
c.and x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb3ea7541 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1337dd69 # initialize leagalized rd to a random value that should get changed
li x10, 0x20d604af # initialize rs2
c.and x14, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8ec5d8da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x87a765a9 # initialize leagalized rd to a random value that should get changed
li x9, 0x0957ae2e # initialize rs2
c.and x15, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x7c9a70b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x6af6531a # initialize leagalized rd to a random value that should get changed
li x8, 0x24271455 # initialize rs2
c.and x8, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x21, 0xafff3ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x950ca900 # initialize leagalized rd to a random value that should get changed
li x9, 0x3f7b813e # initialize rs2
c.and x13, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0xf0fcfeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x905a7e95 # initialize leagalized rd to a random value that should get changed
li x10, 0xb3cc608a # initialize rs2
c.and x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x61b060fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4d71ef3f # initialize leagalized rd to a random value that should get changed
li x11, 0x86f9d828 # initialize rs2
c.and x9, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x20, 0x8827c5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe5da8b49 # initialize leagalized rd to a random value that should get changed
li x12, 0x818e900f # initialize rs2
c.and x12, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x1, 0x3528b948 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xea1218c4 # initialize leagalized rd to a random value that should get changed
li x13, 0xb097bd43 # initialize rs2
c.and x9, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x0824af7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x05b0a4a6 # initialize leagalized rd to a random value that should get changed
li x14, 0x6d07047c # initialize rs2
c.and x10, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x0e8c1b89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x40c452f1 # initialize leagalized rd to a random value that should get changed
li x15, 0xaf60d83f # initialize rs2
c.and x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x57896597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000 # initialize rs2
c.and x12, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x7609c768 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x00000001 # initialize rs2
c.and x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0x1b3630a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x14, 0x00000002 # initialize rs2
c.and x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0xd56be490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x14, 0x80000000 # initialize rs2
c.and x9, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x4, 0x45495383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x11, 0x80000001 # initialize rs2
c.and x12, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x21, 0xa99011f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x15, 0x7fffffff # initialize rs2
c.and x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0xf40d050e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.and x8, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x8eb48e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.and x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x948f31d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffe # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x24, 0x82213755 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x13, 0x5bbc8877 # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xae00c9fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x12, 0xaaaaaaaa # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x5, 0x7a2e99d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
li x10, 0x55555555 # initialize rs2
c.and x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xab741a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9c4aee2b # initialize leagalized rd to a random value that should get changed
li x12, 0x00000000 # initialize rs2
c.and x8, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x3f3da609 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc93898d2 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000001 # initialize rs2
c.and x8, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x30ae2783 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x786323f0 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000002 # initialize rs2
c.and x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x23, 0x3124a863 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfcafcc28 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000000 # initialize rs2
c.and x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x18, 0x207e1d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe6cb7d3d # initialize leagalized rd to a random value that should get changed
li x13, 0x80000001 # initialize rs2
c.and x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x27, 0x44d15dc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc982f295 # initialize leagalized rd to a random value that should get changed
li x12, 0x7fffffff # initialize rs2
c.and x11, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x14, 0x3cf1adfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5a377b0f # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.and x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x23f520ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1dce44a9 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.and x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xe291a454 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4e0f60d0 # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffe # initialize rs2
c.and x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0x74f54f90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x71650621 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.and x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x25, 0xe3c82bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x31da0fc0 # initialize leagalized rd to a random value that should get changed
li x15, 0xaaaaaaaa # initialize rs2
c.and x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x30, 0x886894fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf9340cf1 # initialize leagalized rd to a random value that should get changed
li x12, 0x55555555 # initialize rs2
c.and x14, x12 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.xor.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x440e3729)
li x6, 0x440e3729 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x440e3729 # initialize leagalized rd to a random value that should get changed
li x12, 0x440e3729 # initialize rs2
c.xor x14, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x75c368cd)
li x5, 0xc800c9b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbcfdfb14 # initialize leagalized rd to a random value that should get changed
li x12, 0x75c368cd # initialize rs2
c.xor x13, x12 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x7528f444)
li x13, 0x76ef7205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x3156cc65 # initialize leagalized rd to a random value that should get changed
li x15, 0x8ad70bbc # initialize rs2
c.xor x13, x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x461377a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x138b1928 # initialize leagalized rd to a random value that should get changed
li x8, 0x438af63c # initialize rs2
c.xor x8, x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6f4ce0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x89267517 # initialize leagalized rd to a random value that should get changed
li x14, 0xe72787cb # initialize rs2
c.xor x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc1b798e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x105be658 # initialize leagalized rd to a random value that should get changed
li x14, 0xea740e4d # initialize rs2
c.xor x10, x14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x16fafb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x42cd12a3 # initialize leagalized rd to a random value that should get changed
li x15, 0x677a8073 # initialize rs2
c.xor x11, x15 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3cd06d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa77788be # initialize leagalized rd to a random value that should get changed
li x14, 0x3ac163c6 # initialize rs2
c.xor x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x0baae5d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xa707327f # initialize leagalized rd to a random value that should get changed
li x8, 0x5bb5eb6b # initialize rs2
c.xor x13, x8 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9ab461b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xba9decee # initialize leagalized rd to a random value that should get changed
li x12, 0x4cf4231e # initialize rs2
c.xor x14, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc1348268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x66aa64c7 # initialize leagalized rd to a random value that should get changed
li x10, 0xb59a3b51 # initialize rs2
c.xor x15, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xe9da1672 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x90a6d5a1 # initialize leagalized rd to a random value that should get changed
li x8, 0xf94e3a23 # initialize rs2
c.xor x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0xf646d8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x670ce4c0 # initialize leagalized rd to a random value that should get changed
li x9, 0xf874ec4d # initialize rs2
c.xor x9, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0xdc9dfa7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11799ef4 # initialize leagalized rd to a random value that should get changed
li x10, 0x4b4108c6 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x8d06eeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6857a975 # initialize leagalized rd to a random value that should get changed
li x11, 0x79ac1d2b # initialize rs2
c.xor x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x4, 0x99b13ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xab833ca4 # initialize leagalized rd to a random value that should get changed
li x12, 0xa9dd749a # initialize rs2
c.xor x12, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x338b2bec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcff3e62b # initialize leagalized rd to a random value that should get changed
li x13, 0x5ca89c8f # initialize rs2
c.xor x13, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0xb9aad9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5d45d95a # initialize leagalized rd to a random value that should get changed
li x14, 0x8af209a2 # initialize rs2
c.xor x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0x761f175d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xf61069a2 # initialize leagalized rd to a random value that should get changed
li x15, 0x7be77637 # initialize rs2
c.xor x15, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0x94ed74db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000 # initialize rs2
c.xor x12, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x13, 0x81a9dd46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000001 # initialize rs2
c.xor x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x6a06b50f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000002 # initialize rs2
c.xor x15, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x18, 0x037acc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x80000000 # initialize rs2
c.xor x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x1, 0xfbfd41a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000001 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x24, 0x59c148c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffff # initialize rs2
c.xor x8, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x24, 0x7c4eddf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x7ffffffe # initialize rs2
c.xor x8, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0x2ef8146e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.xor x11, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0x88bb022a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffe # initialize rs2
c.xor x8, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x3, 0x00d5fcbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc8877 # initialize rs2
c.xor x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x14, 0x36ab8421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaa # initialize rs2
c.xor x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x9, 0x70491282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x55555555 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x9a4da545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x4cc878de # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000 # initialize rs2
c.xor x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0x972a3cc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c3f9d61 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000001 # initialize rs2
c.xor x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xd042cd11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf0613ee5 # initialize leagalized rd to a random value that should get changed
li x8, 0x00000002 # initialize rs2
c.xor x14, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x5b6ee1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb45c965d # initialize leagalized rd to a random value that should get changed
li x12, 0x80000000 # initialize rs2
c.xor x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0x1ad1a973 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x233a2931 # initialize leagalized rd to a random value that should get changed
li x9, 0x80000001 # initialize rs2
c.xor x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x6, 0xd454b9c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb4e9c97e # initialize leagalized rd to a random value that should get changed
li x13, 0x7fffffff # initialize rs2
c.xor x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x27, 0x589c8c23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8f9a7b16 # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffe # initialize rs2
c.xor x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xa10bd6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4ddddf7f # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff # initialize rs2
c.xor x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x4a1c7c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa45cf9c6 # initialize leagalized rd to a random value that should get changed
li x15, 0xfffffffe # initialize rs2
c.xor x12, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x24, 0x63979d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb6d30779 # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.xor x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x20, 0x62677aba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x932222ea # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaa # initialize rs2
c.xor x12, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x29, 0x564dbc1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0c183b35 # initialize leagalized rd to a random value that should get changed
li x11, 0x55555555 # initialize rs2
c.xor x13, x11 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.add.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x75d9874f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xcbaeca74
c.add x0, x1 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x6d2c9c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8ce51d40
c.add x1, x3 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x43dec2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x93f09974
c.add x2, x15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc6870ace # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb590e35d
c.add x3, x14 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xe9478cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa757aaff
c.add x4, x18 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xa3d13c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x15113711
c.add x5, x10 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x7ca72c80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa2035799
c.add x6, x23 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x97ed2c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x96e08987
c.add x7, x22 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2332957f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe38631b5
c.add x8, x3 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x86c62e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb46b8da0
c.add x9, x20 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x54b5985e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xf858fb88
c.add x10, x18 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8d059cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x43ded5b6
c.add x11, x19 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3158dc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xa116c97e
c.add x12, x30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x12265bc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xac4c32bd
c.add x13, x21 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x16af2f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xc150e8fc
c.add x14, x25 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc7925513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x91272d79
c.add x15, x16 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xc6803135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x67b09c99
c.add x16, x3 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x7e979200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x78cb4e02
c.add x17, x7 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xf2e0c202 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x83b977d8
c.add x18, x7 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x01ee07b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4b58fbd7
c.add x19, x12 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x66884747 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd50efdd4
c.add x20, x14 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xe5fe9d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfd1aa864
c.add x21, x22 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x78288ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2532fd34
c.add x22, x9 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7b812d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0245966c
c.add x23, x28 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xaaa55f10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6d49abe3
c.add x24, x20 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x74de76ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb6f76e68
c.add x25, x31 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x485b7dad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2aac4988
c.add x26, x20 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x01d2e4de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdde57993
c.add x27, x17 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x2725a434 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x877e8296
c.add x28, x11 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2760e490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x82979ad1
c.add x29, x25 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2a45b0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb42fc23c
c.add x30, x24 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x483412bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x79afed3f
c.add x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0x8f66ead1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1ee73771
c.add x6, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x27, 0x9a1e4f71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x75766260
c.add x27, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x6d092a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe26ea5f9
c.add x7, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x25, 0xb8ac5988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xdc5c752e
c.add x25, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x16, 0x343656b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0104b784
c.add x16, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x11, 0x7b4cd47f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x993f06fa
c.add x11, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x2, 0x0349ed80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x2dd2dc42
c.add x2, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xc66d4408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7052f981
c.add x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x4c0daf70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc4a07518
c.add x1, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x4, 0x934aa7ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x66107f99
c.add x4, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x1fb674b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7a7101f2
c.add x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x8, 0xfae87a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x1dd0b2f2
c.add x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0x7c5d5ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x58a11448
c.add x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x9946e4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4a0fe9a8
c.add x17, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x17, 0xb88899ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x99672b55
c.add x17, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0x32b544a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xea608497
c.add x26, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x839c5c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x358c4aa3
c.add x8, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0xc20c5bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x011b8daa
c.add x8, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0x09958089 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x5fb61117
c.add x16, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x624b4122 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x86751808
c.add x21, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x24, 0x2bc5947e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x25e75347
c.add x24, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xd0aec5a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2eb0380d
c.add x21, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0x4e18c1af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa33e3be9
c.add x19, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x22, 0x0b86f12b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7607ca93
c.add x22, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x8755427b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x60760f51
c.add x31, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0x8a31c36f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x32df3d14
c.add x9, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x09dd7eb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0faf85fe
c.add x26, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x82ffbf1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8bd96fc3
c.add x5, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xe330084a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x81c95496
c.add x19, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x2b70ece3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x802154e9
c.add x28, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x26, 0x59404d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5f15e9d0
c.add x26, x31 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x176075ff)
li x6, 0xa0cd4059 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x176075ff
c.add x6, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x2f4278c8)
li x4, 0xdee9bc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd0bd8738
c.add x4, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0x5ccfb9de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xa3304622
c.add x29, x16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x98f8ea7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x67071584
c.add x7, x19 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xc27cd396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3d832c6c
c.add x2, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x9b760c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xe489f379
c.add x29, x5 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0xf6ffd7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8900284b
c.add x22, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0xe2b6b95e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x9d4946a1
c.add x28, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xfb64c37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x849b3c81
c.add x14, x21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x174174cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe8be8b32
c.add x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x0da95e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xf256a1a6
c.add x11, x4 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x17, 0xf11fda68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6a9cae0f
c.add x17, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x3, 0x63b2ba85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x46f7f025
c.add x3, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x2, 0xe43d774c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7117de09
c.add x2, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x5010f0fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000
c.add x13, x27 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x98579b70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000001
c.add x10, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x691f9acc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002
c.add x9, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x22, 0xf945c299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000
c.add x22, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x16, 0xede592c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x80000001
c.add x16, x23 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x5, 0x94922889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.add x5, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x22, 0x47443b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7ffffffe
c.add x22, x28 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xc8a5b3d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff
c.add x16, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0xabc33b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffe
c.add x6, x25 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x28, 0xae50ac03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc8877
c.add x28, x22 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x6, 0xb330f5f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa
c.add x6, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x8f53d035 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555
c.add x8, x6 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.or.S
// ******************


    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x261cdc0a)
li x21, 0x261cdc0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x261cdc0a # initialize leagalized rd to a random value that should get changed
li x13, 0x261cdc0a # initialize rs2
c.or x13, x13 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x3c6ec0c0)
li x8, 0xdaaf87a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe9eb06ab # initialize leagalized rd to a random value that should get changed
li x9, 0x3c6ec0c0 # initialize rs2
c.or x8, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0xbecf215)
li x21, 0x6035e486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x21420a87 # initialize leagalized rd to a random value that should get changed
li x11, 0xf4130deb # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9edc7140 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x898ebc9a # initialize leagalized rd to a random value that should get changed
li x14, 0x9f25fca6 # initialize rs2
c.or x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe5616e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe4601420 # initialize leagalized rd to a random value that should get changed
li x13, 0x1b731bdb # initialize rs2
c.or x9, x13 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x90a79ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2a65124e # initialize leagalized rd to a random value that should get changed
li x10, 0x7ec78d69 # initialize rs2
c.or x10, x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x2a2f5fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf519efb0 # initialize leagalized rd to a random value that should get changed
li x14, 0xd9e1a926 # initialize rs2
c.or x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaeafd48a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd96873c3 # initialize leagalized rd to a random value that should get changed
li x8, 0x8409b76f # initialize rs2
c.or x12, x8 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb46ea513 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xae13fdba # initialize leagalized rd to a random value that should get changed
li x15, 0x51b59bbe # initialize rs2
c.or x13, x15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x31470972 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd7c7eb2b # initialize leagalized rd to a random value that should get changed
li x10, 0x99801140 # initialize rs2
c.or x14, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xdaa45caa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x58ac522b # initialize leagalized rd to a random value that should get changed
li x15, 0x357c68f4 # initialize rs2
c.or x15, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0x4d1fae1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3ca6155f # initialize leagalized rd to a random value that should get changed
li x8, 0x6157616a # initialize rs2
c.or x11, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x1176108d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf5a02fc3 # initialize leagalized rd to a random value that should get changed
li x9, 0xfd76caca # initialize rs2
c.or x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x5d1b0d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0889bb37 # initialize leagalized rd to a random value that should get changed
li x10, 0x47b685a1 # initialize rs2
c.or x8, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x4cccb4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x59f0b054 # initialize leagalized rd to a random value that should get changed
li x11, 0xa74701e8 # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0x495891be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc787c1ba # initialize leagalized rd to a random value that should get changed
li x12, 0x74ee601e # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x22, 0x28795047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8ce1f16a # initialize leagalized rd to a random value that should get changed
li x13, 0x770cd2d6 # initialize rs2
c.or x14, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x899d63e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5579ff5a # initialize leagalized rd to a random value that should get changed
li x14, 0xdd52e00c # initialize rs2
c.or x14, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x9, 0x169ed654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd2321194 # initialize leagalized rd to a random value that should get changed
li x15, 0xf3067e16 # initialize rs2
c.or x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0xc90b1e51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000 # initialize rs2
c.or x9, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x29bf3dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000001 # initialize rs2
c.or x11, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x24a6af98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x00000002 # initialize rs2
c.or x15, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x33663ca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000000 # initialize rs2
c.or x13, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0x294cac52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x80000001 # initialize rs2
c.or x14, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0xe5e47ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x7fffffff # initialize rs2
c.or x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0x7a6eaae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffe # initialize rs2
c.or x10, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0xbd03898c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0xffffffff # initialize rs2
c.or x14, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0xf63bfe7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffe # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x11, 0x065f2c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x5bbc8877 # initialize rs2
c.or x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x21, 0xbcb611c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x14, 0xaaaaaaaa # initialize rs2
c.or x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0xb8db56f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x55555555 # initialize rs2
c.or x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x68d11c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xced6ea35 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000 # initialize rs2
c.or x11, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xf6c18567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x11d905e1 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000001 # initialize rs2
c.or x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x66e970ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x54b30a3a # initialize leagalized rd to a random value that should get changed
li x12, 0x00000002 # initialize rs2
c.or x15, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x13, 0x421f2fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xca589404 # initialize leagalized rd to a random value that should get changed
li x10, 0x80000000 # initialize rs2
c.or x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x18, 0x7dd283b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3485d556 # initialize leagalized rd to a random value that should get changed
li x8, 0x80000001 # initialize rs2
c.or x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x3, 0x0950a893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1ed964b8 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffff # initialize rs2
c.or x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x17, 0xfe1b456c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc09c0c1c # initialize leagalized rd to a random value that should get changed
li x15, 0x7ffffffe # initialize rs2
c.or x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x27, 0x0071dce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x27c858e6 # initialize leagalized rd to a random value that should get changed
li x12, 0xffffffff # initialize rs2
c.or x11, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x22, 0xaeb2e5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x89ee40a0 # initialize leagalized rd to a random value that should get changed
li x11, 0xfffffffe # initialize rs2
c.or x14, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x21, 0xdb6c3280 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xacb2112b # initialize leagalized rd to a random value that should get changed
li x11, 0x5bbc8877 # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x40949606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc7a54006 # initialize leagalized rd to a random value that should get changed
li x14, 0xaaaaaaaa # initialize rs2
c.or x9, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x25, 0x5cad8f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x043d2a01 # initialize leagalized rd to a random value that should get changed
li x10, 0x55555555 # initialize rs2
c.or x9, x10 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lw.S
// ******************


    
# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x92578240 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbec874e5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -44 # sub immediate from rs1 to counter offset
c.sw x9, 44(x8) # store value to put something in memory
c.lw x8, 44(x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xedb0e20a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8c4b03bb # initialize rs2
la x9, scratch # base address 
addi x9, x9, -16 # sub immediate from rs1 to counter offset
c.sw x11, 16(x9) # store value to put something in memory
c.lw x9, 16(x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x72d3ee22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3628f82b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -76 # sub immediate from rs1 to counter offset
c.sw x14, 76(x10) # store value to put something in memory
c.lw x10, 76(x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7192f3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x90a547c1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -20 # sub immediate from rs1 to counter offset
c.sw x13, 20(x11) # store value to put something in memory
c.lw x11, 20(x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x68f3a1ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6f90f58e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x12) # store value to put something in memory
c.lw x12, 20(x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x8adf1520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xed213c6c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -76 # sub immediate from rs1 to counter offset
c.sw x12, 76(x13) # store value to put something in memory
c.lw x13, 76(x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x993d0993 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x71103a27 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x14) # store value to put something in memory
c.lw x14, 92(x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4b3b1bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8e0c0b50 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x8, 92(x15) # store value to put something in memory
c.lw x15, 92(x15) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2a3fadee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb3a5c626 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x11) # store value to put something in memory
c.lw x8, 80(x11) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x2075c8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6edbca41 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x13) # store value to put something in memory
c.lw x9, 80(x13) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8228ea70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0e286ff7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -80 # sub immediate from rs1 to counter offset
c.sw x11, 80(x15) # store value to put something in memory
c.lw x10, 80(x15) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x240b45cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x26cea9ad # initialize rs2
la x12, scratch # base address 
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sw x9, 24(x12) # store value to put something in memory
c.lw x11, 24(x12) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xbd6383f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9f2ac5e2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -44 # sub immediate from rs1 to counter offset
c.sw x10, 44(x9) # store value to put something in memory
c.lw x12, 44(x9) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xeeeec7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x880aed14 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -28 # sub immediate from rs1 to counter offset
c.sw x15, 28(x11) # store value to put something in memory
c.lw x13, 28(x11) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd3c2e2f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x29c43a4b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -112 # sub immediate from rs1 to counter offset
c.sw x12, 112(x11) # store value to put something in memory
c.lw x14, 112(x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf8d45e07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x99841efc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -68 # sub immediate from rs1 to counter offset
c.sw x14, 68(x12) # store value to put something in memory
c.lw x15, 68(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x7, 0xe6a6ecfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1f7cc97 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x9) # store value to put something in memory
c.lw x15, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0xd4add508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x12) # store value to put something in memory
c.lw x8, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x80776fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x13) # store value to put something in memory
c.lw x14, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x781a246b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc2fb5e5e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sw x15, 0(x8) # store value to put something in memory
c.lw x10, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x0e8eb7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -4 # sub immediate from rs1 to counter offset
c.sw x12, 4(x15) # store value to put something in memory
c.lw x15, 4(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x876c9527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # store value to put something in memory
c.lw x11, 124(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0xacf2b08f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x04907861 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x15, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0xbf194ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.sw x8, 8(x9) # store value to put something in memory
c.lw x12, 8(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x5, 0x102d8ae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x9) # store value to put something in memory
c.lw x13, 124(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x31, 0x50f0bdb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd1438c13 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x22, 0xb5d4e108 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x80000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x14) # store value to put something in memory
c.lw x14, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0x93d165cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x14) # store value to put something in memory
c.lw x15, 124(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x14, 0xb5ee74d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc90405cf # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x14, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x3, 0x2f0dba79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80000001 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -4 # sub immediate from rs1 to counter offset
c.sw x8, 4(x14) # store value to put something in memory
c.lw x11, 4(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x19, 0x86b2078c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x12) # store value to put something in memory
c.lw x11, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x18, 0x1f1068e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x92654ec9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x3, 0xd7dde850 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7fffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x9, 124(x14) # store value to put something in memory
c.lw x11, 124(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x5, 0x25c779a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff # initialize rs2
la x12, scratch # base address 
addi x12, x12, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x12) # store value to put something in memory
c.lw x13, 124(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x20, 0x2107b818 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x53420073 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x12, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xadaa806e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x15) # store value to put something in memory
c.lw x14, 120(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x26, 0xfe4fb80a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x15) # store value to put something in memory
c.lw x10, 124(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0x810e1e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfaab2880 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x14) # store value to put something in memory
c.lw x13, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x3, 0x4d413e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x14) # store value to put something in memory
c.lw x11, 124(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0xbf03a97b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x12, 124(x13) # store value to put something in memory
c.lw x12, 124(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xcfdbc935 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xda19e86e # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x9, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x5, 0xfaca3934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x10) # store value to put something in memory
c.lw x13, 120(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0xe65d044c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x13, 124(x11) # store value to put something in memory
c.lw x14, 124(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0x18b9ef1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa3b4c9dd # initialize rs2
la x12, scratch # base address 
addi x12, x12, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x12) # store value to put something in memory
c.lw x11, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0x57ed91fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc8877 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -92 # sub immediate from rs1 to counter offset
c.sw x12, 92(x15) # store value to put something in memory
c.lw x12, 92(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x19, 0xc3868ce6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5bbc8877 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -124 # sub immediate from rs1 to counter offset
c.sw x11, 124(x10) # store value to put something in memory
c.lw x11, 124(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x15, 0x7666aaba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9b834988 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x8) # store value to put something in memory
c.lw x15, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x24, 0x54b9e246 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs2
la x15, scratch # base address 
addi x15, x15, -40 # sub immediate from rs1 to counter offset
c.sw x10, 40(x15) # store value to put something in memory
c.lw x8, 40(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0xae6b34d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xaaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x14, 124(x11) # store value to put something in memory
c.lw x11, 124(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x16, 0x1dede005 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xeaff57a6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -0 # sub immediate from rs1 to counter offset
c.sw x8, 0(x11) # store value to put something in memory
c.lw x8, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xdc4b0c2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x55555555 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -84 # sub immediate from rs1 to counter offset
c.sw x9, 84(x15) # store value to put something in memory
c.lw x14, 84(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x16, 0x31954a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x11) # store value to put something in memory
c.lw x8, 124(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x3, 0x91986305 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2a04306d # initialize rs2
la x8, scratch # base address 
addi x8, x8, -40 # sub immediate from rs1 to counter offset
c.sw x14, 40(x8) # store value to put something in memory
c.lw x11, 40(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x03c419cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x344bef36 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -8 # sub immediate from rs1 to counter offset
c.sw x15, 8(x9) # store value to put something in memory
c.lw x13, 8(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x26, 0xbb55ac1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0eacbae6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x10) # store value to put something in memory
c.lw x10, 104(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0x0047e659 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbb6bea15 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x14, 120(x11) # store value to put something in memory
c.lw x15, 120(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0x35fe6ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xefca7151 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x12) # store value to put something in memory
c.lw x11, 28(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x9c2b5e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x39092423 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -72 # sub immediate from rs1 to counter offset
c.sw x15, 72(x13) # store value to put something in memory
c.lw x15, 72(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xba40fc8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x54f02ee7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -64 # sub immediate from rs1 to counter offset
c.sw x13, 64(x14) # store value to put something in memory
c.lw x13, 64(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x1, 0x3fbbddb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe1278536 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -116 # sub immediate from rs1 to counter offset
c.sw x10, 116(x15) # store value to put something in memory
c.lw x9, 116(x15) # perform operation

# Testcase cp_imm_mul
li x26, 0xa418ef30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbc52477d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -0 # sub immediate from rs1 to counter offset
c.sw x13, 0(x10) # store value to put something in memory
c.lw x10, 0(x10) # perform operation

# Testcase cp_imm_mul
li x9, 0xc342d9fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc07eb539 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -4 # sub immediate from rs1 to counter offset
c.sw x14, 4(x9) # store value to put something in memory
c.lw x9, 4(x9) # perform operation

# Testcase cp_imm_mul
li x31, 0xe903d717 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6f67e501 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
c.sw x12, 8(x13) # store value to put something in memory
c.lw x15, 8(x13) # perform operation

# Testcase cp_imm_mul
li x19, 0xd379ee5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3e24e60a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -12 # sub immediate from rs1 to counter offset
c.sw x11, 12(x10) # store value to put something in memory
c.lw x11, 12(x10) # perform operation

# Testcase cp_imm_mul
li x6, 0xdd139640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf4916ad4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -16 # sub immediate from rs1 to counter offset
c.sw x10, 16(x14) # store value to put something in memory
c.lw x14, 16(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0xaec59a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc66300a2 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -20 # sub immediate from rs1 to counter offset
c.sw x12, 20(x15) # store value to put something in memory
c.lw x15, 20(x15) # perform operation

# Testcase cp_imm_mul
li x25, 0x05149f45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2f3125e9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -24 # sub immediate from rs1 to counter offset
c.sw x15, 24(x11) # store value to put something in memory
c.lw x9, 24(x11) # perform operation

# Testcase cp_imm_mul
li x4, 0x0de8f4a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7053d21d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -28 # sub immediate from rs1 to counter offset
c.sw x8, 28(x9) # store value to put something in memory
c.lw x12, 28(x9) # perform operation

# Testcase cp_imm_mul
li x27, 0x5871d578 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcd319a18 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x15, 32(x14) # store value to put something in memory
c.lw x11, 32(x14) # perform operation

# Testcase cp_imm_mul
li x4, 0x2ac2a336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x982c9450 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -36 # sub immediate from rs1 to counter offset
c.sw x13, 36(x14) # store value to put something in memory
c.lw x12, 36(x14) # perform operation

# Testcase cp_imm_mul
li x28, 0x4170055b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf87b2279 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -40 # sub immediate from rs1 to counter offset
c.sw x8, 40(x13) # store value to put something in memory
c.lw x12, 40(x13) # perform operation

# Testcase cp_imm_mul
li x1, 0xd88b7a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc772511f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -44 # sub immediate from rs1 to counter offset
c.sw x9, 44(x10) # store value to put something in memory
c.lw x9, 44(x10) # perform operation

# Testcase cp_imm_mul
li x17, 0xc7f236e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9475595d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -48 # sub immediate from rs1 to counter offset
c.sw x14, 48(x15) # store value to put something in memory
c.lw x9, 48(x15) # perform operation

# Testcase cp_imm_mul
li x9, 0xc72074dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x036874ef # initialize rs2
la x10, scratch # base address 
addi x10, x10, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x10) # store value to put something in memory
c.lw x9, 52(x10) # perform operation

# Testcase cp_imm_mul
li x25, 0x673eef33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4a3d2861 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -56 # sub immediate from rs1 to counter offset
c.sw x14, 56(x10) # store value to put something in memory
c.lw x9, 56(x10) # perform operation

# Testcase cp_imm_mul
li x7, 0xd88092d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x03c74d1e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -60 # sub immediate from rs1 to counter offset
c.sw x11, 60(x9) # store value to put something in memory
c.lw x15, 60(x9) # perform operation

# Testcase cp_imm_mul
li x16, 0xa04e47c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x810e2f6d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -64 # sub immediate from rs1 to counter offset
c.sw x9, 64(x15) # store value to put something in memory
c.lw x8, 64(x15) # perform operation

# Testcase cp_imm_mul
li x1, 0xc59600c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x28a780e5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -68 # sub immediate from rs1 to counter offset
c.sw x10, 68(x13) # store value to put something in memory
c.lw x9, 68(x13) # perform operation

# Testcase cp_imm_mul
li x19, 0x135551a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe5dfb9a3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -72 # sub immediate from rs1 to counter offset
c.sw x13, 72(x10) # store value to put something in memory
c.lw x11, 72(x10) # perform operation

# Testcase cp_imm_mul
li x22, 0x76570bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3d69bc54 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x11) # store value to put something in memory
c.lw x14, 76(x11) # perform operation

# Testcase cp_imm_mul
li x25, 0x6a5bdd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x297fc4f8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -80 # sub immediate from rs1 to counter offset
c.sw x15, 80(x11) # store value to put something in memory
c.lw x9, 80(x11) # perform operation

# Testcase cp_imm_mul
li x3, 0xe594b7eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x28b8f3e5 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -84 # sub immediate from rs1 to counter offset
c.sw x12, 84(x9) # store value to put something in memory
c.lw x11, 84(x9) # perform operation

# Testcase cp_imm_mul
li x6, 0x6a395c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xbb460dd0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x15, 88(x13) # store value to put something in memory
c.lw x14, 88(x13) # perform operation

# Testcase cp_imm_mul
li x27, 0x5f6d9a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x27d6b364 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -92 # sub immediate from rs1 to counter offset
c.sw x13, 92(x8) # store value to put something in memory
c.lw x11, 92(x8) # perform operation

# Testcase cp_imm_mul
li x19, 0x28611560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x31bd19c9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -96 # sub immediate from rs1 to counter offset
c.sw x14, 96(x10) # store value to put something in memory
c.lw x11, 96(x10) # perform operation

# Testcase cp_imm_mul
li x6, 0x40773e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2edad86d # initialize rs2
la x14, scratch # base address 
addi x14, x14, -100 # sub immediate from rs1 to counter offset
c.sw x10, 100(x14) # store value to put something in memory
c.lw x14, 100(x14) # perform operation

# Testcase cp_imm_mul
li x15, 0xf3da91fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc5a3d044 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x14) # store value to put something in memory
c.lw x15, 104(x14) # perform operation

# Testcase cp_imm_mul
li x2, 0x22f5432e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe288f6ad # initialize rs2
la x14, scratch # base address 
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x11, 108(x14) # store value to put something in memory
c.lw x10, 108(x14) # perform operation

# Testcase cp_imm_mul
li x7, 0xd6f64ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x112094ef # initialize rs2
la x14, scratch # base address 
addi x14, x14, -112 # sub immediate from rs1 to counter offset
c.sw x13, 112(x14) # store value to put something in memory
c.lw x15, 112(x14) # perform operation

# Testcase cp_imm_mul
li x13, 0x6a8600da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc792a105 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x11, 116(x9) # store value to put something in memory
c.lw x13, 116(x9) # perform operation

# Testcase cp_imm_mul
li x22, 0xc0514100 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcacfd461 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x10, 120(x9) # store value to put something in memory
c.lw x14, 120(x9) # perform operation

# Testcase cp_imm_mul
li x4, 0x5c9838e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd9718e9e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -124 # sub immediate from rs1 to counter offset
c.sw x8, 124(x13) # store value to put something in memory
c.lw x12, 124(x13) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.beqz.S
// ******************


    
# Testcase cp_rs1_sign (Test source rs1 value = 0x3828e2ac)
li x12, 0xcbe25976 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3828e2ac # initialize rs1
c.beqz x10, some_label_for_cbtype_64783691 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_64783691:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_sign (Test source rs1 value = -0x68519be6)
li x31, 0x9f7a1854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x97ae641a # initialize rs1
c.beqz x9, some_label_for_cbtype_1854597430 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1854597430:
addi x0, x2, 2
nop
nop

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: li x8, 0 # initialize rs1 to 0
c.beqz x8,  1b # backward branch
3: nop # done with sequence

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xa0308904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x48056a97 # initialize rs1
c.beqz x8, some_label_for_cbtype_3690634371 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3690634371:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x9)
li x19, 0x909f742c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x849c69a2 # initialize rs1
c.beqz x9, some_label_for_cbtype_2310912882 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2310912882:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0xd2685056 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7c2a86a6 # initialize rs1
c.beqz x10, some_label_for_cbtype_2310049095 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2310049095:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x11)
li x28, 0x8122e8ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x533e3a4f # initialize rs1
c.beqz x11, some_label_for_cbtype_1270061005 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1270061005:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x8f967fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf140f84b # initialize rs1
c.beqz x12, some_label_for_cbtype_113225316 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_113225316:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0xea9e4ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7d64e6d9 # initialize rs1
c.beqz x13, some_label_for_cbtype_809340521 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_809340521:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x14)
li x4, 0x548cf42a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x344f1272 # initialize rs1
c.beqz x14, some_label_for_cbtype_3484848220 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3484848220:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0xc04bf348 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x412dc384 # initialize rs1
c.beqz x15, some_label_for_cbtype_2959308982 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2959308982:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0xbd4129c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize rs1
c.beqz x12, some_label_for_cbtype_1934550768 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1934550768:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x26f572fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize rs1
c.beqz x12, some_label_for_cbtype_3755622911 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3755622911:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x836e111c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000002 # initialize rs1
c.beqz x10, some_label_for_cbtype_2129369273 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2129369273:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x12, 0x574612f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs1
c.beqz x11, some_label_for_cbtype_2086232119 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2086232119:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x15, 0x9091168f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x80000001 # initialize rs1
c.beqz x15, some_label_for_cbtype_272937316 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_272937316:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0xfdf3b2b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7fffffff # initialize rs1
c.beqz x11, some_label_for_cbtype_642923838 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_642923838:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x30, 0x4e4ad5f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe # initialize rs1
c.beqz x11, some_label_for_cbtype_2808579261 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2808579261:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0xfe01e281 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize rs1
c.beqz x13, some_label_for_cbtype_1524528634 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_1524528634:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x8f382264 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffe # initialize rs1
c.beqz x8, some_label_for_cbtype_957449536 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_957449536:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x21, 0x1690587c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs1
c.beqz x9, some_label_for_cbtype_808952230 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_808952230:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0x0fa77f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs1
c.beqz x13, some_label_for_cbtype_2085652081 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_2085652081:
addi x0, x2, 2
nop
nop

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x6bb42310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize rs1
c.beqz x11, some_label_for_cbtype_3755305324 # perform operation 
addi x0, x1, 1
some_label_for_cbtype_3755305324:
addi x0, x2, 2
nop
nop

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addi4spn.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf194395f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 840 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xca103305 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 428 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xdc8962ae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 200 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x565b447b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 48 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x55cba932 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 376 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9adff43f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 760 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xd7b66521 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 516 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x400c8a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 764 # perform operation

# Testcase cp_imm_mul
li x16, 0xa1e145de # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 4 # perform operation

# Testcase cp_imm_mul
li x14, 0x15da27e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 8 # perform operation

# Testcase cp_imm_mul
li x21, 0xb87fce37 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 12 # perform operation

# Testcase cp_imm_mul
li x10, 0x42795c42 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 16 # perform operation

# Testcase cp_imm_mul
li x18, 0x9fca846d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 20 # perform operation

# Testcase cp_imm_mul
li x20, 0x650cf5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 24 # perform operation

# Testcase cp_imm_mul
li x12, 0x3f7c5ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 28 # perform operation

# Testcase cp_imm_mul
li x4, 0x8f53f5af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 32 # perform operation

# Testcase cp_imm_mul
li x4, 0x43b31b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 36 # perform operation

# Testcase cp_imm_mul
li x21, 0x28741b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 40 # perform operation

# Testcase cp_imm_mul
li x6, 0xc327c5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 44 # perform operation

# Testcase cp_imm_mul
li x4, 0x30996189 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 48 # perform operation

# Testcase cp_imm_mul
li x4, 0x4fdd5b09 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 52 # perform operation

# Testcase cp_imm_mul
li x26, 0x98b454c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 56 # perform operation

# Testcase cp_imm_mul
li x18, 0x3fa43019 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 60 # perform operation

# Testcase cp_imm_mul
li x17, 0x2bb0f66a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 64 # perform operation

# Testcase cp_imm_mul
li x17, 0x83fc6d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 68 # perform operation

# Testcase cp_imm_mul
li x23, 0xf15035ed # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 72 # perform operation

# Testcase cp_imm_mul
li x12, 0x58cf411f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 76 # perform operation

# Testcase cp_imm_mul
li x23, 0x06db0ca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 80 # perform operation

# Testcase cp_imm_mul
li x13, 0xa728952b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 84 # perform operation

# Testcase cp_imm_mul
li x18, 0x590626d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 88 # perform operation

# Testcase cp_imm_mul
li x19, 0xfec86924 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 92 # perform operation

# Testcase cp_imm_mul
li x15, 0x308054af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 96 # perform operation

# Testcase cp_imm_mul
li x11, 0x00c5d15e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 100 # perform operation

# Testcase cp_imm_mul
li x31, 0x0c3280bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 104 # perform operation

# Testcase cp_imm_mul
li x16, 0x98a4226d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 108 # perform operation

# Testcase cp_imm_mul
li x26, 0x856c64d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 112 # perform operation

# Testcase cp_imm_mul
li x26, 0x3e4a1a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 116 # perform operation

# Testcase cp_imm_mul
li x3, 0x8d00cd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 120 # perform operation

# Testcase cp_imm_mul
li x27, 0x27fcb06a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 124 # perform operation

# Testcase cp_imm_mul
li x11, 0x3cb5773b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 128 # perform operation

# Testcase cp_imm_mul
li x2, 0x2302021b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 132 # perform operation

# Testcase cp_imm_mul
li x30, 0xa9d7c060 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 136 # perform operation

# Testcase cp_imm_mul
li x27, 0x6bde2839 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 140 # perform operation

# Testcase cp_imm_mul
li x6, 0xd382d991 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 144 # perform operation

# Testcase cp_imm_mul
li x31, 0x899ccfd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 148 # perform operation

# Testcase cp_imm_mul
li x8, 0x68af232d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 152 # perform operation

# Testcase cp_imm_mul
li x6, 0x177375fc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 156 # perform operation

# Testcase cp_imm_mul
li x27, 0x38ffeb44 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 160 # perform operation

# Testcase cp_imm_mul
li x5, 0x7f553e3c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 164 # perform operation

# Testcase cp_imm_mul
li x22, 0xaa77598d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 168 # perform operation

# Testcase cp_imm_mul
li x22, 0x0636ab01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 172 # perform operation

# Testcase cp_imm_mul
li x11, 0x72bda829 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 176 # perform operation

# Testcase cp_imm_mul
li x9, 0x3a368532 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 180 # perform operation

# Testcase cp_imm_mul
li x29, 0xd9c0fd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 184 # perform operation

# Testcase cp_imm_mul
li x20, 0x009578c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 188 # perform operation

# Testcase cp_imm_mul
li x24, 0xf8133071 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 192 # perform operation

# Testcase cp_imm_mul
li x31, 0xa083febf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 196 # perform operation

# Testcase cp_imm_mul
li x26, 0xdc89fc5c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 200 # perform operation

# Testcase cp_imm_mul
li x11, 0x876ffba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 204 # perform operation

# Testcase cp_imm_mul
li x26, 0x09822929 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 208 # perform operation

# Testcase cp_imm_mul
li x8, 0x1a443dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 212 # perform operation

# Testcase cp_imm_mul
li x25, 0x533d4b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 216 # perform operation

# Testcase cp_imm_mul
li x6, 0xbb6cb592 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 220 # perform operation

# Testcase cp_imm_mul
li x28, 0x9fecbd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 224 # perform operation

# Testcase cp_imm_mul
li x12, 0x1848aeda # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 228 # perform operation

# Testcase cp_imm_mul
li x30, 0xec54bee5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 232 # perform operation

# Testcase cp_imm_mul
li x22, 0x758b70da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 236 # perform operation

# Testcase cp_imm_mul
li x21, 0x84fb3a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 240 # perform operation

# Testcase cp_imm_mul
li x3, 0xad360d32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 244 # perform operation

# Testcase cp_imm_mul
li x26, 0xd04fb0a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 248 # perform operation

# Testcase cp_imm_mul
li x22, 0x9f9b8d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 252 # perform operation

# Testcase cp_imm_mul
li x6, 0x4e4e92f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 256 # perform operation

# Testcase cp_imm_mul
li x29, 0x27fd3f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 260 # perform operation

# Testcase cp_imm_mul
li x25, 0x7cc2fc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 264 # perform operation

# Testcase cp_imm_mul
li x14, 0x4493b1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 268 # perform operation

# Testcase cp_imm_mul
li x23, 0x902124a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 272 # perform operation

# Testcase cp_imm_mul
li x4, 0xa7db2c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 276 # perform operation

# Testcase cp_imm_mul
li x30, 0x04a167a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 280 # perform operation

# Testcase cp_imm_mul
li x25, 0xb5ebd5f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 284 # perform operation

# Testcase cp_imm_mul
li x7, 0x1b4b330e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 288 # perform operation

# Testcase cp_imm_mul
li x30, 0x02b0b939 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 292 # perform operation

# Testcase cp_imm_mul
li x14, 0xdf086697 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 296 # perform operation

# Testcase cp_imm_mul
li x9, 0xf4ced899 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 300 # perform operation

# Testcase cp_imm_mul
li x31, 0x9a438d76 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 304 # perform operation

# Testcase cp_imm_mul
li x24, 0x0b08e601 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 308 # perform operation

# Testcase cp_imm_mul
li x21, 0x365705ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 312 # perform operation

# Testcase cp_imm_mul
li x5, 0x983da305 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 316 # perform operation

# Testcase cp_imm_mul
li x22, 0xc9ecb5f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 320 # perform operation

# Testcase cp_imm_mul
li x18, 0xeceb4043 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 324 # perform operation

# Testcase cp_imm_mul
li x19, 0x09239ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 328 # perform operation

# Testcase cp_imm_mul
li x29, 0xa657918f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 332 # perform operation

# Testcase cp_imm_mul
li x15, 0xcba6cac9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 336 # perform operation

# Testcase cp_imm_mul
li x28, 0x8aec940a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 340 # perform operation

# Testcase cp_imm_mul
li x25, 0x2494bebb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 344 # perform operation

# Testcase cp_imm_mul
li x14, 0x7405f641 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 348 # perform operation

# Testcase cp_imm_mul
li x10, 0xf825f867 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 352 # perform operation

# Testcase cp_imm_mul
li x27, 0x0bbab16f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 356 # perform operation

# Testcase cp_imm_mul
li x12, 0x1ef9e453 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 360 # perform operation

# Testcase cp_imm_mul
li x2, 0x8808d496 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 364 # perform operation

# Testcase cp_imm_mul
li x3, 0x9d010969 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 368 # perform operation

# Testcase cp_imm_mul
li x19, 0x711156f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 372 # perform operation

# Testcase cp_imm_mul
li x4, 0x18d0c9b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 376 # perform operation

# Testcase cp_imm_mul
li x12, 0x3420b71f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 380 # perform operation

# Testcase cp_imm_mul
li x30, 0x1d2b68df # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 384 # perform operation

# Testcase cp_imm_mul
li x25, 0xcc224e22 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 388 # perform operation

# Testcase cp_imm_mul
li x17, 0xb0eb98c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 392 # perform operation

# Testcase cp_imm_mul
li x6, 0x8f72a0db # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 396 # perform operation

# Testcase cp_imm_mul
li x5, 0x19cfd415 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 400 # perform operation

# Testcase cp_imm_mul
li x30, 0xbfb22588 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 404 # perform operation

# Testcase cp_imm_mul
li x13, 0x8d80b89f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 408 # perform operation

# Testcase cp_imm_mul
li x20, 0x53f4d260 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 412 # perform operation

# Testcase cp_imm_mul
li x30, 0xf3e3e73b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 416 # perform operation

# Testcase cp_imm_mul
li x21, 0x25092b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 420 # perform operation

# Testcase cp_imm_mul
li x4, 0x34c9392f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 424 # perform operation

# Testcase cp_imm_mul
li x20, 0x9213e2d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 428 # perform operation

# Testcase cp_imm_mul
li x11, 0x0672b3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 432 # perform operation

# Testcase cp_imm_mul
li x7, 0x79da5e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 436 # perform operation

# Testcase cp_imm_mul
li x25, 0x30643c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 440 # perform operation

# Testcase cp_imm_mul
li x11, 0x440366ae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 444 # perform operation

# Testcase cp_imm_mul
li x20, 0x3bfe838d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 448 # perform operation

# Testcase cp_imm_mul
li x10, 0x8510036b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 452 # perform operation

# Testcase cp_imm_mul
li x5, 0xe36f8620 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 456 # perform operation

# Testcase cp_imm_mul
li x20, 0xa141c175 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 460 # perform operation

# Testcase cp_imm_mul
li x15, 0x413b95f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 464 # perform operation

# Testcase cp_imm_mul
li x26, 0x1cec97e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 468 # perform operation

# Testcase cp_imm_mul
li x29, 0x0b710ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 472 # perform operation

# Testcase cp_imm_mul
li x22, 0xf42d5b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 476 # perform operation

# Testcase cp_imm_mul
li x18, 0xb3cdbde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 480 # perform operation

# Testcase cp_imm_mul
li x7, 0xe5413602 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 484 # perform operation

# Testcase cp_imm_mul
li x13, 0x4649786c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 488 # perform operation

# Testcase cp_imm_mul
li x5, 0x8ec3acb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 492 # perform operation

# Testcase cp_imm_mul
li x24, 0x6c8742cf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 496 # perform operation

# Testcase cp_imm_mul
li x3, 0x42820ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 500 # perform operation

# Testcase cp_imm_mul
li x6, 0x30399d2f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 504 # perform operation

# Testcase cp_imm_mul
li x22, 0x13014f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 508 # perform operation

# Testcase cp_imm_mul
li x4, 0x3204e02a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 512 # perform operation

# Testcase cp_imm_mul
li x11, 0xc5558d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 516 # perform operation

# Testcase cp_imm_mul
li x13, 0x97f5c499 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 520 # perform operation

# Testcase cp_imm_mul
li x5, 0x0b5de13a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 524 # perform operation

# Testcase cp_imm_mul
li x7, 0xc273253c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 528 # perform operation

# Testcase cp_imm_mul
li x15, 0x365f7763 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 532 # perform operation

# Testcase cp_imm_mul
li x18, 0x65d59801 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 536 # perform operation

# Testcase cp_imm_mul
li x7, 0xfb690124 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 540 # perform operation

# Testcase cp_imm_mul
li x8, 0x2f163837 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 544 # perform operation

# Testcase cp_imm_mul
li x19, 0x73887341 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 548 # perform operation

# Testcase cp_imm_mul
li x9, 0x8e738134 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 552 # perform operation

# Testcase cp_imm_mul
li x28, 0x6a57465d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 556 # perform operation

# Testcase cp_imm_mul
li x27, 0x4c352d4e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 560 # perform operation

# Testcase cp_imm_mul
li x1, 0x89e35910 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 564 # perform operation

# Testcase cp_imm_mul
li x27, 0x39897e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 568 # perform operation

# Testcase cp_imm_mul
li x28, 0x8ca32364 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 572 # perform operation

# Testcase cp_imm_mul
li x30, 0xab31ea3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 576 # perform operation

# Testcase cp_imm_mul
li x4, 0xce712790 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 580 # perform operation

# Testcase cp_imm_mul
li x3, 0x209a8308 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 584 # perform operation

# Testcase cp_imm_mul
li x16, 0x109e090e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 588 # perform operation

# Testcase cp_imm_mul
li x28, 0x9b6a3ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 592 # perform operation

# Testcase cp_imm_mul
li x11, 0xcca4d29e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 596 # perform operation

# Testcase cp_imm_mul
li x10, 0xba89a581 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 600 # perform operation

# Testcase cp_imm_mul
li x20, 0xa57e93d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 604 # perform operation

# Testcase cp_imm_mul
li x13, 0xc69f85fb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 608 # perform operation

# Testcase cp_imm_mul
li x6, 0x316355b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 612 # perform operation

# Testcase cp_imm_mul
li x24, 0x8a76fbe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 616 # perform operation

# Testcase cp_imm_mul
li x30, 0xc1964299 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 620 # perform operation

# Testcase cp_imm_mul
li x11, 0xc333b870 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 624 # perform operation

# Testcase cp_imm_mul
li x8, 0xda903add # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 628 # perform operation

# Testcase cp_imm_mul
li x6, 0x89687fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 632 # perform operation

# Testcase cp_imm_mul
li x8, 0xda94ecd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 636 # perform operation

# Testcase cp_imm_mul
li x26, 0x425e7e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 640 # perform operation

# Testcase cp_imm_mul
li x6, 0xedef4eef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 644 # perform operation

# Testcase cp_imm_mul
li x1, 0xb6f5291e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 648 # perform operation

# Testcase cp_imm_mul
li x31, 0x9442808d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 652 # perform operation

# Testcase cp_imm_mul
li x8, 0x6042babd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 656 # perform operation

# Testcase cp_imm_mul
li x6, 0xee1846d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 660 # perform operation

# Testcase cp_imm_mul
li x7, 0xcec11cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 664 # perform operation

# Testcase cp_imm_mul
li x23, 0xf530fcf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 668 # perform operation

# Testcase cp_imm_mul
li x1, 0xc858dbbb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 672 # perform operation

# Testcase cp_imm_mul
li x9, 0x40e619ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 676 # perform operation

# Testcase cp_imm_mul
li x7, 0x8e947faa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 680 # perform operation

# Testcase cp_imm_mul
li x24, 0xee362bba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 684 # perform operation

# Testcase cp_imm_mul
li x9, 0xab9fbf2e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 688 # perform operation

# Testcase cp_imm_mul
li x23, 0x3b946ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 692 # perform operation

# Testcase cp_imm_mul
li x5, 0x48ca7a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 696 # perform operation

# Testcase cp_imm_mul
li x23, 0x4f0cd09a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 700 # perform operation

# Testcase cp_imm_mul
li x10, 0x726721b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 704 # perform operation

# Testcase cp_imm_mul
li x27, 0xf09f5083 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 708 # perform operation

# Testcase cp_imm_mul
li x5, 0xb2192db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 712 # perform operation

# Testcase cp_imm_mul
li x15, 0x02376a72 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 716 # perform operation

# Testcase cp_imm_mul
li x20, 0xd24c65c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 720 # perform operation

# Testcase cp_imm_mul
li x8, 0x304bd809 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 724 # perform operation

# Testcase cp_imm_mul
li x15, 0x146b23fb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 728 # perform operation

# Testcase cp_imm_mul
li x9, 0x6170bf62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 732 # perform operation

# Testcase cp_imm_mul
li x21, 0x619cbc56 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 736 # perform operation

# Testcase cp_imm_mul
li x16, 0xfe6f1fae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 740 # perform operation

# Testcase cp_imm_mul
li x23, 0x9f14e72b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 744 # perform operation

# Testcase cp_imm_mul
li x19, 0x15057831 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 748 # perform operation

# Testcase cp_imm_mul
li x5, 0x03e435e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 752 # perform operation

# Testcase cp_imm_mul
li x21, 0x7ce9f85b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 756 # perform operation

# Testcase cp_imm_mul
li x10, 0xcabaa011 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 760 # perform operation

# Testcase cp_imm_mul
li x3, 0xfd50feb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 764 # perform operation

# Testcase cp_imm_mul
li x17, 0x4def6793 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 768 # perform operation

# Testcase cp_imm_mul
li x20, 0xaa53a456 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 772 # perform operation

# Testcase cp_imm_mul
li x3, 0x4e8e1bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 776 # perform operation

# Testcase cp_imm_mul
li x15, 0x004f1300 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 780 # perform operation

# Testcase cp_imm_mul
li x18, 0x05c96f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 784 # perform operation

# Testcase cp_imm_mul
li x12, 0x7d16d409 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 788 # perform operation

# Testcase cp_imm_mul
li x13, 0xd324956c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 792 # perform operation

# Testcase cp_imm_mul
li x28, 0x176f14f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 796 # perform operation

# Testcase cp_imm_mul
li x11, 0xae8d3bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 800 # perform operation

# Testcase cp_imm_mul
li x3, 0x59d3dda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 804 # perform operation

# Testcase cp_imm_mul
li x29, 0xff5e595f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 808 # perform operation

# Testcase cp_imm_mul
li x22, 0xee8da233 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 812 # perform operation

# Testcase cp_imm_mul
li x23, 0x629baf65 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 816 # perform operation

# Testcase cp_imm_mul
li x26, 0x9284cc59 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 820 # perform operation

# Testcase cp_imm_mul
li x16, 0xc3765f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 824 # perform operation

# Testcase cp_imm_mul
li x13, 0x879068a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 828 # perform operation

# Testcase cp_imm_mul
li x29, 0xb0e53626 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 832 # perform operation

# Testcase cp_imm_mul
li x12, 0x83c8cef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 836 # perform operation

# Testcase cp_imm_mul
li x15, 0x2919a36d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 840 # perform operation

# Testcase cp_imm_mul
li x3, 0x34fe2dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 844 # perform operation

# Testcase cp_imm_mul
li x9, 0x97196a6f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 848 # perform operation

# Testcase cp_imm_mul
li x26, 0x758937bd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 852 # perform operation

# Testcase cp_imm_mul
li x5, 0x05be08c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 856 # perform operation

# Testcase cp_imm_mul
li x25, 0xb3cf2f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 860 # perform operation

# Testcase cp_imm_mul
li x9, 0x3a669084 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 864 # perform operation

# Testcase cp_imm_mul
li x5, 0x83cc9510 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 868 # perform operation

# Testcase cp_imm_mul
li x5, 0xe98085d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 872 # perform operation

# Testcase cp_imm_mul
li x30, 0xa626d1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 876 # perform operation

# Testcase cp_imm_mul
li x10, 0x09141e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 880 # perform operation

# Testcase cp_imm_mul
li x3, 0xa61f3f0f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 884 # perform operation

# Testcase cp_imm_mul
li x27, 0xfbb825bc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 888 # perform operation

# Testcase cp_imm_mul
li x26, 0xdd4dd9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 892 # perform operation

# Testcase cp_imm_mul
li x30, 0x97c47380 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 896 # perform operation

# Testcase cp_imm_mul
li x4, 0x30a1beaa # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 900 # perform operation

# Testcase cp_imm_mul
li x27, 0x381f8b05 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 904 # perform operation

# Testcase cp_imm_mul
li x4, 0xc07eb209 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 908 # perform operation

# Testcase cp_imm_mul
li x14, 0xe987d562 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 912 # perform operation

# Testcase cp_imm_mul
li x3, 0xa6d1d0c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 916 # perform operation

# Testcase cp_imm_mul
li x26, 0x7a0e3ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 920 # perform operation

# Testcase cp_imm_mul
li x25, 0xd5f9f4e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 924 # perform operation

# Testcase cp_imm_mul
li x7, 0xbbecc654 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 928 # perform operation

# Testcase cp_imm_mul
li x1, 0x73f4d8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 932 # perform operation

# Testcase cp_imm_mul
li x6, 0xd21028e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 936 # perform operation

# Testcase cp_imm_mul
li x3, 0x5df73ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 940 # perform operation

# Testcase cp_imm_mul
li x14, 0xb5e4016c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 944 # perform operation

# Testcase cp_imm_mul
li x26, 0x43ae8c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 948 # perform operation

# Testcase cp_imm_mul
li x29, 0x4eb8699d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 952 # perform operation

# Testcase cp_imm_mul
li x2, 0x5af938d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 956 # perform operation

# Testcase cp_imm_mul
li x9, 0xbec9e30d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 960 # perform operation

# Testcase cp_imm_mul
li x23, 0xdee42967 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 964 # perform operation

# Testcase cp_imm_mul
li x14, 0xca485a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 968 # perform operation

# Testcase cp_imm_mul
li x29, 0x61869b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 972 # perform operation

# Testcase cp_imm_mul
li x25, 0x4c9b0bd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 976 # perform operation

# Testcase cp_imm_mul
li x5, 0x5dc10400 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 980 # perform operation

# Testcase cp_imm_mul
li x19, 0x5d288c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x11, sp, 984 # perform operation

# Testcase cp_imm_mul
li x6, 0x01c59c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x14, sp, 988 # perform operation

# Testcase cp_imm_mul
li x23, 0x682dd1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 992 # perform operation

# Testcase cp_imm_mul
li x5, 0xa935a8b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x13, sp, 996 # perform operation

# Testcase cp_imm_mul
li x2, 0x6390b1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x10, sp, 1000 # perform operation

# Testcase cp_imm_mul
li x1, 0xfc62783e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x9, sp, 1004 # perform operation

# Testcase cp_imm_mul
li x16, 0x1cf6a096 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 1008 # perform operation

# Testcase cp_imm_mul
li x16, 0x2a1df5ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x8, sp, 1012 # perform operation

# Testcase cp_imm_mul
li x20, 0xbb39a5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x12, sp, 1016 # perform operation

# Testcase cp_imm_mul
li x7, 0x259e0beb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi4spn x15, sp, 1020 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.jr.S
// ******************


    
# Testcase cp_rs1 (Test source rs1 = x1)
li x9, 0x1f5b6f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
c.jr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x7, 0x644bc35f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
c.jr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0xf9ec2af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
c.jr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0x26390ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
c.jr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x24, 0xb981fe0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
c.jr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0xcc9c3920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
c.jr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x3, 0xdc468290 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
c.jr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xcba1bc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
c.jr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0xd5bc9494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
c.jr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x26, 0xc273d217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
c.jr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x22de6a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, 1f
c.jr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xe650f601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
c.jr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x9833a429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
c.jr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x5af3292f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
c.jr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x17, 0xadf8a5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
c.jr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x7, 0xce5ce27e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
c.jr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0x380230cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
c.jr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x14, 0xe8ed3bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
c.jr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x4, 0xdfafa730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
c.jr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0x921c7f9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
c.jr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0xbdb56bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
c.jr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0x8d15c3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
c.jr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0x214341f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
c.jr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0xc0942c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
c.jr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x971b117a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
c.jr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x418d132e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
c.jr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0xce701ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
c.jr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x15b69dfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
c.jr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x86ead369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
c.jr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x13, 0x90d75649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
c.jr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x24, 0x29180ab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
c.jr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x3, 1b
c.jr x3 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.swsp.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x21dde71a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9a318b42 # initialize rs2
la sp, scratch # base address 
c.swsp x0, 156(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x28, 0x8450cbc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5b06412e # initialize rs2
la sp, scratch # base address 
c.swsp x1, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x15, 0x94d917f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc224121a # initialize rs2
la sp, scratch # base address 
c.swsp x2, 220(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0x671efa5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2669d989 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 240(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x26, 0x677a428a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xcaa29a53 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x21, 0xc94b4de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaf362d46 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 152(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x4, 0xdf6a1a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8435ac75 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 8(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x11, 0x64c38039 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbea359ff # initialize rs2
la sp, scratch # base address 
c.swsp x7, 248(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xd052eac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8967284b # initialize rs2
la sp, scratch # base address 
c.swsp x8, 112(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0xbc029d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6d27a81c # initialize rs2
la sp, scratch # base address 
c.swsp x9, 56(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x3, 0x5a632cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8b98ab22 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 24(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0x1eedbd88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x087f259b # initialize rs2
la sp, scratch # base address 
c.swsp x11, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xf3976324 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2f420268 # initialize rs2
la sp, scratch # base address 
c.swsp x12, 144(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0xfac7977b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbc564320 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 180(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x0f3d3ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf8324ddf # initialize rs2
la sp, scratch # base address 
c.swsp x14, 128(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0xaee70aae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3b0862fc # initialize rs2
la sp, scratch # base address 
c.swsp x15, 164(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xb593d9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0a7eac7d # initialize rs2
la sp, scratch # base address 
c.swsp x16, 244(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x7b95a14d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1fa18dff # initialize rs2
la sp, scratch # base address 
c.swsp x17, 116(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x13, 0x6a233be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x811120a6 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 60(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x15, 0x81de5b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1c7b0a93 # initialize rs2
la sp, scratch # base address 
c.swsp x19, 64(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x4, 0x3565c3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd0c39c26 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 244(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x37fd7237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5251b4de # initialize rs2
la sp, scratch # base address 
c.swsp x21, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x7, 0x4dcc4f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x22b42c63 # initialize rs2
la sp, scratch # base address 
c.swsp x22, 112(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x16, 0xbd527a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0396285b # initialize rs2
la sp, scratch # base address 
c.swsp x23, 44(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0xb706c1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa5efef1c # initialize rs2
la sp, scratch # base address 
c.swsp x24, 84(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x7, 0x0960461b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x51767196 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 20(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0xdc737a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc9615b1f # initialize rs2
la sp, scratch # base address 
c.swsp x26, 0(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x1, 0x650ecd15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x864e2c53 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 228(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x31, 0x67e3ae50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x89055078 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 236(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x2b235b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe217242f # initialize rs2
la sp, scratch # base address 
c.swsp x29, 168(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x6, 0xd7d8e773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd1ebe452 # initialize rs2
la sp, scratch # base address 
c.swsp x30, 184(sp)# perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x4, 0x06440722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe9922212 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0x03bad44a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000 # initialize rs2
la sp, scratch # base address 
c.swsp x4, 160(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x4a7349be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000001 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 24(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0xc4c8b8e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 132(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0xe0251146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 12(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x3375417e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 68(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0xf1830866 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffff # initialize rs2
la sp, scratch # base address 
c.swsp x29, 180(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x23, 0x9d5ef782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x25, 36(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xe08a4dab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffff # initialize rs2
la sp, scratch # base address 
c.swsp x6, 112(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x17, 0x0c386114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs2
la sp, scratch # base address 
c.swsp x18, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x7, 0x6feff91b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5bbc8877 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 44(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x20, 0x9ab1ceb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
c.swsp x13, 128(sp)# perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x10, 0x1db03c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs2
la sp, scratch # base address 
c.swsp x21, 156(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0x5d364447 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf51dc12f # initialize rs2
la sp, scratch # base address 
c.swsp x7, 0(sp)# perform operation

# Testcase cp_imm_mul
li x5, 0xd57419c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x555526a6 # initialize rs2
la sp, scratch # base address 
c.swsp x10, 4(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xf1dd549f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa739e99b # initialize rs2
la sp, scratch # base address 
c.swsp x11, 8(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x7f37903b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbd244145 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 12(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0xfbdcc1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xec3ec7a1 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 16(sp)# perform operation

# Testcase cp_imm_mul
li x13, 0x072ed500 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x04f7de46 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 20(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0x4708d1e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xec074fb1 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 24(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0xc8bed032 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2846942e # initialize rs2
la sp, scratch # base address 
c.swsp x31, 28(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xd25e1ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc877ea0b # initialize rs2
la sp, scratch # base address 
c.swsp x19, 32(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x9c163464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x074c0520 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 36(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xe88671bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf0b57200 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 40(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0xf6126ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4be3f184 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 44(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x8a6129b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x06ca48b4 # initialize rs2
la sp, scratch # base address 
c.swsp x8, 48(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x1f267a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc863381f # initialize rs2
la sp, scratch # base address 
c.swsp x7, 52(sp)# perform operation

# Testcase cp_imm_mul
li x15, 0xff486d4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc68d9acc # initialize rs2
la sp, scratch # base address 
c.swsp x19, 56(sp)# perform operation

# Testcase cp_imm_mul
li x1, 0xe524f083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xce7b3222 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 60(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xde3678d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x62753c7d # initialize rs2
la sp, scratch # base address 
c.swsp x31, 64(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x5535f5e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x99ac1560 # initialize rs2
la sp, scratch # base address 
c.swsp x12, 68(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x7a13b135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x33bd4a44 # initialize rs2
la sp, scratch # base address 
c.swsp x9, 72(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x05e27c82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x86660209 # initialize rs2
la sp, scratch # base address 
c.swsp x2, 76(sp)# perform operation

# Testcase cp_imm_mul
li x30, 0xaf0f01f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x604d37d2 # initialize rs2
la sp, scratch # base address 
c.swsp x13, 80(sp)# perform operation

# Testcase cp_imm_mul
li x22, 0x817cfdb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8c951902 # initialize rs2
la sp, scratch # base address 
c.swsp x3, 84(sp)# perform operation

# Testcase cp_imm_mul
li x10, 0x6e5ef9cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5a5e88f6 # initialize rs2
la sp, scratch # base address 
c.swsp x26, 88(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0xfee29385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xb9c3736c # initialize rs2
la sp, scratch # base address 
c.swsp x14, 92(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x7f3ea9e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4901ae2a # initialize rs2
la sp, scratch # base address 
c.swsp x3, 96(sp)# perform operation

# Testcase cp_imm_mul
li x28, 0x6d0247d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x489e4853 # initialize rs2
la sp, scratch # base address 
c.swsp x15, 100(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x4c0a206f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x12b1bd70 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 104(sp)# perform operation

# Testcase cp_imm_mul
li x17, 0x9428e937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd3b6b97e # initialize rs2
la sp, scratch # base address 
c.swsp x5, 108(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xdd136a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6b9afce7 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 112(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0x6d282937 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb0193702 # initialize rs2
la sp, scratch # base address 
c.swsp x29, 116(sp)# perform operation

# Testcase cp_imm_mul
li x31, 0x2a26e55d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2334d070 # initialize rs2
la sp, scratch # base address 
c.swsp x26, 120(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xd70447c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf9e1a8b1 # initialize rs2
la sp, scratch # base address 
c.swsp x1, 124(sp)# perform operation

# Testcase cp_imm_mul
li x23, 0xc704fc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7b20ae1b # initialize rs2
la sp, scratch # base address 
c.swsp x1, 128(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xc42a1998 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xea57e626 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 132(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x7fd78b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x4724b428 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 136(sp)# perform operation

# Testcase cp_imm_mul
li x27, 0x7a5eac23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x952eaaff # initialize rs2
la sp, scratch # base address 
c.swsp x11, 140(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x9ec27b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x18362ac2 # initialize rs2
la sp, scratch # base address 
c.swsp x5, 144(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0x906daec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb4fff4e4 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 148(sp)# perform operation

# Testcase cp_imm_mul
li x20, 0x69fdc060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x722d4d77 # initialize rs2
la sp, scratch # base address 
c.swsp x14, 152(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0x346da3f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa5b38fd7 # initialize rs2
la sp, scratch # base address 
c.swsp x21, 156(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0x90acda7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd2e224dd # initialize rs2
la sp, scratch # base address 
c.swsp x3, 160(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x01ca9e39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x40d63af9 # initialize rs2
la sp, scratch # base address 
c.swsp x8, 164(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0xe0edaa84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x92e32006 # initialize rs2
la sp, scratch # base address 
c.swsp x6, 168(sp)# perform operation

# Testcase cp_imm_mul
li x18, 0xecccfee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6a4ccd17 # initialize rs2
la sp, scratch # base address 
c.swsp x11, 172(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x86f7f15e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf8be2731 # initialize rs2
la sp, scratch # base address 
c.swsp x21, 176(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x4be6321e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0cf64954 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 180(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xe7bb8560 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf94c68c2 # initialize rs2
la sp, scratch # base address 
c.swsp x7, 184(sp)# perform operation

# Testcase cp_imm_mul
li x3, 0x521be4aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x113495f3 # initialize rs2
la sp, scratch # base address 
c.swsp x16, 188(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x157ba01e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x212fb76e # initialize rs2
la sp, scratch # base address 
c.swsp x17, 192(sp)# perform operation

# Testcase cp_imm_mul
li x29, 0xc3ac41e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb042b917 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 196(sp)# perform operation

# Testcase cp_imm_mul
li x8, 0x6dd6de2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x23898513 # initialize rs2
la sp, scratch # base address 
c.swsp x31, 200(sp)# perform operation

# Testcase cp_imm_mul
li x25, 0xf06df2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x78e81ad6 # initialize rs2
la sp, scratch # base address 
c.swsp x18, 204(sp)# perform operation

# Testcase cp_imm_mul
li x26, 0xc200285c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xa1a63cce # initialize rs2
la sp, scratch # base address 
c.swsp x2, 208(sp)# perform operation

# Testcase cp_imm_mul
li x19, 0xf6eabbf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xe5232f1f # initialize rs2
la sp, scratch # base address 
c.swsp x27, 212(sp)# perform operation

# Testcase cp_imm_mul
li x2, 0x4ebec2a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0f7761e8 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 216(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0x140de8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x920b6aff # initialize rs2
la sp, scratch # base address 
c.swsp x7, 220(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0x61438158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5a10c6a3 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 224(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x2da93a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa26c1610 # initialize rs2
la sp, scratch # base address 
c.swsp x25, 228(sp)# perform operation

# Testcase cp_imm_mul
li x14, 0x188b71aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8e0082b9 # initialize rs2
la sp, scratch # base address 
c.swsp x20, 232(sp)# perform operation

# Testcase cp_imm_mul
li x6, 0xe992346e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa119e938 # initialize rs2
la sp, scratch # base address 
c.swsp x24, 236(sp)# perform operation

# Testcase cp_imm_mul
li x24, 0x180278ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2f8f3153 # initialize rs2
la sp, scratch # base address 
c.swsp x22, 240(sp)# perform operation

# Testcase cp_imm_mul
li x12, 0xa0718b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x07ed217e # initialize rs2
la sp, scratch # base address 
c.swsp x7, 244(sp)# perform operation

# Testcase cp_imm_mul
li x9, 0x5a5f9753 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xc54e0fb5 # initialize rs2
la sp, scratch # base address 
c.swsp x27, 248(sp)# perform operation

# Testcase cp_imm_mul
li x11, 0xcaa9f2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0e197f78 # initialize rs2
la sp, scratch # base address 
c.swsp x28, 252(sp)# perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.nop.S
// ******************


    
# Testcase cp_asm_count
c.nop

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sw.S
// ******************


    
# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0x578ab544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xa18a16d7 # initialize rs2 with random value
addi x8, x8, -76 # sub immediate from rs1 to counter offset
c.sw x13, 76(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x17, 0x5c1f4f7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0xc03584b7 # initialize rs2 with random value
addi x10, x10, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x9ec0b11f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x10, 0x088feba9 # initialize rs2 with random value
addi x12, x12, -20 # sub immediate from rs1 to counter offset
c.sw x10, 20(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0xb2a0afff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x02836171 # initialize rs2 with random value
addi x14, x14, -32 # sub immediate from rs1 to counter offset
c.sw x11, 32(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x5004a949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0x29748852 # initialize rs2 with random value
addi x12, x12, -76 # sub immediate from rs1 to counter offset
c.sw x15, 76(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x44bed0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x13, 0xc3cba416 # initialize rs2 with random value
addi x8, x8, -96 # sub immediate from rs1 to counter offset
c.sw x13, 96(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x33d53544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x14, 0x22a0119a # initialize rs2 with random value
addi x12, x12, -96 # sub immediate from rs1 to counter offset
c.sw x14, 96(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x4149e78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xa7ccdb41 # initialize rs2 with random value
addi x12, x12, -64 # sub immediate from rs1 to counter offset
c.sw x15, 64(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x28, 0x785c7301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0x00000000 # initialize rs2 with random value
addi x11, x11, -120 # sub immediate from rs1 to counter offset
c.sw x15, 120(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0x011b864f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x11, 0x00000001 # initialize rs2 with random value
addi x9, x9, -40 # sub immediate from rs1 to counter offset
c.sw x11, 40(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x19, 0xc28e5721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x10, 0x00000002 # initialize rs2 with random value
addi x12, x12, -52 # sub immediate from rs1 to counter offset
c.sw x10, 52(x12) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x2c734637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x8, 0x80000000 # initialize rs2 with random value
addi x15, x15, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0xc9b9a047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x80000001 # initialize rs2 with random value
addi x9, x9, -20 # sub immediate from rs1 to counter offset
c.sw x8, 20(x9) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0xecf4e593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x10, 0x7fffffff # initialize rs2 with random value
addi x15, x15, -84 # sub immediate from rs1 to counter offset
c.sw x10, 84(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x15, 0x93a2905e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x7ffffffe # initialize rs2 with random value
addi x14, x14, -48 # sub immediate from rs1 to counter offset
c.sw x11, 48(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x6c5f2a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x15, 0xffffffff # initialize rs2 with random value
addi x10, x10, -28 # sub immediate from rs1 to counter offset
c.sw x15, 28(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0x8adbab40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0xfffffffe # initialize rs2 with random value
addi x15, x15, -88 # sub immediate from rs1 to counter offset
c.sw x14, 88(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x7, 0xf0bc23c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x5bbc8877 # initialize rs2 with random value
addi x14, x14, -60 # sub immediate from rs1 to counter offset
c.sw x9, 60(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x31, 0xd6ffabfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0xaaaaaaaa # initialize rs2 with random value
addi x13, x13, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x18, 0xdbed52ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x55555555 # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x9, 104(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x0cb2e8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xb929aa07 # initialize rs2 with random value
addi x8, x8, -52 # sub immediate from rs1 to counter offset
c.sw x9, 52(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xe39075ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0xcb741bdd # initialize rs2 with random value
addi x9, x9, -52 # sub immediate from rs1 to counter offset
c.sw x8, 52(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x9, 0xb6341228 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x819409e3 # initialize rs2 with random value
addi x10, x10, -40 # sub immediate from rs1 to counter offset
c.sw x11, 40(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0xc2757150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x15, 0xba611d32 # initialize rs2 with random value
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sw x15, 96(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x0b3e909f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xb1297f49 # initialize rs2 with random value
addi x12, x12, -32 # sub immediate from rs1 to counter offset
c.sw x11, 32(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x478b0557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x2380100d # initialize rs2 with random value
addi x13, x13, -84 # sub immediate from rs1 to counter offset
c.sw x12, 84(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0xd9881cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x9, 0x0d7a7dd2 # initialize rs2 with random value
addi x14, x14, -0 # sub immediate from rs1 to counter offset
c.sw x9, 0(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x24, 0x23269dce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x13, 0x43762556 # initialize rs2 with random value
addi x15, x15, -100 # sub immediate from rs1 to counter offset
c.sw x13, 100(x15) # perform operation 

# Testcase cp_imm_mul
li x4, 0xa47d13c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x11, 0x010f3fcc # initialize rs2 with random value
addi x15, x15, -0 # sub immediate from rs1 to counter offset
c.sw x11, 0(x15) # perform operation 

# Testcase cp_imm_mul
li x6, 0x832fdf96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x13, 0xf5777a0f # initialize rs2 with random value
addi x12, x12, -4 # sub immediate from rs1 to counter offset
c.sw x13, 4(x12) # perform operation 

# Testcase cp_imm_mul
li x1, 0x3ab203de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0x75f903ce # initialize rs2 with random value
addi x8, x8, -8 # sub immediate from rs1 to counter offset
c.sw x11, 8(x8) # perform operation 

# Testcase cp_imm_mul
li x3, 0x7da49a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x9, 0x2cfc391e # initialize rs2 with random value
addi x13, x13, -12 # sub immediate from rs1 to counter offset
c.sw x9, 12(x13) # perform operation 

# Testcase cp_imm_mul
li x19, 0x4ea1df8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x11, 0x3dc01bff # initialize rs2 with random value
addi x10, x10, -16 # sub immediate from rs1 to counter offset
c.sw x11, 16(x10) # perform operation 

# Testcase cp_imm_mul
li x28, 0xbf45659b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0xcdf03389 # initialize rs2 with random value
addi x14, x14, -20 # sub immediate from rs1 to counter offset
c.sw x11, 20(x14) # perform operation 

# Testcase cp_imm_mul
li x14, 0x92d2086b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x15, 0xe65c1976 # initialize rs2 with random value
addi x12, x12, -24 # sub immediate from rs1 to counter offset
c.sw x15, 24(x12) # perform operation 

# Testcase cp_imm_mul
li x12, 0xaa2e477f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0x2b25be84 # initialize rs2 with random value
addi x10, x10, -28 # sub immediate from rs1 to counter offset
c.sw x9, 28(x10) # perform operation 

# Testcase cp_imm_mul
li x1, 0xc4343129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0xe25436eb # initialize rs2 with random value
addi x9, x9, -32 # sub immediate from rs1 to counter offset
c.sw x13, 32(x9) # perform operation 

# Testcase cp_imm_mul
li x26, 0x7e73e999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x13, 0x94a86743 # initialize rs2 with random value
addi x9, x9, -36 # sub immediate from rs1 to counter offset
c.sw x13, 36(x9) # perform operation 

# Testcase cp_imm_mul
li x8, 0xaca9fa62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0x91c33a71 # initialize rs2 with random value
addi x14, x14, -40 # sub immediate from rs1 to counter offset
c.sw x10, 40(x14) # perform operation 

# Testcase cp_imm_mul
li x8, 0xaee27c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xb6cb84b3 # initialize rs2 with random value
addi x14, x14, -44 # sub immediate from rs1 to counter offset
c.sw x10, 44(x14) # perform operation 

# Testcase cp_imm_mul
li x8, 0x633874ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address
li x9, 0x372b580c # initialize rs2 with random value
addi x10, x10, -48 # sub immediate from rs1 to counter offset
c.sw x9, 48(x10) # perform operation 

# Testcase cp_imm_mul
li x29, 0x3569b864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x14, 0x65121f17 # initialize rs2 with random value
addi x15, x15, -52 # sub immediate from rs1 to counter offset
c.sw x14, 52(x15) # perform operation 

# Testcase cp_imm_mul
li x23, 0x5c3e39ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x11, 0xe072cac6 # initialize rs2 with random value
addi x12, x12, -56 # sub immediate from rs1 to counter offset
c.sw x11, 56(x12) # perform operation 

# Testcase cp_imm_mul
li x22, 0x2c26a7e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0xf43eea7e # initialize rs2 with random value
addi x13, x13, -60 # sub immediate from rs1 to counter offset
c.sw x8, 60(x13) # perform operation 

# Testcase cp_imm_mul
li x8, 0x1e02cbba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x10, 0xa9e58fff # initialize rs2 with random value
addi x14, x14, -64 # sub immediate from rs1 to counter offset
c.sw x10, 64(x14) # perform operation 

# Testcase cp_imm_mul
li x6, 0xaf9c2753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x4933df83 # initialize rs2 with random value
addi x13, x13, -68 # sub immediate from rs1 to counter offset
c.sw x12, 68(x13) # perform operation 

# Testcase cp_imm_mul
li x14, 0x677498f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0xef16d913 # initialize rs2 with random value
addi x8, x8, -72 # sub immediate from rs1 to counter offset
c.sw x11, 72(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x48286e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x11, 0x05a273fc # initialize rs2 with random value
addi x8, x8, -76 # sub immediate from rs1 to counter offset
c.sw x11, 76(x8) # perform operation 

# Testcase cp_imm_mul
li x17, 0x459322b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address
li x9, 0x883cad54 # initialize rs2 with random value
addi x15, x15, -80 # sub immediate from rs1 to counter offset
c.sw x9, 80(x15) # perform operation 

# Testcase cp_imm_mul
li x2, 0x708d77bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0xc6ad41a2 # initialize rs2 with random value
addi x8, x8, -84 # sub immediate from rs1 to counter offset
c.sw x15, 84(x8) # perform operation 

# Testcase cp_imm_mul
li x29, 0x9646d8cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x9, 0xd57a2246 # initialize rs2 with random value
addi x8, x8, -88 # sub immediate from rs1 to counter offset
c.sw x9, 88(x8) # perform operation 

# Testcase cp_imm_mul
li x14, 0x6ba8edcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address
li x10, 0x6be76dda # initialize rs2 with random value
addi x12, x12, -92 # sub immediate from rs1 to counter offset
c.sw x10, 92(x12) # perform operation 

# Testcase cp_imm_mul
li x1, 0x8e59f058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x14, 0x1edccf32 # initialize rs2 with random value
addi x11, x11, -96 # sub immediate from rs1 to counter offset
c.sw x14, 96(x11) # perform operation 

# Testcase cp_imm_mul
li x4, 0x143c38c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address
li x12, 0xa5272d82 # initialize rs2 with random value
addi x11, x11, -100 # sub immediate from rs1 to counter offset
c.sw x12, 100(x11) # perform operation 

# Testcase cp_imm_mul
li x12, 0x8cdfddea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x12, 0x62fd07c4 # initialize rs2 with random value
addi x13, x13, -104 # sub immediate from rs1 to counter offset
c.sw x12, 104(x13) # perform operation 

# Testcase cp_imm_mul
li x16, 0xe137d592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address
li x11, 0x02c39d58 # initialize rs2 with random value
addi x14, x14, -108 # sub immediate from rs1 to counter offset
c.sw x11, 108(x14) # perform operation 

# Testcase cp_imm_mul
li x24, 0xe9866d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address
li x8, 0xcd3ef2f9 # initialize rs2 with random value
addi x13, x13, -112 # sub immediate from rs1 to counter offset
c.sw x8, 112(x13) # perform operation 

# Testcase cp_imm_mul
li x10, 0xa26d1c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x14, 0x640209a0 # initialize rs2 with random value
addi x9, x9, -116 # sub immediate from rs1 to counter offset
c.sw x14, 116(x9) # perform operation 

# Testcase cp_imm_mul
li x20, 0xdb8dee54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address
li x8, 0x97e5147d # initialize rs2 with random value
addi x9, x9, -120 # sub immediate from rs1 to counter offset
c.sw x8, 120(x9) # perform operation 

# Testcase cp_imm_mul
li x24, 0x2bfc44ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address
li x15, 0x21a5b5c1 # initialize rs2 with random value
addi x8, x8, -124 # sub immediate from rs1 to counter offset
c.sw x15, 124(x8) # perform operation 

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.jalr.S
// ******************


    
# Testcase cp_rs1 (Test source rs1 = x1)
li x18, 0x2846cd32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2846cd32 # initialize legalized rd (x1) to a random value that should get changed
la x1, 1f
c.jalr x1 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x26, 0xda4d9d1a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xda4d9d1a # initialize legalized rd (x1) to a random value that should get changed
la x2, 1f
c.jalr x2 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x4, 0xd0c5a04a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd0c5a04a # initialize legalized rd (x1) to a random value that should get changed
la x3, 1f
c.jalr x3 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x22, 0x38092021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x38092021 # initialize legalized rd (x1) to a random value that should get changed
la x4, 1f
c.jalr x4 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x10, 0x897e79f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x897e79f5 # initialize legalized rd (x1) to a random value that should get changed
la x5, 1f
c.jalr x5 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x8663183f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8663183f # initialize legalized rd (x1) to a random value that should get changed
la x6, 1f
c.jalr x6 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x3, 0x6030a542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6030a542 # initialize legalized rd (x1) to a random value that should get changed
la x7, 1f
c.jalr x7 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x15, 0x9f71df23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9f71df23 # initialize legalized rd (x1) to a random value that should get changed
la x8, 1f
c.jalr x8 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x16, 0x554bd6ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x554bd6ad # initialize legalized rd (x1) to a random value that should get changed
la x9, 1f
c.jalr x9 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x34bfbeb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x34bfbeb7 # initialize legalized rd (x1) to a random value that should get changed
la x10, 1f
c.jalr x10 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0xa69b79fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa69b79fa # initialize legalized rd (x1) to a random value that should get changed
la x11, 1f
c.jalr x11 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0xde9a90a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xde9a90a7 # initialize legalized rd (x1) to a random value that should get changed
la x12, 1f
c.jalr x12 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x4d1c682e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4d1c682e # initialize legalized rd (x1) to a random value that should get changed
la x13, 1f
c.jalr x13 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x13623c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x13623c6b # initialize legalized rd (x1) to a random value that should get changed
la x14, 1f
c.jalr x14 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0xbf55ba74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xbf55ba74 # initialize legalized rd (x1) to a random value that should get changed
la x15, 1f
c.jalr x15 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x28, 0x6c9f9808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6c9f9808 # initialize legalized rd (x1) to a random value that should get changed
la x16, 1f
c.jalr x16 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x5a203d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5a203d1b # initialize legalized rd (x1) to a random value that should get changed
la x17, 1f
c.jalr x17 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x0e2953b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0e2953b2 # initialize legalized rd (x1) to a random value that should get changed
la x18, 1f
c.jalr x18 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x15, 0xa58c325e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa58c325e # initialize legalized rd (x1) to a random value that should get changed
la x19, 1f
c.jalr x19 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0x3d5bcc74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3d5bcc74 # initialize legalized rd (x1) to a random value that should get changed
la x20, 1f
c.jalr x20 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x938cff7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x938cff7c # initialize legalized rd (x1) to a random value that should get changed
la x21, 1f
c.jalr x21 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0x157b5a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x157b5a8d # initialize legalized rd (x1) to a random value that should get changed
la x22, 1f
c.jalr x22 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x31ca1b39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x31ca1b39 # initialize legalized rd (x1) to a random value that should get changed
la x23, 1f
c.jalr x23 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x7, 0x977b8495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x977b8495 # initialize legalized rd (x1) to a random value that should get changed
la x24, 1f
c.jalr x24 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x21, 0xf9b7437e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf9b7437e # initialize legalized rd (x1) to a random value that should get changed
la x25, 1f
c.jalr x25 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0x5bdcb3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bdcb3d5 # initialize legalized rd (x1) to a random value that should get changed
la x26, 1f
c.jalr x26 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x30, 0x167033b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x167033b6 # initialize legalized rd (x1) to a random value that should get changed
la x27, 1f
c.jalr x27 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0x674e7118 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x674e7118 # initialize legalized rd (x1) to a random value that should get changed
la x28, 1f
c.jalr x28 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0xdf8c2b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdf8c2b96 # initialize legalized rd (x1) to a random value that should get changed
la x29, 1f
c.jalr x29 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0x9ab6d0e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x9ab6d0e5 # initialize legalized rd (x1) to a random value that should get changed
la x30, 1f
c.jalr x30 # perform operation
nop
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x5, 0xb1c690e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xb1c690e9 # initialize legalized rd (x1) to a random value that should get changed
la x31, 1f
c.jalr x31 # perform operation
nop
nop
1:

# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: la x23, 1b
c.jalr x23 # backward branch
3: nop # done with sequence

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addi.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x85108b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x0, 18 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x38e842dc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x1, 27 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd57ce771 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x2, -5 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa1a160a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x3, -4 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xedeb20bd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x4, -22 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x58fc677d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, -28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x58141c84 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x6, -17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5cad92cf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x7, -26 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xab7ff3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x8, -25 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb49fbc25 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x9, -25 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3ebb3725 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x10, -20 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x314300b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x11, -14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x4efa42db # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x12, 24 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xa50d8846 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x13, 15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x59cb68da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x14, 14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7b6b145c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, -16 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb73c069e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x16, -32 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x44df249a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x17, -23 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8184d27c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x18, -2 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xee3de80c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, -7 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa0f35921 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x20, 11 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x62146a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x21, 1 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xfeaece2d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x22, -4 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xdd1021a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, 5 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xac8b887d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x24, -14 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x283ef0c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x25, 0 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xe024f206 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x26, 25 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xde090b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -6 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9bd23a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, 5 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x09cd78ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x29, 15 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x61500c0d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -20 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe963668d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, 15 # perform operation

# Testcase cp_imm_zero
li x5, 0xad8662bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x27, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x00000012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, -17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0xffffffffffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x19, 3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x14, 0x80000012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x14, -18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x15, 0x7fffffe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x15, 26 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x80000016 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x30, -23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x31, 0x7fffffec # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x31, 18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x5, 0xfffffff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x5, 14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xffffffee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x23, 16 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x28, 0x5bbc8869 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, 14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x28, 0xaaaaaa93 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x28, 23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x10, 0x55555565 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi x10, -16 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.jal.S
// ******************


    
# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.jal 1b # backward branch
3: nop # done with sequence

# Testcase cp_imm_ones_zeros 2
c.jal 1f # jump to aligned address to stress immediate
.align 2
1:

# Testcase cp_imm_ones_zeros 3
c.jal 1f # jump to aligned address to stress immediate
.align 3
1:

# Testcase cp_imm_ones_zeros 4
c.jal 1f # jump to aligned address to stress immediate
.align 4
1:

# Testcase cp_imm_ones_zeros 5
c.jal 1f # jump to aligned address to stress immediate
.align 5
1:

# Testcase cp_imm_ones_zeros 6
c.jal 1f # jump to aligned address to stress immediate
.align 6
1:

# Testcase cp_imm_ones_zeros 7
c.jal 1f # jump to aligned address to stress immediate
.align 7
1:

# Testcase cp_imm_ones_zeros 8
c.jal 1f # jump to aligned address to stress immediate
.align 8
1:

# Testcase cp_imm_ones_zeros 9
c.jal 1f # jump to aligned address to stress immediate
.align 9
1:

# Testcase cp_imm_ones_zeros 10
c.jal 1f # jump to aligned address to stress immediate
.align 10
1:

# Testcase cp_imm_ones_zeros 11
c.jal 1f # jump to aligned address to stress immediate
.align 11
1:

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.sub.S
// ******************


    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1d2b9303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf295195b # initialize leagalized rd to a random value that should get changed
li x9, 0xbaf67903 # initialize rs2
c.sub x8, x9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x95e5d8f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7a3ce6f2 # initialize leagalized rd to a random value that should get changed
li x14, 0xc1130ff6 # initialize rs2
c.sub x9, x14 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x430cf255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdf0fdfe5 # initialize leagalized rd to a random value that should get changed
li x12, 0x2b45786d # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe393443d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x029ffd63 # initialize leagalized rd to a random value that should get changed
li x12, 0x881b0138 # initialize rs2
c.sub x11, x12 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x88905810 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6783784e # initialize leagalized rd to a random value that should get changed
li x14, 0x6d7c6fd0 # initialize rs2
c.sub x12, x14 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5a1ddff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x6e3d559b # initialize leagalized rd to a random value that should get changed
li x12, 0x6719ac0c # initialize rs2
c.sub x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2f38def4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfe05c5da # initialize leagalized rd to a random value that should get changed
li x12, 0x582330c1 # initialize rs2
c.sub x14, x12 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8fe17a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8ee7b381 # initialize leagalized rd to a random value that should get changed
li x14, 0x6c0e677f # initialize rs2
c.sub x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x231c0ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb4390a7b # initialize leagalized rd to a random value that should get changed
li x8, 0xe344081d # initialize rs2
c.sub x10, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x2ef28928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x94842cb2 # initialize leagalized rd to a random value that should get changed
li x9, 0x3fac795d # initialize rs2
c.sub x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0xc115bc02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3661757c # initialize leagalized rd to a random value that should get changed
li x10, 0xe057b823 # initialize rs2
c.sub x11, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x4, 0x5561b969 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4e39b66e # initialize leagalized rd to a random value that should get changed
li x11, 0x877c55a7 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x15, 0x79d98f11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1192e12a # initialize leagalized rd to a random value that should get changed
li x12, 0x32983733 # initialize rs2
c.sub x15, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0xd62b2843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa0b1a1de # initialize leagalized rd to a random value that should get changed
li x13, 0xa12efbe0 # initialize rs2
c.sub x8, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x21, 0xc9e08992 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x4ab3f192 # initialize leagalized rd to a random value that should get changed
li x14, 0x6af8ed61 # initialize rs2
c.sub x13, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x7082b6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xd0c69e82 # initialize leagalized rd to a random value that should get changed
li x15, 0x7e02c18b # initialize rs2
c.sub x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x46ef0c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000 # initialize rs2
c.sub x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x1eccdac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffff # initialize rs2
c.sub x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x706b5070 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize leagalized rd to a random value that should get changed
li x15, 0xffffffff # initialize rs2
c.sub x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x5, 0x1830cb71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x40000000 # initialize leagalized rd to a random value that should get changed
li x15, 0xc0000000 # initialize rs2
c.sub x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x16, 0x1be3f45b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x40000000 # initialize leagalized rd to a random value that should get changed
li x13, 0xbfffffff # initialize rs2
c.sub x8, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0x614416c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3fffffff # initialize leagalized rd to a random value that should get changed
li x14, 0xc0000000 # initialize rs2
c.sub x9, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x1f1a6c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3fffffff # initialize leagalized rd to a random value that should get changed
li x8, 0xc0000001 # initialize rs2
c.sub x9, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x12, 0xd66ab838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffff # initialize leagalized rd to a random value that should get changed
li x9, 0x80000000 # initialize rs2
c.sub x12, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x8, 0x27f66404 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize leagalized rd to a random value that should get changed
li x12, 0x80000001 # initialize rs2
c.sub x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x23, 0x8d8fe3ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2dde443b # initialize leagalized rd to a random value that should get changed
li x11, 0xd221bbc4 # initialize rs2
c.sub x15, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0x57f52ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize leagalized rd to a random value that should get changed
li x12, 0xaaaaaaab # initialize rs2
c.sub x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0x426c4b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2aaaaaaa # initialize leagalized rd to a random value that should get changed
li x11, 0xd5555555 # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xeff60d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x68711405 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000 # initialize rs2
c.sub x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x4, 0x2cd4e7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5f53b34f # initialize leagalized rd to a random value that should get changed
li x13, 0x00000001 # initialize rs2
c.sub x12, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x6990f532 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf80c5e7b # initialize leagalized rd to a random value that should get changed
li x13, 0x00000002 # initialize rs2
c.sub x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x18, 0x13b3770b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x126f2bb8 # initialize leagalized rd to a random value that should get changed
li x12, 0x80000000 # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x20, 0x87444235 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8856b70b # initialize leagalized rd to a random value that should get changed
li x14, 0x80000001 # initialize rs2
c.sub x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x7, 0xa8c61125 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcb7da2eb # initialize leagalized rd to a random value that should get changed
li x10, 0x7fffffff # initialize rs2
c.sub x15, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x18, 0xe62dfbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x29459369 # initialize leagalized rd to a random value that should get changed
li x12, 0x7ffffffe # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0x97484ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x02d669a4 # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffff # initialize rs2
c.sub x12, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x1, 0xe75db65c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xad61867a # initialize leagalized rd to a random value that should get changed
li x11, 0xfffffffe # initialize rs2
c.sub x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x18, 0x39ae3309 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfc831edd # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc8877 # initialize rs2
c.sub x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x18, 0x79692928 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x600cd068 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaa # initialize rs2
c.sub x10, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x27, 0x4f748f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f6e5187 # initialize leagalized rd to a random value that should get changed
li x14, 0x55555555 # initialize rs2
c.sub x11, x14 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lui.S
// ******************


    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x4ed1bbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x1, 31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xa200260b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048555 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xff8e2e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x3, 13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x26591c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x4, 16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x42a61048 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x5, 13 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x15af7595 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x6, 17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x61171a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x7, 30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa76c6948 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x8, 1048553 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6cf141af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048559 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x07171db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x10, 1048567 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xeb918b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x11, 1048568 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf78140cd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 1048562 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2f2eb1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x13, 3 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x50294ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x14, 1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6bf040e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x15, 1048574 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x450dc67b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x16, 31 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcc58d292 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 1048547 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0ae72bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x18, 1048551 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfa397ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 1048573 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x517837e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x20, 1048554 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8d6fe6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 15 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x87c85e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x22, 1048569 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6d58e5a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x23, 12 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xbe03a1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x24, 26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x5d935b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x25, 22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x6dd3b751 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x26, 1048568 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xab53ee4b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 1048557 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1eec2e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 1048573 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x14733181 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x29, 12 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xbd392add # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x30, 1048566 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x58321923 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x31, 1048569 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xc18539a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x7b4c7d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x996885d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x19, 0x4c9e1798 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 1048544 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x17, 0x77acc680 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 1048545 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x9, 0x0be676d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x21, 0x649e9b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x28, 0x1f7df973 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 1048575 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x13, 0xf2be1ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x13, 1048574 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x9, 0x393594a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048554 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x31, 0x5c2e8c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x31, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x12, 0x621c2597 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 22 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.lwsp.S
// ******************


    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xb8a3885d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x52b854bf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x17, 116(sp)   # store value to put something in memory
c.lwsp x1, 116(sp) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3833e89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdfdd791d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x18, 224(sp)   # store value to put something in memory
c.lwsp x2, 224(sp) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x9f491254 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x64751cdc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x24, 144(sp)   # store value to put something in memory
c.lwsp x3, 144(sp) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x68e059ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdda31e8e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x21, 240(sp)   # store value to put something in memory
c.lwsp x4, 240(sp) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7645690e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf3b93c65 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x6, 72(sp)   # store value to put something in memory
c.lwsp x5, 72(sp) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xfce58f21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xcd5ccb30 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x18, 168(sp)   # store value to put something in memory
c.lwsp x6, 168(sp) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x7899d923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdfd5dcc3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x15, 52(sp)   # store value to put something in memory
c.lwsp x7, 52(sp) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x53baf21e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc6430cd7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x21, 60(sp)   # store value to put something in memory
c.lwsp x8, 60(sp) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb1c26bb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xef8f18fc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x18, 16(sp)   # store value to put something in memory
c.lwsp x9, 16(sp) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd0bfd78c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8d26011a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x28, 28(sp)   # store value to put something in memory
c.lwsp x10, 28(sp) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb8e45886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x2273ee5a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x23, 244(sp)   # store value to put something in memory
c.lwsp x11, 244(sp) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x924e4007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1257f3f3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x30, 164(sp)   # store value to put something in memory
c.lwsp x12, 164(sp) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb415e12a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0f2e1190 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x23, 180(sp)   # store value to put something in memory
c.lwsp x13, 180(sp) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc2631e86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd9d46dc0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x30, 92(sp)   # store value to put something in memory
c.lwsp x14, 92(sp) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7bb886db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x70ffda1e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x13, 56(sp)   # store value to put something in memory
c.lwsp x15, 56(sp) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xca6890d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x28f556da # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x6, 232(sp)   # store value to put something in memory
c.lwsp x16, 232(sp) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x047a8be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xf57784e3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x26, 136(sp)   # store value to put something in memory
c.lwsp x17, 136(sp) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xc77d3127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf2a388b0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x9, 36(sp)   # store value to put something in memory
c.lwsp x18, 36(sp) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa5a81a55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x16f66b6a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x11, 32(sp)   # store value to put something in memory
c.lwsp x19, 32(sp) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xbcc2f250 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb6477ebc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x20, 108(sp)   # store value to put something in memory
c.lwsp x20, 108(sp) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2c63549a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x140c3911 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x26, 56(sp)   # store value to put something in memory
c.lwsp x21, 56(sp) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x831e3c49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfd5b9992 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x4, 216(sp)   # store value to put something in memory
c.lwsp x22, 216(sp) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6b12212e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x815be463 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x3, 24(sp)   # store value to put something in memory
c.lwsp x23, 24(sp) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x25ff3162 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3d80bd08 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x8, 192(sp)   # store value to put something in memory
c.lwsp x24, 192(sp) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd76e4d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x798df725 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x18, 136(sp)   # store value to put something in memory
c.lwsp x25, 136(sp) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xd9c4832d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x06a564de # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x3, 20(sp)   # store value to put something in memory
c.lwsp x26, 20(sp) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xdf7d1e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa32a761f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x17, 72(sp)   # store value to put something in memory
c.lwsp x27, 72(sp) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6e9c2dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x730eee50 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x26, 152(sp)   # store value to put something in memory
c.lwsp x28, 152(sp) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x59186819 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x05bcd9cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x20, 96(sp)   # store value to put something in memory
c.lwsp x29, 96(sp) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xdecc3013 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x17b72169 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x19, 16(sp)   # store value to put something in memory
c.lwsp x30, 16(sp) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x88260390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa907b566 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x22, 188(sp)   # store value to put something in memory
c.lwsp x31, 188(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0x3b415779 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf92d1103 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x17, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x0ad67a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x16, 0(sp)   # store value to put something in memory
c.lwsp x6, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x1609bf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x8, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0x911a5394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa9326359 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x26, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x8, 0x00446ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x28, 4(sp)   # store value to put something in memory
c.lwsp x8, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x26, 0xe0f8554a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x7, 252(sp)   # store value to put something in memory
c.lwsp x26, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x2, 0xf813a45c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd88faeaf # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x2, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x18, 0x13d71695 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x11, 8(sp)   # store value to put something in memory
c.lwsp x18, 8(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0xd6c819c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x12, 252(sp)   # store value to put something in memory
c.lwsp x14, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x25, 0xdefba6fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb673abdd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x25, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x28, 0x3e035823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x80000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x26, 0(sp)   # store value to put something in memory
c.lwsp x28, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x7, 0xbadb7bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x13, 252(sp)   # store value to put something in memory
c.lwsp x7, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x7, 0x84e6dfe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5ea0a34f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x7, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0xe90a4af9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x80000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x19, 4(sp)   # store value to put something in memory
c.lwsp x30, 4(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0x69e189f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x14, 252(sp)   # store value to put something in memory
c.lwsp x22, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x13, 0xbd87eeeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x211addc4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x13, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x29, 0x8ce7f5f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x1, 252(sp)   # store value to put something in memory
c.lwsp x29, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x30, 0x0fdae9af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7fffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x20, 252(sp)   # store value to put something in memory
c.lwsp x30, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x2, 0x4c63670f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd456d524 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x2, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x21, 0xc0d55ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x9, 248(sp)   # store value to put something in memory
c.lwsp x21, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x14, 0xe6556160 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x7ffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x3, 252(sp)   # store value to put something in memory
c.lwsp x14, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x014a6be3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x51c5f7cc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x20, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x0d7d867d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x31, 252(sp)   # store value to put something in memory
c.lwsp x11, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x9, 0xa067e538 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffff # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x16, 252(sp)   # store value to put something in memory
c.lwsp x9, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x28, 0xbcb4d5eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x43d14647 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x28, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x31, 0x02ee313c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xfffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x1, 248(sp)   # store value to put something in memory
c.lwsp x31, 248(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0x60a45861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfffffffe # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x18, 252(sp)   # store value to put something in memory
c.lwsp x24, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x4, 0xd9e8c54e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x538cd202 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x4, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x12, 0x3b43cfe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x29, 220(sp)   # store value to put something in memory
c.lwsp x12, 220(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc8877)
li x25, 0xad164510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5bbc8877 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x7, 252(sp)   # store value to put something in memory
c.lwsp x25, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x23, 0xa8e6ba30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6db40270 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x23, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x16, 0xab7e9170 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x4, 168(sp)   # store value to put something in memory
c.lwsp x16, 168(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x31, 0x66ba941b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x10, 252(sp)   # store value to put something in memory
c.lwsp x31, 252(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0x67f4b61a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x125a4005 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x0, 0(sp)   # store value to put something in memory
c.lwsp x19, 0(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x28, 0xaaf2b43f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x55555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x21, 84(sp)   # store value to put something in memory
c.lwsp x28, 84(sp) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x29, 0xb7ca6ead # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x55555555 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x1, 252(sp)   # store value to put something in memory
c.lwsp x29, 252(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0xe7a3abfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2abeb63a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -0 # sub immediate from rs1 to counter offset
c.swsp x25, 0(sp)   # store value to put something in memory
c.lwsp x10, 0(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xfa1356b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf0aac7c1 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -4 # sub immediate from rs1 to counter offset
c.swsp x25, 4(sp)   # store value to put something in memory
c.lwsp x22, 4(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x05ffb748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfe50bb8e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -8 # sub immediate from rs1 to counter offset
c.swsp x22, 8(sp)   # store value to put something in memory
c.lwsp x30, 8(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x2d2275f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x92a3af1b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -12 # sub immediate from rs1 to counter offset
c.swsp x11, 12(sp)   # store value to put something in memory
c.lwsp x26, 12(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x2735c459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8b5d04dc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -16 # sub immediate from rs1 to counter offset
c.swsp x4, 16(sp)   # store value to put something in memory
c.lwsp x19, 16(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x9de3076b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x68136efd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -20 # sub immediate from rs1 to counter offset
c.swsp x11, 20(sp)   # store value to put something in memory
c.lwsp x29, 20(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x45052aac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf5a94bd7 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -24 # sub immediate from rs1 to counter offset
c.swsp x27, 24(sp)   # store value to put something in memory
c.lwsp x17, 24(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x4f396043 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3318e350 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -28 # sub immediate from rs1 to counter offset
c.swsp x22, 28(sp)   # store value to put something in memory
c.lwsp x17, 28(sp) # perform operation

# Testcase cp_imm_mul
li x17, 0x5a4b65c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x95cdcdec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -32 # sub immediate from rs1 to counter offset
c.swsp x25, 32(sp)   # store value to put something in memory
c.lwsp x17, 32(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x82e5ce6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3b52fb9b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -36 # sub immediate from rs1 to counter offset
c.swsp x21, 36(sp)   # store value to put something in memory
c.lwsp x15, 36(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xb6c70506 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xa6fb1727 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -40 # sub immediate from rs1 to counter offset
c.swsp x28, 40(sp)   # store value to put something in memory
c.lwsp x22, 40(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x18223b85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x949783af # initialize rs2
la sp, scratch # base address 
addi sp, sp, -44 # sub immediate from rs1 to counter offset
c.swsp x16, 44(sp)   # store value to put something in memory
c.lwsp x13, 44(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x2eafd752 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x06bd5da0 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -48 # sub immediate from rs1 to counter offset
c.swsp x4, 48(sp)   # store value to put something in memory
c.lwsp x28, 48(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x8534a9a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xce8bd2e2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -52 # sub immediate from rs1 to counter offset
c.swsp x4, 52(sp)   # store value to put something in memory
c.lwsp x10, 52(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x823f9e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe7ccd801 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -56 # sub immediate from rs1 to counter offset
c.swsp x26, 56(sp)   # store value to put something in memory
c.lwsp x10, 56(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x005c1ac0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x42a47d47 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -60 # sub immediate from rs1 to counter offset
c.swsp x12, 60(sp)   # store value to put something in memory
c.lwsp x11, 60(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x86742047 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x95e853cd # initialize rs2
la sp, scratch # base address 
addi sp, sp, -64 # sub immediate from rs1 to counter offset
c.swsp x19, 64(sp)   # store value to put something in memory
c.lwsp x26, 64(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0x1b13cdb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa1ba5a09 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -68 # sub immediate from rs1 to counter offset
c.swsp x9, 68(sp)   # store value to put something in memory
c.lwsp x2, 68(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xf2067857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x81aeb27e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -72 # sub immediate from rs1 to counter offset
c.swsp x18, 72(sp)   # store value to put something in memory
c.lwsp x2, 72(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x29ded507 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x265392d9 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -76 # sub immediate from rs1 to counter offset
c.swsp x31, 76(sp)   # store value to put something in memory
c.lwsp x12, 76(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xce459631 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe28f5198 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -80 # sub immediate from rs1 to counter offset
c.swsp x26, 80(sp)   # store value to put something in memory
c.lwsp x18, 80(sp) # perform operation

# Testcase cp_imm_mul
li x30, 0x0ef016bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x39f40901 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -84 # sub immediate from rs1 to counter offset
c.swsp x23, 84(sp)   # store value to put something in memory
c.lwsp x30, 84(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x18db87d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00b763a4 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -88 # sub immediate from rs1 to counter offset
c.swsp x11, 88(sp)   # store value to put something in memory
c.lwsp x3, 88(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0xff12a0f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x8299a557 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -92 # sub immediate from rs1 to counter offset
c.swsp x22, 92(sp)   # store value to put something in memory
c.lwsp x16, 92(sp) # perform operation

# Testcase cp_imm_mul
li x25, 0x0ad42002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5cdf6a84 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -96 # sub immediate from rs1 to counter offset
c.swsp x7, 96(sp)   # store value to put something in memory
c.lwsp x25, 96(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x82406b69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaecb3902 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -100 # sub immediate from rs1 to counter offset
c.swsp x9, 100(sp)   # store value to put something in memory
c.lwsp x16, 100(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x272fc728 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a9e09ce # initialize rs2
la sp, scratch # base address 
addi sp, sp, -104 # sub immediate from rs1 to counter offset
c.swsp x19, 104(sp)   # store value to put something in memory
c.lwsp x28, 104(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0x0b17e934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbae4c79e # initialize rs2
la sp, scratch # base address 
addi sp, sp, -108 # sub immediate from rs1 to counter offset
c.swsp x7, 108(sp)   # store value to put something in memory
c.lwsp x15, 108(sp) # perform operation

# Testcase cp_imm_mul
li x7, 0x063b3dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x748da6ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -112 # sub immediate from rs1 to counter offset
c.swsp x20, 112(sp)   # store value to put something in memory
c.lwsp x7, 112(sp) # perform operation

# Testcase cp_imm_mul
li x16, 0x90acb2fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x968b7c87 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -116 # sub immediate from rs1 to counter offset
c.swsp x26, 116(sp)   # store value to put something in memory
c.lwsp x16, 116(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x4855da93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x8b5d4298 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -120 # sub immediate from rs1 to counter offset
c.swsp x18, 120(sp)   # store value to put something in memory
c.lwsp x10, 120(sp) # perform operation

# Testcase cp_imm_mul
li x10, 0x517da4b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaee5e62a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -124 # sub immediate from rs1 to counter offset
c.swsp x16, 124(sp)   # store value to put something in memory
c.lwsp x10, 124(sp) # perform operation

# Testcase cp_imm_mul
li x18, 0xdda607c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x07af7017 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -128 # sub immediate from rs1 to counter offset
c.swsp x26, 128(sp)   # store value to put something in memory
c.lwsp x18, 128(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x7bb25960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4613640b # initialize rs2
la sp, scratch # base address 
addi sp, sp, -132 # sub immediate from rs1 to counter offset
c.swsp x23, 132(sp)   # store value to put something in memory
c.lwsp x26, 132(sp) # perform operation

# Testcase cp_imm_mul
li x4, 0xecf97aab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0d51b8ac # initialize rs2
la sp, scratch # base address 
addi sp, sp, -136 # sub immediate from rs1 to counter offset
c.swsp x25, 136(sp)   # store value to put something in memory
c.lwsp x4, 136(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x30037078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x68e47c22 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -140 # sub immediate from rs1 to counter offset
c.swsp x8, 140(sp)   # store value to put something in memory
c.lwsp x26, 140(sp) # perform operation

# Testcase cp_imm_mul
li x14, 0xd0ba2475 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xe4aa3038 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -144 # sub immediate from rs1 to counter offset
c.swsp x24, 144(sp)   # store value to put something in memory
c.lwsp x14, 144(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x08f37a0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7232fe85 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -148 # sub immediate from rs1 to counter offset
c.swsp x4, 148(sp)   # store value to put something in memory
c.lwsp x9, 148(sp) # perform operation

# Testcase cp_imm_mul
li x15, 0xd8aab959 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8e3b7e6f # initialize rs2
la sp, scratch # base address 
addi sp, sp, -152 # sub immediate from rs1 to counter offset
c.swsp x30, 152(sp)   # store value to put something in memory
c.lwsp x15, 152(sp) # perform operation

# Testcase cp_imm_mul
li x1, 0xf80db857 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1a063cba # initialize rs2
la sp, scratch # base address 
addi sp, sp, -156 # sub immediate from rs1 to counter offset
c.swsp x20, 156(sp)   # store value to put something in memory
c.lwsp x1, 156(sp) # perform operation

# Testcase cp_imm_mul
li x29, 0x154a4127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x348dd243 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -160 # sub immediate from rs1 to counter offset
c.swsp x31, 160(sp)   # store value to put something in memory
c.lwsp x29, 160(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x5973fee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xd42e3d1a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -164 # sub immediate from rs1 to counter offset
c.swsp x22, 164(sp)   # store value to put something in memory
c.lwsp x9, 164(sp) # perform operation

# Testcase cp_imm_mul
li x28, 0x315d1b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xb8cb80bc # initialize rs2
la sp, scratch # base address 
addi sp, sp, -168 # sub immediate from rs1 to counter offset
c.swsp x6, 168(sp)   # store value to put something in memory
c.lwsp x28, 168(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xed50c40f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdcc45412 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -172 # sub immediate from rs1 to counter offset
c.swsp x19, 172(sp)   # store value to put something in memory
c.lwsp x26, 172(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x28cbe1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x27ff48ab # initialize rs2
la sp, scratch # base address 
addi sp, sp, -176 # sub immediate from rs1 to counter offset
c.swsp x29, 176(sp)   # store value to put something in memory
c.lwsp x11, 176(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x308190ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x6b8b1865 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -180 # sub immediate from rs1 to counter offset
c.swsp x30, 180(sp)   # store value to put something in memory
c.lwsp x3, 180(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xbe1b266b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x08ad6f94 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -184 # sub immediate from rs1 to counter offset
c.swsp x18, 184(sp)   # store value to put something in memory
c.lwsp x27, 184(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0x7564467d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcf0256c3 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -188 # sub immediate from rs1 to counter offset
c.swsp x21, 188(sp)   # store value to put something in memory
c.lwsp x12, 188(sp) # perform operation

# Testcase cp_imm_mul
li x5, 0xbd7d7d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x82abca9d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -192 # sub immediate from rs1 to counter offset
c.swsp x11, 192(sp)   # store value to put something in memory
c.lwsp x5, 192(sp) # perform operation

# Testcase cp_imm_mul
li x6, 0xdd041cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xde4fb68c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -196 # sub immediate from rs1 to counter offset
c.swsp x24, 196(sp)   # store value to put something in memory
c.lwsp x6, 196(sp) # perform operation

# Testcase cp_imm_mul
li x13, 0x0dcb68ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe7b5a8ec # initialize rs2
la sp, scratch # base address 
addi sp, sp, -200 # sub immediate from rs1 to counter offset
c.swsp x28, 200(sp)   # store value to put something in memory
c.lwsp x13, 200(sp) # perform operation

# Testcase cp_imm_mul
li x2, 0xa10463aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x20d2bd02 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -204 # sub immediate from rs1 to counter offset
c.swsp x26, 204(sp)   # store value to put something in memory
c.lwsp x2, 204(sp) # perform operation

# Testcase cp_imm_mul
li x12, 0xc6f48cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf59e31f6 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -208 # sub immediate from rs1 to counter offset
c.swsp x9, 208(sp)   # store value to put something in memory
c.lwsp x12, 208(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0x29b581eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x48cda594 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -212 # sub immediate from rs1 to counter offset
c.swsp x8, 212(sp)   # store value to put something in memory
c.lwsp x26, 212(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x109b6ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x171cbe6a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -216 # sub immediate from rs1 to counter offset
c.swsp x16, 216(sp)   # store value to put something in memory
c.lwsp x11, 216(sp) # perform operation

# Testcase cp_imm_mul
li x19, 0x283d0942 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x18849199 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -220 # sub immediate from rs1 to counter offset
c.swsp x22, 220(sp)   # store value to put something in memory
c.lwsp x19, 220(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0x359ea9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbea920e2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -224 # sub immediate from rs1 to counter offset
c.swsp x4, 224(sp)   # store value to put something in memory
c.lwsp x27, 224(sp) # perform operation

# Testcase cp_imm_mul
li x26, 0xd3db0763 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1b022b01 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -228 # sub immediate from rs1 to counter offset
c.swsp x18, 228(sp)   # store value to put something in memory
c.lwsp x26, 228(sp) # perform operation

# Testcase cp_imm_mul
li x11, 0x834e0f66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0773d2a2 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -232 # sub immediate from rs1 to counter offset
c.swsp x24, 232(sp)   # store value to put something in memory
c.lwsp x11, 232(sp) # perform operation

# Testcase cp_imm_mul
li x9, 0x42783808 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x91daf653 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -236 # sub immediate from rs1 to counter offset
c.swsp x28, 236(sp)   # store value to put something in memory
c.lwsp x9, 236(sp) # perform operation

# Testcase cp_imm_mul
li x22, 0xfdba3390 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x85b94341 # initialize rs2
la sp, scratch # base address 
addi sp, sp, -240 # sub immediate from rs1 to counter offset
c.swsp x17, 240(sp)   # store value to put something in memory
c.lwsp x22, 240(sp) # perform operation

# Testcase cp_imm_mul
li x3, 0x60e53726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xa1bfb82c # initialize rs2
la sp, scratch # base address 
addi sp, sp, -244 # sub immediate from rs1 to counter offset
c.swsp x29, 244(sp)   # store value to put something in memory
c.lwsp x3, 244(sp) # perform operation

# Testcase cp_imm_mul
li x27, 0xdcf325c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x479de62a # initialize rs2
la sp, scratch # base address 
addi sp, sp, -248 # sub immediate from rs1 to counter offset
c.swsp x8, 248(sp)   # store value to put something in memory
c.lwsp x27, 248(sp) # perform operation

# Testcase cp_imm_mul
li x31, 0xf82502ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0d0df96d # initialize rs2
la sp, scratch # base address 
addi sp, sp, -252 # sub immediate from rs1 to counter offset
c.swsp x19, 252(sp)   # store value to put something in memory
c.lwsp x31, 252(sp) # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.addi16sp.S
// ******************


    
# Testcase cp_imm_zero
li x25, 0x28af4808 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x26, 0x0a612e36 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -512 # perform operation

# Testcase cp_imm_mul
li x31, 0xb5ffbc3e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -496 # perform operation

# Testcase cp_imm_mul
li x15, 0xaae22b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -480 # perform operation

# Testcase cp_imm_mul
li x29, 0xcd669648 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -464 # perform operation

# Testcase cp_imm_mul
li x23, 0x7783de83 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -448 # perform operation

# Testcase cp_imm_mul
li x19, 0x270db64a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -432 # perform operation

# Testcase cp_imm_mul
li x17, 0xa68a62d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -416 # perform operation

# Testcase cp_imm_mul
li x29, 0x530fbce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -400 # perform operation

# Testcase cp_imm_mul
li x13, 0xd6bf3db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -384 # perform operation

# Testcase cp_imm_mul
li x31, 0xf3821dca # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -368 # perform operation

# Testcase cp_imm_mul
li x17, 0x0ccececd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -352 # perform operation

# Testcase cp_imm_mul
li x3, 0xb6cdfe72 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -336 # perform operation

# Testcase cp_imm_mul
li x13, 0x7d784f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -320 # perform operation

# Testcase cp_imm_mul
li x6, 0xea629367 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -304 # perform operation

# Testcase cp_imm_mul
li x24, 0x5a1f727e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -288 # perform operation

# Testcase cp_imm_mul
li x2, 0xa9bc1b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -272 # perform operation

# Testcase cp_imm_mul
li x22, 0x5a68c0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -256 # perform operation

# Testcase cp_imm_mul
li x18, 0xef66890e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -240 # perform operation

# Testcase cp_imm_mul
li x14, 0x217f8810 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -224 # perform operation

# Testcase cp_imm_mul
li x12, 0x02a66cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -208 # perform operation

# Testcase cp_imm_mul
li x19, 0xe8df1d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -192 # perform operation

# Testcase cp_imm_mul
li x2, 0x10cf82cb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -176 # perform operation

# Testcase cp_imm_mul
li x7, 0xfca74722 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -160 # perform operation

# Testcase cp_imm_mul
li x15, 0xc7f43cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -144 # perform operation

# Testcase cp_imm_mul
li x12, 0x38841a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -128 # perform operation

# Testcase cp_imm_mul
li x4, 0xdafbc581 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -112 # perform operation

# Testcase cp_imm_mul
li x19, 0x44c6473b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -96 # perform operation

# Testcase cp_imm_mul
li x21, 0x19d855d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -80 # perform operation

# Testcase cp_imm_mul
li x29, 0x548bbb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -64 # perform operation

# Testcase cp_imm_mul
li x3, 0x8c697466 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -48 # perform operation

# Testcase cp_imm_mul
li x26, 0x0e434fd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -32 # perform operation

# Testcase cp_imm_mul
li x13, 0x0f7f7576 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -16 # perform operation

# Testcase cp_imm_mul
li x31, 0x5f031a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x8, 0x202cc7af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x19, 0x875f4cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 32 # perform operation

# Testcase cp_imm_mul
li x12, 0x2ce19ab5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 48 # perform operation

# Testcase cp_imm_mul
li x28, 0x813e7ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 64 # perform operation

# Testcase cp_imm_mul
li x15, 0x82a87e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 80 # perform operation

# Testcase cp_imm_mul
li x14, 0x9ef87349 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 96 # perform operation

# Testcase cp_imm_mul
li x18, 0x3f6b1545 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 112 # perform operation

# Testcase cp_imm_mul
li x6, 0x07cc2f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 128 # perform operation

# Testcase cp_imm_mul
li x3, 0x85a9599c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 144 # perform operation

# Testcase cp_imm_mul
li x29, 0x68967142 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 160 # perform operation

# Testcase cp_imm_mul
li x19, 0x9ceb980b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 176 # perform operation

# Testcase cp_imm_mul
li x1, 0x3e4e2057 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 192 # perform operation

# Testcase cp_imm_mul
li x31, 0x4885297f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 208 # perform operation

# Testcase cp_imm_mul
li x26, 0x38e34a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 224 # perform operation

# Testcase cp_imm_mul
li x9, 0x510e69ee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 240 # perform operation

# Testcase cp_imm_mul
li x29, 0x4c766bb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 256 # perform operation

# Testcase cp_imm_mul
li x29, 0x9efcacf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 272 # perform operation

# Testcase cp_imm_mul
li x20, 0xece954ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 288 # perform operation

# Testcase cp_imm_mul
li x21, 0x50c40beb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 304 # perform operation

# Testcase cp_imm_mul
li x27, 0xe98d72c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 320 # perform operation

# Testcase cp_imm_mul
li x2, 0xe7763a4f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 336 # perform operation

# Testcase cp_imm_mul
li x19, 0x6c2598c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 352 # perform operation

# Testcase cp_imm_mul
li x31, 0xd3fbc476 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 368 # perform operation

# Testcase cp_imm_mul
li x24, 0xb867e358 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 384 # perform operation

# Testcase cp_imm_mul
li x26, 0x014beafc # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 400 # perform operation

# Testcase cp_imm_mul
li x14, 0x210a51c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 416 # perform operation

# Testcase cp_imm_mul
li x22, 0x8bc0c6a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 432 # perform operation

# Testcase cp_imm_mul
li x27, 0x4d0e3b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 448 # perform operation

# Testcase cp_imm_mul
li x26, 0x3f922e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 464 # perform operation

# Testcase cp_imm_mul
li x3, 0x4145d2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 480 # perform operation

# Testcase cp_imm_mul
li x5, 0x07bda7b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 496 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.srli.S
// ******************


    
# Testcase cp_imm_shift
li x20, 0x4dba9ceb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe4dab1b1
c.srli x12, 1 # perform operation

# Testcase cp_imm_shift
li x6, 0x2bee6a46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbc834704
c.srli x14, 2 # perform operation

# Testcase cp_imm_shift
li x10, 0x8c66d3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x32d8af24
c.srli x10, 3 # perform operation

# Testcase cp_imm_shift
li x14, 0xb0aefa76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x62d960a2
c.srli x14, 4 # perform operation

# Testcase cp_imm_shift
li x25, 0x667cb52c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfce56816
c.srli x9, 5 # perform operation

# Testcase cp_imm_shift
li x4, 0x9687dbce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x60c83789
c.srli x12, 6 # perform operation

# Testcase cp_imm_shift
li x17, 0xb947d178 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xce22be94
c.srli x9, 7 # perform operation

# Testcase cp_imm_shift
li x2, 0xb3b79073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1ed54c36
c.srli x10, 8 # perform operation

# Testcase cp_imm_shift
li x4, 0xc1bb56e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xcbb4fcd9
c.srli x12, 9 # perform operation

# Testcase cp_imm_shift
li x26, 0x9f21cc46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa7afd8ac
c.srli x10, 10 # perform operation

# Testcase cp_imm_shift
li x2, 0xd2950e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3c5ca15e
c.srli x10, 11 # perform operation

# Testcase cp_imm_shift
li x8, 0x6e73c006 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xdd289243
c.srli x8, 12 # perform operation

# Testcase cp_imm_shift
li x25, 0xaae555fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x59d30f68
c.srli x9, 13 # perform operation

# Testcase cp_imm_shift
li x8, 0x8d7e984c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3fbe5e38
c.srli x8, 14 # perform operation

# Testcase cp_imm_shift
li x11, 0x63073c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0604d777
c.srli x11, 15 # perform operation

# Testcase cp_imm_shift
li x19, 0xbe862722 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6eb8d26e
c.srli x11, 16 # perform operation

# Testcase cp_imm_shift
li x22, 0x399c8a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x60055687
c.srli x14, 17 # perform operation

# Testcase cp_imm_shift
li x8, 0xfba3418a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa8585c6a
c.srli x8, 18 # perform operation

# Testcase cp_imm_shift
li x19, 0x8a4c89a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4aec1a79
c.srli x11, 19 # perform operation

# Testcase cp_imm_shift
li x8, 0x3b2f7761 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x64069713
c.srli x8, 20 # perform operation

# Testcase cp_imm_shift
li x2, 0x226ae111 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf71afbfa
c.srli x10, 21 # perform operation

# Testcase cp_imm_shift
li x23, 0x72a9d340 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x51e1e260
c.srli x15, 22 # perform operation

# Testcase cp_imm_shift
li x20, 0x5b80f1bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xff50cbe1
c.srli x12, 23 # perform operation

# Testcase cp_imm_shift
li x5, 0x9b6db87c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaea64eb2
c.srli x13, 24 # perform operation

# Testcase cp_imm_shift
li x20, 0x0de5bd25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x959365e2
c.srli x12, 25 # perform operation

# Testcase cp_imm_shift
li x10, 0x2b22f486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7df6ee0b
c.srli x10, 26 # perform operation

# Testcase cp_imm_shift
li x18, 0xeae29cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd01b89e3
c.srli x10, 27 # perform operation

# Testcase cp_imm_shift
li x1, 0xe41239b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x197fa848
c.srli x9, 28 # perform operation

# Testcase cp_imm_shift
li x6, 0x0364b488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x46c89916
c.srli x14, 29 # perform operation

# Testcase cp_imm_shift
li x30, 0x28865106 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2a0138f5
c.srli x14, 30 # perform operation

# Testcase cp_imm_shift
li x18, 0x2a7ed988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1bd69768
c.srli x10, 31 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x3b8d9fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x12e73c26
c.srli x8, 24 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x165d01fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9bf74d20
c.srli x9, 28 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb9e8c9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdc2151a0
c.srli x10, 13 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb21b45a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x61293ea5
c.srli x11, 27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x396f09cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xadcff500
c.srli x12, 18 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xbc50f7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9e4cca3c
c.srli x13, 26 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x809582c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf48ce216
c.srli x14, 26 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd4bcb654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6a4882fc
c.srli x15, 17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x26, 0x8d559fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2 Shifted by 1)
li x28, 0x9350581e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000002
c.srli x12, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4 Shifted by 1)
li x18, 0xb1896ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000004
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe Shifted by 1)
li x26, 0x6225e8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe
c.srli x10, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffc Shifted by 1)
li x21, 0x01d61edc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffc
c.srli x13, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa Shifted by 1)
li x16, 0xdc0a7007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xaaaaaaaa
c.srli x8, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xb77910ee Shifted by 1)
li x8, 0xf9374a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb77910ee
c.srli x8, 1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.li.S
// ******************


    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfc352ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x0, 2 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x06fefdbd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, 22 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x6021d3f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x2, -13 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xcc68aab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x3, 31 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x08f22e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x4, -28 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x75f142df # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, 22 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x4ef96e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, -12 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x56ee3ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, -32 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf65ecca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa75ed639 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x9, -12 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe2c40852 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x944a9f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x11, -27 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xc9c61541 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 25 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xeb702341 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x13, 23 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x02c28408 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -27 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x75c9336f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, -1 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x48d480bf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x16, 15 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x723a2525 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, 26 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x36b8ea6b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, -22 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x472cd102 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, 0 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa6c75db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, 13 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x5e214769 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x21, 24 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xe0e2f3b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x22, 10 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x049b7e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, -15 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa465302f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x24, -26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x6e0d824c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x25, 3 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x7e1a261b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x26, -13 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6658238c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x27bf15f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x28, -26 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1ffc3d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 18 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x08c3725a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x30, -19 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5ed2f26b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, -8 # perform operation

# Testcase cp_imm_zero
li x7, 0x82077009 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x8706e0c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x23, 0x7b833169 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0x622c6bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x93756007 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x29, 0xfceec518 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x4da1d7c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x14, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x19c89afe # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xc41b10fb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x09d65d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x31, 0xa6a7817e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x12, 0x521e2e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, -32 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x18, 0xce9031b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x18, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x6, 0x203159e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x5, 0x713c575e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x5, -31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x15, 0xaee2188f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x20, 0x4fae831c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x20, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x15, 0xf7bb31b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x31, 0xc6aecd71 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x31, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x27, 0x11384bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x10, 0xbfbef8c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x10, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x11, 0xe57e85f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x11, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x24, 0xedeafb93 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x24, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x29, 0xb91bfa74 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x23, 0x9fba92a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x23, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x17, 0xe46c5298 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x19, 0x553aadce # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x12, 0x6e4f8bab # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x17, 0x94c139bb # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x17, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x1, 0x6e3e246d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x1, -22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x27, 0xf467c015 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x27, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x22, 0x919b57f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x22, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x15, 0xfc317012 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x15, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x8, 0xc710a9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x8, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x12, 0x91ce8c40 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x19, 0x60488b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x19, 22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x21, 0xcfb7642a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.li x21, -1 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.andi.S
// ******************


    
# Testcase cp_imm_zero
li x3, 0xad6ede1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xad6ede1c
c.andi x11, 0 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 0 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 1 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 2 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 31 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, 30 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -32 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -31 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -2 # perform operation

# Testcase cp_imm_corners
li x30, 0x5bab7439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bab7439
c.andi x14, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7fffffff
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfffffffe
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa
c.andi x13, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, 30 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -32 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -31 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x13, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x55555555
c.andi x13, -1 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc6151e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6151e79
c.andi x8, 13 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x3957ef05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3957ef05
c.andi x9, 4 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbe3dac6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbe3dac6c
c.andi x10, -23 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb9ab40c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb9ab40c8
c.andi x11, 10 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x00ca5d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00ca5d6b
c.andi x12, -19 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf73ac7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf73ac7e8
c.andi x13, -31 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x89ccb4b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x89ccb4b6
c.andi x14, 7 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1dcaa7f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1dcaa7f4
c.andi x15, -22 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000
c.andi x12, -6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x00000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000001
c.andi x15, -24 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000002
c.andi x15, -18 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x27, 0x80000000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x80000000
c.andi x11, -26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001
c.andi x12, 27 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x18, 0x7fffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffff
c.andi x10, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffe
c.andi x11, 4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff
c.andi x10, 26 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffe
c.andi x14, -8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x18, 0x5bbc8877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5bbc8877
c.andi x10, 14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaa
c.andi x10, 7 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x24, 0x55555555 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x55555555
c.andi x8, 20 # perform operation

.EQU NUMTESTS,1




// ******************
// Tests from: WALLY-COV-c.j.S
// ******************


    
# Testcase cp_offset
j 2f # jump past backward branch target
1: j 3f # backward branch target: jump past backward branch
2: nop
c.j 1b # backward branch
3: nop # done with sequence

# Testcase cp_imm_ones_zeros 2
c.j 1f # jump to aligned address to stress immediate
.align 2
1:

# Testcase cp_imm_ones_zeros 3
c.j 1f # jump to aligned address to stress immediate
.align 3
1:

# Testcase cp_imm_ones_zeros 4
c.j 1f # jump to aligned address to stress immediate
.align 4
1:

# Testcase cp_imm_ones_zeros 5
c.j 1f # jump to aligned address to stress immediate
.align 5
1:

# Testcase cp_imm_ones_zeros 6
c.j 1f # jump to aligned address to stress immediate
.align 6
1:

# Testcase cp_imm_ones_zeros 7
c.j 1f # jump to aligned address to stress immediate
.align 7
1:

# Testcase cp_imm_ones_zeros 8
c.j 1f # jump to aligned address to stress immediate
.align 8
1:

# Testcase cp_imm_ones_zeros 9
c.j 1f # jump to aligned address to stress immediate
.align 9
1:

# Testcase cp_imm_ones_zeros 10
c.j 1f # jump to aligned address to stress immediate
.align 10
1:

# Testcase cp_imm_ones_zeros 11
c.j 1f # jump to aligned address to stress immediate
.align 11
1:

.EQU NUMTESTS,1



self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
