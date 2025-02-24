///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-fsh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.764343
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


# Testcase cp_rs1 (Test source rs1 = x1)
li x4, 0x59c77a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbe77f657 # load x3 with value 0xbe77f657
sw x3, 0(x2) # store 0xbe77f657 in memory
flh f16, 0(x2) # load 0xbe77f657 from memory into f16
la x1, scratch # base address
addi x1, x1, -150 # sub immediate from rs1 to counter offset
fsh f16, 150(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0xc41dfbc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x48f7e8c9 # load x3 with value 0x48f7e8c9
sw x3, 0(x2) # store 0x48f7e8c9 in memory
flh f24, 0(x2) # load 0x48f7e8c9 from memory into f24
la x2, scratch # base address
addi x2, x2, -1477 # sub immediate from rs1 to counter offset
fsh f24, 1477(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0x3eb106d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x83f8c1a0 # load x3 with value 0x83f8c1a0
sw x3, 0(x2) # store 0x83f8c1a0 in memory
flh f5, 0(x2) # load 0x83f8c1a0 from memory into f5
la x3, scratch # base address
addi x3, x3, 796 # sub immediate from rs1 to counter offset
fsh f5, -796(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x7, 0x539b014a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5c846969 # load x3 with value 0x5c846969
sw x3, 0(x2) # store 0x5c846969 in memory
flh f15, 0(x2) # load 0x5c846969 from memory into f15
la x4, scratch # base address
addi x4, x4, -700 # sub immediate from rs1 to counter offset
fsh f15, 700(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x31, 0x8a953462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbaecf50c # load x3 with value 0xbaecf50c
sw x3, 0(x2) # store 0xbaecf50c in memory
flh f28, 0(x2) # load 0xbaecf50c from memory into f28
la x5, scratch # base address
addi x5, x5, -556 # sub immediate from rs1 to counter offset
fsh f28, 556(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x3, 0xf8a786c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf1d6323c # load x3 with value 0xf1d6323c
sw x3, 0(x2) # store 0xf1d6323c in memory
flh f7, 0(x2) # load 0xf1d6323c from memory into f7
la x6, scratch # base address
addi x6, x6, 825 # sub immediate from rs1 to counter offset
fsh f7, -825(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x2c3a97fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x64e84cd8 # load x3 with value 0x64e84cd8
sw x3, 0(x2) # store 0x64e84cd8 in memory
flh f5, 0(x2) # load 0x64e84cd8 from memory into f5
la x7, scratch # base address
addi x7, x7, -1487 # sub immediate from rs1 to counter offset
fsh f5, 1487(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x3, 0xf48c1dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5302086f # load x3 with value 0x5302086f
sw x3, 0(x2) # store 0x5302086f in memory
flh f21, 0(x2) # load 0x5302086f from memory into f21
la x8, scratch # base address
addi x8, x8, -1310 # sub immediate from rs1 to counter offset
fsh f21, 1310(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0x2c861a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc4fe4a2f # load x3 with value 0xc4fe4a2f
sw x3, 0(x2) # store 0xc4fe4a2f in memory
flh f31, 0(x2) # load 0xc4fe4a2f from memory into f31
la x9, scratch # base address
addi x9, x9, 1054 # sub immediate from rs1 to counter offset
fsh f31, -1054(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xa77c870e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5731c676 # load x3 with value 0x5731c676
sw x3, 0(x2) # store 0x5731c676 in memory
flh f1, 0(x2) # load 0x5731c676 from memory into f1
la x10, scratch # base address
addi x10, x10, 1048 # sub immediate from rs1 to counter offset
fsh f1, -1048(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0xf8810d52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x996bffbd # load x3 with value 0x996bffbd
sw x3, 0(x2) # store 0x996bffbd in memory
flh f28, 0(x2) # load 0x996bffbd from memory into f28
la x11, scratch # base address
addi x11, x11, -2 # sub immediate from rs1 to counter offset
fsh f28, 2(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x27, 0xf58d8d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4aecdff8 # load x3 with value 0x4aecdff8
sw x3, 0(x2) # store 0x4aecdff8 in memory
flh f22, 0(x2) # load 0x4aecdff8 from memory into f22
la x12, scratch # base address
addi x12, x12, -865 # sub immediate from rs1 to counter offset
fsh f22, 865(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x29143ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5913527c # load x3 with value 0x5913527c
sw x3, 0(x2) # store 0x5913527c in memory
flh f9, 0(x2) # load 0x5913527c from memory into f9
la x13, scratch # base address
addi x13, x13, -841 # sub immediate from rs1 to counter offset
fsh f9, 841(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x4, 0xd230fd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5cb962d5 # load x3 with value 0x5cb962d5
sw x3, 0(x2) # store 0x5cb962d5 in memory
flh f6, 0(x2) # load 0x5cb962d5 from memory into f6
la x14, scratch # base address
addi x14, x14, 706 # sub immediate from rs1 to counter offset
fsh f6, -706(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0xe504daba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fd14bd8 # load x3 with value 0x7fd14bd8
sw x3, 0(x2) # store 0x7fd14bd8 in memory
flh f3, 0(x2) # load 0x7fd14bd8 from memory into f3
la x15, scratch # base address
addi x15, x15, 675 # sub immediate from rs1 to counter offset
fsh f3, -675(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x13, 0x36dcc0fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa2be01ab # load x3 with value 0xa2be01ab
sw x3, 0(x2) # store 0xa2be01ab in memory
flh f7, 0(x2) # load 0xa2be01ab from memory into f7
la x16, scratch # base address
addi x16, x16, -1023 # sub immediate from rs1 to counter offset
fsh f7, 1023(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x58ada980 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3de6644c # load x3 with value 0x3de6644c
sw x3, 0(x2) # store 0x3de6644c in memory
flh f28, 0(x2) # load 0x3de6644c from memory into f28
la x17, scratch # base address
addi x17, x17, 1279 # sub immediate from rs1 to counter offset
fsh f28, -1279(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0x009a5b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8c0905d4 # load x3 with value 0x8c0905d4
sw x3, 0(x2) # store 0x8c0905d4 in memory
flh f1, 0(x2) # load 0x8c0905d4 from memory into f1
la x18, scratch # base address
addi x18, x18, -869 # sub immediate from rs1 to counter offset
fsh f1, 869(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0xf2d0438a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x76b305a6 # load x3 with value 0x76b305a6
sw x3, 0(x2) # store 0x76b305a6 in memory
flh f8, 0(x2) # load 0x76b305a6 from memory into f8
la x19, scratch # base address
addi x19, x19, -380 # sub immediate from rs1 to counter offset
fsh f8, 380(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0xad03b569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x21d7bf24 # load x3 with value 0x21d7bf24
sw x3, 0(x2) # store 0x21d7bf24 in memory
flh f31, 0(x2) # load 0x21d7bf24 from memory into f31
la x20, scratch # base address
addi x20, x20, -746 # sub immediate from rs1 to counter offset
fsh f31, 746(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0xf0444ba2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6f79bf01 # load x3 with value 0x6f79bf01
sw x3, 0(x2) # store 0x6f79bf01 in memory
flh f4, 0(x2) # load 0x6f79bf01 from memory into f4
la x21, scratch # base address
addi x21, x21, 718 # sub immediate from rs1 to counter offset
fsh f4, -718(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0x0753da11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2bee4c50 # load x3 with value 0x2bee4c50
sw x3, 0(x2) # store 0x2bee4c50 in memory
flh f3, 0(x2) # load 0x2bee4c50 from memory into f3
la x22, scratch # base address
addi x22, x22, -725 # sub immediate from rs1 to counter offset
fsh f3, 725(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0x02c4802c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x75adf9f0 # load x3 with value 0x75adf9f0
sw x3, 0(x2) # store 0x75adf9f0 in memory
flh f1, 0(x2) # load 0x75adf9f0 from memory into f1
la x23, scratch # base address
addi x23, x23, -812 # sub immediate from rs1 to counter offset
fsh f1, 812(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x31, 0x6311db7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7ce76b0e # load x3 with value 0x7ce76b0e
sw x3, 0(x2) # store 0x7ce76b0e in memory
flh f3, 0(x2) # load 0x7ce76b0e from memory into f3
la x24, scratch # base address
addi x24, x24, 912 # sub immediate from rs1 to counter offset
fsh f3, -912(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0x01d90617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x452796f9 # load x3 with value 0x452796f9
sw x3, 0(x2) # store 0x452796f9 in memory
flh f5, 0(x2) # load 0x452796f9 from memory into f5
la x25, scratch # base address
addi x25, x25, 249 # sub immediate from rs1 to counter offset
fsh f5, -249(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x29, 0x1b7aaa06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6dd87f76 # load x3 with value 0x6dd87f76
sw x3, 0(x2) # store 0x6dd87f76 in memory
flh f28, 0(x2) # load 0x6dd87f76 from memory into f28
la x26, scratch # base address
addi x26, x26, -63 # sub immediate from rs1 to counter offset
fsh f28, 63(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x23, 0xd3eced1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe146c637 # load x3 with value 0xe146c637
sw x3, 0(x2) # store 0xe146c637 in memory
flh f21, 0(x2) # load 0xe146c637 from memory into f21
la x27, scratch # base address
addi x27, x27, -1201 # sub immediate from rs1 to counter offset
fsh f21, 1201(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0xf2c79b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x269cdb1d # load x3 with value 0x269cdb1d
sw x3, 0(x2) # store 0x269cdb1d in memory
flh f23, 0(x2) # load 0x269cdb1d from memory into f23
la x28, scratch # base address
addi x28, x28, -1942 # sub immediate from rs1 to counter offset
fsh f23, 1942(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x54adfe17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb35d1553 # load x3 with value 0xb35d1553
sw x3, 0(x2) # store 0xb35d1553 in memory
flh f27, 0(x2) # load 0xb35d1553 from memory into f27
la x29, scratch # base address
addi x29, x29, 543 # sub immediate from rs1 to counter offset
fsh f27, -543(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x4, 0xc469a32e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2b26f33a # load x3 with value 0x2b26f33a
sw x3, 0(x2) # store 0x2b26f33a in memory
flh f22, 0(x2) # load 0x2b26f33a from memory into f22
la x30, scratch # base address
addi x30, x30, -767 # sub immediate from rs1 to counter offset
fsh f22, 767(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x9, 0x8f81fcce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe2594c46 # load x3 with value 0xe2594c46
sw x3, 0(x2) # store 0xe2594c46 in memory
flh f28, 0(x2) # load 0xe2594c46 from memory into f28
la x31, scratch # base address
addi x31, x31, 421 # sub immediate from rs1 to counter offset
fsh f28, -421(x31) # perform operation

# Testcase cp_imm_zero
li x23, 0xd80b7279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc7080944 # load x3 with value 0xc7080944
sw x3, 0(x2) # store 0xc7080944 in memory
flh f13, 0(x2) # load 0xc7080944 from memory into f13
la x6, scratch # base address
addi x6, x6, 0 # sub immediate from rs1 to counter offset
fsh f13, 0(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x1, 0x6a78599e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
la x26, scratch # base address
addi x26, x26, 805 # sub immediate from rs1 to counter offset
fsh f17, -805(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x18, 0x75909c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
la x24, scratch # base address
addi x24, x24, 1631 # sub immediate from rs1 to counter offset
fsh f27, -1631(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x16, 0x50f1604d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
la x17, scratch # base address
addi x17, x17, 1668 # sub immediate from rs1 to counter offset
fsh f22, -1668(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x3, 0xf5509d6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
la x8, scratch # base address
addi x8, x8, 1133 # sub immediate from rs1 to counter offset
fsh f10, -1133(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x4, 0x9e9e0a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
la x8, scratch # base address
addi x8, x8, -1408 # sub immediate from rs1 to counter offset
fsh f7, 1408(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x25, 0x78b43384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
la x22, scratch # base address
addi x22, x22, 1576 # sub immediate from rs1 to counter offset
fsh f23, -1576(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x4, 0x08af3e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
la x1, scratch # base address
addi x1, x1, 1125 # sub immediate from rs1 to counter offset
fsh f2, -1125(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x21, 0xca52259e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
la x18, scratch # base address
addi x18, x18, -1882 # sub immediate from rs1 to counter offset
fsh f12, 1882(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x27, 0x8094d3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
la x26, scratch # base address
addi x26, x26, 327 # sub immediate from rs1 to counter offset
fsh f19, -327(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x6, 0x4c8b2dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
la x3, scratch # base address
addi x3, x3, 2032 # sub immediate from rs1 to counter offset
fsh f26, -2032(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x20, 0xfd9ac04c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
la x18, scratch # base address
addi x18, x18, 606 # sub immediate from rs1 to counter offset
fsh f31, -606(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x2, 0x9f18f1da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
la x19, scratch # base address
addi x19, x19, -583 # sub immediate from rs1 to counter offset
fsh f25, 583(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x14, 0xb2eca3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
la x21, scratch # base address
addi x21, x21, -1230 # sub immediate from rs1 to counter offset
fsh f29, 1230(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x14, 0x43de02cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
la x22, scratch # base address
addi x22, x22, 267 # sub immediate from rs1 to counter offset
fsh f1, -267(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x26, 0xcd62e292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
la x27, scratch # base address
addi x27, x27, 804 # sub immediate from rs1 to counter offset
fsh f18, -804(x27) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x9, 0xde008de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
la x8, scratch # base address
addi x8, x8, 109 # sub immediate from rs1 to counter offset
fsh f21, -109(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x20, 0x518c30cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
la x18, scratch # base address
addi x18, x18, 1962 # sub immediate from rs1 to counter offset
fsh f6, -1962(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x5, 0x9a833f96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
la x11, scratch # base address
addi x11, x11, -284 # sub immediate from rs1 to counter offset
fsh f31, 284(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x12, 0x49d8d12e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
la x20, scratch # base address
addi x20, x20, -555 # sub immediate from rs1 to counter offset
fsh f21, 555(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x11, 0xc6841fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
la x24, scratch # base address
addi x24, x24, 625 # sub immediate from rs1 to counter offset
fsh f5, -625(x24) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x27, 0x0864fb27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
la x10, scratch # base address
addi x10, x10, 2043 # sub immediate from rs1 to counter offset
fsh f5, -2043(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x18, 0x5da7cafa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
la x8, scratch # base address
addi x8, x8, -586 # sub immediate from rs1 to counter offset
fsh f27, 586(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x1, 0xb824cb7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
la x26, scratch # base address
addi x26, x26, 169 # sub immediate from rs1 to counter offset
fsh f2, -169(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x5, 0x45257e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
la x20, scratch # base address
addi x20, x20, 216 # sub immediate from rs1 to counter offset
fsh f21, -216(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x25, 0x5d8a8c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
la x15, scratch # base address
addi x15, x15, 929 # sub immediate from rs1 to counter offset
fsh f10, -929(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x9, 0x9aae472b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
la x6, scratch # base address
addi x6, x6, 536 # sub immediate from rs1 to counter offset
fsh f25, -536(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x9, 0xda77291f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x02ef04d8 # load x3 with value 0x02ef04d8
sw x3, 0(x2) # store 0x02ef04d8 in memory
flh f0, 0(x2) # load 0x02ef04d8 from memory into f0
la x20, scratch # base address
addi x20, x20, 1781 # sub immediate from rs1 to counter offset
fsh f0, -1781(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x14, 0x95ec709c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x84e603ab # load x3 with value 0x84e603ab
sw x3, 0(x2) # store 0x84e603ab in memory
flh f1, 0(x2) # load 0x84e603ab from memory into f1
la x29, scratch # base address
addi x29, x29, -749 # sub immediate from rs1 to counter offset
fsh f1, 749(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x14, 0x3ce6c65b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1b4a8294 # load x3 with value 0x1b4a8294
sw x3, 0(x2) # store 0x1b4a8294 in memory
flh f2, 0(x2) # load 0x1b4a8294 from memory into f2
la x18, scratch # base address
addi x18, x18, 1641 # sub immediate from rs1 to counter offset
fsh f2, -1641(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x6, 0x3c397364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7e914ec2 # load x3 with value 0x7e914ec2
sw x3, 0(x2) # store 0x7e914ec2 in memory
flh f3, 0(x2) # load 0x7e914ec2 from memory into f3
la x1, scratch # base address
addi x1, x1, 1900 # sub immediate from rs1 to counter offset
fsh f3, -1900(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x5, 0x5db7dabf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x23407fa6 # load x3 with value 0x23407fa6
sw x3, 0(x2) # store 0x23407fa6 in memory
flh f4, 0(x2) # load 0x23407fa6 from memory into f4
la x16, scratch # base address
addi x16, x16, -1235 # sub immediate from rs1 to counter offset
fsh f4, 1235(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x23, 0x5748bfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x831d1b5b # load x3 with value 0x831d1b5b
sw x3, 0(x2) # store 0x831d1b5b in memory
flh f5, 0(x2) # load 0x831d1b5b from memory into f5
la x12, scratch # base address
addi x12, x12, -199 # sub immediate from rs1 to counter offset
fsh f5, 199(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x7, 0xc72beece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x25491c6e # load x3 with value 0x25491c6e
sw x3, 0(x2) # store 0x25491c6e in memory
flh f6, 0(x2) # load 0x25491c6e from memory into f6
la x1, scratch # base address
addi x1, x1, -1294 # sub immediate from rs1 to counter offset
fsh f6, 1294(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x24, 0xe349a664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1e01b4dc # load x3 with value 0x1e01b4dc
sw x3, 0(x2) # store 0x1e01b4dc in memory
flh f7, 0(x2) # load 0x1e01b4dc from memory into f7
la x11, scratch # base address
addi x11, x11, 587 # sub immediate from rs1 to counter offset
fsh f7, -587(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x17, 0x0d0950e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4fd4b5a3 # load x3 with value 0x4fd4b5a3
sw x3, 0(x2) # store 0x4fd4b5a3 in memory
flh f8, 0(x2) # load 0x4fd4b5a3 from memory into f8
la x2, scratch # base address
addi x2, x2, -1011 # sub immediate from rs1 to counter offset
fsh f8, 1011(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x15, 0x3358cbce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xca45630d # load x3 with value 0xca45630d
sw x3, 0(x2) # store 0xca45630d in memory
flh f9, 0(x2) # load 0xca45630d from memory into f9
la x1, scratch # base address
addi x1, x1, -740 # sub immediate from rs1 to counter offset
fsh f9, 740(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x12, 0xed05fd00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x55c0ff71 # load x3 with value 0x55c0ff71
sw x3, 0(x2) # store 0x55c0ff71 in memory
flh f10, 0(x2) # load 0x55c0ff71 from memory into f10
la x23, scratch # base address
addi x23, x23, -758 # sub immediate from rs1 to counter offset
fsh f10, 758(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x23, 0x99ea998d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x58ecca6a # load x3 with value 0x58ecca6a
sw x3, 0(x2) # store 0x58ecca6a in memory
flh f11, 0(x2) # load 0x58ecca6a from memory into f11
la x7, scratch # base address
addi x7, x7, -980 # sub immediate from rs1 to counter offset
fsh f11, 980(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x8, 0x29d0a4c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc8fb8a3f # load x3 with value 0xc8fb8a3f
sw x3, 0(x2) # store 0xc8fb8a3f in memory
flh f12, 0(x2) # load 0xc8fb8a3f from memory into f12
la x10, scratch # base address
addi x10, x10, 947 # sub immediate from rs1 to counter offset
fsh f12, -947(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x20, 0xf80d6d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbc1a8dd2 # load x3 with value 0xbc1a8dd2
sw x3, 0(x2) # store 0xbc1a8dd2 in memory
flh f13, 0(x2) # load 0xbc1a8dd2 from memory into f13
la x31, scratch # base address
addi x31, x31, -678 # sub immediate from rs1 to counter offset
fsh f13, 678(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x17, 0x09c9ae67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x65138fa7 # load x3 with value 0x65138fa7
sw x3, 0(x2) # store 0x65138fa7 in memory
flh f14, 0(x2) # load 0x65138fa7 from memory into f14
la x5, scratch # base address
addi x5, x5, 1222 # sub immediate from rs1 to counter offset
fsh f14, -1222(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x14, 0xf17e685a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x801cfbd3 # load x3 with value 0x801cfbd3
sw x3, 0(x2) # store 0x801cfbd3 in memory
flh f15, 0(x2) # load 0x801cfbd3 from memory into f15
la x29, scratch # base address
addi x29, x29, -722 # sub immediate from rs1 to counter offset
fsh f15, 722(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x26, 0xa40d7f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2c214689 # load x3 with value 0x2c214689
sw x3, 0(x2) # store 0x2c214689 in memory
flh f16, 0(x2) # load 0x2c214689 from memory into f16
la x24, scratch # base address
addi x24, x24, 1237 # sub immediate from rs1 to counter offset
fsh f16, -1237(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x13, 0x36304435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf226bfa4 # load x3 with value 0xf226bfa4
sw x3, 0(x2) # store 0xf226bfa4 in memory
flh f17, 0(x2) # load 0xf226bfa4 from memory into f17
la x11, scratch # base address
addi x11, x11, 940 # sub immediate from rs1 to counter offset
fsh f17, -940(x11) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x29, 0x74363d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3e4c62bb # load x3 with value 0x3e4c62bb
sw x3, 0(x2) # store 0x3e4c62bb in memory
flh f18, 0(x2) # load 0x3e4c62bb from memory into f18
la x1, scratch # base address
addi x1, x1, 395 # sub immediate from rs1 to counter offset
fsh f18, -395(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x22, 0xdee2a866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x34ce59c6 # load x3 with value 0x34ce59c6
sw x3, 0(x2) # store 0x34ce59c6 in memory
flh f19, 0(x2) # load 0x34ce59c6 from memory into f19
la x8, scratch # base address
addi x8, x8, 169 # sub immediate from rs1 to counter offset
fsh f19, -169(x8) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x9, 0xaf8e4884 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb0ecb324 # load x3 with value 0xb0ecb324
sw x3, 0(x2) # store 0xb0ecb324 in memory
flh f20, 0(x2) # load 0xb0ecb324 from memory into f20
la x13, scratch # base address
addi x13, x13, -8 # sub immediate from rs1 to counter offset
fsh f20, 8(x13) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x29, 0x50fbe80e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x826602b3 # load x3 with value 0x826602b3
sw x3, 0(x2) # store 0x826602b3 in memory
flh f21, 0(x2) # load 0x826602b3 from memory into f21
la x2, scratch # base address
addi x2, x2, -1055 # sub immediate from rs1 to counter offset
fsh f21, 1055(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x26, 0xffcdc77b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe27fa2d9 # load x3 with value 0xe27fa2d9
sw x3, 0(x2) # store 0xe27fa2d9 in memory
flh f22, 0(x2) # load 0xe27fa2d9 from memory into f22
la x15, scratch # base address
addi x15, x15, 926 # sub immediate from rs1 to counter offset
fsh f22, -926(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x5, 0xe36f7ccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x721efe2e # load x3 with value 0x721efe2e
sw x3, 0(x2) # store 0x721efe2e in memory
flh f23, 0(x2) # load 0x721efe2e from memory into f23
la x10, scratch # base address
addi x10, x10, -735 # sub immediate from rs1 to counter offset
fsh f23, 735(x10) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x13, 0xcdefba05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9472eba5 # load x3 with value 0x9472eba5
sw x3, 0(x2) # store 0x9472eba5 in memory
flh f24, 0(x2) # load 0x9472eba5 from memory into f24
la x18, scratch # base address
addi x18, x18, -1000 # sub immediate from rs1 to counter offset
fsh f24, 1000(x18) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x1, 0xe582a4bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd26d0096 # load x3 with value 0xd26d0096
sw x3, 0(x2) # store 0xd26d0096 in memory
flh f25, 0(x2) # load 0xd26d0096 from memory into f25
la x14, scratch # base address
addi x14, x14, 1811 # sub immediate from rs1 to counter offset
fsh f25, -1811(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x29, 0xd221a5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7664f64d # load x3 with value 0x7664f64d
sw x3, 0(x2) # store 0x7664f64d in memory
flh f26, 0(x2) # load 0x7664f64d from memory into f26
la x4, scratch # base address
addi x4, x4, 1505 # sub immediate from rs1 to counter offset
fsh f26, -1505(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x12, 0x3ec75810 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x766ca9f4 # load x3 with value 0x766ca9f4
sw x3, 0(x2) # store 0x766ca9f4 in memory
flh f27, 0(x2) # load 0x766ca9f4 from memory into f27
la x30, scratch # base address
addi x30, x30, 1134 # sub immediate from rs1 to counter offset
fsh f27, -1134(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x25, 0xd902aa9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x35b467f1 # load x3 with value 0x35b467f1
sw x3, 0(x2) # store 0x35b467f1 in memory
flh f28, 0(x2) # load 0x35b467f1 from memory into f28
la x16, scratch # base address
addi x16, x16, -1832 # sub immediate from rs1 to counter offset
fsh f28, 1832(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x2, 0x5f094d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x796266cc # load x3 with value 0x796266cc
sw x3, 0(x2) # store 0x796266cc in memory
flh f29, 0(x2) # load 0x796266cc from memory into f29
la x21, scratch # base address
addi x21, x21, 1657 # sub immediate from rs1 to counter offset
fsh f29, -1657(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x21, 0x65501e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x781db0e1 # load x3 with value 0x781db0e1
sw x3, 0(x2) # store 0x781db0e1 in memory
flh f30, 0(x2) # load 0x781db0e1 from memory into f30
la x14, scratch # base address
addi x14, x14, -1055 # sub immediate from rs1 to counter offset
fsh f30, 1055(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x18, 0xdfa53646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7c06f644 # load x3 with value 0x7c06f644
sw x3, 0(x2) # store 0x7c06f644 in memory
flh f31, 0(x2) # load 0x7c06f644 from memory into f31
la x16, scratch # base address
addi x16, x16, 814 # sub immediate from rs1 to counter offset
fsh f31, -814(x16) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
