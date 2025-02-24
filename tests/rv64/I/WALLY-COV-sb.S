///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-sb.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.489034
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x20, 0x7022ba4c839eadba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x93bbac3b2598f536 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -773 # sub immediate from rs1 to counter offset
sb x22, 773(x1) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0xe6877117a3244b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x2347a0394e3939d2 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1821 # sub immediate from rs1 to counter offset
sb x8, 1821(x2) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0xd821253a3f5268a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1eabfe5f4557afa9 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1151 # sub immediate from rs1 to counter offset
sb x18, 1151(x3) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x4)
li x11, 0x5731c381cb634274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x465063aede476254 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 691 # sub immediate from rs1 to counter offset
sb x19, -691(x4) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0x3a778f12a47b7716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x47730d8b38e9bdff # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1851 # sub immediate from rs1 to counter offset
sb x24, 1851(x5) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0xb5a3a0a782bedfa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf48a253058f651fd # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1336 # sub immediate from rs1 to counter offset
sb x24, -1336(x6) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x7)
li x11, 0xe0e0254864500598 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xdf93a1a480518272 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 913 # sub immediate from rs1 to counter offset
sb x17, -913(x7) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0x9816b8b293c8e6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x492eb7f9e54c2a9b # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1680 # sub immediate from rs1 to counter offset
sb x1, -1680(x8) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xd507b7fd9c93915c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x981ede2e44ee4778 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 351 # sub immediate from rs1 to counter offset
sb x3, -351(x9) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x477aa13fba4c171d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xc30b47232dc95238 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1428 # sub immediate from rs1 to counter offset
sb x4, -1428(x10) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0xb7d16306877a8cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x735d0d39d6359513 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1674 # sub immediate from rs1 to counter offset
sb x2, 1674(x11) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0xd2185a2d4188b4cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x1aaf5e184678e7d5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1617 # sub immediate from rs1 to counter offset
sb x25, 1617(x12) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0xe918ef319b1eb3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x433fef7ac9a1b5e1 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 465 # sub immediate from rs1 to counter offset
sb x24, -465(x13) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0xabc638c861951121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xab32b385cc6a304e # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1118 # sub immediate from rs1 to counter offset
sb x7, -1118(x14) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x15)
li x23, 0xdf37cbe69c814ee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x2df1c8c2ff3039d3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1208 # sub immediate from rs1 to counter offset
sb x25, 1208(x15) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0xac76e25cc55b5a40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf30be15bdebeba47 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1394 # sub immediate from rs1 to counter offset
sb x10, 1394(x16) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0xd47a7d85059b79f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x3233792214c3b7cc # initialize rs2
la x17, scratch # base address 
addi x17, x17, 586 # sub immediate from rs1 to counter offset
sb x16, -586(x17) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x18)
li x3, 0x0d52c3edc310380a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3c98e7ea65d65be9 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 565 # sub immediate from rs1 to counter offset
sb x23, -565(x18) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x19)
li x28, 0x199129471f9b56e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1159459aa944cde6 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 295 # sub immediate from rs1 to counter offset
sb x1, -295(x19) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x20)
li x23, 0x2389927921b58fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x89ec5cfbe28d987c # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1394 # sub immediate from rs1 to counter offset
sb x11, 1394(x20) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x21)
li x5, 0x05b9b3499d3fca03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xdb7401d5eb399741 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 605 # sub immediate from rs1 to counter offset
sb x6, -605(x21) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x22)
li x12, 0x4e3a0f93fe2fbf82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x60718585a8b04e43 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -324 # sub immediate from rs1 to counter offset
sb x14, 324(x22) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0xbd758906733075eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9fc92dd6d616f263 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1073 # sub immediate from rs1 to counter offset
sb x12, 1073(x23) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x24)
li x8, 0x4c311b1fa8f89d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc18e434edfe9968f # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1500 # sub immediate from rs1 to counter offset
sb x7, -1500(x24) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x4da02bcc23da71be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x2d56b66c7b80ced4 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 510 # sub immediate from rs1 to counter offset
sb x17, -510(x25) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x26)
li x12, 0x2d9dbfabb073a71d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x615b8072d8bf27a5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1749 # sub immediate from rs1 to counter offset
sb x22, 1749(x26) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0x7461d7aaa19de198 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x10da76a76faa3327 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -513 # sub immediate from rs1 to counter offset
sb x8, 513(x27) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x41d24ae5e2e934ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xfead0dc0757fbd98 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1137 # sub immediate from rs1 to counter offset
sb x31, 1137(x28) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x29)
li x14, 0x5eadd4721a8a40dd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1558448a4bdbbf7f # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1807 # sub immediate from rs1 to counter offset
sb x22, -1807(x29) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x30)
li x3, 0xcf7dda4b60e8d529 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x03e90808c798f141 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1308 # sub immediate from rs1 to counter offset
sb x6, 1308(x30) # perform operation 

