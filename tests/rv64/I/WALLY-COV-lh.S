///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.482309
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd653cd2dc671f8ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xcba23427350bb88e # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1610 # sub immediate from rs1 to counter offset
sd x9, -1610 (x12) # store value to put something in memory
lh x0, -1610(x12) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x809cba504bef45f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x6cbb6063ce11739b # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1425 # sub immediate from rs1 to counter offset
sd x24, -1425 (x16) # store value to put something in memory
lh x1, -1425(x16) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x49e155e8fd712d07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3935f636e62f151e # initialize rs2
la x21, scratch # base address 
addi x21, x21, -309 # sub immediate from rs1 to counter offset
sd x29, 309 (x21) # store value to put something in memory
lh x2, 309(x21) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8fedc226faff7441 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x6df330ea437f35a1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1700 # sub immediate from rs1 to counter offset
sd x1, 1700 (x7) # store value to put something in memory
lh x3, 1700(x7) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x942029a2ceab38d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x14cc9d83191cc837 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1343 # sub immediate from rs1 to counter offset
sd x25, 1343 (x24) # store value to put something in memory
lh x4, 1343(x24) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xda57b2453d8a0520 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9d938d007cbca5ff # initialize rs2
la x29, scratch # base address 
addi x29, x29, 783 # sub immediate from rs1 to counter offset
sd x21, -783 (x29) # store value to put something in memory
lh x5, -783(x29) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x989379081ce6ea67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x02304c7fadc06c9c # initialize rs2
la x6, scratch # base address 
addi x6, x6, -414 # sub immediate from rs1 to counter offset
sd x16, 414 (x6) # store value to put something in memory
lh x6, 414(x6) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xa665d583494fbe30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x6008b90181229182 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1291 # sub immediate from rs1 to counter offset
sd x25, -1291 (x16) # store value to put something in memory
lh x7, -1291(x16) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x61f4f69ae41dc65e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x03031815d38253c3 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1274 # sub immediate from rs1 to counter offset
sd x10, -1274 (x13) # store value to put something in memory
lh x8, -1274(x13) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xf77d98f38c269be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcc3eab6bdd85bc00 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1687 # sub immediate from rs1 to counter offset
sd x8, -1687 (x21) # store value to put something in memory
lh x9, -1687(x21) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x9b071ffb837db206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x758cb3296ce97735 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 504 # sub immediate from rs1 to counter offset
sd x29, -504 (x8) # store value to put something in memory
lh x10, -504(x8) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x435e49cf9f2a4156 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x8546e0c7e7db29da # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1290 # sub immediate from rs1 to counter offset
sd x7, -1290 (x19) # store value to put something in memory
lh x11, -1290(x19) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7120e1535bbb7d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd4d9811d2575f665 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1690 # sub immediate from rs1 to counter offset
sd x28, 1690 (x4) # store value to put something in memory
lh x12, 1690(x4) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb6a7ab238b4a1dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4f934ab84095d2b6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -2001 # sub immediate from rs1 to counter offset
sd x26, 2001 (x14) # store value to put something in memory
lh x13, 2001(x14) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x94f7a6cd956b5c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf995a7169adcdf90 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1690 # sub immediate from rs1 to counter offset
sd x22, -1690 (x23) # store value to put something in memory
lh x14, -1690(x23) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0bab8189e7e1d1de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbd40540f225a6e93 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -338 # sub immediate from rs1 to counter offset
sd x7, 338 (x28) # store value to put something in memory
lh x15, 338(x28) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xf2e04d6c551b4823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4a1e6705d45484df # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1309 # sub immediate from rs1 to counter offset
sd x2, -1309 (x30) # store value to put something in memory
lh x16, -1309(x30) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xb4c93284a81320e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6595dcac46bb3032 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1641 # sub immediate from rs1 to counter offset
sd x22, 1641 (x19) # store value to put something in memory
lh x17, 1641(x19) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x03d6220660c6c09b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x3c60a5b8b7b92664 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1329 # sub immediate from rs1 to counter offset
sd x9, 1329 (x21) # store value to put something in memory
lh x18, 1329(x21) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xa6b51955f43dd449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5ab4fbd6e90ae52c # initialize rs2
la x8, scratch # base address 
addi x8, x8, 419 # sub immediate from rs1 to counter offset
sd x12, -419 (x8) # store value to put something in memory
lh x19, -419(x8) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd178aa2080b40a3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x749d9373bf0244e4 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1457 # sub immediate from rs1 to counter offset
sd x2, 1457 (x18) # store value to put something in memory
lh x20, 1457(x18) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x36ebd97f1601cdb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd7966b9db5622be2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1023 # sub immediate from rs1 to counter offset
sd x4, -1023 (x10) # store value to put something in memory
lh x21, -1023(x10) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xca2f3929a9f1cf82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfcb49a21e549745c # initialize rs2
la x26, scratch # base address 
addi x26, x26, -999 # sub immediate from rs1 to counter offset
sd x12, 999 (x26) # store value to put something in memory
lh x22, 999(x26) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xacd6b4736d003137 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x80644c6efd2c4754 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1839 # sub immediate from rs1 to counter offset
sd x10, 1839 (x24) # store value to put something in memory
lh x23, 1839(x24) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x19899019b7905ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf130e458c7d63658 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1547 # sub immediate from rs1 to counter offset
sd x13, -1547 (x15) # store value to put something in memory
lh x24, -1547(x15) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3af360711ea6754f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe2146f8a3b2a9f76 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 921 # sub immediate from rs1 to counter offset
sd x20, -921 (x9) # store value to put something in memory
lh x25, -921(x9) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x640f2ca20edf001e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb9ee5d1b266165f7 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -767 # sub immediate from rs1 to counter offset
sd x29, 767 (x7) # store value to put something in memory
lh x26, 767(x7) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xd1cbce5f9cbe6b75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1d8f64e7ff0125dc # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1817 # sub immediate from rs1 to counter offset
sd x6, 1817 (x4) # store value to put something in memory
lh x27, 1817(x4) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x42609b72dc90e3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe6fde511f4b713bf # initialize rs2
la x10, scratch # base address 
addi x10, x10, -59 # sub immediate from rs1 to counter offset
sd x16, 59 (x10) # store value to put something in memory
lh x28, 59(x10) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xf563e702d0c6686f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x60bebe8f5b7283a4 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -324 # sub immediate from rs1 to counter offset
sd x8, 324 (x11) # store value to put something in memory
lh x29, 324(x11) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x24e1ca037a6cd15c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2547dc5675bc5e07 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -214 # sub immediate from rs1 to counter offset
sd x25, 214 (x13) # store value to put something in memory
lh x30, 214(x13) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xf0ad0d89eeb5f0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x76224deb6455b2ba # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1025 # sub immediate from rs1 to counter offset
sd x25, -1025 (x26) # store value to put something in memory
lh x31, -1025(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x18, 0xf74cc6bd6532da73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x83e99955bf18b2b5 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 673 # sub immediate from rs1 to counter offset
sd x20, -673 (x1) # store value to put something in memory
lh x18, -673(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x22, 0x7dbcef8914bcc0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x3cd1b17c1bcb9b16 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -161 # sub immediate from rs1 to counter offset
sd x8, 161 (x2) # store value to put something in memory
lh x22, 161(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0x3e309eeff4484f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x221379bce1f383ca # initialize rs2
la x3, scratch # base address 
addi x3, x3, 876 # sub immediate from rs1 to counter offset
sd x18, -876 (x3) # store value to put something in memory
lh x30, -876(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x12, 0xe6620e042a05f528 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdbed780b6930e298 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1499 # sub immediate from rs1 to counter offset
sd x17, 1499 (x4) # store value to put something in memory
lh x12, 1499(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x4, 0x333857b210c33fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc99ad9c556088de9 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -655 # sub immediate from rs1 to counter offset
sd x16, 655 (x5) # store value to put something in memory
lh x4, 655(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x28, 0x6cf10ea6ffbf7094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x972b06e50a5a5661 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1085 # sub immediate from rs1 to counter offset
sd x19, 1085 (x6) # store value to put something in memory
lh x28, 1085(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0x4dbec84d6099cb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x07663d23267b79c1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -477 # sub immediate from rs1 to counter offset
sd x13, 477 (x7) # store value to put something in memory
lh x16, 477(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0xff281c7caa6cdc34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa17f96ed9e78d6d2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 4 # sub immediate from rs1 to counter offset
sd x27, -4 (x8) # store value to put something in memory
lh x7, -4(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0x81f22b06c7bff259 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x05a85fed18e65bb2 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 6 # sub immediate from rs1 to counter offset
sd x1, -6 (x9) # store value to put something in memory
lh x13, -6(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x5, 0x8a64298fb58e7a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xef5b0d8b525f40c7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -230 # sub immediate from rs1 to counter offset
sd x4, 230 (x10) # store value to put something in memory
lh x5, 230(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x8b7e4c8255bf72d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8c62986b76c8d1ce # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1530 # sub immediate from rs1 to counter offset
sd x12, 1530 (x11) # store value to put something in memory
lh x27, 1530(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0xed09adcb1bea7c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3606ecdfd5b4bffd # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1869 # sub immediate from rs1 to counter offset
sd x14, -1869 (x12) # store value to put something in memory
lh x9, -1869(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0xfcb9a8b53e6c5216 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x249af2a03ce67881 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1392 # sub immediate from rs1 to counter offset
sd x5, 1392 (x13) # store value to put something in memory
lh x1, 1392(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x30, 0xd3b1bcec7a020c68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4d7b92b37af7d270 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -302 # sub immediate from rs1 to counter offset
sd x2, 302 (x14) # store value to put something in memory
lh x30, 302(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0xf9a349e7cfe708ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x35f2b65f67b9ee3a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1813 # sub immediate from rs1 to counter offset
sd x31, 1813 (x15) # store value to put something in memory
lh x14, 1813(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x861f52010fb23b0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x583af4253e14c1f7 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1731 # sub immediate from rs1 to counter offset
sd x17, -1731 (x16) # store value to put something in memory
lh x20, -1731(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x18, 0x80b6e0896dd50ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9207344636b10739 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1378 # sub immediate from rs1 to counter offset
sd x3, 1378 (x17) # store value to put something in memory
lh x18, 1378(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x13be7df9240ae255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x47ba0c3b5cc5c0e5 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1761 # sub immediate from rs1 to counter offset
sd x1, 1761 (x18) # store value to put something in memory
lh x22, 1761(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0xcd4f851dbc0fc4e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x55a97df11a338f22 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 837 # sub immediate from rs1 to counter offset
sd x23, -837 (x19) # store value to put something in memory
lh x21, -837(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x31, 0xf7ef024bcc9934bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x4b241fbcb9e517ff # initialize rs2
la x20, scratch # base address 
addi x20, x20, 516 # sub immediate from rs1 to counter offset
sd x24, -516 (x20) # store value to put something in memory
lh x31, -516(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x8, 0xf3cda70b68762ca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xfbc3509910f17e95 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 568 # sub immediate from rs1 to counter offset
sd x18, -568 (x21) # store value to put something in memory
lh x8, -568(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0x2de0bba4899afb61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa54cd2a8939d30b5 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -522 # sub immediate from rs1 to counter offset
sd x7, 522 (x22) # store value to put something in memory
lh x12, 522(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x20, 0xcc3d825d9d31e95e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbefc608a60465153 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1539 # sub immediate from rs1 to counter offset
sd x29, -1539 (x23) # store value to put something in memory
lh x20, -1539(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0x505fa8df3d42cfde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xceafd41f8b881c7c # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1901 # sub immediate from rs1 to counter offset
sd x27, -1901 (x24) # store value to put something in memory
lh x19, -1901(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x17, 0xc3fe5d95fb5903ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf2ff768e19e19fe5 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1873 # sub immediate from rs1 to counter offset
sd x23, 1873 (x25) # store value to put something in memory
lh x17, 1873(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0xed2f8a0c01ffa301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4ba75cbbc1ccf627 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -316 # sub immediate from rs1 to counter offset
sd x1, 316 (x26) # store value to put something in memory
lh x21, 316(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x20, 0x4514a7e474d84eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xdbb63030c4df79d5 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1292 # sub immediate from rs1 to counter offset
sd x12, 1292 (x27) # store value to put something in memory
lh x20, 1292(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0x6aa64b34c66cc44f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2f311dde674e9ac3 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1024 # sub immediate from rs1 to counter offset
sd x5, -1024 (x28) # store value to put something in memory
lh x31, -1024(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x23, 0x8313e0c91b53b1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5a209277db690e25 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1911 # sub immediate from rs1 to counter offset
sd x21, 1911 (x29) # store value to put something in memory
lh x23, 1911(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x2, 0x65e5a68aeb92bb25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbc4c1958aaf8f97c # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1437 # sub immediate from rs1 to counter offset
sd x28, 1437 (x30) # store value to put something in memory
lh x2, 1437(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x27, 0xc0323a5c9388540e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xd7f0702f5b2ce743 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1965 # sub immediate from rs1 to counter offset
sd x5, -1965 (x31) # store value to put something in memory
lh x27, -1965(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x19237f0c4ab0fe7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1656a6b5bd2539ce # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x1) # store value to put something in memory
lh x6, 0(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0x2cd0b0da0079731b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 0 # sub immediate from rs1 to counter offset
sd x25, 0 (x5) # store value to put something in memory
lh x20, 0(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x22, 0x20b218386d114a6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1 # sub immediate from rs1 to counter offset
sd x10, -1 (x15) # store value to put something in memory
lh x22, -1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0xecc07f45e843e01f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9d1c9c844b7fe5e7 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x6) # store value to put something in memory
lh x1, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x9b379c3d26e42cab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1 # sub immediate from rs1 to counter offset
sd x31, 1 (x27) # store value to put something in memory
lh x15, 1(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x0118fcf0455e881e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x15) # store value to put something in memory
lh x6, -1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xec65aeccdfc2cc6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc746b68e4a57f8a6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x12) # store value to put something in memory
lh x13, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x28, 0x7d13eb7c7dd036b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
sd x2, 2 (x8) # store value to put something in memory
lh x28, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0x6c26c6219f034960 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sd x29, -1 (x11) # store value to put something in memory
lh x15, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x20, 0x8ef0d77fa81c010f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0ca8ef0a1f8034f0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x9) # store value to put something in memory
lh x20, 0(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x13, 0x4c90f7ae24a56d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000008000 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sd x2, 0 (x6) # store value to put something in memory
lh x13, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x4, 0x5242efbb8c59cabe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000008000 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x29, -1 (x13) # store value to put something in memory
lh x4, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x15, 0x8298613ab5ad68c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x129a0f7da5f716af # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x24) # store value to put something in memory
lh x15, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x14, 0xac779c96acb38954 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000008001 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1 # sub immediate from rs1 to counter offset
sd x11, 1 (x19) # store value to put something in memory
lh x14, 1(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x24, 0xc1bf08841448e75e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000008001 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sd x3, -1 (x7) # store value to put something in memory
lh x24, -1(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x7, 0x16f7fd055cc5882d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2925b75fce6e5a2f # initialize rs2
la x4, scratch # base address 
addi x4, x4, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x4) # store value to put something in memory
lh x7, 0(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x26, 0xbe6f253f9e8bebec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000007fff # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sd x3, -1 (x2) # store value to put something in memory
lh x26, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x10, 0x0de6a698d58a5f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000007fff # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x11, -1 (x13) # store value to put something in memory
lh x10, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x7, 0xaa7bfca4ef454b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9daa71829684e296 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x31) # store value to put something in memory
lh x7, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x24, 0x98b44b9597f70a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000007ffe # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2 # sub immediate from rs1 to counter offset
sd x16, -2 (x6) # store value to put something in memory
lh x24, -2(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x15, 0x3e96c1778c1788e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000007ffe # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1 # sub immediate from rs1 to counter offset
sd x28, -1 (x21) # store value to put something in memory
lh x15, -1(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x7, 0xe52c11ff1268e634 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb41433c738983501 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x5) # store value to put something in memory
lh x7, 0(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x9, 0x8ae54eebe95ebe3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000000000ffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x26, -1 (x13) # store value to put something in memory
lh x9, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x22, 0x3f2985c8d89a3459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000000000ffff # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sd x17, -1 (x3) # store value to put something in memory
lh x22, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x18, 0x8dbe2f8b8cec4c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcfe8432d540c4dcd # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x30) # store value to put something in memory
lh x18, 0(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x7, 0xc7d771d4df6b46e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000000000fffe # initialize rs2
la x25, scratch # base address 
addi x25, x25, 2 # sub immediate from rs1 to counter offset
sd x13, -2 (x25) # store value to put something in memory
lh x7, -2(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x12, 0x9321decaa5b16432 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x000000000000fffe # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x28, -1 (x13) # store value to put something in memory
lh x12, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x25, 0xb6cc59375b5891a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xce45e8b84f0ed6eb # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x30) # store value to put something in memory
lh x25, 0(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x31, 0xfd985f14d89912dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000005555 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1365 # sub immediate from rs1 to counter offset
sd x29, 1365 (x27) # store value to put something in memory
lh x31, 1365(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x10, 0x8e27f3fbf3870f59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000005555 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1 # sub immediate from rs1 to counter offset
sd x7, -1 (x5) # store value to put something in memory
lh x10, -1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x14, 0x30123a88745bcec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4e19e265580d0ebe # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x6) # store value to put something in memory
lh x14, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x12, 0xff702136f655b8db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x000000000000aaaa # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1366 # sub immediate from rs1 to counter offset
sd x5, -1366 (x20) # store value to put something in memory
lh x12, -1366(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x31, 0xc3411d328e48ba87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x000000000000aaaa # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x3, -1 (x26) # store value to put something in memory
lh x31, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x15, 0xd16ef6916f9a08c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x66efd5ff78d8b605 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x21) # store value to put something in memory
lh x15, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x1, 0xe57c510fb70ff6cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1092 # sub immediate from rs1 to counter offset
sd x12, -1092 (x3) # store value to put something in memory
lh x1, -1092(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x23, 0x46be959753db554b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000005bbc # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1 # sub immediate from rs1 to counter offset
sd x16, -1 (x18) # store value to put something in memory
lh x23, -1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x10, 0x64ccac5e4412b9a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3e0d99dd3fd75037 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x30) # store value to put something in memory
lh x10, 0(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x15, 0xf497a8baf04bc0ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x000000000000dbbc # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1092 # sub immediate from rs1 to counter offset
sd x9, -1092 (x14) # store value to put something in memory
lh x15, -1092(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x2, 0x072c4ca4aa155a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000000000dbbc # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1 # sub immediate from rs1 to counter offset
sd x17, -1 (x4) # store value to put something in memory
lh x2, -1(x4) # perform operation

# Testcase cp_imm_zero
li x16, 0xa5726ccaf0b685c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x90cecc2971e5e769 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x10, 0 (x30) # store value to put something in memory
lh x16, 0(x30) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lh x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
