///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-lh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.967000
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xfcf747b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x59b9439c # initialize rs2
la x19, scratch # base address 
addi x19, x19, -628 # sub immediate from rs1 to counter offset
sw x5, 628 (x19) # store value to put something in memory
lh x0, 628(x19) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x7a9c79aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7feb474c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -915 # sub immediate from rs1 to counter offset
sw x22, 915 (x15) # store value to put something in memory
lh x1, 915(x15) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8f3aa983 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb96ecf8f # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1477 # sub immediate from rs1 to counter offset
sw x26, 1477 (x14) # store value to put something in memory
lh x2, 1477(x14) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x619fd6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x510ad080 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1618 # sub immediate from rs1 to counter offset
sw x24, -1618 (x19) # store value to put something in memory
lh x3, -1618(x19) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1a0c955e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x09724251 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1240 # sub immediate from rs1 to counter offset
sw x23, 1240 (x27) # store value to put something in memory
lh x4, 1240(x27) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xcc16eddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x397645a8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 99 # sub immediate from rs1 to counter offset
sw x3, -99 (x17) # store value to put something in memory
lh x5, -99(x17) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa05261fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xec8ca055 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1452 # sub immediate from rs1 to counter offset
sw x27, 1452 (x10) # store value to put something in memory
lh x6, 1452(x10) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xcbb89cb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x11cd3d93 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -98 # sub immediate from rs1 to counter offset
sw x29, 98 (x6) # store value to put something in memory
lh x7, 98(x6) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x9fad1148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xaf5d89c6 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 45 # sub immediate from rs1 to counter offset
sw x1, -45 (x2) # store value to put something in memory
lh x8, -45(x2) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xebdee731 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x834dde0f # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1570 # sub immediate from rs1 to counter offset
sw x20, 1570 (x22) # store value to put something in memory
lh x9, 1570(x22) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xdd280045 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa2eb03be # initialize rs2
la x13, scratch # base address 
addi x13, x13, -782 # sub immediate from rs1 to counter offset
sw x17, 782 (x13) # store value to put something in memory
lh x10, 782(x13) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x3135984d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6ee0a11d # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1361 # sub immediate from rs1 to counter offset
sw x12, -1361 (x2) # store value to put something in memory
lh x11, -1361(x2) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3f824ff0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xfa59b58e # initialize rs2
la x1, scratch # base address 
addi x1, x1, -980 # sub immediate from rs1 to counter offset
sw x29, 980 (x1) # store value to put something in memory
lh x12, 980(x1) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x3c22c70b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9fb7953f # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1353 # sub immediate from rs1 to counter offset
sw x13, -1353 (x25) # store value to put something in memory
lh x13, -1353(x25) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xacc1ecf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6d5da333 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1454 # sub immediate from rs1 to counter offset
sw x3, -1454 (x11) # store value to put something in memory
lh x14, -1454(x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6eda6805 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfa210179 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -21 # sub immediate from rs1 to counter offset
sw x26, 21 (x28) # store value to put something in memory
lh x15, 21(x28) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xc85dbf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x038e5592 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -637 # sub immediate from rs1 to counter offset
sw x15, 637 (x25) # store value to put something in memory
lh x16, 637(x25) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x7d6aeae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x28204850 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1025 # sub immediate from rs1 to counter offset
sw x28, 1025 (x17) # store value to put something in memory
lh x17, 1025(x17) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xa30eaefc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x36a6505b # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1304 # sub immediate from rs1 to counter offset
sw x7, -1304 (x8) # store value to put something in memory
lh x18, -1304(x8) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x19a8140f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xce908aba # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1726 # sub immediate from rs1 to counter offset
sw x6, 1726 (x27) # store value to put something in memory
lh x19, 1726(x27) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xfd838f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2d89dd43 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -376 # sub immediate from rs1 to counter offset
sw x13, 376 (x26) # store value to put something in memory
lh x20, 376(x26) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x66d8cb43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x07ca29bb # initialize rs2
la x30, scratch # base address 
addi x30, x30, -419 # sub immediate from rs1 to counter offset
sw x11, 419 (x30) # store value to put something in memory
lh x21, 419(x30) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x372cf3f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaf54e6fb # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1037 # sub immediate from rs1 to counter offset
sw x11, 1037 (x23) # store value to put something in memory
lh x22, 1037(x23) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xfb5e860b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4bfe0275 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -601 # sub immediate from rs1 to counter offset
sw x22, 601 (x24) # store value to put something in memory
lh x23, 601(x24) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xfc65a46d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa6549d2f # initialize rs2
la x29, scratch # base address 
addi x29, x29, -29 # sub immediate from rs1 to counter offset
sw x20, 29 (x29) # store value to put something in memory
lh x24, 29(x29) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xab729809 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaecdc213 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -531 # sub immediate from rs1 to counter offset
sw x9, 531 (x1) # store value to put something in memory
lh x25, 531(x1) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x998a865a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa6b030b2 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1215 # sub immediate from rs1 to counter offset
sw x15, -1215 (x7) # store value to put something in memory
lh x26, -1215(x7) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xaad3c8b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfc08fba8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -208 # sub immediate from rs1 to counter offset
sw x22, 208 (x11) # store value to put something in memory
lh x27, 208(x11) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x700588a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x887040d1 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 413 # sub immediate from rs1 to counter offset
sw x29, -413 (x21) # store value to put something in memory
lh x28, -413(x21) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x31f86d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf6bdbdb3 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 732 # sub immediate from rs1 to counter offset
sw x12, -732 (x9) # store value to put something in memory
lh x29, -732(x9) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x82d0a495 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x84352db6 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 411 # sub immediate from rs1 to counter offset
sw x8, -411 (x11) # store value to put something in memory
lh x30, -411(x11) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x4d272afd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x98062752 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1009 # sub immediate from rs1 to counter offset
sw x25, -1009 (x17) # store value to put something in memory
lh x31, -1009(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x22, 0x17d00a39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x615df918 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 359 # sub immediate from rs1 to counter offset
sw x20, -359 (x1) # store value to put something in memory
lh x22, -359(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x30, 0x3df9f3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6b613ca3 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 566 # sub immediate from rs1 to counter offset
sw x29, -566 (x2) # store value to put something in memory
lh x30, -566(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0xb22598db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc5c0d11f # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1809 # sub immediate from rs1 to counter offset
sw x29, -1809 (x3) # store value to put something in memory
lh x15, -1809(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0xf24c3080 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfde90d19 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1099 # sub immediate from rs1 to counter offset
sw x31, -1099 (x4) # store value to put something in memory
lh x25, -1099(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x16, 0x3454fd47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5eac31e1 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -2026 # sub immediate from rs1 to counter offset
sw x7, 2026 (x5) # store value to put something in memory
lh x16, 2026(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x1, 0x91985674 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf6e3daf9 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 677 # sub immediate from rs1 to counter offset
sw x13, -677 (x6) # store value to put something in memory
lh x1, -677(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x22, 0x826f286a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbc2e5033 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1411 # sub immediate from rs1 to counter offset
sw x19, 1411 (x7) # store value to put something in memory
lh x22, 1411(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xd764604e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe1b1442f # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1282 # sub immediate from rs1 to counter offset
sw x26, -1282 (x8) # store value to put something in memory
lh x2, -1282(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x0ea39a78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x622f69ac # initialize rs2
la x9, scratch # base address 
addi x9, x9, 449 # sub immediate from rs1 to counter offset
sw x28, -449 (x9) # store value to put something in memory
lh x10, -449(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x7abeb737 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x91aa7485 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -216 # sub immediate from rs1 to counter offset
sw x7, 216 (x10) # store value to put something in memory
lh x14, 216(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x29, 0x9257b758 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a8c8c65 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -662 # sub immediate from rs1 to counter offset
sw x10, 662 (x11) # store value to put something in memory
lh x29, 662(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x1, 0x78aff629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4b0c4346 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1764 # sub immediate from rs1 to counter offset
sw x11, -1764 (x12) # store value to put something in memory
lh x1, -1764(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x00b2baae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdff531db # initialize rs2
la x13, scratch # base address 
addi x13, x13, -789 # sub immediate from rs1 to counter offset
sw x10, 789 (x13) # store value to put something in memory
lh x23, 789(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x6, 0x390479f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8b5c0e6f # initialize rs2
la x14, scratch # base address 
addi x14, x14, 259 # sub immediate from rs1 to counter offset
sw x10, -259 (x14) # store value to put something in memory
lh x6, -259(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x17b19a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x14cb743c # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1681 # sub immediate from rs1 to counter offset
sw x7, -1681 (x15) # store value to put something in memory
lh x21, -1681(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0x766c7dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8a8101b0 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -888 # sub immediate from rs1 to counter offset
sw x12, 888 (x16) # store value to put something in memory
lh x5, 888(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x3, 0x031d0689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x160dc028 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -129 # sub immediate from rs1 to counter offset
sw x13, 129 (x17) # store value to put something in memory
lh x3, 129(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x31, 0x450a095c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x9174311a # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1756 # sub immediate from rs1 to counter offset
sw x27, -1756 (x18) # store value to put something in memory
lh x31, -1756(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0x3583e60f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbd25c6e5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1551 # sub immediate from rs1 to counter offset
sw x29, -1551 (x19) # store value to put something in memory
lh x21, -1551(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0xc09b338a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x3f1f3257 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1966 # sub immediate from rs1 to counter offset
sw x28, 1966 (x20) # store value to put something in memory
lh x16, 1966(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x27, 0xc35d934f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x49f8c3e1 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -949 # sub immediate from rs1 to counter offset
sw x31, 949 (x21) # store value to put something in memory
lh x27, 949(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x7, 0x77bee2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x88220b93 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1979 # sub immediate from rs1 to counter offset
sw x21, 1979 (x22) # store value to put something in memory
lh x7, 1979(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x24, 0x587929ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xf086fedf # initialize rs2
la x23, scratch # base address 
addi x23, x23, 141 # sub immediate from rs1 to counter offset
sw x9, -141 (x23) # store value to put something in memory
lh x24, -141(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x30, 0x543eb185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xc9111e57 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1391 # sub immediate from rs1 to counter offset
sw x20, 1391 (x24) # store value to put something in memory
lh x30, 1391(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x92a0ab53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x23a4dd31 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 818 # sub immediate from rs1 to counter offset
sw x6, -818 (x25) # store value to put something in memory
lh x31, -818(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0xf07f73ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2640775d # initialize rs2
la x26, scratch # base address 
addi x26, x26, -28 # sub immediate from rs1 to counter offset
sw x6, 28 (x26) # store value to put something in memory
lh x7, 28(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x28, 0x6d6a7b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x18555100 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1318 # sub immediate from rs1 to counter offset
sw x19, -1318 (x27) # store value to put something in memory
lh x28, -1318(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x27, 0x87bfc1d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe1cb11ec # initialize rs2
la x28, scratch # base address 
addi x28, x28, -492 # sub immediate from rs1 to counter offset
sw x31, 492 (x28) # store value to put something in memory
lh x27, 492(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0x26eebe60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xde6aa1f5 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -636 # sub immediate from rs1 to counter offset
sw x21, 636 (x29) # store value to put something in memory
lh x17, 636(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x2, 0x3c346d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe79ad489 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1891 # sub immediate from rs1 to counter offset
sw x11, 1891 (x30) # store value to put something in memory
lh x2, 1891(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x15, 0x3e74c1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd76b75d7 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1318 # sub immediate from rs1 to counter offset
sw x12, 1318 (x31) # store value to put something in memory
lh x15, 1318(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x2, 0x324402b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x163de2eb # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x7) # store value to put something in memory
lh x2, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0x4a2169f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sw x2, 0 (x24) # store value to put something in memory
lh x12, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x6accc8c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1 # sub immediate from rs1 to counter offset
sw x25, -1 (x16) # store value to put something in memory
lh x31, -1(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x6bef012d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x22d0270c # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x20) # store value to put something in memory
lh x4, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0xfda78547 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1 # sub immediate from rs1 to counter offset
sw x11, 1 (x13) # store value to put something in memory
lh x27, 1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0x7da377f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000001 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1 # sub immediate from rs1 to counter offset
sw x25, -1 (x20) # store value to put something in memory
lh x19, -1(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x17, 0xf98b0723 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd6d078ae # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x3) # store value to put something in memory
lh x17, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x4200ea57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000002 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -2 # sub immediate from rs1 to counter offset
sw x21, 2 (x6) # store value to put something in memory
lh x31, 2(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x14, 0xf2e1d220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000002 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1 # sub immediate from rs1 to counter offset
sw x28, -1 (x29) # store value to put something in memory
lh x14, -1(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x29, 0x0fbd27f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf242a171 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x6) # store value to put something in memory
lh x29, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x24, 0x2bedd499 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00008000 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sw x30, 0 (x31) # store value to put something in memory
lh x24, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x1, 0x7505b939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00008000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sw x21, -1 (x9) # store value to put something in memory
lh x1, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x30, 0x933c7e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4f5991c2 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x29) # store value to put something in memory
lh x30, 0(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x31, 0xb3c75869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00008001 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1 # sub immediate from rs1 to counter offset
sw x12, 1 (x17) # store value to put something in memory
lh x31, 1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x3, 0x4c9faea4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00008001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sw x2, -1 (x13) # store value to put something in memory
lh x3, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x25, 0x0f8980a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x75ce8097 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x11) # store value to put something in memory
lh x25, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x30, 0x82e7039e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00007fff # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sw x5, -1 (x3) # store value to put something in memory
lh x30, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x13, 0x5c9aac81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00007fff # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1 # sub immediate from rs1 to counter offset
sw x16, -1 (x30) # store value to put something in memory
lh x13, -1(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x3, 0x2933c1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0cdcf654 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x12) # store value to put something in memory
lh x3, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x1, 0x23eb0f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00007ffe # initialize rs2
la x21, scratch # base address 
addi x21, x21, 2 # sub immediate from rs1 to counter offset
sw x29, -2 (x21) # store value to put something in memory
lh x1, -2(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x18, 0x2350e696 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00007ffe # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sw x24, -1 (x3) # store value to put something in memory
lh x18, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x17, 0xf6f2e7e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe5c6dd26 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x8) # store value to put something in memory
lh x17, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x30, 0x2f0283e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000ffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
sw x17, -1 (x14) # store value to put something in memory
lh x30, -1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x17, 0xfd1c7190 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000ffff # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
sw x4, -1 (x31) # store value to put something in memory
lh x17, -1(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x5, 0x13df0a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x715039ff # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x22) # store value to put something in memory
lh x5, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x10, 0x797a3773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000fffe # initialize rs2
la x16, scratch # base address 
addi x16, x16, 2 # sub immediate from rs1 to counter offset
sw x2, -2 (x16) # store value to put something in memory
lh x10, -2(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x15, 0x55cb15f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000fffe # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sw x22, -1 (x2) # store value to put something in memory
lh x15, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x15, 0x2b50f436 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe6dcb926 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x12) # store value to put something in memory
lh x15, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x16, 0xda8f391d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x00005555 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1365 # sub immediate from rs1 to counter offset
sw x22, 1365 (x7) # store value to put something in memory
lh x16, 1365(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x1, 0x3e5b0230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00005555 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1 # sub immediate from rs1 to counter offset
sw x3, -1 (x25) # store value to put something in memory
lh x1, -1(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0x5126ee38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf2b0f3ba # initialize rs2
la x28, scratch # base address 
addi x28, x28, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x28) # store value to put something in memory
lh x26, 0(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x27, 0x086b3b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000aaaa # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1366 # sub immediate from rs1 to counter offset
sw x18, -1366 (x5) # store value to put something in memory
lh x27, -1366(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x24, 0x02fff9a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000aaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
sw x27, -1 (x14) # store value to put something in memory
lh x24, -1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x26, 0xa5c83854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x48d7c2c5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x19) # store value to put something in memory
lh x26, 0(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x31, 0x8520c4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00005bbc # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1092 # sub immediate from rs1 to counter offset
sw x26, -1092 (x30) # store value to put something in memory
lh x31, -1092(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x10, 0x073ab3f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00005bbc # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sw x20, -1 (x26) # store value to put something in memory
lh x10, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x6, 0xe260a6c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb32e6554 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x7) # store value to put something in memory
lh x6, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x9c45bcf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000dbbc # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1092 # sub immediate from rs1 to counter offset
sw x25, -1092 (x27) # store value to put something in memory
lh x19, -1092(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x4, 0xd036d131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000dbbc # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1 # sub immediate from rs1 to counter offset
sw x11, -1 (x21) # store value to put something in memory
lh x4, -1(x21) # perform operation

# Testcase cp_imm_zero
li x10, 0x09969248 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9de153f3 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sw x26, 0 (x25) # store value to put something in memory
lh x10, 0(x25) # perform operation

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