# Testcase cp_rs1 (Test source rs1 = x31)
li x30, 0x544451307b22e1e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2d9a535cd5b2b5e7 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1489 # sub immediate from rs1 to counter offset
sb x12, -1489(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x0)
li x10, 0xed371c1a1447e4f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1f4e5cfa9492e1ee # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1579 # sub immediate from rs1 to counter offset
sb x0, -1579(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0x05c9f99adb0b5e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa607e5e24a980f80 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -642 # sub immediate from rs1 to counter offset
sb x1, 642(x7) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x9487aba7b3ed6318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6918963ab9a08956 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 316 # sub immediate from rs1 to counter offset
sb x2, -316(x22) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0x8e563869812dbe45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc89cf1d01f58f9cf # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1579 # sub immediate from rs1 to counter offset
sb x3, 1579(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x4)
li x22, 0xf13cd2e89dbb761b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfd306e50e0ebb36b # initialize rs2
la x9, scratch # base address 
addi x9, x9, 708 # sub immediate from rs1 to counter offset
sb x4, -708(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x5)
li x7, 0xd82e21dbaf1fea83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb665326c994afb37 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -183 # sub immediate from rs1 to counter offset
sb x5, 183(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x6)
li x2, 0x896778abf91d1ad1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf627e436a936bcca # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1096 # sub immediate from rs1 to counter offset
sb x6, 1096(x1) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x7)
li x4, 0x41c27ee1a1226a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0daae9d6a326acb3 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -227 # sub immediate from rs1 to counter offset
sb x7, 227(x14) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x8)
li x7, 0xbb6b7527e9408716 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7c27735e10e5b7b3 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1046 # sub immediate from rs1 to counter offset
sb x8, -1046(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x9)
li x16, 0x8f99c3ad0f153871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc0a7ea30227f8587 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1010 # sub immediate from rs1 to counter offset
sb x9, 1010(x10) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x10)
li x24, 0x3fdcb7b39b5cb887 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5ccfea7a0a755b6a # initialize rs2
la x8, scratch # base address 
addi x8, x8, -574 # sub immediate from rs1 to counter offset
sb x10, 574(x8) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0x7bcf458ad558239d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa180611d9c735255 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1392 # sub immediate from rs1 to counter offset
sb x11, -1392(x9) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0x20ddeae6d07c367f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf50454576e2796df # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1331 # sub immediate from rs1 to counter offset
sb x12, 1331(x26) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0x106aa3810e7c5459 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfcc3a0995c8eb43c # initialize rs2
la x17, scratch # base address 
addi x17, x17, 857 # sub immediate from rs1 to counter offset
sb x13, -857(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x5efe64ede2b9a621 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbecea88a477d1934 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1821 # sub immediate from rs1 to counter offset
sb x14, -1821(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x15)
li x4, 0xc10a322caa617f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x1ab1ce105f5d0e80 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1349 # sub immediate from rs1 to counter offset
sb x15, -1349(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x16)
li x3, 0xd9b044ca0dfd02c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe817ea946746f69a # initialize rs2
la x31, scratch # base address 
addi x31, x31, -683 # sub immediate from rs1 to counter offset
sb x16, 683(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x17)
li x16, 0x4c49da544e25b6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x319928e134f98a68 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1730 # sub immediate from rs1 to counter offset
sb x17, -1730(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0x80ecce36ed3295b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xed880346ea3b35f8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1537 # sub immediate from rs1 to counter offset
sb x18, 1537(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0x1314e70805b7d80f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0408b301f421c18a # initialize rs2
la x25, scratch # base address 
addi x25, x25, -857 # sub immediate from rs1 to counter offset
sb x19, 857(x25) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x20)
li x4, 0x92d426345c868c7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xe83aff0a7a91f1f9 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -244 # sub immediate from rs1 to counter offset
sb x20, 244(x19) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x21)
li x3, 0x7a708d7feb0ff25c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xc9e9e813bd6660cc # initialize rs2
la x17, scratch # base address 
addi x17, x17, -500 # sub immediate from rs1 to counter offset
sb x21, 500(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0xf0916f3e78da968e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xf071e37366adf720 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1655 # sub immediate from rs1 to counter offset
sb x22, 1655(x20) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x1ad37865948e436c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x20bcc26d70e50eb6 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 625 # sub immediate from rs1 to counter offset
sb x23, -625(x31) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x7c2389f49bdb1de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1ec26249a24319b9 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -951 # sub immediate from rs1 to counter offset
sb x24, 951(x18) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0xa728e50070b734c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x902fef3a8f59298a # initialize rs2
la x27, scratch # base address 
addi x27, x27, -726 # sub immediate from rs1 to counter offset
sb x25, 726(x27) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0xcc4a0be7d6b79f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x2d6549ad76aedb94 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1993 # sub immediate from rs1 to counter offset
sb x26, 1993(x17) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0xc84a6ff38a6d39d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x3a3c050543aab45e # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1880 # sub immediate from rs1 to counter offset
sb x27, 1880(x4) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0x89b0caccc30c5886 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x39f66cb152ba68f1 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 852 # sub immediate from rs1 to counter offset
sb x28, -852(x6) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0xfa17180ceeb3be8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x15856155ffbdc061 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 225 # sub immediate from rs1 to counter offset
sb x29, -225(x21) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x30)
li x14, 0x6ee76946fe95251c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xc9bef4063e5a093d # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1205 # sub immediate from rs1 to counter offset
sb x30, 1205(x23) # perform operation 

# Testcase cp_rs2 (Test source rs2 = x31)
li x18, 0xd0b1c66663a939dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x50bd46d1fd413b61 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1346 # sub immediate from rs1 to counter offset
sb x31, -1346(x19) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x11, 0x13b6a2cb7552d567 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 901 # sub immediate from rs1 to counter offset
sb x24, -901(x15) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0xf8df964066b29266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 741 # sub immediate from rs1 to counter offset
sb x21, -741(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x8, 0x91944c98b2ad58f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 827 # sub immediate from rs1 to counter offset
sb x1, -827(x23) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x25, 0x2b2c2a8d5045f6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8000000000000000 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -323 # sub immediate from rs1 to counter offset
sb x12, 323(x19) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0xb6a9dd1922063357 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1504 # sub immediate from rs1 to counter offset
sb x3, -1504(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0xaf74d77451974743 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs2
la x7, scratch # base address 
addi x7, x7, 2014 # sub immediate from rs1 to counter offset
sb x23, -2014(x7) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x165c941a3b459df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1572 # sub immediate from rs1 to counter offset
sb x5, 1572(x6) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x1aeee3d26ab397ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs2
la x4, scratch # base address 
addi x4, x4, -197 # sub immediate from rs1 to counter offset
sb x28, 197(x4) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x21, 0x657cdff5a318f27a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfffffffffffffffe # initialize rs2
la x2, scratch # base address 
addi x2, x2, -34 # sub immediate from rs1 to counter offset
sb x19, 34(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x12, 0x1688941d837a0939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5bbc887763ae86f7 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 439 # sub immediate from rs1 to counter offset
sb x22, -439(x5) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0x319005cfd7857fa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
la x2, scratch # base address 
addi x2, x2, -839 # sub immediate from rs1 to counter offset
sb x9, 839(x2) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x8b199d8b1e670694 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5555555555555555 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1162 # sub immediate from rs1 to counter offset
sb x12, -1162(x7) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0x30dcc973f5e07f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000ffffffff # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1415 # sub immediate from rs1 to counter offset
sb x7, -1415(x29) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0xce7c6b3e85728aee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs2
la x23, scratch # base address 
addi x23, x23, 629 # sub immediate from rs1 to counter offset
sb x3, -629(x23) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x2f701b188a830ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000100000000 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -116 # sub immediate from rs1 to counter offset
sb x12, 116(x28) # perform operation 

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0xf84bda7dddabe072 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000001 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -163 # sub immediate from rs1 to counter offset
sb x8, 163(x15) # perform operation 

# Testcase cp_imm_zero
li x30, 0x0c100a1c30cb5bc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xe3c655c11f8ab957 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 0 # sub immediate from rs1 to counter offset
sb x7, 0(x23) # perform operation 

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
