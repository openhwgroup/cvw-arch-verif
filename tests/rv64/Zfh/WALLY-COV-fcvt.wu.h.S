///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fcvt.wu.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.048451
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


# Testcase cp_rd (Test destination rd = x0)
li x0, 0x5e87250e8719993a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x74e5fa12d9592798 # load x3 with value 0x74e5fa12d9592798
sw x3, 0(x2) # store 0x74e5fa12d9592798 in memory
flh f9, 0(x2) # load 0x74e5fa12d9592798 from memory into f9
fcvt.wu.h x0, f9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x300610c4ac3df14d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb143b539b944b3e # load x3 with value 0xb143b539b944b3e
sw x3, 0(x2) # store 0xb143b539b944b3e in memory
flh f7, 0(x2) # load 0xb143b539b944b3e from memory into f7
fcvt.wu.h x1, f7 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x76fa7aea8a0cba5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcdd5498479bb6877 # load x3 with value 0xcdd5498479bb6877
sw x3, 0(x2) # store 0xcdd5498479bb6877 in memory
flh f23, 0(x2) # load 0xcdd5498479bb6877 from memory into f23
fcvt.wu.h x2, f23 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x09dabdf6f6a07a99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe0d448a9b63aed74 # load x3 with value 0xe0d448a9b63aed74
sw x3, 0(x2) # store 0xe0d448a9b63aed74 in memory
flh f3, 0(x2) # load 0xe0d448a9b63aed74 from memory into f3
fcvt.wu.h x3, f3 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xccb336e3beb6b1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8c38f000da5d8c75 # load x3 with value 0x8c38f000da5d8c75
sw x3, 0(x2) # store 0x8c38f000da5d8c75 in memory
flh f6, 0(x2) # load 0x8c38f000da5d8c75 from memory into f6
fcvt.wu.h x4, f6 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x7ce7dfd09bf2b0ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9d113fb5c259583a # load x3 with value 0x9d113fb5c259583a
sw x3, 0(x2) # store 0x9d113fb5c259583a in memory
flh f14, 0(x2) # load 0x9d113fb5c259583a from memory into f14
fcvt.wu.h x5, f14 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe91b5c0694b7ac6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fa552b78c7f655b # load x3 with value 0x7fa552b78c7f655b
sw x3, 0(x2) # store 0x7fa552b78c7f655b in memory
flh f23, 0(x2) # load 0x7fa552b78c7f655b from memory into f23
fcvt.wu.h x6, f23 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x1cf1de13e627e9b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x211c3e2dc9f851e6 # load x3 with value 0x211c3e2dc9f851e6
sw x3, 0(x2) # store 0x211c3e2dc9f851e6 in memory
flh f21, 0(x2) # load 0x211c3e2dc9f851e6 from memory into f21
fcvt.wu.h x7, f21 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb225834187b0d64e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8ba3e51dbac4ee4b # load x3 with value 0x8ba3e51dbac4ee4b
sw x3, 0(x2) # store 0x8ba3e51dbac4ee4b in memory
flh f30, 0(x2) # load 0x8ba3e51dbac4ee4b from memory into f30
fcvt.wu.h x8, f30 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x52cbd9277f98f186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdee93e2f74921856 # load x3 with value 0xdee93e2f74921856
sw x3, 0(x2) # store 0xdee93e2f74921856 in memory
flh f15, 0(x2) # load 0xdee93e2f74921856 from memory into f15
fcvt.wu.h x9, f15 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3b36d4d0acc48289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x96cdcea435304c61 # load x3 with value 0x96cdcea435304c61
sw x3, 0(x2) # store 0x96cdcea435304c61 in memory
flh f9, 0(x2) # load 0x96cdcea435304c61 from memory into f9
fcvt.wu.h x10, f9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x96044b4462e3c756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4d1dee36464ec528 # load x3 with value 0x4d1dee36464ec528
sw x3, 0(x2) # store 0x4d1dee36464ec528 in memory
flh f25, 0(x2) # load 0x4d1dee36464ec528 from memory into f25
fcvt.wu.h x11, f25 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x9a666df3bbe9229c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa523f3f0f8f0d2db # load x3 with value 0xa523f3f0f8f0d2db
sw x3, 0(x2) # store 0xa523f3f0f8f0d2db in memory
flh f10, 0(x2) # load 0xa523f3f0f8f0d2db from memory into f10
fcvt.wu.h x12, f10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc73ca6c0fc835708 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc03c09f2c34e0cb6 # load x3 with value 0xc03c09f2c34e0cb6
sw x3, 0(x2) # store 0xc03c09f2c34e0cb6 in memory
flh f18, 0(x2) # load 0xc03c09f2c34e0cb6 from memory into f18
fcvt.wu.h x13, f18 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe882f443f9a35931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe0bc446584830055 # load x3 with value 0xe0bc446584830055
sw x3, 0(x2) # store 0xe0bc446584830055 in memory
flh f9, 0(x2) # load 0xe0bc446584830055 from memory into f9
fcvt.wu.h x14, f9 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xca708952c8872068 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa8c49335a5d81971 # load x3 with value 0xa8c49335a5d81971
sw x3, 0(x2) # store 0xa8c49335a5d81971 in memory
flh f11, 0(x2) # load 0xa8c49335a5d81971 from memory into f11
fcvt.wu.h x15, f11 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd0720d4c760a78e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3c2703308090e102 # load x3 with value 0x3c2703308090e102
sw x3, 0(x2) # store 0x3c2703308090e102 in memory
flh f18, 0(x2) # load 0x3c2703308090e102 from memory into f18
fcvt.wu.h x16, f18 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x2f62b156bfaa5208 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cef119e0720724e # load x3 with value 0x2cef119e0720724e
sw x3, 0(x2) # store 0x2cef119e0720724e in memory
flh f24, 0(x2) # load 0x2cef119e0720724e from memory into f24
fcvt.wu.h x17, f24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xac9f608ea2c08f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x263da4bd45f9ca79 # load x3 with value 0x263da4bd45f9ca79
sw x3, 0(x2) # store 0x263da4bd45f9ca79 in memory
flh f14, 0(x2) # load 0x263da4bd45f9ca79 from memory into f14
fcvt.wu.h x18, f14 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8cf217affb61205b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa4836dd7c9c65b0e # load x3 with value 0xa4836dd7c9c65b0e
sw x3, 0(x2) # store 0xa4836dd7c9c65b0e in memory
flh f30, 0(x2) # load 0xa4836dd7c9c65b0e from memory into f30
fcvt.wu.h x19, f30 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xa43c9e67019590ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8708c8492fb422f3 # load x3 with value 0x8708c8492fb422f3
sw x3, 0(x2) # store 0x8708c8492fb422f3 in memory
flh f14, 0(x2) # load 0x8708c8492fb422f3 from memory into f14
fcvt.wu.h x20, f14 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xb7b7338540b4ce88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xee37537ce5172f33 # load x3 with value 0xee37537ce5172f33
sw x3, 0(x2) # store 0xee37537ce5172f33 in memory
flh f9, 0(x2) # load 0xee37537ce5172f33 from memory into f9
fcvt.wu.h x21, f9 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x401ef1a7b16648ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd1051776c54f675b # load x3 with value 0xd1051776c54f675b
sw x3, 0(x2) # store 0xd1051776c54f675b in memory
flh f3, 0(x2) # load 0xd1051776c54f675b from memory into f3
fcvt.wu.h x22, f3 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xefbc7c036cb6b51b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6e1cb314aafc0ad5 # load x3 with value 0x6e1cb314aafc0ad5
sw x3, 0(x2) # store 0x6e1cb314aafc0ad5 in memory
flh f26, 0(x2) # load 0x6e1cb314aafc0ad5 from memory into f26
fcvt.wu.h x23, f26 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x76824ca05ec2fdab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x485481b092fb1265 # load x3 with value 0x485481b092fb1265
sw x3, 0(x2) # store 0x485481b092fb1265 in memory
flh f30, 0(x2) # load 0x485481b092fb1265 from memory into f30
fcvt.wu.h x24, f30 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xa2aa205ef5ceb545 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x368100b4cee04e86 # load x3 with value 0x368100b4cee04e86
sw x3, 0(x2) # store 0x368100b4cee04e86 in memory
flh f13, 0(x2) # load 0x368100b4cee04e86 from memory into f13
fcvt.wu.h x25, f13 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xfb44ace4b915ea22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x49dff8e67bd94fbc # load x3 with value 0x49dff8e67bd94fbc
sw x3, 0(x2) # store 0x49dff8e67bd94fbc in memory
flh f12, 0(x2) # load 0x49dff8e67bd94fbc from memory into f12
fcvt.wu.h x26, f12 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x31d128f29d4ea0bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbda17278f39e0649 # load x3 with value 0xbda17278f39e0649
sw x3, 0(x2) # store 0xbda17278f39e0649 in memory
flh f25, 0(x2) # load 0xbda17278f39e0649 from memory into f25
fcvt.wu.h x27, f25 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb97c089340beda67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x56dc38ebebbcf97f # load x3 with value 0x56dc38ebebbcf97f
sw x3, 0(x2) # store 0x56dc38ebebbcf97f in memory
flh f26, 0(x2) # load 0x56dc38ebebbcf97f from memory into f26
fcvt.wu.h x28, f26 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2b03f42927a1ec78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb65fc1c654290cf9 # load x3 with value 0xb65fc1c654290cf9
sw x3, 0(x2) # store 0xb65fc1c654290cf9 in memory
flh f9, 0(x2) # load 0xb65fc1c654290cf9 from memory into f9
fcvt.wu.h x29, f9 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x2061aaf29b606205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xfd1ab3abe0b29767 # load x3 with value 0xfd1ab3abe0b29767
sw x3, 0(x2) # store 0xfd1ab3abe0b29767 in memory
flh f15, 0(x2) # load 0xfd1ab3abe0b29767 from memory into f15
fcvt.wu.h x30, f15 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x3e9f6053e2c4253b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdacc9ff799f15c95 # load x3 with value 0xdacc9ff799f15c95
sw x3, 0(x2) # store 0xdacc9ff799f15c95 in memory
flh f2, 0(x2) # load 0xdacc9ff799f15c95 from memory into f2
fcvt.wu.h x31, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x14, 0x3752571cb7ae2182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fcvt.wu.h x14, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x20, 0x22d5b40250545fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fcvt.wu.h x20, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x19, 0x150f3f7122c92fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fcvt.wu.h x19, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x22, 0x1fd7561396838b5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fcvt.wu.h x22, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x20, 0x457552ff728d44df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fcvt.wu.h x20, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x1, 0x8ce02079a2e61871 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fcvt.wu.h x1, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x29, 0xdd5ecdc783bcec74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fcvt.wu.h x29, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x15, 0x5eb928e55db9df05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fcvt.wu.h x15, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x25, 0x41b335b373132cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fcvt.wu.h x25, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x17, 0x9892ddafda0877bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fcvt.wu.h x17, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x30, 0x5a37909f90d410a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fcvt.wu.h x30, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x13, 0x651d77e2aac59830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fcvt.wu.h x13, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x9, 0xe6fa28e4e5198560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fcvt.wu.h x9, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x30, 0xa1a4226b5f4f084b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fcvt.wu.h x30, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x14, 0xc29f41d2eb219dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fcvt.wu.h x14, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x18, 0x27274feb6460c87a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fcvt.wu.h x18, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x28, 0x85ad1f5703943606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fcvt.wu.h x28, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x25, 0x16dd59a26f5d33a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fcvt.wu.h x25, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x26, 0x801ffa18fd54b97b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fcvt.wu.h x26, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x19, 0x94e96e56f5a80cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fcvt.wu.h x19, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x14, 0xde14cf36d3ced253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fcvt.wu.h x14, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x1, 0x9c90c40a03ea36bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fcvt.wu.h x1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x14, 0x9a5098556cf816f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fcvt.wu.h x14, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x30, 0xbfbd9b1ecd027c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fcvt.wu.h x30, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x17, 0xfecc64744d53869f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fcvt.wu.h x17, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x4, 0x192844db5617f836 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fcvt.wu.h x4, f30 # perform operation

