///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-addiw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.453993
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd206c3ed0eebe751 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9c823cf27f0d9d6a # initialize rs1
addiw x0, x25, -843 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x1f420297fe136e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xdc1832be337d403b # initialize rs1
addiw x1, x10, 8 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xf14cc83f85a95318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x24ce6d9cd00b95d4 # initialize rs1
addiw x2, x26, -21 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x3e69e0c4447eb57c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x6c5663e8143a2db0 # initialize rs1
addiw x3, x5, -16 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x91c292933cd80754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x9c86cbb83cff95ab # initialize rs1
addiw x4, x24, -1712 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x942fa1c19fb61079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb51f31856f04e5cc # initialize rs1
addiw x5, x30, 688 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x6edbe8b4cb12db93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xde33bf36437257d3 # initialize rs1
addiw x6, x14, -212 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xd13ca919482c2a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5647f980205494b6 # initialize rs1
addiw x7, x5, 1331 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x694e4c798b13075b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x2b0c004390da3a68 # initialize rs1
addiw x8, x9, 852 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8834c37c725ffd42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6b46bb12768df3f6 # initialize rs1
addiw x9, x11, -63 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x79e85a4655c31227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x1afbb3e6b4929b73 # initialize rs1
addiw x10, x28, 523 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x97a78afaeccf21f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc8e97de96b054c8b # initialize rs1
addiw x11, x19, 123 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x5dedaf7e6f04c345 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x71a138aa58565451 # initialize rs1
addiw x12, x18, -1510 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x865dead6df921b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd3c9c9eb7adc3ec7 # initialize rs1
addiw x13, x4, 16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x35d53ac090a0a681 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x9faa589722e82a18 # initialize rs1
addiw x14, x22, -1576 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe2ef65b66d7ce794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x87e16b7d04a7650f # initialize rs1
addiw x15, x15, 1335 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xb181943cc59c4673 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe17ad9182a2b9888 # initialize rs1
addiw x16, x26, 340 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5cc9330a0f577b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8b7eaa9d073e9ac3 # initialize rs1
addiw x17, x29, -828 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x74a302c533cddb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x595f8ed7c30a2973 # initialize rs1
addiw x18, x22, -530 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xd593a7e451ffc225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbae1ccc7abee7660 # initialize rs1
addiw x19, x27, 1917 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x6d8d13f55ddcfc48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x17263d9191c44395 # initialize rs1
addiw x20, x14, -832 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x487eae5d4753bde8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5c10757bf8b6a531 # initialize rs1
addiw x21, x23, 1526 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x22e7aec2fd6990a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x9d19fb66969b3e39 # initialize rs1
addiw x22, x16, -886 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x64baa4755d61e371 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x4169f2101b411e9c # initialize rs1
addiw x23, x25, -793 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xdb27cc4f94100007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaa802c902cabfd15 # initialize rs1
addiw x24, x24, 1062 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x4375e1661cb5802e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6cb9ede3b836a5a7 # initialize rs1
addiw x25, x15, -503 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x880808d1c64ba595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x9614f68c61d15aa0 # initialize rs1
addiw x26, x7, 1294 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x40baa53134b31131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x11ea25c9d376c50b # initialize rs1
addiw x27, x29, 493 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x939f90c8d6827e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x11494bc21b30bf8b # initialize rs1
addiw x28, x9, -677 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xa5dd95aa3acbbbb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8f5d9c330c4beaa6 # initialize rs1
addiw x29, x11, 1527 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x62f3c5afce445ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbfb8f2c545680ec2 # initialize rs1
addiw x30, x20, 1118 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x209b052e51be1bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbcc669200dc7fd69 # initialize rs1
addiw x31, x6, 341 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x28, 0xffe3977941c39bf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc21c7ec2868155db # initialize rs1
addiw x28, x0, 1574 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0x352663236dc9b4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xe574c96dcbd22419 # initialize rs1
addiw x31, x1, -1143 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x71f8c692041d32f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xc47134c65b3699ff # initialize rs1
addiw x29, x2, 1489 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0xf096b17d25be2fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x96f408de26430cd2 # initialize rs1
addiw x2, x3, -529 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x7, 0xb4bac48faa26c4cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd0415e345c1cca5e # initialize rs1
addiw x7, x4, -421 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x26, 0xb19b9ab458bcafc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2096a71fdbbd11ee # initialize rs1
addiw x26, x5, 420 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0x0746ea9f94a4c0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaa6beabe237c5ddf # initialize rs1
addiw x11, x6, -892 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x23, 0xf98c44a487f84e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x45e2f4511facc2c9 # initialize rs1
addiw x23, x7, 940 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0x02fee6aca10601ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4d08fe519f055450 # initialize rs1
addiw x17, x8, 50 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0x8055afeb54f729c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfd0e1bd221f70f3a # initialize rs1
addiw x23, x9, -510 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x16, 0xf31959f65a59278c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfd0f7c6db9b72fa8 # initialize rs1
addiw x16, x10, 627 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0xf097d2b58ac59bff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x87f01db414a6022b # initialize rs1
addiw x3, x11, 235 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x17, 0xd539a2615d39ed4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x47ced73a71923534 # initialize rs1
addiw x17, x12, -880 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x58f0f69ebfa4c565 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5546af8470f13c5d # initialize rs1
addiw x2, x13, 351 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x8, 0xbb9db2579f861ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x436cbdc58610d0ad # initialize rs1
addiw x8, x14, 192 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x30, 0xa5d27cce638028bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfc918636e4c58e8e # initialize rs1
addiw x30, x15, 1718 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x29, 0x612955099159f7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xce8c94ffb1a8badd # initialize rs1
addiw x29, x16, -1984 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x14, 0xc299988b1798c748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x203cb39bed385df3 # initialize rs1
addiw x14, x17, 1508 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0x61b9e971915bd8db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1e910cc362b63307 # initialize rs1
addiw x20, x18, 13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0x520e5f4403149b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x582ded42bc113cf2 # initialize rs1
addiw x3, x19, 331 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0xbef4bddbd676b514 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xbe95c33705790517 # initialize rs1
addiw x12, x20, -1125 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x9042193db2f8a293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa0a8042db3810453 # initialize rs1
addiw x12, x21, -284 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x31, 0x5ff1ed28462e3599 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x05f86fb1d87c46a2 # initialize rs1
addiw x31, x22, -1391 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0xc78c6e1c330d9e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd5ea042c91a9c15e # initialize rs1
addiw x8, x23, 986 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x8, 0xab581cbb2998cad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5f70d9f25cb45ae8 # initialize rs1
addiw x8, x24, -1663 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x3, 0x308c8e1bf97d0048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfd0e5596c21e46e2 # initialize rs1
addiw x3, x25, 1661 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0xe683f6a57d09e275 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xee884c1af9cba455 # initialize rs1
addiw x27, x26, 1533 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x29, 0x04cf4907910d283a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffb9eb75a7c6c4f9 # initialize rs1
addiw x29, x27, 1888 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x15, 0x00219823533f65ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xb696b1b95c60ff62 # initialize rs1
addiw x15, x28, -63 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x18, 0xd6c3717aafd8aa1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x420551e1bc133a84 # initialize rs1
addiw x18, x29, 546 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x19, 0x1ecf88a5f14126aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xe6f53e1a92ed056f # initialize rs1
addiw x19, x30, -1639 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0x2e10176d67f5c670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x23ac5fbaf47ba24d # initialize rs1
addiw x23, x31, 97 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x562e8da470a2e702)
li x20, 0x9df6b21f0c8824d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9df6b21f0c8824d0 # initialize rs1
addiw x20, x14, -841 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x31, 0x57e53583042150fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addiw x31, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x30, 0x5be65c04e113a0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
addiw x30, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0xb319fdcd45b8514e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
addiw x14, x22, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x042d4c2caf5b80e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
addiw x4, x3, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x7, 0x8303d4d9dc98e180 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
addiw x7, x30, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0x6488243991e5515b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
addiw x30, x20, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x4a82307b861d68e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addiw x4, x15, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x69e827ee2fa559e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
addiw x11, x15, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0x5448156e85926da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xffffffffffffffff # initialize rs1
addiw x16, x17, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0x2764c93061bc8f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000080000000 # initialize rs1
addiw x3, x25, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x11, 0xcca48acf89881c03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000080000000 # initialize rs1
addiw x11, x23, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x3, 0x38a0f077cbd10484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
addiw x3, x24, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x17, 0x84ad01428e850816 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000080000001 # initialize rs1
addiw x17, x6, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x18, 0xdd50da374450927a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000080000001 # initialize rs1
addiw x18, x24, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0xa8fddd30724f78a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
addiw x23, x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x6, 0x5abd10f8e49c81e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x000000007fffffff # initialize rs1
addiw x6, x16, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0xd459df8d51cef530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x000000007fffffff # initialize rs1
addiw x11, x25, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x25, 0xf3aee72fe84f04a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize rs1
addiw x25, x9, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x6, 0xa8503a76b6d318e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x000000007ffffffe # initialize rs1
addiw x6, x7, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x28, 0x45f84631e226f48a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x000000007ffffffe # initialize rs1
addiw x28, x29, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x30, 0x3430166da228fccb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
addiw x30, x10, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x6, 0x884c9d016f4f2fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000ffffffff # initialize rs1
addiw x6, x13, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x10, 0x84c409a9584c42eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000ffffffff # initialize rs1
addiw x10, x21, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0xa0cf84bbaa2ed47d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xffffffffffffffff # initialize rs1
addiw x28, x29, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x17, 0x54d895ceac58d9de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
addiw x17, x27, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x093ab2abc5c92a1e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
addiw x7, x1, -2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0x33f1c96b3526b0dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
addiw x4, x15, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x27, 0x9aa30a37d1522494 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x00000000aaaaaaaa # initialize rs1
addiw x27, x28, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x20, 0x35adeb656f5b4f27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000aaaaaaaa # initialize rs1
addiw x20, x14, -1366 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x24, 0x8b3adfa832ecf8a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
addiw x24, x3, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x8, 0x3678ad940f50489d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000055555555 # initialize rs1
addiw x8, x14, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x1, 0x801429a24469506f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000055555555 # initialize rs1
addiw x1, x9, 1365 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x13, 0xa0412d73f123509c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
addiw x13, x30, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x20, 0xfa25dce75ba39445 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000063ae86f7 # initialize rs1
addiw x20, x12, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x29, 0x3f1b3d6b03747e92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000063ae86f7 # initialize rs1
addiw x29, x25, 1783 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x16, 0xb95c683aea9b00ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
addiw x16, x4, -1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x18, 0xe0475d52892eef17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00000000e3ae86f7 # initialize rs1
addiw x18, x4, 0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x19, 0x66af153b6e22e152 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000e3ae86f7 # initialize rs1
addiw x19, x13, 1783 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x28, 0x63fd0049bbf9b553 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
addiw x28, x14, -1 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0xf264483db12fbb87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000000 # initialize rs1
addiw x14, x22, -73 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x303499a921fa89cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000000000001 # initialize rs1
addiw x31, x22, 87 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x4, 0xad1870f1510f05a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x4, x6, -927 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x11, 0x32449beaf5097d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
addiw x11, x16, 1668 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x7e7ed587afdfaa44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
addiw x27, x11, 1070 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0xdb797e921f15463a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
addiw x3, x10, -813 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x2a868d2fb973855c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
addiw x23, x11, -2021 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0xf08416ffd6e4028c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize rs1
addiw x26, x8, 461 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0x263d9e3bb7c5f325 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfffffffffffffffe # initialize rs1
addiw x12, x22, 1900 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x1, 0x5df87ba869464266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
addiw x1, x30, -325 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x4, 0x09d9fe8baa7efdd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x4, x9, 890 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0xf857c4d3587a0584 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x5555555555555555 # initialize rs1
addiw x29, x5, -2045 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x0cb6c018fb410a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000ffffffff # initialize rs1
addiw x12, x30, -1030 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x1c30511b70c81176 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000fffffffe # initialize rs1
addiw x25, x18, 713 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x23, 0xd2175168d17b5734 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
addiw x23, x4, 47 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x5b45fa134f87b023 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000001 # initialize rs1
addiw x12, x15, -1545 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4692b8bccf57b57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc763394b46e1a1bc # initialize rs1
addiw x0, x0, 1283 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd4bb29015858369e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf9d4dee8280651c3 # initialize rs1
addiw x1, x1, 378 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xaf1ae4cad6cf049e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x02f6326e71286e9c # initialize rs1
addiw x2, x2, -1005 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7c0ff61703e4ff3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc51707b3da1f9370 # initialize rs1
addiw x3, x3, 399 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xd6084cdad14e2ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x39463fff308c55f7 # initialize rs1
addiw x4, x4, 508 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xcb2a807378f5c8fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xcec34857190a1f05 # initialize rs1
addiw x5, x5, -620 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0xeabff4557ff56c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x79a6960ebe9bac1f # initialize rs1
addiw x6, x6, 1027 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x61efa0a2de4344e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x701ddc724d2a5535 # initialize rs1
addiw x7, x7, 1302 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb68d52fb242a5f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x96110dc59617cabb # initialize rs1
addiw x8, x8, 627 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xfdef999cd5d7a3f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5db1572290e4e559 # initialize rs1
addiw x9, x9, -771 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7d5a9163e1b423c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8bc312534e87f2fb # initialize rs1
addiw x10, x10, 726 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1224b4de30d6c889 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x796cbfa22b35ba92 # initialize rs1
addiw x11, x11, -429 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1ef538f0829a3287 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe596f4951d97aba7 # initialize rs1
addiw x12, x12, -1060 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd8e43e2ac8bbc5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcdc426c13b915d0c # initialize rs1
addiw x13, x13, -973 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3c4c40752e381d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x940b6d9c36a49759 # initialize rs1
addiw x14, x14, 450 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5de4389808974fc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8478e416d1d1d490 # initialize rs1
addiw x15, x15, 71 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbb95a5e373c9e3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd44b4dda0c97fdb4 # initialize rs1
addiw x16, x16, -1685 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x87ef4a6021ac32a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5d85a6f024b00885 # initialize rs1
addiw x17, x17, -469 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdbb96e5ec978f414 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x97240a5144f72de4 # initialize rs1
addiw x18, x18, 594 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7fbec6bf6b4c9253 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x4a426c6fa06af582 # initialize rs1
addiw x19, x19, 1246 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0a64eae17dd8e349 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x98ccfabcac7938d8 # initialize rs1
addiw x20, x20, 156 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xa75698ba2b1571fb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x3813ac66e60e5d83 # initialize rs1
addiw x21, x21, 1357 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x70b5d6036febbd31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x79e2ab23115d3508 # initialize rs1
addiw x22, x22, 1131 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2964fe80b4347ef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4abe68f380333d8e # initialize rs1
addiw x23, x23, -547 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd6bbfb96348fb21d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x5a4649b1ec23a691 # initialize rs1
addiw x24, x24, -415 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa73732a9d8d1bbd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf3cc8f9cb745c81d # initialize rs1
addiw x25, x25, 1665 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7fd39e328a4bff78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xa81ee775b6e41f20 # initialize rs1
addiw x26, x26, 737 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x35aaf179031bfcfb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xad19517c2c31bbdc # initialize rs1
addiw x27, x27, 694 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd37f0357cfd4deb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9255ce49e2d894f0 # initialize rs1
addiw x28, x28, -118 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x55428ef872f60511 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x77be6ccef053071a # initialize rs1
addiw x29, x29, -40 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1e371bc8d7cf68ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x04be50596b7b1336 # initialize rs1
addiw x30, x30, 1286 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x541ecf3ec6ae2e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2ae9624560adf635 # initialize rs1
addiw x31, x31, 101 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x379b7f741e481838)
li x7, 0xf4bb5cf14b4e975c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x379b7f741e481838 # initialize rs1
addiw x7, x27, -1307 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x525b6239ff97d780)
li x10, 0xb5df3d2355f43fe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xada49dc600682880 # initialize rs1
addiw x10, x8, 133 # perform operation

# Testcase cp_imm_zero
li x18, 0xca957a076217796a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x14c2352b6b3d9557 # initialize rs1
addiw x18, x16, 0 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, 0 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, 1 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, 2 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, 1023 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, 1024 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, 2047 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, -2048 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, -2047 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, -2 # perform operation

# Testcase cp_imm_corners
li x19, 0x150e3454574edc6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa110669653346de1 # initialize rs1
addiw x19, x17, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000000 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000001 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000000002 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000000 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8000000000000001 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7ffffffffffffffe # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5bbc887763ae86f7 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5555555555555555 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000ffffffff # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000000 # initialize rs1
addiw x23, x6, -1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, 0 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, 1 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, 2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, 1023 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, 1024 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, 2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, -2048 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, -2047 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, -2 # perform operation

# Testcase cr_rs1_imm_corners
li x23, 0xc7addb45cd07edb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000100000001 # initialize rs1
addiw x23, x6, -1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
