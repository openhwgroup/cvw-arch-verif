///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/F//WALLY-COV-fsw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.400107
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
li x5, 0xe91348db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9a08cd31 # load x3 with value 0x9a08cd31
sw x3, 0(x2) # store 0x9a08cd31 in memory
flw f29, 0(x2) # load 0x9a08cd31 from memory into f29
la x1, scratch # base address
addi x1, x1, -67 # sub immediate from rs1 to counter offset
fsw f29, 67(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x331f90db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x090c0d4a # load x3 with value 0x090c0d4a
sw x3, 0(x2) # store 0x090c0d4a in memory
flw f18, 0(x2) # load 0x090c0d4a from memory into f18
la x2, scratch # base address
addi x2, x2, -1938 # sub immediate from rs1 to counter offset
fsw f18, 1938(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x11, 0x37ce36d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdd125b46 # load x3 with value 0xdd125b46
sw x3, 0(x2) # store 0xdd125b46 in memory
flw f8, 0(x2) # load 0xdd125b46 from memory into f8
la x3, scratch # base address
addi x3, x3, -667 # sub immediate from rs1 to counter offset
fsw f8, 667(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x20, 0x68375656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1e1e3b3d # load x3 with value 0x1e1e3b3d
sw x3, 0(x2) # store 0x1e1e3b3d in memory
flw f12, 0(x2) # load 0x1e1e3b3d from memory into f12
la x4, scratch # base address
addi x4, x4, 18 # sub immediate from rs1 to counter offset
fsw f12, -18(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x15, 0xa2edf65f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x08699d7b # load x3 with value 0x08699d7b
sw x3, 0(x2) # store 0x08699d7b in memory
flw f23, 0(x2) # load 0x08699d7b from memory into f23
la x5, scratch # base address
addi x5, x5, 1511 # sub immediate from rs1 to counter offset
fsw f23, -1511(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x7bd1e833 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7cb881cd # load x3 with value 0x7cb881cd
sw x3, 0(x2) # store 0x7cb881cd in memory
flw f12, 0(x2) # load 0x7cb881cd from memory into f12
la x6, scratch # base address
addi x6, x6, -1460 # sub immediate from rs1 to counter offset
fsw f12, 1460(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0xccf07fe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd5a67591 # load x3 with value 0xd5a67591
sw x3, 0(x2) # store 0xd5a67591 in memory
flw f1, 0(x2) # load 0xd5a67591 from memory into f1
la x7, scratch # base address
addi x7, x7, -2042 # sub immediate from rs1 to counter offset
fsw f1, 2042(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xf0bb3757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9c251d71 # load x3 with value 0x9c251d71
sw x3, 0(x2) # store 0x9c251d71 in memory
flw f28, 0(x2) # load 0x9c251d71 from memory into f28
la x8, scratch # base address
addi x8, x8, 1881 # sub immediate from rs1 to counter offset
fsw f28, -1881(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x6b6c4dcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x602202f7 # load x3 with value 0x602202f7
sw x3, 0(x2) # store 0x602202f7 in memory
flw f24, 0(x2) # load 0x602202f7 from memory into f24
la x9, scratch # base address
addi x9, x9, -341 # sub immediate from rs1 to counter offset
fsw f24, 341(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x7, 0x0e1eeb03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6b586c74 # load x3 with value 0x6b586c74
sw x3, 0(x2) # store 0x6b586c74 in memory
flw f4, 0(x2) # load 0x6b586c74 from memory into f4
la x10, scratch # base address
addi x10, x10, 555 # sub immediate from rs1 to counter offset
fsw f4, -555(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x39f2f37c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x384fb79c # load x3 with value 0x384fb79c
sw x3, 0(x2) # store 0x384fb79c in memory
flw f24, 0(x2) # load 0x384fb79c from memory into f24
la x11, scratch # base address
addi x11, x11, -391 # sub immediate from rs1 to counter offset
fsw f24, 391(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x74b481ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbc48bf8b # load x3 with value 0xbc48bf8b
sw x3, 0(x2) # store 0xbc48bf8b in memory
flw f22, 0(x2) # load 0xbc48bf8b from memory into f22
la x12, scratch # base address
addi x12, x12, 1827 # sub immediate from rs1 to counter offset
fsw f22, -1827(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xb1447ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xa954cf88 # load x3 with value 0xa954cf88
sw x3, 0(x2) # store 0xa954cf88 in memory
flw f4, 0(x2) # load 0xa954cf88 from memory into f4
la x13, scratch # base address
addi x13, x13, -1124 # sub immediate from rs1 to counter offset
fsw f4, 1124(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x966f2af2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x112da97d # load x3 with value 0x112da97d
sw x3, 0(x2) # store 0x112da97d in memory
flw f4, 0(x2) # load 0x112da97d from memory into f4
la x14, scratch # base address
addi x14, x14, 1778 # sub immediate from rs1 to counter offset
fsw f4, -1778(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xb9c04132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x666f7aeb # load x3 with value 0x666f7aeb
sw x3, 0(x2) # store 0x666f7aeb in memory
flw f23, 0(x2) # load 0x666f7aeb from memory into f23
la x15, scratch # base address
addi x15, x15, 2014 # sub immediate from rs1 to counter offset
fsw f23, -2014(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x11, 0x6b56a68d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x46377a35 # load x3 with value 0x46377a35
sw x3, 0(x2) # store 0x46377a35 in memory
flw f2, 0(x2) # load 0x46377a35 from memory into f2
la x16, scratch # base address
addi x16, x16, -1372 # sub immediate from rs1 to counter offset
fsw f2, 1372(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x29, 0xf836cd0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2b57c42d # load x3 with value 0x2b57c42d
sw x3, 0(x2) # store 0x2b57c42d in memory
flw f23, 0(x2) # load 0x2b57c42d from memory into f23
la x17, scratch # base address
addi x17, x17, -1814 # sub immediate from rs1 to counter offset
fsw f23, 1814(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x5, 0xae1bee60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdd8f6ef1 # load x3 with value 0xdd8f6ef1
sw x3, 0(x2) # store 0xdd8f6ef1 in memory
flw f22, 0(x2) # load 0xdd8f6ef1 from memory into f22
la x18, scratch # base address
addi x18, x18, 890 # sub immediate from rs1 to counter offset
fsw f22, -890(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x25, 0xefcddfc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x012b9a72 # load x3 with value 0x012b9a72
sw x3, 0(x2) # store 0x012b9a72 in memory
flw f26, 0(x2) # load 0x012b9a72 from memory into f26
la x19, scratch # base address
addi x19, x19, 889 # sub immediate from rs1 to counter offset
fsw f26, -889(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0xd8c86c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xeab0bfcb # load x3 with value 0xeab0bfcb
sw x3, 0(x2) # store 0xeab0bfcb in memory
flw f30, 0(x2) # load 0xeab0bfcb from memory into f30
la x20, scratch # base address
addi x20, x20, -409 # sub immediate from rs1 to counter offset
fsw f30, 409(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x27, 0x7086481b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x175f7c8c # load x3 with value 0x175f7c8c
sw x3, 0(x2) # store 0x175f7c8c in memory
flw f31, 0(x2) # load 0x175f7c8c from memory into f31
la x21, scratch # base address
addi x21, x21, -892 # sub immediate from rs1 to counter offset
fsw f31, 892(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0xf254d7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9e522402 # load x3 with value 0x9e522402
sw x3, 0(x2) # store 0x9e522402 in memory
flw f26, 0(x2) # load 0x9e522402 from memory into f26
la x22, scratch # base address
addi x22, x22, 1816 # sub immediate from rs1 to counter offset
fsw f26, -1816(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x21, 0xb1288440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8e0be7d7 # load x3 with value 0x8e0be7d7
sw x3, 0(x2) # store 0x8e0be7d7 in memory
flw f25, 0(x2) # load 0x8e0be7d7 from memory into f25
la x23, scratch # base address
addi x23, x23, -8 # sub immediate from rs1 to counter offset
fsw f25, 8(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x5, 0xc44886a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2e63ec73 # load x3 with value 0x2e63ec73
sw x3, 0(x2) # store 0x2e63ec73 in memory
flw f6, 0(x2) # load 0x2e63ec73 from memory into f6
la x24, scratch # base address
addi x24, x24, -129 # sub immediate from rs1 to counter offset
fsw f6, 129(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x9, 0x8a2abe3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdcc903fd # load x3 with value 0xdcc903fd
sw x3, 0(x2) # store 0xdcc903fd in memory
flw f21, 0(x2) # load 0xdcc903fd from memory into f21
la x25, scratch # base address
addi x25, x25, 1420 # sub immediate from rs1 to counter offset
fsw f21, -1420(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0x67260086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x324725a2 # load x3 with value 0x324725a2
sw x3, 0(x2) # store 0x324725a2 in memory
flw f16, 0(x2) # load 0x324725a2 from memory into f16
la x26, scratch # base address
addi x26, x26, -881 # sub immediate from rs1 to counter offset
fsw f16, 881(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0x8f9f4b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x65004705 # load x3 with value 0x65004705
sw x3, 0(x2) # store 0x65004705 in memory
flw f15, 0(x2) # load 0x65004705 from memory into f15
la x27, scratch # base address
addi x27, x27, 1980 # sub immediate from rs1 to counter offset
fsw f15, -1980(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0x921e61a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x19d2ee26 # load x3 with value 0x19d2ee26
sw x3, 0(x2) # store 0x19d2ee26 in memory
flw f26, 0(x2) # load 0x19d2ee26 from memory into f26
la x28, scratch # base address
addi x28, x28, -361 # sub immediate from rs1 to counter offset
fsw f26, 361(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0xdd7afd2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x25f239a2 # load x3 with value 0x25f239a2
sw x3, 0(x2) # store 0x25f239a2 in memory
flw f24, 0(x2) # load 0x25f239a2 from memory into f24
la x29, scratch # base address
addi x29, x29, -1003 # sub immediate from rs1 to counter offset
fsw f24, 1003(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x7, 0x270dcb76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xed3312d8 # load x3 with value 0xed3312d8
sw x3, 0(x2) # store 0xed3312d8 in memory
flw f23, 0(x2) # load 0xed3312d8 from memory into f23
la x30, scratch # base address
addi x30, x30, 1340 # sub immediate from rs1 to counter offset
fsw f23, -1340(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0xc80aa97b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x16305d84 # load x3 with value 0x16305d84
sw x3, 0(x2) # store 0x16305d84 in memory
flw f21, 0(x2) # load 0x16305d84 from memory into f21
la x31, scratch # base address
addi x31, x31, -1740 # sub immediate from rs1 to counter offset
fsw f21, 1740(x31) # perform operation

# Testcase cp_imm_zero
li x15, 0x721a2621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9dea4958 # load x3 with value 0x9dea4958
sw x3, 0(x2) # store 0x9dea4958 in memory
flw f25, 0(x2) # load 0x9dea4958 from memory into f25
la x4, scratch # base address
addi x4, x4, 0 # sub immediate from rs1 to counter offset
fsw f25, 0(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x6, 0x9f38851a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f21, 0(x2) # load 0x00000000 from memory into f21
la x26, scratch # base address
addi x26, x26, -1582 # sub immediate from rs1 to counter offset
fsw f21, 1582(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x22, 0xb05ca724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f5, 0(x2) # load 0x80000000 from memory into f5
la x9, scratch # base address
addi x9, x9, 530 # sub immediate from rs1 to counter offset
fsw f5, -530(x9) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x13, 0xd24129e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f4, 0(x2) # load 0x3f800000 from memory into f4
la x7, scratch # base address
addi x7, x7, -144 # sub immediate from rs1 to counter offset
fsw f4, 144(x7) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x12, 0xbb6b800a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f2, 0(x2) # load 0xbf800000 from memory into f2
la x30, scratch # base address
addi x30, x30, -1614 # sub immediate from rs1 to counter offset
fsw f2, 1614(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x22, 0x68fe92bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f27, 0(x2) # load 0x3fc00000 from memory into f27
la x18, scratch # base address
addi x18, x18, -685 # sub immediate from rs1 to counter offset
fsw f27, 685(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x15, 0x04bacc89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f29, 0(x2) # load 0xbfc00000 from memory into f29
la x14, scratch # base address
addi x14, x14, 822 # sub immediate from rs1 to counter offset
fsw f29, -822(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x26, 0xde10c504 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f24, 0(x2) # load 0x40000000 from memory into f24
la x17, scratch # base address
addi x17, x17, -4 # sub immediate from rs1 to counter offset
fsw f24, 4(x17) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x15, 0x499e894d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f4, 0(x2) # load 0xc0000000 from memory into f4
la x23, scratch # base address
addi x23, x23, 1195 # sub immediate from rs1 to counter offset
fsw f4, -1195(x23) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x2, 0x8b9c44df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f24, 0(x2) # load 0x00800000 from memory into f24
la x30, scratch # base address
addi x30, x30, -725 # sub immediate from rs1 to counter offset
fsw f24, 725(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x12, 0x3d16211b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f4, 0(x2) # load 0x80800000 from memory into f4
la x25, scratch # base address
addi x25, x25, 214 # sub immediate from rs1 to counter offset
fsw f4, -214(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x6, 0x8acb14cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f22, 0(x2) # load 0x7f7fffff from memory into f22
la x14, scratch # base address
addi x14, x14, -827 # sub immediate from rs1 to counter offset
fsw f22, 827(x14) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x27, 0xbabc97bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f16, 0(x2) # load 0xff7fffff from memory into f16
la x28, scratch # base address
addi x28, x28, 1254 # sub immediate from rs1 to counter offset
fsw f16, -1254(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x5, 0x053bd7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f30, 0(x2) # load 0x007fffff from memory into f30
la x29, scratch # base address
addi x29, x29, 1619 # sub immediate from rs1 to counter offset
fsw f30, -1619(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x17, 0x85c7eaa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f22, 0(x2) # load 0x807fffff from memory into f22
la x1, scratch # base address
addi x1, x1, 511 # sub immediate from rs1 to counter offset
fsw f22, -511(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x28, 0xbac44981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f24, 0(x2) # load 0x00400000 from memory into f24
la x1, scratch # base address
addi x1, x1, 176 # sub immediate from rs1 to counter offset
fsw f24, -176(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x4, 0x799d08bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f21, 0(x2) # load 0x80400000 from memory into f21
la x8, scratch # base address
addi x8, x8, -482 # sub immediate from rs1 to counter offset
fsw f21, 482(x8) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x17, 0x719ce0f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f13, 0(x2) # load 0x00000001 from memory into f13
la x6, scratch # base address
addi x6, x6, -814 # sub immediate from rs1 to counter offset
fsw f13, 814(x6) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x1, 0x1917191b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f7, 0(x2) # load 0x80000001 from memory into f7
la x30, scratch # base address
addi x30, x30, 302 # sub immediate from rs1 to counter offset
fsw f7, -302(x30) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x23, 0xf109e3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f2, 0(x2) # load 0x7f800000 from memory into f2
la x25, scratch # base address
addi x25, x25, -1792 # sub immediate from rs1 to counter offset
fsw f2, 1792(x25) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x25, 0xaedd0b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f14, 0(x2) # load 0xff800000 from memory into f14
la x18, scratch # base address
addi x18, x18, -70 # sub immediate from rs1 to counter offset
fsw f14, 70(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x27, 0x8a11b7cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
la x4, scratch # base address
addi x4, x4, 254 # sub immediate from rs1 to counter offset
fsw f20, -254(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x15, 0xdff7d572 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f24, 0(x2) # load 0x7fffffff from memory into f24
la x11, scratch # base address
addi x11, x11, -54 # sub immediate from rs1 to counter offset
fsw f24, 54(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x26, 0x9298302a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f13, 0(x2) # load 0x7f800001 from memory into f13
la x28, scratch # base address
addi x28, x28, 785 # sub immediate from rs1 to counter offset
fsw f13, -785(x28) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x10, 0x9a968d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f5, 0(x2) # load 0x7fbfffff from memory into f5
la x3, scratch # base address
addi x3, x3, 1639 # sub immediate from rs1 to counter offset
fsw f5, -1639(x3) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x17, 0xcd00813b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f15, 0(x2) # load 0x7ef8654f from memory into f15
la x21, scratch # base address
addi x21, x21, 364 # sub immediate from rs1 to counter offset
fsw f15, -364(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x17, 0x687e27aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f29, 0(x2) # load 0x813d9ab0 from memory into f29
la x28, scratch # base address
addi x28, x28, 17 # sub immediate from rs1 to counter offset
fsw f29, -17(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x9, 0xec46ad98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x330e5cbd # load x3 with value 0x330e5cbd
sw x3, 0(x2) # store 0x330e5cbd in memory
flw f0, 0(x2) # load 0x330e5cbd from memory into f0
la x3, scratch # base address
addi x3, x3, -1898 # sub immediate from rs1 to counter offset
fsw f0, 1898(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x20, 0x06f2f3c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4c461bb9 # load x3 with value 0x4c461bb9
sw x3, 0(x2) # store 0x4c461bb9 in memory
flw f1, 0(x2) # load 0x4c461bb9 from memory into f1
la x17, scratch # base address
addi x17, x17, 1602 # sub immediate from rs1 to counter offset
fsw f1, -1602(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x31, 0xb94d7442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdfb65b83 # load x3 with value 0xdfb65b83
sw x3, 0(x2) # store 0xdfb65b83 in memory
flw f2, 0(x2) # load 0xdfb65b83 from memory into f2
la x24, scratch # base address
addi x24, x24, 513 # sub immediate from rs1 to counter offset
fsw f2, -513(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x29, 0xa715af88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4699a040 # load x3 with value 0x4699a040
sw x3, 0(x2) # store 0x4699a040 in memory
flw f3, 0(x2) # load 0x4699a040 from memory into f3
la x21, scratch # base address
addi x21, x21, -364 # sub immediate from rs1 to counter offset
fsw f3, 364(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x14, 0xd993a95c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3c7bbdd3 # load x3 with value 0x3c7bbdd3
sw x3, 0(x2) # store 0x3c7bbdd3 in memory
flw f4, 0(x2) # load 0x3c7bbdd3 from memory into f4
la x17, scratch # base address
addi x17, x17, -1737 # sub immediate from rs1 to counter offset
fsw f4, 1737(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x24, 0xa6df71e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x69a46da0 # load x3 with value 0x69a46da0
sw x3, 0(x2) # store 0x69a46da0 in memory
flw f5, 0(x2) # load 0x69a46da0 from memory into f5
la x23, scratch # base address
addi x23, x23, 593 # sub immediate from rs1 to counter offset
fsw f5, -593(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x11, 0x3f3af5aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xfd98452f # load x3 with value 0xfd98452f
sw x3, 0(x2) # store 0xfd98452f in memory
flw f6, 0(x2) # load 0xfd98452f from memory into f6
la x25, scratch # base address
addi x25, x25, -282 # sub immediate from rs1 to counter offset
fsw f6, 282(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x16, 0xbe46a8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x604b0a96 # load x3 with value 0x604b0a96
sw x3, 0(x2) # store 0x604b0a96 in memory
flw f7, 0(x2) # load 0x604b0a96 from memory into f7
la x14, scratch # base address
addi x14, x14, -42 # sub immediate from rs1 to counter offset
fsw f7, 42(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x20, 0x1fd4adb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7e23a9da # load x3 with value 0x7e23a9da
sw x3, 0(x2) # store 0x7e23a9da in memory
flw f8, 0(x2) # load 0x7e23a9da from memory into f8
la x16, scratch # base address
addi x16, x16, 150 # sub immediate from rs1 to counter offset
fsw f8, -150(x16) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x9, 0x31b8dcaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc2b38f1f # load x3 with value 0xc2b38f1f
sw x3, 0(x2) # store 0xc2b38f1f in memory
flw f9, 0(x2) # load 0xc2b38f1f from memory into f9
la x3, scratch # base address
addi x3, x3, 603 # sub immediate from rs1 to counter offset
fsw f9, -603(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x25, 0xeea5490b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5d5d9e83 # load x3 with value 0x5d5d9e83
sw x3, 0(x2) # store 0x5d5d9e83 in memory
flw f10, 0(x2) # load 0x5d5d9e83 from memory into f10
la x14, scratch # base address
addi x14, x14, 1069 # sub immediate from rs1 to counter offset
fsw f10, -1069(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x4, 0xd65f7ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc4765155 # load x3 with value 0xc4765155
sw x3, 0(x2) # store 0xc4765155 in memory
flw f11, 0(x2) # load 0xc4765155 from memory into f11
la x23, scratch # base address
addi x23, x23, 1613 # sub immediate from rs1 to counter offset
fsw f11, -1613(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x6, 0x924c6bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x71ee4db9 # load x3 with value 0x71ee4db9
sw x3, 0(x2) # store 0x71ee4db9 in memory
flw f12, 0(x2) # load 0x71ee4db9 from memory into f12
la x4, scratch # base address
addi x4, x4, -398 # sub immediate from rs1 to counter offset
fsw f12, 398(x4) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x16, 0x57511376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd05316c5 # load x3 with value 0xd05316c5
sw x3, 0(x2) # store 0xd05316c5 in memory
flw f13, 0(x2) # load 0xd05316c5 from memory into f13
la x3, scratch # base address
addi x3, x3, 1895 # sub immediate from rs1 to counter offset
fsw f13, -1895(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x19, 0x75e46601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7349d01a # load x3 with value 0x7349d01a
sw x3, 0(x2) # store 0x7349d01a in memory
flw f14, 0(x2) # load 0x7349d01a from memory into f14
la x25, scratch # base address
addi x25, x25, -2022 # sub immediate from rs1 to counter offset
fsw f14, 2022(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x26, 0x83d89989 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x13184267 # load x3 with value 0x13184267
sw x3, 0(x2) # store 0x13184267 in memory
flw f15, 0(x2) # load 0x13184267 from memory into f15
la x22, scratch # base address
addi x22, x22, 1283 # sub immediate from rs1 to counter offset
fsw f15, -1283(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x22, 0x0924828d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xcf692d57 # load x3 with value 0xcf692d57
sw x3, 0(x2) # store 0xcf692d57 in memory
flw f16, 0(x2) # load 0xcf692d57 from memory into f16
la x17, scratch # base address
addi x17, x17, -572 # sub immediate from rs1 to counter offset
fsw f16, 572(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x3, 0x3090e98f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x44f5c87e # load x3 with value 0x44f5c87e
sw x3, 0(x2) # store 0x44f5c87e in memory
flw f17, 0(x2) # load 0x44f5c87e from memory into f17
la x24, scratch # base address
addi x24, x24, -958 # sub immediate from rs1 to counter offset
fsw f17, 958(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x1, 0x87dbb41b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbf36c1a0 # load x3 with value 0xbf36c1a0
sw x3, 0(x2) # store 0xbf36c1a0 in memory
flw f18, 0(x2) # load 0xbf36c1a0 from memory into f18
la x27, scratch # base address
addi x27, x27, 644 # sub immediate from rs1 to counter offset
fsw f18, -644(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x20, 0x746de563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x05ced2e7 # load x3 with value 0x05ced2e7
sw x3, 0(x2) # store 0x05ced2e7 in memory
flw f19, 0(x2) # load 0x05ced2e7 from memory into f19
la x30, scratch # base address
addi x30, x30, 1562 # sub immediate from rs1 to counter offset
fsw f19, -1562(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x23, 0xf6281a34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf13910cf # load x3 with value 0xf13910cf
sw x3, 0(x2) # store 0xf13910cf in memory
flw f20, 0(x2) # load 0xf13910cf from memory into f20
la x2, scratch # base address
addi x2, x2, 1984 # sub immediate from rs1 to counter offset
fsw f20, -1984(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x28, 0xc7bdc0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2a647ad5 # load x3 with value 0x2a647ad5
sw x3, 0(x2) # store 0x2a647ad5 in memory
flw f21, 0(x2) # load 0x2a647ad5 from memory into f21
la x3, scratch # base address
addi x3, x3, 1109 # sub immediate from rs1 to counter offset
fsw f21, -1109(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x22, 0x2d787035 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x06824820 # load x3 with value 0x06824820
sw x3, 0(x2) # store 0x06824820 in memory
flw f22, 0(x2) # load 0x06824820 from memory into f22
la x19, scratch # base address
addi x19, x19, -1439 # sub immediate from rs1 to counter offset
fsw f22, 1439(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x1, 0xfa464f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x20a7c0da # load x3 with value 0x20a7c0da
sw x3, 0(x2) # store 0x20a7c0da in memory
flw f23, 0(x2) # load 0x20a7c0da from memory into f23
la x29, scratch # base address
addi x29, x29, -189 # sub immediate from rs1 to counter offset
fsw f23, 189(x29) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x1, 0xe3c03eb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbbfc4867 # load x3 with value 0xbbfc4867
sw x3, 0(x2) # store 0xbbfc4867 in memory
flw f24, 0(x2) # load 0xbbfc4867 from memory into f24
la x7, scratch # base address
addi x7, x7, -1657 # sub immediate from rs1 to counter offset
fsw f24, 1657(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x5, 0xf83b4ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x81bfeb44 # load x3 with value 0x81bfeb44
sw x3, 0(x2) # store 0x81bfeb44 in memory
flw f25, 0(x2) # load 0x81bfeb44 from memory into f25
la x22, scratch # base address
addi x22, x22, 380 # sub immediate from rs1 to counter offset
fsw f25, -380(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x3, 0x854d5b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x502513c2 # load x3 with value 0x502513c2
sw x3, 0(x2) # store 0x502513c2 in memory
flw f26, 0(x2) # load 0x502513c2 from memory into f26
la x2, scratch # base address
addi x2, x2, -2006 # sub immediate from rs1 to counter offset
fsw f26, 2006(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x17, 0xf72f18ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd2851c6b # load x3 with value 0xd2851c6b
sw x3, 0(x2) # store 0xd2851c6b in memory
flw f27, 0(x2) # load 0xd2851c6b from memory into f27
la x25, scratch # base address
addi x25, x25, 702 # sub immediate from rs1 to counter offset
fsw f27, -702(x25) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x16, 0xa0d23e98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb61af36e # load x3 with value 0xb61af36e
sw x3, 0(x2) # store 0xb61af36e in memory
flw f28, 0(x2) # load 0xb61af36e from memory into f28
la x3, scratch # base address
addi x3, x3, -467 # sub immediate from rs1 to counter offset
fsw f28, 467(x3) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x12, 0xe5314113 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x0159df5a # load x3 with value 0x0159df5a
sw x3, 0(x2) # store 0x0159df5a in memory
flw f29, 0(x2) # load 0x0159df5a from memory into f29
la x1, scratch # base address
addi x1, x1, 214 # sub immediate from rs1 to counter offset
fsw f29, -214(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x11, 0x4f69ef97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd80b89ef # load x3 with value 0xd80b89ef
sw x3, 0(x2) # store 0xd80b89ef in memory
flw f30, 0(x2) # load 0xd80b89ef from memory into f30
la x26, scratch # base address
addi x26, x26, -887 # sub immediate from rs1 to counter offset
fsw f30, 887(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x1, 0x8942aeff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x490fb04e # load x3 with value 0x490fb04e
sw x3, 0(x2) # store 0x490fb04e in memory
flw f31, 0(x2) # load 0x490fb04e from memory into f31
la x2, scratch # base address
addi x2, x2, -670 # sub immediate from rs1 to counter offset
fsw f31, 670(x2) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