# Testcase cp_frm
li x21, 0xc5aa79a91c55ab1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd13f4afd291b34f3 # load x3 with value 0xd13f4afd291b34f3
sw x3, 0(x2) # store 0xd13f4afd291b34f3 in memory
flh f12, 0(x2) # load 0xd13f4afd291b34f3 from memory into f12
fcvt.wu.h x21, f12, dyn # perform operation
fcvt.wu.h x21, f12, rdn # perform operation
fcvt.wu.h x21, f12, rmm # perform operation
fcvt.wu.h x21, f12, rne # perform operation
fcvt.wu.h x21, f12, rtz # perform operation
fcvt.wu.h x21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.h x21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.h x21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.h x21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.h x21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.h x21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x21, 0xe9578459a189a237 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5d16cc46de62a5e4 # load x3 with value 0x5d16cc46de62a5e4
sw x3, 0(x2) # store 0x5d16cc46de62a5e4 in memory
flh f0, 0(x2) # load 0x5d16cc46de62a5e4 from memory into f0
fcvt.wu.h x21, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x19, 0x2551d77e3780733c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6e716c381ca690f8 # load x3 with value 0x6e716c381ca690f8
sw x3, 0(x2) # store 0x6e716c381ca690f8 in memory
flh f1, 0(x2) # load 0x6e716c381ca690f8 from memory into f1
fcvt.wu.h x19, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x1, 0x289394a70c437ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1da312f3fc4a18bf # load x3 with value 0x1da312f3fc4a18bf
sw x3, 0(x2) # store 0x1da312f3fc4a18bf in memory
flh f2, 0(x2) # load 0x1da312f3fc4a18bf from memory into f2
fcvt.wu.h x1, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x15, 0x7daff9470ae61111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x75e8edc4e7d01cf # load x3 with value 0x75e8edc4e7d01cf
sw x3, 0(x2) # store 0x75e8edc4e7d01cf in memory
flh f3, 0(x2) # load 0x75e8edc4e7d01cf from memory into f3
fcvt.wu.h x15, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x21, 0xeeaed0b1f337569d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x14ba443dd84d926 # load x3 with value 0x14ba443dd84d926
sw x3, 0(x2) # store 0x14ba443dd84d926 in memory
flh f4, 0(x2) # load 0x14ba443dd84d926 from memory into f4
fcvt.wu.h x21, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x22, 0x4b66bdd3c246c7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xef3d45bca1d62d5 # load x3 with value 0xef3d45bca1d62d5
sw x3, 0(x2) # store 0xef3d45bca1d62d5 in memory
flh f5, 0(x2) # load 0xef3d45bca1d62d5 from memory into f5
fcvt.wu.h x22, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x31, 0xe583a8de75edc55d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaa9a0a94d6d459db # load x3 with value 0xaa9a0a94d6d459db
sw x3, 0(x2) # store 0xaa9a0a94d6d459db in memory
flh f6, 0(x2) # load 0xaa9a0a94d6d459db from memory into f6
fcvt.wu.h x31, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x4, 0xeab573511c3b7bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9067f73b3e963953 # load x3 with value 0x9067f73b3e963953
sw x3, 0(x2) # store 0x9067f73b3e963953 in memory
flh f7, 0(x2) # load 0x9067f73b3e963953 from memory into f7
fcvt.wu.h x4, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x1, 0xe61fcd7d775542e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf9d400d8b823cf57 # load x3 with value 0xf9d400d8b823cf57
sw x3, 0(x2) # store 0xf9d400d8b823cf57 in memory
flh f8, 0(x2) # load 0xf9d400d8b823cf57 from memory into f8
fcvt.wu.h x1, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x30, 0xb8de10280fe089a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5320ba0f9503bf22 # load x3 with value 0x5320ba0f9503bf22
sw x3, 0(x2) # store 0x5320ba0f9503bf22 in memory
flh f9, 0(x2) # load 0x5320ba0f9503bf22 from memory into f9
fcvt.wu.h x30, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0xbc4eac499673f1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x368f859fa01d98c1 # load x3 with value 0x368f859fa01d98c1
sw x3, 0(x2) # store 0x368f859fa01d98c1 in memory
flh f10, 0(x2) # load 0x368f859fa01d98c1 from memory into f10
fcvt.wu.h x31, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x11, 0x7972d9335d400b61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5e56d49855dce0ac # load x3 with value 0x5e56d49855dce0ac
sw x3, 0(x2) # store 0x5e56d49855dce0ac in memory
flh f11, 0(x2) # load 0x5e56d49855dce0ac from memory into f11
fcvt.wu.h x11, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x15, 0x34490426885a3eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x286b38f8bda296a7 # load x3 with value 0x286b38f8bda296a7
sw x3, 0(x2) # store 0x286b38f8bda296a7 in memory
flh f12, 0(x2) # load 0x286b38f8bda296a7 from memory into f12
fcvt.wu.h x15, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x18, 0x89af4e7766b9b450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x53322c5eed798af7 # load x3 with value 0x53322c5eed798af7
sw x3, 0(x2) # store 0x53322c5eed798af7 in memory
flh f13, 0(x2) # load 0x53322c5eed798af7 from memory into f13
fcvt.wu.h x18, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x18, 0x8c6681bc14f793d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd8f9c36ff53832f7 # load x3 with value 0xd8f9c36ff53832f7
sw x3, 0(x2) # store 0xd8f9c36ff53832f7 in memory
flh f14, 0(x2) # load 0xd8f9c36ff53832f7 from memory into f14
fcvt.wu.h x18, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x2, 0x0a4f6f111ff35446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x844b519f4c8e84ba # load x3 with value 0x844b519f4c8e84ba
sw x3, 0(x2) # store 0x844b519f4c8e84ba in memory
flh f15, 0(x2) # load 0x844b519f4c8e84ba from memory into f15
fcvt.wu.h x2, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x27, 0xc668e9f84b2ebb22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf7dacde9a3a4f5c9 # load x3 with value 0xf7dacde9a3a4f5c9
sw x3, 0(x2) # store 0xf7dacde9a3a4f5c9 in memory
flh f16, 0(x2) # load 0xf7dacde9a3a4f5c9 from memory into f16
fcvt.wu.h x27, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x13, 0xf252ff8069b80507 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1dbf125b8aceb1ae # load x3 with value 0x1dbf125b8aceb1ae
sw x3, 0(x2) # store 0x1dbf125b8aceb1ae in memory
flh f17, 0(x2) # load 0x1dbf125b8aceb1ae from memory into f17
fcvt.wu.h x13, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x4, 0x742304b04f780df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf1b149f64b696cc2 # load x3 with value 0xf1b149f64b696cc2
sw x3, 0(x2) # store 0xf1b149f64b696cc2 in memory
flh f18, 0(x2) # load 0xf1b149f64b696cc2 from memory into f18
fcvt.wu.h x4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0xce50ec9836904ed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x99bd9c7d6e9df4be # load x3 with value 0x99bd9c7d6e9df4be
sw x3, 0(x2) # store 0x99bd9c7d6e9df4be in memory
flh f19, 0(x2) # load 0x99bd9c7d6e9df4be from memory into f19
fcvt.wu.h x2, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x18, 0x38cf4f7b39772efe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x493bca7cf941ea48 # load x3 with value 0x493bca7cf941ea48
sw x3, 0(x2) # store 0x493bca7cf941ea48 in memory
flh f20, 0(x2) # load 0x493bca7cf941ea48 from memory into f20
fcvt.wu.h x18, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x30, 0xba56cfe276c705fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ebc63be2bb8ae7c # load x3 with value 0x6ebc63be2bb8ae7c
sw x3, 0(x2) # store 0x6ebc63be2bb8ae7c in memory
flh f21, 0(x2) # load 0x6ebc63be2bb8ae7c from memory into f21
fcvt.wu.h x30, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0x0d70c7d472f5e23d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x418805a3347599d4 # load x3 with value 0x418805a3347599d4
sw x3, 0(x2) # store 0x418805a3347599d4 in memory
flh f22, 0(x2) # load 0x418805a3347599d4 from memory into f22
fcvt.wu.h x20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x14, 0xbc6b90b267f2c461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9fe99f29967638ae # load x3 with value 0x9fe99f29967638ae
sw x3, 0(x2) # store 0x9fe99f29967638ae in memory
flh f23, 0(x2) # load 0x9fe99f29967638ae from memory into f23
fcvt.wu.h x14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x9, 0x848e048e68ae759d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9f10538849ed82eb # load x3 with value 0x9f10538849ed82eb
sw x3, 0(x2) # store 0x9f10538849ed82eb in memory
flh f24, 0(x2) # load 0x9f10538849ed82eb from memory into f24
fcvt.wu.h x9, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x1, 0xb1f82d970fd07d57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x557be1127bb80fb5 # load x3 with value 0x557be1127bb80fb5
sw x3, 0(x2) # store 0x557be1127bb80fb5 in memory
flh f25, 0(x2) # load 0x557be1127bb80fb5 from memory into f25
fcvt.wu.h x1, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x25, 0x1fe8d0d4bff2c753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x606117d7885d03fd # load x3 with value 0x606117d7885d03fd
sw x3, 0(x2) # store 0x606117d7885d03fd in memory
flh f26, 0(x2) # load 0x606117d7885d03fd from memory into f26
fcvt.wu.h x25, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x5, 0x1a8963407fea7db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x952dcd201347506f # load x3 with value 0x952dcd201347506f
sw x3, 0(x2) # store 0x952dcd201347506f in memory
flh f27, 0(x2) # load 0x952dcd201347506f from memory into f27
fcvt.wu.h x5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x10, 0x31456fc2fabda1a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1ae70e14c2bdbbe5 # load x3 with value 0x1ae70e14c2bdbbe5
sw x3, 0(x2) # store 0x1ae70e14c2bdbbe5 in memory
flh f28, 0(x2) # load 0x1ae70e14c2bdbbe5 from memory into f28
fcvt.wu.h x10, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x9, 0x57d1763335965670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1e43aef26265fb7d # load x3 with value 0x1e43aef26265fb7d
sw x3, 0(x2) # store 0x1e43aef26265fb7d in memory
flh f29, 0(x2) # load 0x1e43aef26265fb7d from memory into f29
fcvt.wu.h x9, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x8, 0x56d49f123a406111 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdb49db9cc39ce4f9 # load x3 with value 0xdb49db9cc39ce4f9
sw x3, 0(x2) # store 0xdb49db9cc39ce4f9 in memory
flh f30, 0(x2) # load 0xdb49db9cc39ce4f9 from memory into f30
fcvt.wu.h x8, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x22, 0x9b27941743b08fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x94da13f3f893485d # load x3 with value 0x94da13f3f893485d
sw x3, 0(x2) # store 0x94da13f3f893485d in memory
flh f31, 0(x2) # load 0x94da13f3f893485d from memory into f31
fcvt.wu.h x22, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
