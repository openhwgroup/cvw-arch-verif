///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-ld.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.481588
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x7693122b0cce9113 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc805e7c0aa5c1bcb # initialize rs2
la x8, scratch # base address 
addi x8, x8, -226 # sub immediate from rs1 to counter offset
sd x16, 226 (x8) # store value to put something in memory
ld x0, 226(x8) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x027648a92cec7345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x29b94399dd8d9b60 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1733 # sub immediate from rs1 to counter offset
sd x12, 1733 (x9) # store value to put something in memory
ld x1, 1733(x9) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xbc1b40704be7113b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8272cff709298f0f # initialize rs2
la x9, scratch # base address 
addi x9, x9, -74 # sub immediate from rs1 to counter offset
sd x3, 74 (x9) # store value to put something in memory
ld x2, 74(x9) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x31b429e8ce6d8e4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfdb673901dfae923 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 425 # sub immediate from rs1 to counter offset
sd x11, -425 (x25) # store value to put something in memory
ld x3, -425(x25) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x5608125c51345cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf077e5fb9ee96021 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1453 # sub immediate from rs1 to counter offset
sd x10, 1453 (x13) # store value to put something in memory
ld x4, 1453(x13) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x6cebe4b4c1526ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x18ece3877f32d739 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 670 # sub immediate from rs1 to counter offset
sd x3, -670 (x28) # store value to put something in memory
ld x5, -670(x28) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xe5a579173d7e832c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x3706a68f434071c5 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1779 # sub immediate from rs1 to counter offset
sd x30, -1779 (x16) # store value to put something in memory
ld x6, -1779(x16) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x3bc7af91361f8c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x2c9ecd36a9903970 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1841 # sub immediate from rs1 to counter offset
sd x24, -1841 (x5) # store value to put something in memory
ld x7, -1841(x5) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc1f9c8124bf4f233 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8b40e5c4f45ccc66 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1417 # sub immediate from rs1 to counter offset
sd x21, -1417 (x24) # store value to put something in memory
ld x8, -1417(x24) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x945f5c718f07d527 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4bcef73ad17d7b73 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1687 # sub immediate from rs1 to counter offset
sd x11, -1687 (x27) # store value to put something in memory
ld x9, -1687(x27) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xad253d283f786db9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbd87bdf6ae6b6570 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1493 # sub immediate from rs1 to counter offset
sd x7, -1493 (x26) # store value to put something in memory
ld x10, -1493(x26) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8134d221936c8bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x914e43da5d5225f4 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1402 # sub immediate from rs1 to counter offset
sd x18, 1402 (x28) # store value to put something in memory
ld x11, 1402(x28) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaf8fa697e7afb644 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0013cb79a33b64cf # initialize rs2
la x2, scratch # base address 
addi x2, x2, 626 # sub immediate from rs1 to counter offset
sd x14, -626 (x2) # store value to put something in memory
ld x12, -626(x2) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x0a187567fea4fd75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x1877c19965572077 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 645 # sub immediate from rs1 to counter offset
sd x20, -645 (x31) # store value to put something in memory
ld x13, -645(x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x38d005872fa50ab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb28fbc6128758756 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1946 # sub immediate from rs1 to counter offset
sd x31, -1946 (x19) # store value to put something in memory
ld x14, -1946(x19) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x5e799353c55058ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x89c0c82b51498abd # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1651 # sub immediate from rs1 to counter offset
sd x13, 1651 (x12) # store value to put something in memory
ld x15, 1651(x12) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x010524493e513a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8e82066a93a3eb74 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1688 # sub immediate from rs1 to counter offset
sd x10, 1688 (x2) # store value to put something in memory
ld x16, 1688(x2) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x1b53ce41823aacd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x131dcb512b514f82 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 730 # sub immediate from rs1 to counter offset
sd x18, -730 (x24) # store value to put something in memory
ld x17, -730(x24) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x6ccdc580b39636f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xca2e403465953cd8 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -796 # sub immediate from rs1 to counter offset
sd x14, 796 (x5) # store value to put something in memory
ld x18, 796(x5) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x477beb2ab78514ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x3d9fd3003316ed5d # initialize rs2
la x27, scratch # base address 
addi x27, x27, -2 # sub immediate from rs1 to counter offset
sd x24, 2 (x27) # store value to put something in memory
ld x19, 2(x27) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf04ad85b96164375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7e6f04db5e943794 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -500 # sub immediate from rs1 to counter offset
sd x18, 500 (x4) # store value to put something in memory
ld x20, 500(x4) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xb93f5f56f7b0c1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5a893b19bc40c3d9 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1275 # sub immediate from rs1 to counter offset
sd x2, -1275 (x30) # store value to put something in memory
ld x21, -1275(x30) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1188c1d906b1a88e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2030b9a41bd5ce0b # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2044 # sub immediate from rs1 to counter offset
sd x25, -2044 (x1) # store value to put something in memory
ld x22, -2044(x1) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7e19e14cef31ca07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0724bded78b22be8 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 900 # sub immediate from rs1 to counter offset
sd x3, -900 (x5) # store value to put something in memory
ld x23, -900(x5) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0c5171e71dd9c637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd20f852b9ccddc83 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1653 # sub immediate from rs1 to counter offset
sd x3, 1653 (x18) # store value to put something in memory
ld x24, 1653(x18) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x526bbd29c772dd68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4d5a8eef5c477fbd # initialize rs2
la x30, scratch # base address 
addi x30, x30, -162 # sub immediate from rs1 to counter offset
sd x10, 162 (x30) # store value to put something in memory
ld x25, 162(x30) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xc9bcf6f7a0ddd680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x71f49e75c4180e13 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 145 # sub immediate from rs1 to counter offset
sd x5, -145 (x31) # store value to put something in memory
ld x26, -145(x31) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5d8d5e9b4f08706e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x78ddc1ae47a0a19e # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1437 # sub immediate from rs1 to counter offset
sd x12, 1437 (x16) # store value to put something in memory
ld x27, 1437(x16) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe13a10c460d03ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x769aeab10128d198 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 715 # sub immediate from rs1 to counter offset
sd x3, -715 (x7) # store value to put something in memory
ld x28, -715(x7) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xf70cdb9df9051f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x73d2b089550e61b0 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 699 # sub immediate from rs1 to counter offset
sd x29, -699 (x18) # store value to put something in memory
ld x29, -699(x18) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x54f30491fdd311ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1e873b35c71dafc6 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1931 # sub immediate from rs1 to counter offset
sd x28, -1931 (x17) # store value to put something in memory
ld x30, -1931(x17) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xcfc1187b29bd5ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x161bb93ddfb17cec # initialize rs2
la x16, scratch # base address 
addi x16, x16, 216 # sub immediate from rs1 to counter offset
sd x11, -216 (x16) # store value to put something in memory
ld x31, -216(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x19, 0x13994ee50d874ef7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1dd0bc47f2d17eef # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1098 # sub immediate from rs1 to counter offset
sd x14, -1098 (x1) # store value to put something in memory
ld x19, -1098(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0x4e03c862bb9c1ec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x66c28ea8f59106f7 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -128 # sub immediate from rs1 to counter offset
sd x20, 128 (x2) # store value to put something in memory
ld x10, 128(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0x825280c8a21a1b5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x9aaf6332a0fe0d19 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 582 # sub immediate from rs1 to counter offset
sd x19, -582 (x3) # store value to put something in memory
ld x27, -582(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x27, 0x03e7df1c36dbc680 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x20fdc828517cc1bd # initialize rs2
la x4, scratch # base address 
addi x4, x4, 376 # sub immediate from rs1 to counter offset
sd x18, -376 (x4) # store value to put something in memory
ld x27, -376(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x18, 0xc3badc9489b5b3c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7d68808bcb447c02 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1149 # sub immediate from rs1 to counter offset
sd x7, 1149 (x5) # store value to put something in memory
ld x18, 1149(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x31, 0x4e605a2bcb0f6b7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc4489f6e45bd423e # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1465 # sub immediate from rs1 to counter offset
sd x16, -1465 (x6) # store value to put something in memory
ld x31, -1465(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x30, 0x9282d9431cb50e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb5c5b7bb7de41948 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -198 # sub immediate from rs1 to counter offset
sd x12, 198 (x7) # store value to put something in memory
ld x30, 198(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x25bcb9926100089a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaa3f8ae6470e0a0f # initialize rs2
la x8, scratch # base address 
addi x8, x8, -242 # sub immediate from rs1 to counter offset
sd x27, 242 (x8) # store value to put something in memory
ld x28, 242(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0x1ab6af251de75496 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3f5eebcbe8584681 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1608 # sub immediate from rs1 to counter offset
sd x28, -1608 (x9) # store value to put something in memory
ld x25, -1608(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0x17a25acd306ccdd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5a3987e60a55181d # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1101 # sub immediate from rs1 to counter offset
sd x25, -1101 (x10) # store value to put something in memory
ld x16, -1101(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xc6cbf5a6d392a270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdd435fd1bb77ea62 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 338 # sub immediate from rs1 to counter offset
sd x15, -338 (x11) # store value to put something in memory
ld x16, -338(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0x73acb7da5ffe150d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa22e30b91539161e # initialize rs2
la x12, scratch # base address 
addi x12, x12, 961 # sub immediate from rs1 to counter offset
sd x10, -961 (x12) # store value to put something in memory
ld x7, -961(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x18, 0xb314ce13b1305b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xc5477b6844e620e0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 453 # sub immediate from rs1 to counter offset
sd x6, -453 (x13) # store value to put something in memory
ld x18, -453(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0x1940d4240e5bff5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x35c68e1221caae05 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1198 # sub immediate from rs1 to counter offset
sd x18, -1198 (x14) # store value to put something in memory
ld x6, -1198(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x19, 0xd70ef751fc044d44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x89032783e6c6cfae # initialize rs2
la x15, scratch # base address 
addi x15, x15, 128 # sub immediate from rs1 to counter offset
sd x1, -128 (x15) # store value to put something in memory
ld x19, -128(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x3, 0xa2effb1b5852e799 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x61a0f3579a7cda40 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1409 # sub immediate from rs1 to counter offset
sd x8, -1409 (x16) # store value to put something in memory
ld x3, -1409(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x8, 0x573b2dd469975fdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x68a48efc24ab36d2 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1641 # sub immediate from rs1 to counter offset
sd x6, 1641 (x17) # store value to put something in memory
ld x8, 1641(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0x4a37b7f2e2d37ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc5b18c83b5c41144 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 524 # sub immediate from rs1 to counter offset
sd x16, -524 (x18) # store value to put something in memory
ld x26, -524(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0x22b5ceaba06265e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x67c7e3594ddb9b23 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1987 # sub immediate from rs1 to counter offset
sd x16, -1987 (x19) # store value to put something in memory
ld x21, -1987(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x28, 0x470251ebdf71e9cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xb2a1d71281dfef1f # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1348 # sub immediate from rs1 to counter offset
sd x25, -1348 (x20) # store value to put something in memory
ld x28, -1348(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0x3f0b4cbd4ede6ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd7ef73b528b4a60a # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1635 # sub immediate from rs1 to counter offset
sd x19, -1635 (x21) # store value to put something in memory
ld x9, -1635(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x23, 0x9e73e533dcbad9de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb9e9bc389ee37bc3 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 400 # sub immediate from rs1 to counter offset
sd x5, -400 (x22) # store value to put something in memory
ld x23, -400(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x26, 0x8305dfcf7532fb6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa9d9a0205128d65c # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1340 # sub immediate from rs1 to counter offset
sd x22, -1340 (x23) # store value to put something in memory
ld x26, -1340(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x31, 0x850d00b126efc1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xaa340989a1415eb4 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -979 # sub immediate from rs1 to counter offset
sd x17, 979 (x24) # store value to put something in memory
ld x31, 979(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x6f76494057b5c925 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1fa2e279dc143a3a # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1131 # sub immediate from rs1 to counter offset
sd x23, 1131 (x25) # store value to put something in memory
ld x29, 1131(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x5, 0x6e43baa4a292fb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa577a378eb485a06 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -451 # sub immediate from rs1 to counter offset
sd x8, 451 (x26) # store value to put something in memory
ld x5, 451(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x16, 0x8088fadb40576d80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xa8a1bd96ddb9f48e # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1543 # sub immediate from rs1 to counter offset
sd x23, 1543 (x27) # store value to put something in memory
ld x16, 1543(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0x8e7148b3959ea686 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9a4eb3abd6c74aff # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1731 # sub immediate from rs1 to counter offset
sd x24, -1731 (x28) # store value to put something in memory
ld x6, -1731(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x68ed6195d89c6bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x5689a50b132dba56 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 846 # sub immediate from rs1 to counter offset
sd x3, -846 (x29) # store value to put something in memory
ld x24, -846(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x693b4c2c5ea67a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xde4175953506c320 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 95 # sub immediate from rs1 to counter offset
sd x26, -95 (x30) # store value to put something in memory
ld x27, -95(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0x650805fe4637986f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xc334253a23f594fc # initialize rs2
la x31, scratch # base address 
addi x31, x31, -64 # sub immediate from rs1 to counter offset
sd x1, 64 (x31) # store value to put something in memory
ld x20, 64(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0xcb8c0f6de27935bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbec6c2ff57147b18 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x30) # store value to put something in memory
ld x26, 0(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x25, 0x0375a74ec74ffe70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sd x21, 0 (x7) # store value to put something in memory
ld x25, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x34c59c74f4216b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1 # sub immediate from rs1 to counter offset
sd x11, -1 (x24) # store value to put something in memory
ld x26, -1(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0x68456af3f6a33a94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xba50e52f7a036957 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x24) # store value to put something in memory
ld x12, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x406993ca03f4ebf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1 # sub immediate from rs1 to counter offset
sd x21, 1 (x3) # store value to put something in memory
ld x23, 1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x17, 0x1989422cbc874d1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000001 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sd x10, -1 (x22) # store value to put something in memory
ld x17, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0x6943e932b784531a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6d8e7151b5cc6e1c # initialize rs2
la x23, scratch # base address 
addi x23, x23, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x23) # store value to put something in memory
ld x20, 0(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xe1a929b26690e60a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -2 # sub immediate from rs1 to counter offset
sd x6, 2 (x28) # store value to put something in memory
ld x12, 2(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0x4337f04ef2a0366a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x3) # store value to put something in memory
ld x17, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x6, 0x3c5110518a9cea43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x579059f9c26eb365 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x12) # store value to put something in memory
ld x6, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x4, 0x160f200e71d69621 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x8000000000000000 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x31, 0 (x20) # store value to put something in memory
ld x4, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x1, 0x6dd21fc0a3871eb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000000 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1 # sub immediate from rs1 to counter offset
sd x10, -1 (x29) # store value to put something in memory
ld x1, -1(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x27, 0x56812a5bb6e37632 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xaea0be924ca4dc33 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x20) # store value to put something in memory
ld x27, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x28, 0xa8cc2c23034dd2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000001 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1 # sub immediate from rs1 to counter offset
sd x4, 1 (x29) # store value to put something in memory
ld x28, 1(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x21, 0xb933c2decb4cb7a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1 # sub immediate from rs1 to counter offset
sd x11, -1 (x18) # store value to put something in memory
ld x21, -1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x3, 0x613bebb33efa33c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x880e2192c8c16af1 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x18) # store value to put something in memory
ld x3, 0(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x11, 0x3fecb3e5fa059fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x2) # store value to put something in memory
ld x11, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x12, 0xbb7bb1642ecee120 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x22) # store value to put something in memory
ld x12, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x17, 0x0ad383745fa31592 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x22710bc8fcf92712 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x10) # store value to put something in memory
ld x17, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x6, 0xc9811fa86128d99d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7ffffffffffffffe # initialize rs2
la x15, scratch # base address 
addi x15, x15, 2 # sub immediate from rs1 to counter offset
sd x23, -2 (x15) # store value to put something in memory
ld x6, -2(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x7, 0x3c59cb23b746e150 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1 # sub immediate from rs1 to counter offset
sd x31, -1 (x18) # store value to put something in memory
ld x7, -1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x10, 0x42fea032da4f0421 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4744b73f27e621d3 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x25) # store value to put something in memory
ld x10, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x10, 0x3b25765c97d04b44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sd x25, -1 (x9) # store value to put something in memory
ld x10, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x14, 0x3f61575c2d48d356 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x4, -1 (x26) # store value to put something in memory
ld x14, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0x4dc28ff67326681f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x81e139961964be67 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x16) # store value to put something in memory
ld x17, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x16, 0x7888a42fbee7da46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xfffffffffffffffe # initialize rs2
la x31, scratch # base address 
addi x31, x31, 2 # sub immediate from rs1 to counter offset
sd x2, -2 (x31) # store value to put something in memory
ld x16, -2(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x17, 0xea4cafda00af9bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sd x5, -1 (x10) # store value to put something in memory
ld x17, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x23, 0x94e90de8f3c25b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9087f58b22dd78d1 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x4) # store value to put something in memory
ld x23, 0(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x14, 0xe7cd3cfdf0f3caa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1783 # sub immediate from rs1 to counter offset
sd x6, 1783 (x29) # store value to put something in memory
ld x14, 1783(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x9, 0x6ef5274404fca3ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x5bbc887763ae86f7 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1 # sub immediate from rs1 to counter offset
sd x4, -1 (x25) # store value to put something in memory
ld x9, -1(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x5ab9f83666a011e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5b2a89c7444bea9d # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x17) # store value to put something in memory
ld x27, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x16, 0x6c698aa9be467ed5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1366 # sub immediate from rs1 to counter offset
sd x20, -1366 (x2) # store value to put something in memory
ld x16, -1366(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xeae6ed94a631e6c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1 # sub immediate from rs1 to counter offset
sd x16, -1 (x6) # store value to put something in memory
ld x9, -1(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x24, 0xfc0e9f7187675f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x45fe77333dae19ac # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x19) # store value to put something in memory
ld x24, 0(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x24, 0x51a8034d0d26816a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1365 # sub immediate from rs1 to counter offset
sd x29, 1365 (x5) # store value to put something in memory
ld x24, 1365(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x6, 0xc6693d43f6a569a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1 # sub immediate from rs1 to counter offset
sd x17, -1 (x27) # store value to put something in memory
ld x6, -1(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x20, 0x224d445e34cabeb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4b9f5cae6f2c859b # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x17) # store value to put something in memory
ld x20, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0x215153a51c650163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1 # sub immediate from rs1 to counter offset
sd x18, -1 (x5) # store value to put something in memory
ld x8, -1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x27, 0x4003151317a1710c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1 # sub immediate from rs1 to counter offset
sd x15, -1 (x6) # store value to put something in memory
ld x27, -1(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x2572d2cfa9f3135d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x31d3972e2dd18d05 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x30) # store value to put something in memory
ld x7, 0(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x11, 0x2705d1e820435d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000fffffffe # initialize rs2
la x26, scratch # base address 
addi x26, x26, 2 # sub immediate from rs1 to counter offset
sd x23, -2 (x26) # store value to put something in memory
ld x11, -2(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0x2d236d96bed7d9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1 # sub immediate from rs1 to counter offset
sd x20, -1 (x19) # store value to put something in memory
ld x23, -1(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x19, 0xcf316fbd3165ad59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe82d02332c3b7a7e # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x20) # store value to put something in memory
ld x19, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x3, 0x548362e827c34d8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 0 # sub immediate from rs1 to counter offset
sd x11, 0 (x8) # store value to put something in memory
ld x3, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x17, 0xb60cf99cdd0a84d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000100000000 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1 # sub immediate from rs1 to counter offset
sd x28, -1 (x4) # store value to put something in memory
ld x17, -1(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x28, 0xa9b6660f7e8f9b78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3e22f0ba6a08b72c # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x18) # store value to put something in memory
ld x28, 0(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x31, 0xcd3333072312c5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1 # sub immediate from rs1 to counter offset
sd x16, 1 (x29) # store value to put something in memory
ld x31, 1(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x11, 0xb9edb8569b0b8826 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000100000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sd x25, -1 (x9) # store value to put something in memory
ld x11, -1(x9) # perform operation

# Testcase cp_imm_zero
li x25, 0x910808ff78de4a8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xb6eb3c0b621b1eee # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sd x19, 0 (x21) # store value to put something in memory
ld x25, 0(x21) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
ld x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
