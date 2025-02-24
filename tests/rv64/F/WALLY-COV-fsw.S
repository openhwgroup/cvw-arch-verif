///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/F//WALLY-COV-fsw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.852573
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
li x4, 0x2e3032d98d4f01a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3cfa829961855b47 # load x3 with value 0x3cfa829961855b47
sw x3, 0(x2) # store 0x3cfa829961855b47 in memory
flw f11, 0(x2) # load 0x3cfa829961855b47 from memory into f11
la x1, scratch # base address
addi x1, x1, -1821 # sub immediate from rs1 to counter offset
fsw f11, 1821(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x12, 0x6f2587645f875c6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xaea680f4a8965c87 # load x3 with value 0xaea680f4a8965c87
sw x3, 0(x2) # store 0xaea680f4a8965c87 in memory
flw f3, 0(x2) # load 0xaea680f4a8965c87 from memory into f3
la x2, scratch # base address
addi x2, x2, 1639 # sub immediate from rs1 to counter offset
fsw f3, -1639(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x19, 0x49ee5f54d0f8c4d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6528d170e7e849e4 # load x3 with value 0x6528d170e7e849e4
sw x3, 0(x2) # store 0x6528d170e7e849e4 in memory
flw f23, 0(x2) # load 0x6528d170e7e849e4 from memory into f23
la x3, scratch # base address
addi x3, x3, -1867 # sub immediate from rs1 to counter offset
fsw f23, 1867(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x15, 0xbadf622909cf6d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xd40e3323e468a96e # load x3 with value 0xd40e3323e468a96e
sw x3, 0(x2) # store 0xd40e3323e468a96e in memory
flw f29, 0(x2) # load 0xd40e3323e468a96e from memory into f29
la x4, scratch # base address
addi x4, x4, 342 # sub immediate from rs1 to counter offset
fsw f29, -342(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x17, 0xd1842fb1475d75f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xacba62eda57061fb # load x3 with value 0xacba62eda57061fb
sw x3, 0(x2) # store 0xacba62eda57061fb in memory
flw f12, 0(x2) # load 0xacba62eda57061fb from memory into f12
la x5, scratch # base address
addi x5, x5, -649 # sub immediate from rs1 to counter offset
fsw f12, 649(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x22, 0x0e2a6e12d25b7b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5989c3dcad7ab775 # load x3 with value 0x5989c3dcad7ab775
sw x3, 0(x2) # store 0x5989c3dcad7ab775 in memory
flw f25, 0(x2) # load 0x5989c3dcad7ab775 from memory into f25
la x6, scratch # base address
addi x6, x6, 1188 # sub immediate from rs1 to counter offset
fsw f25, -1188(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x15, 0x51aaf612ce43bffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x87eef97ca8de786f # load x3 with value 0x87eef97ca8de786f
sw x3, 0(x2) # store 0x87eef97ca8de786f in memory
flw f1, 0(x2) # load 0x87eef97ca8de786f from memory into f1
la x7, scratch # base address
addi x7, x7, 847 # sub immediate from rs1 to counter offset
fsw f1, -847(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x1, 0x62a9b81e0a79080b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x46efc73f47d53c31 # load x3 with value 0x46efc73f47d53c31
sw x3, 0(x2) # store 0x46efc73f47d53c31 in memory
flw f28, 0(x2) # load 0x46efc73f47d53c31 from memory into f28
la x8, scratch # base address
addi x8, x8, 996 # sub immediate from rs1 to counter offset
fsw f28, -996(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0x13b8a75eba15f95c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7a9b0db8449de678 # load x3 with value 0x7a9b0db8449de678
sw x3, 0(x2) # store 0x7a9b0db8449de678 in memory
flw f29, 0(x2) # load 0x7a9b0db8449de678 from memory into f29
la x9, scratch # base address
addi x9, x9, 1648 # sub immediate from rs1 to counter offset
fsw f29, -1648(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x6a2e9fbc3fefd74d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf440b0fbf62001a0 # load x3 with value 0xf440b0fbf62001a0
sw x3, 0(x2) # store 0xf440b0fbf62001a0 in memory
flw f31, 0(x2) # load 0xf440b0fbf62001a0 from memory into f31
la x10, scratch # base address
addi x10, x10, 1322 # sub immediate from rs1 to counter offset
fsw f31, -1322(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x3fdb2a2bb89d4231 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xcb342eb5729ad5a # load x3 with value 0xcb342eb5729ad5a
sw x3, 0(x2) # store 0xcb342eb5729ad5a in memory
flw f19, 0(x2) # load 0xcb342eb5729ad5a from memory into f19
la x11, scratch # base address
addi x11, x11, 1890 # sub immediate from rs1 to counter offset
fsw f19, -1890(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x17, 0xe8fd87dbaaa2e690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x55ded5b17608f7b6 # load x3 with value 0x55ded5b17608f7b6
sw x3, 0(x2) # store 0x55ded5b17608f7b6 in memory
flw f23, 0(x2) # load 0x55ded5b17608f7b6 from memory into f23
la x12, scratch # base address
addi x12, x12, -1708 # sub immediate from rs1 to counter offset
fsw f23, 1708(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x25, 0x23199a4f19d613f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xf182a10a796dd086 # load x3 with value 0xf182a10a796dd086
sw x3, 0(x2) # store 0xf182a10a796dd086 in memory
flw f10, 0(x2) # load 0xf182a10a796dd086 from memory into f10
la x13, scratch # base address
addi x13, x13, 1276 # sub immediate from rs1 to counter offset
fsw f10, -1276(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x28bcb98a52b8d197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1e0f8c768294cb13 # load x3 with value 0x1e0f8c768294cb13
sw x3, 0(x2) # store 0x1e0f8c768294cb13 in memory
flw f2, 0(x2) # load 0x1e0f8c768294cb13 from memory into f2
la x14, scratch # base address
addi x14, x14, 1165 # sub immediate from rs1 to counter offset
fsw f2, -1165(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0xc47db455222de985 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6a8b585fb7aef6eb # load x3 with value 0x6a8b585fb7aef6eb
sw x3, 0(x2) # store 0x6a8b585fb7aef6eb in memory
flw f12, 0(x2) # load 0x6a8b585fb7aef6eb from memory into f12
la x15, scratch # base address
addi x15, x15, -860 # sub immediate from rs1 to counter offset
fsw f12, 860(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0xb083668feef2118f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6edc8ea7d77ce6e0 # load x3 with value 0x6edc8ea7d77ce6e0
sw x3, 0(x2) # store 0x6edc8ea7d77ce6e0 in memory
flw f1, 0(x2) # load 0x6edc8ea7d77ce6e0 from memory into f1
la x16, scratch # base address
addi x16, x16, 1727 # sub immediate from rs1 to counter offset
fsw f1, -1727(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x21, 0x075735bb1abc59e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x83ab095336d44786 # load x3 with value 0x83ab095336d44786
sw x3, 0(x2) # store 0x83ab095336d44786 in memory
flw f12, 0(x2) # load 0x83ab095336d44786 from memory into f12
la x17, scratch # base address
addi x17, x17, 1156 # sub immediate from rs1 to counter offset
fsw f12, -1156(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x56770a06c33bdd9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4f883d3c10664122 # load x3 with value 0x4f883d3c10664122
sw x3, 0(x2) # store 0x4f883d3c10664122 in memory
flw f27, 0(x2) # load 0x4f883d3c10664122 from memory into f27
la x18, scratch # base address
addi x18, x18, -1330 # sub immediate from rs1 to counter offset
fsw f27, 1330(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0xe9c54b3418050aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3748b132dc6ec1e # load x3 with value 0x3748b132dc6ec1e
sw x3, 0(x2) # store 0x3748b132dc6ec1e in memory
flw f16, 0(x2) # load 0x3748b132dc6ec1e from memory into f16
la x19, scratch # base address
addi x19, x19, 1699 # sub immediate from rs1 to counter offset
fsw f16, -1699(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x6f9f1d0f0b96b618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x713e66cc90e2db65 # load x3 with value 0x713e66cc90e2db65
sw x3, 0(x2) # store 0x713e66cc90e2db65 in memory
flw f26, 0(x2) # load 0x713e66cc90e2db65 from memory into f26
la x20, scratch # base address
addi x20, x20, 780 # sub immediate from rs1 to counter offset
fsw f26, -780(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x18, 0x3d87a5ac3460e61c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xcc32ac24684f4590 # load x3 with value 0xcc32ac24684f4590
sw x3, 0(x2) # store 0xcc32ac24684f4590 in memory
flw f16, 0(x2) # load 0xcc32ac24684f4590 from memory into f16
la x21, scratch # base address
addi x21, x21, 1060 # sub immediate from rs1 to counter offset
fsw f16, -1060(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0xdf694c1e11319f52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb8da2f622858b6d7 # load x3 with value 0xb8da2f622858b6d7
sw x3, 0(x2) # store 0xb8da2f622858b6d7 in memory
flw f1, 0(x2) # load 0xb8da2f622858b6d7 from memory into f1
la x22, scratch # base address
addi x22, x22, 127 # sub immediate from rs1 to counter offset
fsw f1, -127(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x21, 0xbf50227bd1e2af13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2432c2f1ffcefc47 # load x3 with value 0x2432c2f1ffcefc47
sw x3, 0(x2) # store 0x2432c2f1ffcefc47 in memory
flw f9, 0(x2) # load 0x2432c2f1ffcefc47 from memory into f9
la x23, scratch # base address
addi x23, x23, -1814 # sub immediate from rs1 to counter offset
fsw f9, 1814(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0x4da9e2dfaa6c2600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x57143df9cb52b8a8 # load x3 with value 0x57143df9cb52b8a8
sw x3, 0(x2) # store 0x57143df9cb52b8a8 in memory
flw f26, 0(x2) # load 0x57143df9cb52b8a8 from memory into f26
la x24, scratch # base address
addi x24, x24, -872 # sub immediate from rs1 to counter offset
fsw f26, 872(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xc55263a1cc6e8394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc54fbeadaca580cf # load x3 with value 0xc54fbeadaca580cf
sw x3, 0(x2) # store 0xc54fbeadaca580cf in memory
flw f16, 0(x2) # load 0xc54fbeadaca580cf from memory into f16
la x25, scratch # base address
addi x25, x25, -1233 # sub immediate from rs1 to counter offset
fsw f16, 1233(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x17, 0xfb7bfea1ea77b953 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1877988434de4ed4 # load x3 with value 0x1877988434de4ed4
sw x3, 0(x2) # store 0x1877988434de4ed4 in memory
flw f11, 0(x2) # load 0x1877988434de4ed4 from memory into f11
la x26, scratch # base address
addi x26, x26, -1909 # sub immediate from rs1 to counter offset
fsw f11, 1909(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0xa369f00942c523d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb5484fba74c1b5f7 # load x3 with value 0xb5484fba74c1b5f7
sw x3, 0(x2) # store 0xb5484fba74c1b5f7 in memory
flw f31, 0(x2) # load 0xb5484fba74c1b5f7 from memory into f31
la x27, scratch # base address
addi x27, x27, -870 # sub immediate from rs1 to counter offset
fsw f31, 870(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x18, 0x0a709f71ab57ad4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6689e38252d775f1 # load x3 with value 0x6689e38252d775f1
sw x3, 0(x2) # store 0x6689e38252d775f1 in memory
flw f21, 0(x2) # load 0x6689e38252d775f1 from memory into f21
la x28, scratch # base address
addi x28, x28, -1833 # sub immediate from rs1 to counter offset
fsw f21, 1833(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x3ae14fa86c8a59c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x5af2b4bede895f69 # load x3 with value 0x5af2b4bede895f69
sw x3, 0(x2) # store 0x5af2b4bede895f69 in memory
flw f13, 0(x2) # load 0x5af2b4bede895f69 from memory into f13
la x29, scratch # base address
addi x29, x29, -779 # sub immediate from rs1 to counter offset
fsw f13, 779(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x0eaa5f7c2662e6ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x71cc6c09b1a74fad # load x3 with value 0x71cc6c09b1a74fad
sw x3, 0(x2) # store 0x71cc6c09b1a74fad in memory
flw f24, 0(x2) # load 0x71cc6c09b1a74fad from memory into f24
la x30, scratch # base address
addi x30, x30, -1722 # sub immediate from rs1 to counter offset
fsw f24, 1722(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0x8546ce6d1aaf9b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80d976a7b9e7e9a5 # load x3 with value 0x80d976a7b9e7e9a5
sw x3, 0(x2) # store 0x80d976a7b9e7e9a5 in memory
flw f5, 0(x2) # load 0x80d976a7b9e7e9a5 from memory into f5
la x31, scratch # base address
addi x31, x31, -413 # sub immediate from rs1 to counter offset
fsw f5, 413(x31) # perform operation

# Testcase cp_imm_zero
li x13, 0x070fe04e12605963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xe78204d159077741 # load x3 with value 0xe78204d159077741
sw x3, 0(x2) # store 0xe78204d159077741 in memory
flw f24, 0(x2) # load 0xe78204d159077741 from memory into f24
la x16, scratch # base address
addi x16, x16, 0 # sub immediate from rs1 to counter offset
fsw f24, 0(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x30, 0x0d528b2ed8f19e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f25, 0(x2) # load 0x00000000 from memory into f25
la x29, scratch # base address
addi x29, x29, 1214 # sub immediate from rs1 to counter offset
fsw f25, -1214(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000000)
li x29, 0x09f5d6530503d014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f21, 0(x2) # load 0x80000000 from memory into f21
la x5, scratch # base address
addi x5, x5, 1227 # sub immediate from rs1 to counter offset
fsw f21, -1227(x5) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
li x29, 0x7813f13a89618ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f31, 0(x2) # load 0x3f800000 from memory into f31
la x16, scratch # base address
addi x16, x16, -1455 # sub immediate from rs1 to counter offset
fsw f31, 1455(x16) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbf800000)
li x11, 0xa67e3150043cab62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f25, 0(x2) # load 0xbf800000 from memory into f25
la x12, scratch # base address
addi x12, x12, -81 # sub immediate from rs1 to counter offset
fsw f25, 81(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3fc00000)
li x3, 0xbb4852328239e7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f1, 0(x2) # load 0x3fc00000 from memory into f1
la x20, scratch # base address
addi x20, x20, -2042 # sub immediate from rs1 to counter offset
fsw f1, 2042(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbfc00000)
li x18, 0xd3fc4a63820304db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f11, 0(x2) # load 0xbfc00000 from memory into f11
la x4, scratch # base address
addi x4, x4, -1285 # sub immediate from rs1 to counter offset
fsw f11, 1285(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x40000000)
li x31, 0x0991d5b9cce83e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f25, 0(x2) # load 0x40000000 from memory into f25
la x4, scratch # base address
addi x4, x4, 1063 # sub immediate from rs1 to counter offset
fsw f25, -1063(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0000000)
li x13, 0x19189a19ad650e94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f15, 0(x2) # load 0xc0000000 from memory into f15
la x26, scratch # base address
addi x26, x26, -1603 # sub immediate from rs1 to counter offset
fsw f15, 1603(x26) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800000)
li x16, 0xff235d8427744767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f31, 0(x2) # load 0x00800000 from memory into f31
la x29, scratch # base address
addi x29, x29, -129 # sub immediate from rs1 to counter offset
fsw f31, 129(x29) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80800000)
li x4, 0x01e61c17a29b686d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f26, 0(x2) # load 0x80800000 from memory into f26
la x18, scratch # base address
addi x18, x18, 116 # sub immediate from rs1 to counter offset
fsw f26, -116(x18) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f7fffff)
li x16, 0xe9693d28d538b4d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f29, 0(x2) # load 0x7f7fffff from memory into f29
la x1, scratch # base address
addi x1, x1, -255 # sub immediate from rs1 to counter offset
fsw f29, 255(x1) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff7fffff)
li x24, 0xa3982d447d6cb63b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f6, 0(x2) # load 0xff7fffff from memory into f6
la x19, scratch # base address
addi x19, x19, 1563 # sub immediate from rs1 to counter offset
fsw f6, -1563(x19) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffff)
li x7, 0xd1b09b593828709b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f16, 0(x2) # load 0x007fffff from memory into f16
la x11, scratch # base address
addi x11, x11, -1824 # sub immediate from rs1 to counter offset
fsw f16, 1824(x11) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x807fffff)
li x1, 0x2d1e0089b782ae81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f27, 0(x2) # load 0x807fffff from memory into f27
la x13, scratch # base address
addi x13, x13, -719 # sub immediate from rs1 to counter offset
fsw f27, 719(x13) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400000)
li x29, 0xc702efb8cc9e8d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f27, 0(x2) # load 0x00400000 from memory into f27
la x21, scratch # base address
addi x21, x21, 745 # sub immediate from rs1 to counter offset
fsw f27, -745(x21) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80400000)
li x8, 0x21fc10dd326068ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f26, 0(x2) # load 0x80400000 from memory into f26
la x15, scratch # base address
addi x15, x15, -1877 # sub immediate from rs1 to counter offset
fsw f26, 1877(x15) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x27, 0xc59f08cf851dd2af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f1, 0(x2) # load 0x00000001 from memory into f1
la x4, scratch # base address
addi x4, x4, -1532 # sub immediate from rs1 to counter offset
fsw f1, 1532(x4) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x80000001)
li x27, 0xe435173cc0b09470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f17, 0(x2) # load 0x80000001 from memory into f17
la x10, scratch # base address
addi x10, x10, -786 # sub immediate from rs1 to counter offset
fsw f17, 786(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800000)
li x30, 0x7c0223a0c0171ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f14, 0(x2) # load 0x7f800000 from memory into f14
la x31, scratch # base address
addi x31, x31, -2 # sub immediate from rs1 to counter offset
fsw f14, 2(x31) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xff800000)
li x11, 0xbc076400c0ec321b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f3, 0(x2) # load 0xff800000 from memory into f3
la x10, scratch # base address
addi x10, x10, -1625 # sub immediate from rs1 to counter offset
fsw f3, 1625(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fc00000)
li x14, 0x8af7cd1b40f27bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f6, 0(x2) # load 0x7fc00000 from memory into f6
la x22, scratch # base address
addi x22, x22, -505 # sub immediate from rs1 to counter offset
fsw f6, 505(x22) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff)
li x27, 0x41a55577f7b94c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f2, 0(x2) # load 0x7fffffff from memory into f2
la x20, scratch # base address
addi x20, x20, 2017 # sub immediate from rs1 to counter offset
fsw f2, -2017(x20) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7f800001)
li x18, 0x589e255594303924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f19, 0(x2) # load 0x7f800001 from memory into f19
la x2, scratch # base address
addi x2, x2, 274 # sub immediate from rs1 to counter offset
fsw f19, -274(x2) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fbfffff)
li x4, 0xc374b1db5d7759ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f31, 0(x2) # load 0x7fbfffff from memory into f31
la x12, scratch # base address
addi x12, x12, 1087 # sub immediate from rs1 to counter offset
fsw f31, -1087(x12) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ef8654f)
li x26, 0x219c147e0b1a3f20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f29, 0(x2) # load 0x7ef8654f from memory into f29
la x10, scratch # base address
addi x10, x10, 1582 # sub immediate from rs1 to counter offset
fsw f29, -1582(x10) # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x813d9ab0)
li x2, 0x29c9a6147755fb02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f20, 0(x2) # load 0x813d9ab0 from memory into f20
la x21, scratch # base address
addi x21, x21, -2019 # sub immediate from rs1 to counter offset
fsw f20, 2019(x21) # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x11, 0x8dca518ed544ad08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1f4559cf9feacc6f # load x3 with value 0x1f4559cf9feacc6f
sw x3, 0(x2) # store 0x1f4559cf9feacc6f in memory
flw f0, 0(x2) # load 0x1f4559cf9feacc6f from memory into f0
la x5, scratch # base address
addi x5, x5, -720 # sub immediate from rs1 to counter offset
fsw f0, 720(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x14, 0x1d2b4e7976526db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x12ac3091287e2a9f # load x3 with value 0x12ac3091287e2a9f
sw x3, 0(x2) # store 0x12ac3091287e2a9f in memory
flw f1, 0(x2) # load 0x12ac3091287e2a9f from memory into f1
la x12, scratch # base address
addi x12, x12, -1869 # sub immediate from rs1 to counter offset
fsw f1, 1869(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x25, 0x84eaf5a98705d033 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x47312d81b71628ea # load x3 with value 0x47312d81b71628ea
sw x3, 0(x2) # store 0x47312d81b71628ea in memory
flw f2, 0(x2) # load 0x47312d81b71628ea from memory into f2
la x12, scratch # base address
addi x12, x12, 642 # sub immediate from rs1 to counter offset
fsw f2, -642(x12) # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x15, 0x38b0c4d40cc026f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xea9708d9bfd06c08 # load x3 with value 0xea9708d9bfd06c08
sw x3, 0(x2) # store 0xea9708d9bfd06c08 in memory
flw f3, 0(x2) # load 0xea9708d9bfd06c08 from memory into f3
la x23, scratch # base address
addi x23, x23, -979 # sub immediate from rs1 to counter offset
fsw f3, 979(x23) # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x3, 0x3a049e8b92a48996 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x26f993ad209e165d # load x3 with value 0x26f993ad209e165d
sw x3, 0(x2) # store 0x26f993ad209e165d in memory
flw f4, 0(x2) # load 0x26f993ad209e165d from memory into f4
la x7, scratch # base address
addi x7, x7, 161 # sub immediate from rs1 to counter offset
fsw f4, -161(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x17, 0xf1018ac07b8f5320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x4dc0aa96ca1a28f3 # load x3 with value 0x4dc0aa96ca1a28f3
sw x3, 0(x2) # store 0x4dc0aa96ca1a28f3 in memory
flw f5, 0(x2) # load 0x4dc0aa96ca1a28f3 from memory into f5
la x22, scratch # base address
addi x22, x22, 361 # sub immediate from rs1 to counter offset
fsw f5, -361(x22) # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x30, 0x10516f9e1f275495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x8d9aafadbd915544 # load x3 with value 0x8d9aafadbd915544
sw x3, 0(x2) # store 0x8d9aafadbd915544 in memory
flw f6, 0(x2) # load 0x8d9aafadbd915544 from memory into f6
la x14, scratch # base address
addi x14, x14, -1312 # sub immediate from rs1 to counter offset
fsw f6, 1312(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x5, 0x39de7121ef4ff1ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x76b9aacb0bc7014c # load x3 with value 0x76b9aacb0bc7014c
sw x3, 0(x2) # store 0x76b9aacb0bc7014c in memory
flw f7, 0(x2) # load 0x76b9aacb0bc7014c from memory into f7
la x31, scratch # base address
addi x31, x31, -226 # sub immediate from rs1 to counter offset
fsw f7, 226(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x19, 0x1e5bcd928ebe1e1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x228f4b70976e3286 # load x3 with value 0x228f4b70976e3286
sw x3, 0(x2) # store 0x228f4b70976e3286 in memory
flw f8, 0(x2) # load 0x228f4b70976e3286 from memory into f8
la x15, scratch # base address
addi x15, x15, -1455 # sub immediate from rs1 to counter offset
fsw f8, 1455(x15) # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x10, 0x16b1651fc7d91fac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x32a31dba8e0e84de # load x3 with value 0x32a31dba8e0e84de
sw x3, 0(x2) # store 0x32a31dba8e0e84de in memory
flw f9, 0(x2) # load 0x32a31dba8e0e84de from memory into f9
la x20, scratch # base address
addi x20, x20, 1405 # sub immediate from rs1 to counter offset
fsw f9, -1405(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x14, 0x7b0cf12cc85ef3c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xfe64a6806ddfec16 # load x3 with value 0xfe64a6806ddfec16
sw x3, 0(x2) # store 0xfe64a6806ddfec16 in memory
flw f10, 0(x2) # load 0xfe64a6806ddfec16 from memory into f10
la x2, scratch # base address
addi x2, x2, 2 # sub immediate from rs1 to counter offset
fsw f10, -2(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x20, 0xe3e80c1a9a9e0f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x25547d2eef9e7583 # load x3 with value 0x25547d2eef9e7583
sw x3, 0(x2) # store 0x25547d2eef9e7583 in memory
flw f11, 0(x2) # load 0x25547d2eef9e7583 from memory into f11
la x26, scratch # base address
addi x26, x26, -1939 # sub immediate from rs1 to counter offset
fsw f11, 1939(x26) # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x14, 0xf36bcbde26a208a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x773e249863ad435 # load x3 with value 0x773e249863ad435
sw x3, 0(x2) # store 0x773e249863ad435 in memory
flw f12, 0(x2) # load 0x773e249863ad435 from memory into f12
la x1, scratch # base address
addi x1, x1, 1304 # sub immediate from rs1 to counter offset
fsw f12, -1304(x1) # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x4, 0x5ce2814e5de96243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x1b73b4c2afb083f0 # load x3 with value 0x1b73b4c2afb083f0
sw x3, 0(x2) # store 0x1b73b4c2afb083f0 in memory
flw f13, 0(x2) # load 0x1b73b4c2afb083f0 from memory into f13
la x31, scratch # base address
addi x31, x31, -498 # sub immediate from rs1 to counter offset
fsw f13, 498(x31) # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x9, 0xe41f9700f2425e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6d13b5dcd5a26b66 # load x3 with value 0x6d13b5dcd5a26b66
sw x3, 0(x2) # store 0x6d13b5dcd5a26b66 in memory
flw f14, 0(x2) # load 0x6d13b5dcd5a26b66 from memory into f14
la x19, scratch # base address
addi x19, x19, 1254 # sub immediate from rs1 to counter offset
fsw f14, -1254(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x17, 0xbb3faafe8b09f91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x9cf43b195f0e7a2 # load x3 with value 0x9cf43b195f0e7a2
sw x3, 0(x2) # store 0x9cf43b195f0e7a2 in memory
flw f15, 0(x2) # load 0x9cf43b195f0e7a2 from memory into f15
la x14, scratch # base address
addi x14, x14, -581 # sub immediate from rs1 to counter offset
fsw f15, 581(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x4, 0xee99f35a91eb943c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbb4c8d0b7eeef738 # load x3 with value 0xbb4c8d0b7eeef738
sw x3, 0(x2) # store 0xbb4c8d0b7eeef738 in memory
flw f16, 0(x2) # load 0xbb4c8d0b7eeef738 from memory into f16
la x19, scratch # base address
addi x19, x19, 1722 # sub immediate from rs1 to counter offset
fsw f16, -1722(x19) # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x3, 0xf132c96fffceb39a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xabf1a12d393ed49d # load x3 with value 0xabf1a12d393ed49d
sw x3, 0(x2) # store 0xabf1a12d393ed49d in memory
flw f17, 0(x2) # load 0xabf1a12d393ed49d from memory into f17
la x9, scratch # base address
addi x9, x9, -564 # sub immediate from rs1 to counter offset
fsw f17, 564(x9) # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x28, 0x5f847aa0166cf14d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xeb7fe183d8fcc7a2 # load x3 with value 0xeb7fe183d8fcc7a2
sw x3, 0(x2) # store 0xeb7fe183d8fcc7a2 in memory
flw f18, 0(x2) # load 0xeb7fe183d8fcc7a2 from memory into f18
la x7, scratch # base address
addi x7, x7, 498 # sub immediate from rs1 to counter offset
fsw f18, -498(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x8, 0xe394666560804242 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7177db9efa228e03 # load x3 with value 0x7177db9efa228e03
sw x3, 0(x2) # store 0x7177db9efa228e03 in memory
flw f19, 0(x2) # load 0x7177db9efa228e03 from memory into f19
la x6, scratch # base address
addi x6, x6, -829 # sub immediate from rs1 to counter offset
fsw f19, 829(x6) # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x4, 0xf9eb66ec0dc4444e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x30ac9df02c7002ba # load x3 with value 0x30ac9df02c7002ba
sw x3, 0(x2) # store 0x30ac9df02c7002ba in memory
flw f20, 0(x2) # load 0x30ac9df02c7002ba from memory into f20
la x27, scratch # base address
addi x27, x27, -1419 # sub immediate from rs1 to counter offset
fsw f20, 1419(x27) # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x18, 0xdc78adc323e7938a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xdd120fadfb85b1c5 # load x3 with value 0xdd120fadfb85b1c5
sw x3, 0(x2) # store 0xdd120fadfb85b1c5 in memory
flw f21, 0(x2) # load 0xdd120fadfb85b1c5 from memory into f21
la x30, scratch # base address
addi x30, x30, -1487 # sub immediate from rs1 to counter offset
fsw f21, 1487(x30) # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x19, 0x6922ae9bd7f9474b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x32fe111b3daa8373 # load x3 with value 0x32fe111b3daa8373
sw x3, 0(x2) # store 0x32fe111b3daa8373 in memory
flw f22, 0(x2) # load 0x32fe111b3daa8373 from memory into f22
la x24, scratch # base address
addi x24, x24, 1879 # sub immediate from rs1 to counter offset
fsw f22, -1879(x24) # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x16, 0x9b4433e8ed3d4b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2dfebc2b14b0a951 # load x3 with value 0x2dfebc2b14b0a951
sw x3, 0(x2) # store 0x2dfebc2b14b0a951 in memory
flw f23, 0(x2) # load 0x2dfebc2b14b0a951 from memory into f23
la x5, scratch # base address
addi x5, x5, -1458 # sub immediate from rs1 to counter offset
fsw f23, 1458(x5) # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x10, 0x23b4d7be75be56a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7a6f53e75156fc10 # load x3 with value 0x7a6f53e75156fc10
sw x3, 0(x2) # store 0x7a6f53e75156fc10 in memory
flw f24, 0(x2) # load 0x7a6f53e75156fc10 from memory into f24
la x2, scratch # base address
addi x2, x2, 295 # sub immediate from rs1 to counter offset
fsw f24, -295(x2) # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x4, 0xbb557b2a2d8afba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x6b186e80494eb0a1 # load x3 with value 0x6b186e80494eb0a1
sw x3, 0(x2) # store 0x6b186e80494eb0a1 in memory
flw f25, 0(x2) # load 0x6b186e80494eb0a1 from memory into f25
la x7, scratch # base address
addi x7, x7, -1084 # sub immediate from rs1 to counter offset
fsw f25, 1084(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x19, 0x94b65944b8defd61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7bbde787ac306ac6 # load x3 with value 0x7bbde787ac306ac6
sw x3, 0(x2) # store 0x7bbde787ac306ac6 in memory
flw f26, 0(x2) # load 0x7bbde787ac306ac6 from memory into f26
la x7, scratch # base address
addi x7, x7, -1431 # sub immediate from rs1 to counter offset
fsw f26, 1431(x7) # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x29, 0x88344aa279eb85f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x2fce5dc9aafa8efc # load x3 with value 0x2fce5dc9aafa8efc
sw x3, 0(x2) # store 0x2fce5dc9aafa8efc in memory
flw f27, 0(x2) # load 0x2fce5dc9aafa8efc from memory into f27
la x28, scratch # base address
addi x28, x28, 460 # sub immediate from rs1 to counter offset
fsw f27, -460(x28) # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x18, 0x1cc563ac0b23e9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xb62548415f1a911 # load x3 with value 0xb62548415f1a911
sw x3, 0(x2) # store 0xb62548415f1a911 in memory
flw f28, 0(x2) # load 0xb62548415f1a911 from memory into f28
la x14, scratch # base address
addi x14, x14, 954 # sub immediate from rs1 to counter offset
fsw f28, -954(x14) # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x10, 0xc737b084b2caebbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x7a94090a95365ed # load x3 with value 0x7a94090a95365ed
sw x3, 0(x2) # store 0x7a94090a95365ed in memory
flw f29, 0(x2) # load 0x7a94090a95365ed from memory into f29
la x17, scratch # base address
addi x17, x17, -855 # sub immediate from rs1 to counter offset
fsw f29, 855(x17) # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x15, 0xbe19bdba27700d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0xbeb9d48bad83b05e # load x3 with value 0xbeb9d48bad83b05e
sw x3, 0(x2) # store 0xbeb9d48bad83b05e in memory
flw f30, 0(x2) # load 0xbeb9d48bad83b05e from memory into f30
la x20, scratch # base address
addi x20, x20, 1103 # sub immediate from rs1 to counter offset
fsw f30, -1103(x20) # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x31, 0xd659b13ac82d93ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address
li x3, 0x11c9ebc44d38c691 # load x3 with value 0x11c9ebc44d38c691
sw x3, 0(x2) # store 0x11c9ebc44d38c691 in memory
flw f31, 0(x2) # load 0x11c9ebc44d38c691 from memory into f31
la x5, scratch # base address
addi x5, x5, -1954 # sub immediate from rs1 to counter offset
fsw f31, 1954(x5) # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
