///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.483843
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x6bb317e61406a01e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x656e561ebef1966c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1518 # sub immediate from rs1 to counter offset
sd x9, 1518 (x29) # store value to put something in memory
lw x0, 1518(x29) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa03def6cd7a3d934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0c8ac8af5e6085c1 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1409 # sub immediate from rs1 to counter offset
sd x5, -1409 (x18) # store value to put something in memory
lw x1, -1409(x18) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x89ea5885e992bd9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x212a29bcdd089ea6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1282 # sub immediate from rs1 to counter offset
sd x1, 1282 (x14) # store value to put something in memory
lw x2, 1282(x14) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xffffd2b39c0065ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x148fd6cc0f96e27d # initialize rs2
la x18, scratch # base address 
addi x18, x18, 477 # sub immediate from rs1 to counter offset
sd x1, -477 (x18) # store value to put something in memory
lw x3, -477(x18) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x438542cf5d6d4b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x189e5a3ae4d4e893 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1510 # sub immediate from rs1 to counter offset
sd x6, -1510 (x22) # store value to put something in memory
lw x4, -1510(x22) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0291efab0858ce47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xabfe1378a8754132 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -653 # sub immediate from rs1 to counter offset
sd x5, 653 (x10) # store value to put something in memory
lw x5, 653(x10) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x80599901049ed38c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4c617993e13d4f44 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1014 # sub immediate from rs1 to counter offset
sd x8, -1014 (x29) # store value to put something in memory
lw x6, -1014(x29) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xd5424d7482dd0a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe62284800f3192d1 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -593 # sub immediate from rs1 to counter offset
sd x4, 593 (x14) # store value to put something in memory
lw x7, 593(x14) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x505ebe7b753263fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xbac35db6a2238ab9 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -927 # sub immediate from rs1 to counter offset
sd x18, 927 (x6) # store value to put something in memory
lw x8, 927(x6) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xde449035c7003380 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x05c0fe02895cf60d # initialize rs2
la x2, scratch # base address 
addi x2, x2, -666 # sub immediate from rs1 to counter offset
sd x14, 666 (x2) # store value to put something in memory
lw x9, 666(x2) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbe7f45f4235d17b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfea6833e7728c050 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -230 # sub immediate from rs1 to counter offset
sd x28, 230 (x18) # store value to put something in memory
lw x10, 230(x18) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9aead80cd9c715ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe76d14f7a57cd018 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -62 # sub immediate from rs1 to counter offset
sd x19, 62 (x25) # store value to put something in memory
lw x11, 62(x25) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb3c1c0d27f971c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf62dc6b6dd13faa1 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1703 # sub immediate from rs1 to counter offset
sd x10, -1703 (x18) # store value to put something in memory
lw x12, -1703(x18) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x40a2cda957300ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdc95cbfdb5379b6e # initialize rs2
la x24, scratch # base address 
addi x24, x24, -733 # sub immediate from rs1 to counter offset
sd x11, 733 (x24) # store value to put something in memory
lw x13, 733(x24) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xb130d4562b2eafea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x44698337e700bf55 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1625 # sub immediate from rs1 to counter offset
sd x22, -1625 (x1) # store value to put something in memory
lw x14, -1625(x1) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4519acf74aa858f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7f68efe239119df0 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -2017 # sub immediate from rs1 to counter offset
sd x10, 2017 (x3) # store value to put something in memory
lw x15, 2017(x3) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x290df8b039c6d262 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x46fd4b2006e3e1c5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1105 # sub immediate from rs1 to counter offset
sd x16, -1105 (x5) # store value to put something in memory
lw x16, -1105(x5) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcca613651aa5c076 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xa4b08f263450c28a # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1884 # sub immediate from rs1 to counter offset
sd x25, 1884 (x24) # store value to put something in memory
lw x17, 1884(x24) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x464a564a19d6adcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x054191c26c4a29a1 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 113 # sub immediate from rs1 to counter offset
sd x9, -113 (x29) # store value to put something in memory
lw x18, -113(x29) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xefeaf01823c7f4ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x20f3f510484a812a # initialize rs2
la x27, scratch # base address 
addi x27, x27, 696 # sub immediate from rs1 to counter offset
sd x21, -696 (x27) # store value to put something in memory
lw x19, -696(x27) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x71a6f07e38001430 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfe0c47fbc143d47b # initialize rs2
la x8, scratch # base address 
addi x8, x8, -530 # sub immediate from rs1 to counter offset
sd x20, 530 (x8) # store value to put something in memory
lw x20, 530(x8) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x72bacd5826d06a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xd5b11aeeefef7660 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1593 # sub immediate from rs1 to counter offset
sd x21, 1593 (x8) # store value to put something in memory
lw x21, 1593(x8) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xd560efc351628ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcd6a629645152201 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -380 # sub immediate from rs1 to counter offset
sd x5, 380 (x3) # store value to put something in memory
lw x22, 380(x3) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x0420546f7df361fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xec604fafcf298665 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1212 # sub immediate from rs1 to counter offset
sd x23, -1212 (x25) # store value to put something in memory
lw x23, -1212(x25) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xf358e9cd1e3970ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc681d8e6b71d1ff2 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1246 # sub immediate from rs1 to counter offset
sd x23, -1246 (x2) # store value to put something in memory
lw x24, -1246(x2) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x4d932b558c498652 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x14c1ad6c3bd8b4b2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 165 # sub immediate from rs1 to counter offset
sd x30, -165 (x10) # store value to put something in memory
lw x25, -165(x10) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x519cedb9dbd05cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc15dfd0cc2ad2d5c # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1908 # sub immediate from rs1 to counter offset
sd x15, -1908 (x17) # store value to put something in memory
lw x26, -1908(x17) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x80a1b09210047e1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe7a53fd950435947 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 50 # sub immediate from rs1 to counter offset
sd x12, -50 (x24) # store value to put something in memory
lw x27, -50(x24) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x3b92e4d673804ca7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7638caaedacba374 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1890 # sub immediate from rs1 to counter offset
sd x12, -1890 (x1) # store value to put something in memory
lw x28, -1890(x1) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x62c03ab1f40ee104 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x56b99a23bec374b6 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1849 # sub immediate from rs1 to counter offset
sd x19, 1849 (x27) # store value to put something in memory
lw x29, 1849(x27) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa37acd0524a14629 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x2940bc24ede55177 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 964 # sub immediate from rs1 to counter offset
sd x1, -964 (x7) # store value to put something in memory
lw x30, -964(x7) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9cc320790060a3a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa93cb1b61e6b9f47 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2002 # sub immediate from rs1 to counter offset
sd x15, -2002 (x18) # store value to put something in memory
lw x31, -2002(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x12, 0x43a81fa83ebae7d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x385641df743e9173 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1975 # sub immediate from rs1 to counter offset
sd x4, -1975 (x1) # store value to put something in memory
lw x12, -1975(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0x47ee8d90c7d06e4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x846502b9162e006d # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1874 # sub immediate from rs1 to counter offset
sd x21, 1874 (x2) # store value to put something in memory
lw x1, 1874(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x14, 0xd312355b5f604345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6b750ba1c2d14759 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1314 # sub immediate from rs1 to counter offset
sd x16, 1314 (x3) # store value to put something in memory
lw x14, 1314(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x19, 0x364152f1c8ad1a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x86e9051df67ee15f # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1109 # sub immediate from rs1 to counter offset
sd x20, -1109 (x4) # store value to put something in memory
lw x19, -1109(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0x7f68bb0201bd47e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcc0451e80a9ea5dd # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1393 # sub immediate from rs1 to counter offset
sd x21, 1393 (x5) # store value to put something in memory
lw x30, 1393(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x2, 0xe5dbcfd511990a07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x921ad06814ec20c4 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -710 # sub immediate from rs1 to counter offset
sd x12, 710 (x6) # store value to put something in memory
lw x2, 710(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x20, 0x83f816f484e7a656 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x086491331ef4b95b # initialize rs2
la x7, scratch # base address 
addi x7, x7, 455 # sub immediate from rs1 to counter offset
sd x6, -455 (x7) # store value to put something in memory
lw x20, -455(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0xab5b1a4d7b95ad6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa3ceb56c25bef106 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1527 # sub immediate from rs1 to counter offset
sd x6, -1527 (x8) # store value to put something in memory
lw x11, -1527(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0x75ee9da9ddb12911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6d01b1db742bc3b9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1411 # sub immediate from rs1 to counter offset
sd x31, 1411 (x9) # store value to put something in memory
lw x27, 1411(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xe64327e7be97f8c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3967d41ea6066f61 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 68 # sub immediate from rs1 to counter offset
sd x18, -68 (x10) # store value to put something in memory
lw x8, -68(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x914ab636b5e377a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x371481dd4de1908e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -382 # sub immediate from rs1 to counter offset
sd x19, 382 (x11) # store value to put something in memory
lw x3, 382(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x21, 0x4d49315ee054736d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa62eb020e777a2cc # initialize rs2
la x12, scratch # base address 
addi x12, x12, -600 # sub immediate from rs1 to counter offset
sd x8, 600 (x12) # store value to put something in memory
lw x21, 600(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x6, 0x500c00203fc7bf0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5fde3338577dca22 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1948 # sub immediate from rs1 to counter offset
sd x23, 1948 (x13) # store value to put something in memory
lw x6, 1948(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x17, 0x0ed5fb826f93628e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xed6fb47ab906f367 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1295 # sub immediate from rs1 to counter offset
sd x30, -1295 (x14) # store value to put something in memory
lw x17, -1295(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0x230a3c374f7f9987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x18f22f0a8028a070 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1910 # sub immediate from rs1 to counter offset
sd x24, -1910 (x15) # store value to put something in memory
lw x12, -1910(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0x2f92f0c3592257d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7f5c7f68733ec385 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1410 # sub immediate from rs1 to counter offset
sd x2, 1410 (x16) # store value to put something in memory
lw x21, 1410(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x15, 0x5430d177ddec95dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa9ce3eff0ce20ff8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 439 # sub immediate from rs1 to counter offset
sd x26, -439 (x17) # store value to put something in memory
lw x15, -439(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0x8abb4bc81cc1074f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x64005e75e9e1e173 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 577 # sub immediate from rs1 to counter offset
sd x27, -577 (x18) # store value to put something in memory
lw x15, -577(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0xdb02a764b584f191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x06f6acba27aeb4c8 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1091 # sub immediate from rs1 to counter offset
sd x27, 1091 (x19) # store value to put something in memory
lw x26, 1091(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x28, 0x2e2614f42d989931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6c900a086e114cce # initialize rs2
la x20, scratch # base address 
addi x20, x20, 338 # sub immediate from rs1 to counter offset
sd x11, -338 (x20) # store value to put something in memory
lw x28, -338(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0x4d9654260d452c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7be7718b0b5735f0 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1452 # sub immediate from rs1 to counter offset
sd x15, -1452 (x21) # store value to put something in memory
lw x25, -1452(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x1, 0x6a5fb19250ea5fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x67c385611e7659f2 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -97 # sub immediate from rs1 to counter offset
sd x2, 97 (x22) # store value to put something in memory
lw x1, 97(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x14, 0xe67ea08c7c7e4bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaa3a92fbab19a1f0 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1260 # sub immediate from rs1 to counter offset
sd x24, -1260 (x23) # store value to put something in memory
lw x14, -1260(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x8, 0x680958ca76c2623f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x89f1905ff023f097 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -746 # sub immediate from rs1 to counter offset
sd x9, 746 (x24) # store value to put something in memory
lw x8, 746(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x21, 0xe15277e543f813c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x4c6c06d3a814d7b9 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 578 # sub immediate from rs1 to counter offset
sd x22, -578 (x25) # store value to put something in memory
lw x21, -578(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x24, 0x7865e27a3450ecd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x07bd5f9017c17655 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 2024 # sub immediate from rs1 to counter offset
sd x18, -2024 (x26) # store value to put something in memory
lw x24, -2024(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x20, 0x15e9cef839cf5654 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x112689024b84dd4f # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1399 # sub immediate from rs1 to counter offset
sd x5, 1399 (x27) # store value to put something in memory
lw x20, 1399(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0x14b6ce9721af7fce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x894b85fbc48a583b # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1777 # sub immediate from rs1 to counter offset
sd x2, -1777 (x28) # store value to put something in memory
lw x19, -1777(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x9d8020087d5160e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5134f9c4e2f8cb26 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -786 # sub immediate from rs1 to counter offset
sd x28, 786 (x29) # store value to put something in memory
lw x5, 786(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0xba9f2e6bf0d37ef1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7c7613c0cd53ccbd # initialize rs2
la x30, scratch # base address 
addi x30, x30, 745 # sub immediate from rs1 to counter offset
sd x18, -745 (x30) # store value to put something in memory
lw x17, -745(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x29, 0x8fd8de3855816dde # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xdf2ba3e47f28fba0 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 227 # sub immediate from rs1 to counter offset
sd x13, -227 (x31) # store value to put something in memory
lw x29, -227(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x7d10b150bcf0af88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x60d489a934a6e29d # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x16) # store value to put something in memory
lw x3, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0xcdf46f4261d37f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sd x22, 0 (x12) # store value to put something in memory
lw x6, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0xa49b526df9b49893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000000 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x7) # store value to put something in memory
lw x20, -1(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x9f4e74bc703c8a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe6abe915c663b919 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x7) # store value to put something in memory
lw x28, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x72e6c5511904ba3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000001 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1 # sub immediate from rs1 to counter offset
sd x23, 1 (x18) # store value to put something in memory
lw x7, 1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x22, 0xfbd7ef454fd19996 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1 # sub immediate from rs1 to counter offset
sd x27, -1 (x6) # store value to put something in memory
lw x22, -1(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0xa7e6ede3248027ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7398182b41b88b7b # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x7) # store value to put something in memory
lw x27, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0x4211c76444f00d0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -2 # sub immediate from rs1 to counter offset
sd x12, 2 (x31) # store value to put something in memory
lw x30, 2(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x250f9a8c03e35cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x19) # store value to put something in memory
lw x1, -1(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x6, 0x26b9ff243ca120ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x43b43290fac9c5aa # initialize rs2
la x28, scratch # base address 
addi x28, x28, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x28) # store value to put something in memory
lw x6, 0(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0x0082a9adb32d0a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000080000000 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sd x3, 0 (x14) # store value to put something in memory
lw x2, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x2, 0xeff906b5840a1226 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000080000000 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sd x21, -1 (x9) # store value to put something in memory
lw x2, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x29, 0xcdfda33d8ece6586 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8a13b99cb8d5adaa # initialize rs2
la x20, scratch # base address 
addi x20, x20, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x20) # store value to put something in memory
lw x29, 0(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0x264411e422bad599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000001 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1 # sub immediate from rs1 to counter offset
sd x12, 1 (x17) # store value to put something in memory
lw x23, 1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x22, 0x99685c7e371cde41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000080000001 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1 # sub immediate from rs1 to counter offset
sd x29, -1 (x12) # store value to put something in memory
lw x22, -1(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x20, 0x1dffb36ab9a5ebdd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5ee764ccea76cef8 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x27) # store value to put something in memory
lw x20, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x7, 0xfae78ff8a8cd1e9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x000000007fffffff # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x1, -1 (x26) # store value to put something in memory
lw x7, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x31, 0xf60526c6121f64cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x000000007fffffff # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x4, -1 (x26) # store value to put something in memory
lw x31, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x16, 0x0cd5941da83c8916 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xd3d0983edded73b9 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x17) # store value to put something in memory
lw x16, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x7, 0xd900f52e98e7c6db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x000000007ffffffe # initialize rs2
la x16, scratch # base address 
addi x16, x16, 2 # sub immediate from rs1 to counter offset
sd x22, -2 (x16) # store value to put something in memory
lw x7, -2(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x20, 0xcf71f75f94cff7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x000000007ffffffe # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1 # sub immediate from rs1 to counter offset
sd x31, -1 (x25) # store value to put something in memory
lw x20, -1(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0x6721d5772cb1b3de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x072a96bf329765f9 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x25) # store value to put something in memory
lw x11, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x13, 0x0962adfd8da95af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1 # sub immediate from rs1 to counter offset
sd x31, -1 (x27) # store value to put something in memory
lw x13, -1(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x11, 0xbe991c3625a62d06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000ffffffff # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
sd x5, -1 (x14) # store value to put something in memory
lw x11, -1(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x27, 0xa4fd325062bd1b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x71a7e3b9de306646 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x24) # store value to put something in memory
lw x27, 0(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x10, 0x18472f38d628870d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs2
la x2, scratch # base address 
addi x2, x2, 2 # sub immediate from rs1 to counter offset
sd x16, -2 (x2) # store value to put something in memory
lw x10, -2(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x9, 0x5b4d2287e4adc4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000fffffffe # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1 # sub immediate from rs1 to counter offset
sd x11, -1 (x18) # store value to put something in memory
lw x9, -1(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x9, 0x8489f5fff7892760 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa91bc5b505e37494 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x19) # store value to put something in memory
lw x9, 0(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x13, 0x31f754e68707551b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000aaaaaaaa # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1366 # sub immediate from rs1 to counter offset
sd x26, -1366 (x11) # store value to put something in memory
lw x13, -1366(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x25, 0x9b54be5da837cc87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000aaaaaaaa # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x19, -1 (x26) # store value to put something in memory
lw x25, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x19, 0xc97ebab323d206af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0290ebd6208dfe11 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x26) # store value to put something in memory
lw x19, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x2, 0xc0fc7a05ee78f36c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000055555555 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1365 # sub immediate from rs1 to counter offset
sd x1, 1365 (x4) # store value to put something in memory
lw x2, 1365(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x4, 0x1ff23a4ed0445f18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000055555555 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1 # sub immediate from rs1 to counter offset
sd x20, -1 (x27) # store value to put something in memory
lw x4, -1(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x15, 0x3807e21b05c5d4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xf5b2fd096a37bfba # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x14) # store value to put something in memory
lw x15, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x20, 0x46f061c91fc70c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000063ae86f7 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1783 # sub immediate from rs1 to counter offset
sd x8, 1783 (x7) # store value to put something in memory
lw x20, 1783(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x13, 0xe64debd65fa375cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000063ae86f7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sd x28, -1 (x10) # store value to put something in memory
lw x13, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x2, 0x6bdf54c871c23ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x43a4e8e2007ab0d7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x8) # store value to put something in memory
lw x2, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x11, 0x5d02a04c28b1e91e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000e3ae86f7 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1783 # sub immediate from rs1 to counter offset
sd x7, 1783 (x21) # store value to put something in memory
lw x11, 1783(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x19, 0x6d15879caa38fb3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000e3ae86f7 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1 # sub immediate from rs1 to counter offset
sd x16, -1 (x23) # store value to put something in memory
lw x19, -1(x23) # perform operation

# Testcase cp_imm_zero
li x12, 0x3b19a70c054db2dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0e61ee1b396a92dc # initialize rs2
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
sd x24, 0 (x9) # store value to put something in memory
lw x12, 0(x9) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lw x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
