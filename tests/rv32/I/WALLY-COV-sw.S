///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-sw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.009224
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0xb5f85306 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xda4ce40b # initialize rs2
la x1, scratch # base address 
addi x1, x1, -272 # sub immediate from rs1 to counter offset
sw x12, 272(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x11, 0x7270c89a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x8885a8c2 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1484 # sub immediate from rs1 to counter offset
sw x9, -1484(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x8, 0xc765056a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe71d2920 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1887 # sub immediate from rs1 to counter offset
sw x9, 1887(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x17, 0xf940fe95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x88badb28 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 83 # sub immediate from rs1 to counter offset
sw x23, -83(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x14, 0x1c8743c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x99b13383 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -344 # sub immediate from rs1 to counter offset
sw x4, 344(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x26, 0x73676f4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe0076be5 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -2005 # sub immediate from rs1 to counter offset
sw x8, 2005(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x31, 0x3ffcd11f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xc98b3fe8 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1685 # sub immediate from rs1 to counter offset
sw x24, -1685(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x1b29f000 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x8bb99857 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1137 # sub immediate from rs1 to counter offset
sw x6, 1137(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0xbc58daa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x44605ebd # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1509 # sub immediate from rs1 to counter offset
sw x6, 1509(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x20, 0x64af27f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7b50e624 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 600 # sub immediate from rs1 to counter offset
sw x27, -600(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x24, 0x0b885bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x43d56315 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 320 # sub immediate from rs1 to counter offset
sw x17, -320(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0xc1ad32a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xb581fd85 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1414 # sub immediate from rs1 to counter offset
sw x22, 1414(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0xd510e6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xe3df934a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -637 # sub immediate from rs1 to counter offset
sw x4, 637(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0xacca22f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x19d25f1b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -259 # sub immediate from rs1 to counter offset
sw x28, 259(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x5, 0x97ce12d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3a84e8c6 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 500 # sub immediate from rs1 to counter offset
sw x22, -500(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x19, 0x6bbb158a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x26dcc4dd # initialize rs2
la x16, scratch # base address 
addi x16, x16, 868 # sub immediate from rs1 to counter offset
sw x1, -868(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x8e0ef8ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x60da4b4b # initialize rs2
la x17, scratch # base address 
addi x17, x17, -955 # sub immediate from rs1 to counter offset
sw x9, 955(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x7f36ee41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb0f99225 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 925 # sub immediate from rs1 to counter offset
sw x15, -925(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0xa76df69d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xfb790d4e # initialize rs2
la x19, scratch # base address 
addi x19, x19, -822 # sub immediate from rs1 to counter offset
sw x23, 822(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x21, 0x86248a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xd9198023 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 542 # sub immediate from rs1 to counter offset
sw x4, -542(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x18, 0xccdf9fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8dbca1e9 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1065 # sub immediate from rs1 to counter offset
sw x3, -1065(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0x7bd8fb6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x24a0164e # initialize rs2
la x22, scratch # base address 
addi x22, x22, -216 # sub immediate from rs1 to counter offset
sw x29, 216(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x4, 0x3e511483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x845bd229 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 82 # sub immediate from rs1 to counter offset
sw x1, -82(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xa098655c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xabc9ffbf # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1670 # sub immediate from rs1 to counter offset
sw x1, 1670(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0x1127fb6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc7dd2663 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 542 # sub immediate from rs1 to counter offset
sw x9, -542(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x8, 0x39970b4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd0dd852a # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1888 # sub immediate from rs1 to counter offset
sw x6, 1888(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0x2c914d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xf2721097 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -2013 # sub immediate from rs1 to counter offset
sw x28, 2013(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x10, 0xecb06e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x2b50bae5 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -483 # sub immediate from rs1 to counter offset
sw x5, 483(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x6, 0xbbfab7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8b04f2b8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 855 # sub immediate from rs1 to counter offset
sw x4, -855(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x5, 0xf2f948ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6429c546 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1322 # sub immediate from rs1 to counter offset
sw x21, -1322(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0xb2c62c1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x75dea643 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1276 # sub immediate from rs1 to counter offset
sw x15, -1276(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0x4587e0ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcd7cdb9b # initialize rs2
la x13, scratch # base address 
addi x13, x13, 53 # sub immediate from rs1 to counter offset
sw x0, -53(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0x5f563d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xacb9d01f # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1111 # sub immediate from rs1 to counter offset
sw x1, 1111(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0xb557f65a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x4c1cfacb # initialize rs2
la x14, scratch # base address 
addi x14, x14, 911 # sub immediate from rs1 to counter offset
sw x2, -911(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x29, 0x3fc4b17b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x89eb5323 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1177 # sub immediate from rs1 to counter offset
sw x3, -1177(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x19, 0x9488eb95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa98c2a9a # initialize rs2
la x13, scratch # base address 
addi x13, x13, 804 # sub immediate from rs1 to counter offset
sw x4, -804(x13) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x8, 0x2372ff8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x571217df # initialize rs2
la x9, scratch # base address 
addi x9, x9, 483 # sub immediate from rs1 to counter offset
sw x5, -483(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x3, 0x5ab7a2e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x2a9bcd09 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 692 # sub immediate from rs1 to counter offset
sw x6, -692(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x20, 0x65b8155f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa596e849 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1374 # sub immediate from rs1 to counter offset
sw x7, 1374(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x29, 0xe71c881b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xebcca3a1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -329 # sub immediate from rs1 to counter offset
sw x8, 329(x15) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x29, 0x635a44d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x4ded2c90 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 530 # sub immediate from rs1 to counter offset
sw x9, -530(x5) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x8, 0xae49e1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3dcdabce # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1068 # sub immediate from rs1 to counter offset
sw x10, -1068(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0x9790c06a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x86cc7487 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1043 # sub immediate from rs1 to counter offset
sw x11, -1043(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x18, 0x7c567878 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xabf696ac # initialize rs2
la x4, scratch # base address 
addi x4, x4, 561 # sub immediate from rs1 to counter offset
sw x12, -561(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x6, 0x63e9f2d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x66ed585f # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1592 # sub immediate from rs1 to counter offset
sw x13, 1592(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x31, 0x68742542 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x3787925e # initialize rs2
la x19, scratch # base address 
addi x19, x19, 129 # sub immediate from rs1 to counter offset
sw x14, -129(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x25061e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd14cc22c # initialize rs2
la x25, scratch # base address 
addi x25, x25, 581 # sub immediate from rs1 to counter offset
sw x15, -581(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x15, 0xbb3108af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd620161f # initialize rs2
la x25, scratch # base address 
addi x25, x25, -629 # sub immediate from rs1 to counter offset
sw x16, 629(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x28, 0x98af0780 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1a1dee21 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1950 # sub immediate from rs1 to counter offset
sw x17, 1950(x12) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x71e50361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5636418c # initialize rs2
la x17, scratch # base address 
addi x17, x17, -379 # sub immediate from rs1 to counter offset
sw x18, 379(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x40e10d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x1e5e9289 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 341 # sub immediate from rs1 to counter offset
sw x19, -341(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0xb0842109 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x06bf0fca # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1821 # sub immediate from rs1 to counter offset
sw x20, -1821(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x1, 0x711c4c86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x4d1a5dfa # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1074 # sub immediate from rs1 to counter offset
sw x21, 1074(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x2, 0x6b377115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc651ed0f # initialize rs2
la x30, scratch # base address 
addi x30, x30, -789 # sub immediate from rs1 to counter offset
sw x22, 789(x30) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0x696afa46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf2d8fa1d # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1969 # sub immediate from rs1 to counter offset
sw x23, -1969(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x30, 0x33b464f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd906bf33 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -845 # sub immediate from rs1 to counter offset
sw x24, 845(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x6, 0xb04f913c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9fa828df # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1990 # sub immediate from rs1 to counter offset
sw x25, -1990(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x27, 0xb4071427 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5439d0b9 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -758 # sub immediate from rs1 to counter offset
sw x26, 758(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x7, 0xd09171db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x445158ad # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1441 # sub immediate from rs1 to counter offset
sw x27, 1441(x11) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0x9e0bcc57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x6c8b6409 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -133 # sub immediate from rs1 to counter offset
sw x28, 133(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xea0bbb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xef42dcf6 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 261 # sub immediate from rs1 to counter offset
sw x29, -261(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x4, 0x91ba9f64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x34edc834 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 375 # sub immediate from rs1 to counter offset
sw x30, -375(x3) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x25c68e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x56e6985b # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1678 # sub immediate from rs1 to counter offset
sw x31, 1678(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0xaf06591d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 875 # sub immediate from rs1 to counter offset
sw x5, -875(x31) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0x41a34f9e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000001 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 344 # sub immediate from rs1 to counter offset
sw x10, -344(x18) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0xa2347f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000002 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1970 # sub immediate from rs1 to counter offset
sw x16, -1970(x4) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x4, 0xed540597 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x80000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 127 # sub immediate from rs1 to counter offset
sw x6, -127(x11) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x7362a486 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x80000001 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -167 # sub immediate from rs1 to counter offset
sw x29, 167(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x10, 0xdd88c7b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffff # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1144 # sub immediate from rs1 to counter offset
sw x16, 1144(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x25, 0xa689369f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ffffffe # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1109 # sub immediate from rs1 to counter offset
sw x9, -1109(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0x4ae409df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffff # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1313 # sub immediate from rs1 to counter offset
sw x25, 1313(x17) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x08191e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffe # initialize rs2
la x27, scratch # base address 
addi x27, x27, -472 # sub immediate from rs1 to counter offset
sw x26, 472(x27) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8877)
li x9, 0xbdc5a3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5bbc8877 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 870 # sub immediate from rs1 to counter offset
sw x29, -870(x5) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x26, 0xc8867331 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaa # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1427 # sub immediate from rs1 to counter offset
sw x24, -1427(x20) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x19, 0x0f5ed4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x55555555 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1248 # sub immediate from rs1 to counter offset
sw x6, -1248(x31) # perform operation 

# Testcase cp_imm_zero
li x24, 0x4ddc285c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xcc1d6cbf # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x20, 0(x12) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
