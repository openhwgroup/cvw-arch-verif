///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-flh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.089050
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
li x15, 0xe01321b70c486a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, -901 # sub immediate from rs1 to counter offset
li x30, 0x55c76d93cfba47a7 # load x3 with value 0x55c76d93cfba47a7
sw x30, 901(x1) # store 0x55c76d93cfba47a7 in memory
flh f15, 901(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x3, 0x59189a861e5d350b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, -1924 # sub immediate from rs1 to counter offset
li x1, 0x489eb5bdca879a71 # load x3 with value 0x489eb5bdca879a71
sw x1, 1924(x2) # store 0x489eb5bdca879a71 in memory
flh f3, 1924(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0xec7cdcf32f41aaeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 87 # sub immediate from rs1 to counter offset
li x1, 0x38acf80fd405ba1f # load x3 with value 0x38acf80fd405ba1f
sw x1, -87(x3) # store 0x38acf80fd405ba1f in memory
flh f27, -87(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x13, 0x336da4b9eab311b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -118 # sub immediate from rs1 to counter offset
li x1, 0x98ae4b55c84090ee # load x3 with value 0x98ae4b55c84090ee
sw x1, 118(x4) # store 0x98ae4b55c84090ee in memory
flh f13, 118(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x8aa40612f589d285 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 12 # sub immediate from rs1 to counter offset
li x1, 0xbaf7d414de3aa2e9 # load x3 with value 0xbaf7d414de3aa2e9
sw x1, -12(x5) # store 0xbaf7d414de3aa2e9 in memory
flh f14, -12(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x18, 0x7d91ec5f5ad18ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 299 # sub immediate from rs1 to counter offset
li x1, 0x3cd7f47fe9e6957e # load x3 with value 0x3cd7f47fe9e6957e
sw x1, -299(x6) # store 0x3cd7f47fe9e6957e in memory
flh f18, -299(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x31, 0xa7393979068f9e5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -14 # sub immediate from rs1 to counter offset
li x1, 0xa9553973eb5aba23 # load x3 with value 0xa9553973eb5aba23
sw x1, 14(x7) # store 0xa9553973eb5aba23 in memory
flh f31, 14(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x6914af13844f647c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -704 # sub immediate from rs1 to counter offset
li x1, 0xd6052bdd6368ffb7 # load x3 with value 0xd6052bdd6368ffb7
sw x1, 704(x8) # store 0xd6052bdd6368ffb7 in memory
flh f9, 704(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x3, 0xba9c8c7f1cf3d046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 337 # sub immediate from rs1 to counter offset
li x1, 0x7f678327fb2e7d62 # load x3 with value 0x7f678327fb2e7d62
sw x1, -337(x9) # store 0x7f678327fb2e7d62 in memory
flh f3, -337(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x28, 0x690f09bbd5a33008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, 56 # sub immediate from rs1 to counter offset
li x1, 0xdddec247e3628d3b # load x3 with value 0xdddec247e3628d3b
sw x1, -56(x10) # store 0xdddec247e3628d3b in memory
flh f28, -56(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x26, 0x3c4869c1f58b4640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, 305 # sub immediate from rs1 to counter offset
li x1, 0x7274d058ac12db0f # load x3 with value 0x7274d058ac12db0f
sw x1, -305(x11) # store 0x7274d058ac12db0f in memory
flh f26, -305(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x86c69302b2353aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 1547 # sub immediate from rs1 to counter offset
li x1, 0x1336bd96ab121d53 # load x3 with value 0x1336bd96ab121d53
sw x1, -1547(x12) # store 0x1336bd96ab121d53 in memory
flh f5, -1547(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x4135839d28299449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -623 # sub immediate from rs1 to counter offset
li x1, 0x2af09c43089d74da # load x3 with value 0x2af09c43089d74da
sw x1, 623(x13) # store 0x2af09c43089d74da in memory
flh f12, 623(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0x0b5e987d77cc0d60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -1285 # sub immediate from rs1 to counter offset
li x1, 0xc46f558624442bb1 # load x3 with value 0xc46f558624442bb1
sw x1, 1285(x14) # store 0xc46f558624442bb1 in memory
flh f6, 1285(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0x600163fcc14d139c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 1358 # sub immediate from rs1 to counter offset
li x1, 0x4baa0f8039cab2b4 # load x3 with value 0x4baa0f8039cab2b4
sw x1, -1358(x15) # store 0x4baa0f8039cab2b4 in memory
flh f26, -1358(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0xce5ba0a1bef49e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, 1902 # sub immediate from rs1 to counter offset
li x1, 0x668bc791a3727ff5 # load x3 with value 0x668bc791a3727ff5
sw x1, -1902(x16) # store 0x668bc791a3727ff5 in memory
flh f20, -1902(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0xa1d49277a821e8c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, -1084 # sub immediate from rs1 to counter offset
li x1, 0x45fb4f37e790a204 # load x3 with value 0x45fb4f37e790a204
sw x1, 1084(x17) # store 0x45fb4f37e790a204 in memory
flh f27, 1084(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0x73cdfa5facb40601 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, -868 # sub immediate from rs1 to counter offset
li x1, 0x926e2e62a5a617d4 # load x3 with value 0x926e2e62a5a617d4
sw x1, 868(x18) # store 0x926e2e62a5a617d4 in memory
flh f26, 868(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0xd4740dd38dd09bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 180 # sub immediate from rs1 to counter offset
li x1, 0xb8c5324af24de659 # load x3 with value 0xb8c5324af24de659
sw x1, -180(x19) # store 0xb8c5324af24de659 in memory
flh f21, -180(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x14, 0x1a57066213a4f73c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, -1519 # sub immediate from rs1 to counter offset
li x1, 0x61bc73b012d984c1 # load x3 with value 0x61bc73b012d984c1
sw x1, 1519(x20) # store 0x61bc73b012d984c1 in memory
flh f14, 1519(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0xd24b8e649d1ec62b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -474 # sub immediate from rs1 to counter offset
li x1, 0x9c96e0e7b2877354 # load x3 with value 0x9c96e0e7b2877354
sw x1, 474(x21) # store 0x9c96e0e7b2877354 in memory
flh f28, 474(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x15, 0xbe35dcda3413cac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, -650 # sub immediate from rs1 to counter offset
li x2, 0x56d311ad4074f5d7 # load x3 with value 0x56d311ad4074f5d7
sw x2, 650(x22) # store 0x56d311ad4074f5d7 in memory
flh f15, 650(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0x04c4623ae22e8cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, -610 # sub immediate from rs1 to counter offset
li x1, 0xcd65d3b360254f55 # load x3 with value 0xcd65d3b360254f55
sw x1, 610(x23) # store 0xcd65d3b360254f55 in memory
flh f13, 610(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x13, 0xb4fa4c2cd0f54949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, 473 # sub immediate from rs1 to counter offset
li x1, 0xd1482955bcbdd7c8 # load x3 with value 0xd1482955bcbdd7c8
sw x1, -473(x24) # store 0xd1482955bcbdd7c8 in memory
flh f13, -473(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0x540565b943c2cfdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -1567 # sub immediate from rs1 to counter offset
li x1, 0xee7d2f7a9d3eae42 # load x3 with value 0xee7d2f7a9d3eae42
sw x1, 1567(x25) # store 0xee7d2f7a9d3eae42 in memory
flh f6, 1567(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x3, 0xbf005e9c965e2e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, -1547 # sub immediate from rs1 to counter offset
li x1, 0xfccda45b32ed250 # load x3 with value 0xfccda45b32ed250
sw x1, 1547(x26) # store 0xfccda45b32ed250 in memory
flh f3, 1547(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x4, 0x9a2765e0053da4e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1650 # sub immediate from rs1 to counter offset
li x1, 0x665597b4fd0f6a6f # load x3 with value 0x665597b4fd0f6a6f
sw x1, 1650(x27) # store 0x665597b4fd0f6a6f in memory
flh f4, 1650(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x24, 0x3af6877a21fc4a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, -757 # sub immediate from rs1 to counter offset
li x1, 0x26a3540a82c07a56 # load x3 with value 0x26a3540a82c07a56
sw x1, 757(x28) # store 0x26a3540a82c07a56 in memory
flh f24, 757(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x7, 0x3626406adaff1da7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, 1403 # sub immediate from rs1 to counter offset
li x1, 0x5762fac88713a85d # load x3 with value 0x5762fac88713a85d
sw x1, -1403(x29) # store 0x5762fac88713a85d in memory
flh f7, -1403(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x15, 0x32917cbb404bb82b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 1731 # sub immediate from rs1 to counter offset
li x1, 0xe5f174c13dc093aa # load x3 with value 0xe5f174c13dc093aa
sw x1, -1731(x30) # store 0xe5f174c13dc093aa in memory
flh f15, -1731(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x7, 0xf35fe66f9bfb5989 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 393 # sub immediate from rs1 to counter offset
li x1, 0xb85861a1a8b8f707 # load x3 with value 0xb85861a1a8b8f707
sw x1, -393(x31) # store 0xb85861a1a8b8f707 in memory
flh f7, -393(x31) # perform operation

# Testcase cp_imm_zero
li x13, 0x4ec3cc9d3a094926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
li x1, 0xc8a0bc1565eaba6e # load x3 with value 0xc8a0bc1565eaba6e
sw x1, 0(x21) # store 0xc8a0bc1565eaba6e in memory
flh f13, 0(x21) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x3ad78a667e60b5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 1695 # sub immediate from rs1 to counter offset
li x1, 0xd8a9772895064bf4 # load x3 with value 0xd8a9772895064bf4
sw x1, -1695(x15) # store 0xd8a9772895064bf4 in memory
flh f0, -1695(x15) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x6dfe65b09015103e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 1173 # sub immediate from rs1 to counter offset
li x1, 0x6dfbafad16172bd7 # load x3 with value 0x6dfbafad16172bd7
sw x1, -1173(x31) # store 0x6dfbafad16172bd7 in memory
flh f1, -1173(x31) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x96e6c53c60ae7f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, -311 # sub immediate from rs1 to counter offset
li x1, 0x7ba5cbf20dfc5afb # load x3 with value 0x7ba5cbf20dfc5afb
sw x1, 311(x28) # store 0x7ba5cbf20dfc5afb in memory
flh f2, 311(x28) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xefee3b84f33ff7db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -312 # sub immediate from rs1 to counter offset
li x1, 0xbbc3826258219d02 # load x3 with value 0xbbc3826258219d02
sw x1, 312(x30) # store 0xbbc3826258219d02 in memory
flh f3, 312(x30) # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xaf02445474fa1613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -1560 # sub immediate from rs1 to counter offset
li x1, 0xc01c4b3843c6e69d # load x3 with value 0xc01c4b3843c6e69d
sw x1, 1560(x30) # store 0xc01c4b3843c6e69d in memory
flh f4, 1560(x30) # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x5d046814f9139190 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -976 # sub immediate from rs1 to counter offset
li x1, 0x40226a8e37ba2448 # load x3 with value 0x40226a8e37ba2448
sw x1, 976(x25) # store 0x40226a8e37ba2448 in memory
flh f5, 976(x25) # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x3c36ccb73784004c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 1759 # sub immediate from rs1 to counter offset
li x1, 0xc351da1a506a03e9 # load x3 with value 0xc351da1a506a03e9
sw x1, -1759(x30) # store 0xc351da1a506a03e9 in memory
flh f6, -1759(x30) # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x058d004e08fd36cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, 1698 # sub immediate from rs1 to counter offset
li x1, 0xa8fcabfd854a5e8 # load x3 with value 0xa8fcabfd854a5e8
sw x1, -1698(x23) # store 0xa8fcabfd854a5e8 in memory
flh f7, -1698(x23) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x225a8db15786d427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, 1035 # sub immediate from rs1 to counter offset
li x1, 0xdcb189e174b9fe12 # load x3 with value 0xdcb189e174b9fe12
sw x1, -1035(x11) # store 0xdcb189e174b9fe12 in memory
flh f8, -1035(x11) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x4478c217c295e806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, 2 # sub immediate from rs1 to counter offset
li x1, 0x26bbd7de574d9797 # load x3 with value 0x26bbd7de574d9797
sw x1, -2(x17) # store 0x26bbd7de574d9797 in memory
flh f9, -2(x17) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xb633cbd67626027a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, -667 # sub immediate from rs1 to counter offset
li x1, 0x725b3170e6127a17 # load x3 with value 0x725b3170e6127a17
sw x1, 667(x17) # store 0x725b3170e6127a17 in memory
flh f10, 667(x17) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xe405d34fb83b2815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, -57 # sub immediate from rs1 to counter offset
li x1, 0x4cc8ef4335376be7 # load x3 with value 0x4cc8ef4335376be7
sw x1, 57(x31) # store 0x4cc8ef4335376be7 in memory
flh f11, 57(x31) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xe35ff42fa41999b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 410 # sub immediate from rs1 to counter offset
li x1, 0xe628fe5a9d0199aa # load x3 with value 0xe628fe5a9d0199aa
sw x1, -410(x19) # store 0xe628fe5a9d0199aa in memory
flh f12, -410(x19) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x7cdbb672d0777f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -508 # sub immediate from rs1 to counter offset
li x1, 0x404ee7ee3d0f7279 # load x3 with value 0x404ee7ee3d0f7279
sw x1, 508(x7) # store 0x404ee7ee3d0f7279 in memory
flh f13, 508(x7) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xaf9e5afc6fca4602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -1677 # sub immediate from rs1 to counter offset
li x1, 0x5ed4dbacd5996692 # load x3 with value 0x5ed4dbacd5996692
sw x1, 1677(x14) # store 0x5ed4dbacd5996692 in memory
flh f14, 1677(x14) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x81249bf7d8154dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -270 # sub immediate from rs1 to counter offset
li x1, 0x73dbcbe5346bc65a # load x3 with value 0x73dbcbe5346bc65a
sw x1, 270(x14) # store 0x73dbcbe5346bc65a in memory
flh f15, 270(x14) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xb53e4ddeeaae9878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 563 # sub immediate from rs1 to counter offset
li x1, 0x53029b73d2a739f7 # load x3 with value 0x53029b73d2a739f7
sw x1, -563(x6) # store 0x53029b73d2a739f7 in memory
flh f16, -563(x6) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x83080608c3671c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -18 # sub immediate from rs1 to counter offset
li x1, 0xfa1fb59d6b961c33 # load x3 with value 0xfa1fb59d6b961c33
sw x1, 18(x25) # store 0xfa1fb59d6b961c33 in memory
flh f17, 18(x25) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x8c20d326b6ba3fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1230 # sub immediate from rs1 to counter offset
li x1, 0x757b50ebc1149627 # load x3 with value 0x757b50ebc1149627
sw x1, 1230(x3) # store 0x757b50ebc1149627 in memory
flh f18, 1230(x3) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x860058b5f15db4c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 1050 # sub immediate from rs1 to counter offset
li x1, 0x6654822671ab3def # load x3 with value 0x6654822671ab3def
sw x1, -1050(x26) # store 0x6654822671ab3def in memory
flh f19, -1050(x26) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x285a342165167ede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -2024 # sub immediate from rs1 to counter offset
li x1, 0x8e4d7eb3ed4ec07c # load x3 with value 0x8e4d7eb3ed4ec07c
sw x1, 2024(x14) # store 0x8e4d7eb3ed4ec07c in memory
flh f20, 2024(x14) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x33ec189aae0e9e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -1176 # sub immediate from rs1 to counter offset
li x1, 0xbc3088220eb85094 # load x3 with value 0xbc3088220eb85094
sw x1, 1176(x30) # store 0xbc3088220eb85094 in memory
flh f21, 1176(x30) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x7e0314dc8abb2360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1327 # sub immediate from rs1 to counter offset
li x1, 0xa7c94fb1dab6bc7c # load x3 with value 0xa7c94fb1dab6bc7c
sw x1, 1327(x3) # store 0xa7c94fb1dab6bc7c in memory
flh f22, 1327(x3) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x490649525e9302a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, 1680 # sub immediate from rs1 to counter offset
li x1, 0xe3afea78ed26345 # load x3 with value 0xe3afea78ed26345
sw x1, -1680(x23) # store 0xe3afea78ed26345 in memory
flh f23, -1680(x23) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x65e7163d8d77f549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -12 # sub immediate from rs1 to counter offset
li x1, 0xa3e268118d1ae5b9 # load x3 with value 0xa3e268118d1ae5b9
sw x1, 12(x30) # store 0xa3e268118d1ae5b9 in memory
flh f24, 12(x30) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xf5249327540da142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -956 # sub immediate from rs1 to counter offset
li x1, 0xbe29e2105d4b9e07 # load x3 with value 0xbe29e2105d4b9e07
sw x1, 956(x4) # store 0xbe29e2105d4b9e07 in memory
flh f25, 956(x4) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xdf27c96e346ad1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -1540 # sub immediate from rs1 to counter offset
li x1, 0xb3b5c9a9223e5848 # load x3 with value 0xb3b5c9a9223e5848
sw x1, 1540(x11) # store 0xb3b5c9a9223e5848 in memory
flh f26, 1540(x11) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x9f3c208fc7588ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, -791 # sub immediate from rs1 to counter offset
li x27, 0x29b54000091c5f88 # load x3 with value 0x29b54000091c5f88
sw x27, 791(x1) # store 0x29b54000091c5f88 in memory
flh f27, 791(x1) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x5ce6b66527b95f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -504 # sub immediate from rs1 to counter offset
li x1, 0x28d95be21dd932ac # load x3 with value 0x28d95be21dd932ac
sw x1, 504(x9) # store 0x28d95be21dd932ac in memory
flh f28, 504(x9) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x7ec945f0f5798603 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -611 # sub immediate from rs1 to counter offset
li x1, 0x993bb7ae90497018 # load x3 with value 0x993bb7ae90497018
sw x1, 611(x3) # store 0x993bb7ae90497018 in memory
flh f29, 611(x3) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x5040368c9758aabe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 73 # sub immediate from rs1 to counter offset
li x1, 0xd9374383d502c266 # load x3 with value 0xd9374383d502c266
sw x1, -73(x12) # store 0xd9374383d502c266 in memory
flh f30, -73(x12) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd05459838108d1df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 80 # sub immediate from rs1 to counter offset
li x1, 0x7b36f75b116bc1c0 # load x3 with value 0x7b36f75b116bc1c0
sw x1, -80(x28) # store 0x7b36f75b116bc1c0 in memory
flh f31, -80(x28) # perform operation

# Testcase f_mem_hazard (no dependency)
la x1, scratch
flh f2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
