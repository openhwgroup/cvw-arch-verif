///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.490026
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0x13b1fb29cc7a3174 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xbc0ea967c3069c9f # initialize rs2
la x1, scratch # base address 
addi x1, x1, -843 # sub immediate from rs1 to counter offset
sh x4, 843(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0x15e9bd591ee43775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xb256fac16dbdd105 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 769 # sub immediate from rs1 to counter offset
sh x27, -769(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0xa8d0776b60f9f69d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x03db18bf2f931a92 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1032 # sub immediate from rs1 to counter offset
sh x11, -1032(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x14, 0x61007ad4ea15bb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xba9c3eb3b9fa892e # initialize rs2
la x4, scratch # base address 
addi x4, x4, -777 # sub immediate from rs1 to counter offset
sh x10, 777(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x25, 0x2811060d0e228370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe930f26da1b2ca79 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1399 # sub immediate from rs1 to counter offset
sh x15, 1399(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x25, 0x38ec01072649dcf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd668375320acad09 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 174 # sub immediate from rs1 to counter offset
sh x1, -174(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x6, 0x79ce9d5f5110adc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe651c554cff117e3 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1477 # sub immediate from rs1 to counter offset
sh x15, -1477(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xa59ba86936cf8433 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2df8591f7b14777b # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1017 # sub immediate from rs1 to counter offset
sh x5, 1017(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x837b2ec55bec25c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x305f6bce14b66863 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 969 # sub immediate from rs1 to counter offset
sh x10, -969(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0x1c08c32491340ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7bb0907ee066c8c6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 752 # sub immediate from rs1 to counter offset
sh x27, -752(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x6, 0x20579cd42c3a4a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x92e8457fc26cef0d # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1840 # sub immediate from rs1 to counter offset
sh x10, -1840(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0xd0d2fa9f9a427bcd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xb27768f92c055dd8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1866 # sub immediate from rs1 to counter offset
sh x29, -1866(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0x07766df43fa861a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x727205d902fe1b1d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1336 # sub immediate from rs1 to counter offset
sh x8, 1336(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x18, 0x9d88601e8309c146 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x414ee1bd7d5609d9 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -969 # sub immediate from rs1 to counter offset
sh x28, 969(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0xce13bacb902ed0ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb4c59ebf8f95bd1a # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1415 # sub immediate from rs1 to counter offset
sh x24, 1415(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0x87b6dac3037982a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x083ae5df297017a6 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1603 # sub immediate from rs1 to counter offset
sh x4, 1603(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x12, 0x99e62cfad9ca8e01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x11e1f868de7833ea # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1362 # sub immediate from rs1 to counter offset
sh x16, 1362(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x701f53ce855aea5d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8b5e9a0d88a798bf # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1025 # sub immediate from rs1 to counter offset
sh x14, -1025(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x7, 0xf940a054e184f17d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x40632f482bfe7cc7 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 963 # sub immediate from rs1 to counter offset
sh x30, -963(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0x91e694b4d8af6237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe9e5d48081b02c7c # initialize rs2
la x20, scratch # base address 
addi x20, x20, -835 # sub immediate from rs1 to counter offset
sh x31, 835(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x4, 0xe869831a4fd02e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x050fe19f3ec20969 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 162 # sub immediate from rs1 to counter offset
sh x7, -162(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0x77fc62eeb61f99c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd90808d8e9c3687f # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1894 # sub immediate from rs1 to counter offset
sh x14, -1894(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0xb92e4c7e51a9184d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1780f0715113c26b # initialize rs2
la x23, scratch # base address 
addi x23, x23, -342 # sub immediate from rs1 to counter offset
sh x25, 342(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x4, 0x921e37aba6c4ea27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2fe4738bf52c92ef # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1424 # sub immediate from rs1 to counter offset
sh x13, -1424(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0x0e088c083134754a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf8b3b886e6f2e6e4 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1334 # sub immediate from rs1 to counter offset
sh x17, 1334(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x10, 0x2228276ed436b889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd1afa5c0a5d6aee6 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1831 # sub immediate from rs1 to counter offset
sh x27, -1831(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0x85e5d953d1a60d08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5e3ab6fdb087dd4b # initialize rs2
la x27, scratch # base address 
addi x27, x27, -447 # sub immediate from rs1 to counter offset
sh x26, 447(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x16, 0x2d3c60d6cad3111d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc1f9711756ee19ba # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1820 # sub immediate from rs1 to counter offset
sh x31, -1820(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x6, 0x14df904200b6dbbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe94aa763b89e2872 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 849 # sub immediate from rs1 to counter offset
sh x30, -849(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0xaf68a1552f1c3414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf81e30100e787472 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1616 # sub immediate from rs1 to counter offset
sh x25, -1616(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x27, 0xfb4f054c31b0d4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3c747f4ad555c907 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1360 # sub immediate from rs1 to counter offset
sh x16, -1360(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0x7742f8b286017cc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xafe5a90b07bff625 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -445 # sub immediate from rs1 to counter offset
sh x0, 445(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0x8f5a2ed9d4f88994 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2aa0d6cd99733ad5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1308 # sub immediate from rs1 to counter offset
sh x1, 1308(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x7887c47d13649093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xf02bfd8c03c6ec16 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1759 # sub immediate from rs1 to counter offset
sh x2, 1759(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x12, 0x63f1acb616871d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x66affae4bbb1c073 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 2033 # sub immediate from rs1 to counter offset
sh x3, -2033(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x6, 0xed0918f2c15826ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8762aeb961533513 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1699 # sub immediate from rs1 to counter offset
sh x4, 1699(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x10, 0x772cce1c4cec77cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa19df1e165fe02e2 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1063 # sub immediate from rs1 to counter offset
sh x5, 1063(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x16, 0xb30626c1dec4712e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0758f826ee3765fe # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1012 # sub immediate from rs1 to counter offset
sh x6, 1012(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x20, 0x44fb9ddf015b4861 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x947f55d3ba884d07 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -767 # sub immediate from rs1 to counter offset
sh x7, 767(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x17, 0x2505521066a931cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa83be5e13799ddb0 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1052 # sub immediate from rs1 to counter offset
sh x8, -1052(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0xe359f03ca62d35c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1db2c6a037b32199 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1835 # sub immediate from rs1 to counter offset
sh x9, -1835(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x18, 0xe17c8c43ae79bd5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x40eca46e17198eaa # initialize rs2
la x27, scratch # base address 
addi x27, x27, 531 # sub immediate from rs1 to counter offset
sh x10, -531(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0x0319c4420ba0f5c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x82c8e2f8963cc5cc # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1381 # sub immediate from rs1 to counter offset
sh x11, -1381(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x3, 0x70085008201f4c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x12518967ef0ea472 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -604 # sub immediate from rs1 to counter offset
sh x12, 604(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x2e9a08e60f4e68be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0a809147725d7c6f # initialize rs2
la x16, scratch # base address 
addi x16, x16, -164 # sub immediate from rs1 to counter offset
sh x13, 164(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x889a30322fbb2ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xc85d4e15c2345a7f # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1190 # sub immediate from rs1 to counter offset
sh x14, -1190(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0xa5d6a9d794f03869 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd7de788e09898734 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -375 # sub immediate from rs1 to counter offset
sh x15, 375(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x13, 0x9a6ae18c6ec38222 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x735ab5342cf34fa9 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1118 # sub immediate from rs1 to counter offset
sh x16, 1118(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x71eb1dc97ede66e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x3dcfc144e0ad72b1 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 974 # sub immediate from rs1 to counter offset
sh x17, -974(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x22, 0xabfcfe2eb8ed97bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xc761c7a214ecb783 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -652 # sub immediate from rs1 to counter offset
sh x18, 652(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0xfc31171185f6a14c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x13304aa642c3a5e9 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1983 # sub immediate from rs1 to counter offset
sh x19, 1983(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0xed064bf96f060aa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3a16ad704dd05388 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -740 # sub immediate from rs1 to counter offset
sh x20, 740(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x28, 0x68a2c6ae0d1d8219 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2c718f5446d601cb # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1928 # sub immediate from rs1 to counter offset
sh x21, -1928(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0xf5126587a3a5648f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa34d05d6b6965766 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1840 # sub immediate from rs1 to counter offset
sh x22, 1840(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x3ed28eb2bdca1535 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x28dd7cc0250132a4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -994 # sub immediate from rs1 to counter offset
sh x23, 994(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0xcf0254192a68d3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbf7958677b5be47c # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1101 # sub immediate from rs1 to counter offset
sh x24, 1101(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0xaa22bf4771a9ec6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xd2d451a547381ea9 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1214 # sub immediate from rs1 to counter offset
sh x25, 1214(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x22, 0x51c24b2624c1d3d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x4ddf11d2d1616c0e # initialize rs2
la x16, scratch # base address 
addi x16, x16, -560 # sub immediate from rs1 to counter offset
sh x26, 560(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0x422562f2ec53805b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3ad128a45590b60c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -29 # sub immediate from rs1 to counter offset
sh x27, 29(x29) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0x586cae2a0d46c069 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb66c3112ac1ce58b # initialize rs2
la x21, scratch # base address 
addi x21, x21, 137 # sub immediate from rs1 to counter offset
sh x28, -137(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x60a2b9e1da23910d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x36cf97d58d945d24 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1008 # sub immediate from rs1 to counter offset
sh x29, -1008(x16) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xcb7fbe7bbc023376 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xac44c3c85e8b78da # initialize rs2
la x28, scratch # base address 
addi x28, x28, -79 # sub immediate from rs1 to counter offset
sh x30, 79(x28) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x8, 0x41ba6ef748c3fa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x639975d0040ae441 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 883 # sub immediate from rs1 to counter offset
sh x31, -883(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0xfe9dd72a4a5226fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 86 # sub immediate from rs1 to counter offset
sh x8, -86(x31) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x8ec115f69d7c2b74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000001 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1639 # sub immediate from rs1 to counter offset
sh x1, 1639(x10) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x75a2bc1e95709205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000002 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1321 # sub immediate from rs1 to counter offset
sh x17, 1321(x7) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0xdcfde84839954dac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000000 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 399 # sub immediate from rs1 to counter offset
sh x11, -399(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x6, 0x9409df0f1230c8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 929 # sub immediate from rs1 to counter offset
sh x13, -929(x8) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x25, 0xf8f42384410548ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7fffffffffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1686 # sub immediate from rs1 to counter offset
sh x24, -1686(x13) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x5, 0x88517fc4039f727c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs2
la x3, scratch # base address 
addi x3, x3, 750 # sub immediate from rs1 to counter offset
sh x20, -750(x3) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x24, 0xa1bc3c15a62f7b9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs2
la x21, scratch # base address 
addi x21, x21, -100 # sub immediate from rs1 to counter offset
sh x25, 100(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x4, 0x238fb90733b13f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize rs2
la x6, scratch # base address 
addi x6, x6, 128 # sub immediate from rs1 to counter offset
sh x15, -128(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x9, 0xa58d53d6958f95b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -915 # sub immediate from rs1 to counter offset
sh x31, 915(x25) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xde18717cf57bd79b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1251 # sub immediate from rs1 to counter offset
sh x5, 1251(x25) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x5, 0x368f8d72e2c6d7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -479 # sub immediate from rs1 to counter offset
sh x25, 479(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x17, 0xe7904dc8a1d8f290 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000ffffffff # initialize rs2
la x15, scratch # base address 
addi x15, x15, -195 # sub immediate from rs1 to counter offset
sh x19, 195(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xe08be208b3995385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs2
la x21, scratch # base address 
addi x21, x21, 686 # sub immediate from rs1 to counter offset
sh x27, -686(x21) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0x73b5741aa78a0570 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 780 # sub immediate from rs1 to counter offset
sh x2, -780(x14) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x28, 0x561e4c0da2cb28e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 650 # sub immediate from rs1 to counter offset
sh x18, -650(x15) # perform operation 

# Testcase cp_imm_zero
li x12, 0xd34504cb2e92db8c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7db02b7ff128023c # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sh x4, 0(x16) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
