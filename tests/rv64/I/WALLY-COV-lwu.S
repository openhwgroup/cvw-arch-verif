///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lwu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.484491
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x72e80f3b25120028 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfe5d33a65d82a032 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1062 # sub immediate from rs1 to counter offset
sd x8, -1062 (x12) # store value to put something in memory
lwu x0, -1062(x12) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x12ff9c0b11fb7077 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe7337dcaa17411cc # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1362 # sub immediate from rs1 to counter offset
sd x22, -1362 (x23) # store value to put something in memory
lwu x1, -1362(x23) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xb7cd6091a754ac93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x4406987bfda97b13 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -171 # sub immediate from rs1 to counter offset
sd x3, 171 (x8) # store value to put something in memory
lwu x2, 171(x8) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xaa405eb3c6364b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x08634c6ce66ef3c8 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 857 # sub immediate from rs1 to counter offset
sd x29, -857 (x21) # store value to put something in memory
lwu x3, -857(x21) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xc954661a9b2ace06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd6eec08cacedcd0c # initialize rs2
la x12, scratch # base address 
addi x12, x12, 582 # sub immediate from rs1 to counter offset
sd x28, -582 (x12) # store value to put something in memory
lwu x4, -582(x12) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x400b881a9afbdc42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd2412f2989d64810 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1663 # sub immediate from rs1 to counter offset
sd x3, 1663 (x6) # store value to put something in memory
lwu x5, 1663(x6) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x87511168cfd002a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x90650be4eea27dd7 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 789 # sub immediate from rs1 to counter offset
sd x12, -789 (x26) # store value to put something in memory
lwu x6, -789(x26) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc666a815a4c0c603 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8c0a3136c6e38105 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -773 # sub immediate from rs1 to counter offset
sd x12, 773 (x5) # store value to put something in memory
lwu x7, 773(x5) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe07ed98e995346fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd65422ef814c214a # initialize rs2
la x9, scratch # base address 
addi x9, x9, 951 # sub immediate from rs1 to counter offset
sd x16, -951 (x9) # store value to put something in memory
lwu x8, -951(x9) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9fde44f040abe13b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x78f2f9e53598812d # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1704 # sub immediate from rs1 to counter offset
sd x30, -1704 (x4) # store value to put something in memory
lwu x9, -1704(x4) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x5a59826752c3d667 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xdc59cf92bdac4688 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -343 # sub immediate from rs1 to counter offset
sd x25, 343 (x31) # store value to put something in memory
lwu x10, 343(x31) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8311abb0ae1bde66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x6d9d9bf97d233b33 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 343 # sub immediate from rs1 to counter offset
sd x16, -343 (x26) # store value to put something in memory
lwu x11, -343(x26) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x561a442bb1ac4cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xf87006d942b9fd7b # initialize rs2
la x20, scratch # base address 
addi x20, x20, 727 # sub immediate from rs1 to counter offset
sd x7, -727 (x20) # store value to put something in memory
lwu x12, -727(x20) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x4c89c29b1dc21947 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x94ab822332dd9e3e # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1527 # sub immediate from rs1 to counter offset
sd x23, -1527 (x22) # store value to put something in memory
lwu x13, -1527(x22) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6e115e2ec9329e67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x75e7a51bb97bc31c # initialize rs2
la x8, scratch # base address 
addi x8, x8, 564 # sub immediate from rs1 to counter offset
sd x21, -564 (x8) # store value to put something in memory
lwu x14, -564(x8) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8d4edd3848336d35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc487b500e4a474d5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -171 # sub immediate from rs1 to counter offset
sd x29, 171 (x24) # store value to put something in memory
lwu x15, 171(x24) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x63c6e209715106fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7eaeaa6d2b7e9e1b # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1818 # sub immediate from rs1 to counter offset
sd x22, -1818 (x11) # store value to put something in memory
lwu x16, -1818(x11) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xd4e99f66361e8dce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1d20898b4f41d660 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1286 # sub immediate from rs1 to counter offset
sd x11, 1286 (x24) # store value to put something in memory
lwu x17, 1286(x24) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0a550781f741ef09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfd03fb4905380ee7 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1484 # sub immediate from rs1 to counter offset
sd x5, 1484 (x17) # store value to put something in memory
lwu x18, 1484(x17) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xffd41128a6b1ddbd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xcc3abf7a0e903799 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1405 # sub immediate from rs1 to counter offset
sd x16, 1405 (x15) # store value to put something in memory
lwu x19, 1405(x15) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x75bbbaabf81cd8b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x901e607d6b923192 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 960 # sub immediate from rs1 to counter offset
sd x23, -960 (x12) # store value to put something in memory
lwu x20, -960(x12) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x0230d7f785a464aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xbd9ce5b23c00e5ad # initialize rs2
la x19, scratch # base address 
addi x19, x19, -156 # sub immediate from rs1 to counter offset
sd x28, 156 (x19) # store value to put something in memory
lwu x21, 156(x19) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x460e5edb68a1a794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x9d2d6304774bb8e0 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 330 # sub immediate from rs1 to counter offset
sd x6, -330 (x20) # store value to put something in memory
lwu x22, -330(x20) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x07a5dc5c2e0bb326 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2e0a3eada47966b4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1506 # sub immediate from rs1 to counter offset
sd x15, 1506 (x12) # store value to put something in memory
lwu x23, 1506(x12) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x4a356bedd524cab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x9e868947d6f834dc # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1472 # sub immediate from rs1 to counter offset
sd x3, 1472 (x23) # store value to put something in memory
lwu x24, 1472(x23) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xd1dde0ab33600394 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbb1d1b1d9da61f9f # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1014 # sub immediate from rs1 to counter offset
sd x16, -1014 (x8) # store value to put something in memory
lwu x25, -1014(x8) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3e858c1dde162e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa5ba72dc86dcc35a # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1433 # sub immediate from rs1 to counter offset
sd x14, -1433 (x10) # store value to put something in memory
lwu x26, -1433(x10) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x3de1f45de31d2c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x19689305cdfccfc5 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1712 # sub immediate from rs1 to counter offset
sd x26, 1712 (x4) # store value to put something in memory
lwu x27, 1712(x4) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb9f2abfb58a50303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x36618f503d9ecc4e # initialize rs2
la x15, scratch # base address 
addi x15, x15, 594 # sub immediate from rs1 to counter offset
sd x30, -594 (x15) # store value to put something in memory
lwu x28, -594(x15) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x7f821289e96b7d11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xbafd7122a0844631 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1897 # sub immediate from rs1 to counter offset
sd x7, 1897 (x1) # store value to put something in memory
lwu x29, 1897(x1) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x660252f4574f0ddd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa1d38426bcbc551c # initialize rs2
la x3, scratch # base address 
addi x3, x3, 861 # sub immediate from rs1 to counter offset
sd x10, -861 (x3) # store value to put something in memory
lwu x30, -861(x3) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd20d701c23aa450b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x230c26bb8eb665a3 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -996 # sub immediate from rs1 to counter offset
sd x23, 996 (x12) # store value to put something in memory
lwu x31, 996(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x24, 0xdb053b43ada187b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc6f71555016b88b6 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1965 # sub immediate from rs1 to counter offset
sd x11, 1965 (x1) # store value to put something in memory
lwu x24, 1965(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0xa790a67b9a33fac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x010d486cf3b72928 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -749 # sub immediate from rs1 to counter offset
sd x5, 749 (x2) # store value to put something in memory
lwu x13, 749(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x30, 0xa7f40aa6506dbdb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x9b43bc78a24e134c # initialize rs2
la x3, scratch # base address 
addi x3, x3, -919 # sub immediate from rs1 to counter offset
sd x18, 919 (x3) # store value to put something in memory
lwu x30, 919(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x29, 0x326e082e71fdb9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x9147a5311951cefa # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1345 # sub immediate from rs1 to counter offset
sd x11, -1345 (x4) # store value to put something in memory
lwu x29, -1345(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x2, 0xd67010f5a963aa43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x017440e86402d319 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1990 # sub immediate from rs1 to counter offset
sd x10, -1990 (x5) # store value to put something in memory
lwu x2, -1990(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x12, 0xdd084451f67a8837 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x233c5d87cab3155b # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1781 # sub immediate from rs1 to counter offset
sd x13, -1781 (x6) # store value to put something in memory
lwu x12, -1781(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0xfaa90e06924f5af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x065ce455bd099eaa # initialize rs2
la x7, scratch # base address 
addi x7, x7, -11 # sub immediate from rs1 to counter offset
sd x23, 11 (x7) # store value to put something in memory
lwu x16, 11(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x5, 0xb44e48a5e0bae6a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x858e0c9097c479ea # initialize rs2
la x8, scratch # base address 
addi x8, x8, 314 # sub immediate from rs1 to counter offset
sd x25, -314 (x8) # store value to put something in memory
lwu x5, -314(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x25, 0xb699be4f83df2c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x350542aea731da82 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -172 # sub immediate from rs1 to counter offset
sd x30, 172 (x9) # store value to put something in memory
lwu x25, 172(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x29, 0x89817a05d5e90dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xe56d3e1505f3d84d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1004 # sub immediate from rs1 to counter offset
sd x31, 1004 (x10) # store value to put something in memory
lwu x29, 1004(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x1, 0x5def2c6d789a908b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x067c699f35549fc2 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 536 # sub immediate from rs1 to counter offset
sd x28, -536 (x11) # store value to put something in memory
lwu x1, -536(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x20, 0x3df74de3f2cc33ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe0a92cd169cc5dcb # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1870 # sub immediate from rs1 to counter offset
sd x15, -1870 (x12) # store value to put something in memory
lwu x20, -1870(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0x03658d72fa6d992b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xdef328da2bf0face # initialize rs2
la x13, scratch # base address 
addi x13, x13, 912 # sub immediate from rs1 to counter offset
sd x28, -912 (x13) # store value to put something in memory
lwu x17, -912(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0x52f725222576b3ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x272ab46b35aced26 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1654 # sub immediate from rs1 to counter offset
sd x6, 1654 (x14) # store value to put something in memory
lwu x21, 1654(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0x0f90fc39c46e5b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xd4a5a0e08ad3fc3a # initialize rs2
la x15, scratch # base address 
addi x15, x15, 514 # sub immediate from rs1 to counter offset
sd x6, -514 (x15) # store value to put something in memory
lwu x10, -514(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0xf8991c4b4cb436cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4ea01467d475e313 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -596 # sub immediate from rs1 to counter offset
sd x12, 596 (x16) # store value to put something in memory
lwu x20, 596(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0x1998bc026126693e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xd4af11e6cc109000 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1777 # sub immediate from rs1 to counter offset
sd x23, 1777 (x17) # store value to put something in memory
lwu x24, 1777(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0xacd2fdba1b1d5131 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x1414cbbbd88ed9a5 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1522 # sub immediate from rs1 to counter offset
sd x2, -1522 (x18) # store value to put something in memory
lwu x20, -1522(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x22, 0x66e2631f5bcef99e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x512e9fa2a1520c42 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1435 # sub immediate from rs1 to counter offset
sd x6, 1435 (x19) # store value to put something in memory
lwu x22, 1435(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x7, 0x67a7fa9e6221e4b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1a0839800b90603d # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1715 # sub immediate from rs1 to counter offset
sd x3, -1715 (x20) # store value to put something in memory
lwu x7, -1715(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x26, 0x8a2393a3e823b823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xe9c178ba86b30b74 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 2014 # sub immediate from rs1 to counter offset
sd x17, -2014 (x21) # store value to put something in memory
lwu x26, -2014(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0x7f5fb7e38e8bfd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1a8bc8a49c9b2366 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 657 # sub immediate from rs1 to counter offset
sd x8, -657 (x22) # store value to put something in memory
lwu x28, -657(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0xfa5f9fae34100e23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x81d750356ba2bc27 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1222 # sub immediate from rs1 to counter offset
sd x14, -1222 (x23) # store value to put something in memory
lwu x7, -1222(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x14, 0x335fa515e1c81261 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x133cfaffc7d2c980 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1927 # sub immediate from rs1 to counter offset
sd x9, -1927 (x24) # store value to put something in memory
lwu x14, -1927(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x8, 0xcbefae85f42c7bb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xc27233f436b41a1d # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1278 # sub immediate from rs1 to counter offset
sd x9, 1278 (x25) # store value to put something in memory
lwu x8, 1278(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0xdf79f52a56180c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9a8296a60ac7ff6f # initialize rs2
la x26, scratch # base address 
addi x26, x26, 388 # sub immediate from rs1 to counter offset
sd x30, -388 (x26) # store value to put something in memory
lwu x25, -388(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x25, 0x5cc5351b40817d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa67c197a413a7d16 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1258 # sub immediate from rs1 to counter offset
sd x21, 1258 (x27) # store value to put something in memory
lwu x25, 1258(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x3673640711c98806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x359b7627de1aa3b6 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -472 # sub immediate from rs1 to counter offset
sd x6, 472 (x28) # store value to put something in memory
lwu x17, 472(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x27, 0x7305a863c927f832 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ec2914779ff39ac # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1113 # sub immediate from rs1 to counter offset
sd x14, 1113 (x29) # store value to put something in memory
lwu x27, 1113(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0x7dcd63d5e9f50243 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x60f1f70be79fc90f # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1206 # sub immediate from rs1 to counter offset
sd x6, 1206 (x30) # store value to put something in memory
lwu x17, 1206(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x18, 0x70a6d6bae203d39e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x046a50811207ff90 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 417 # sub immediate from rs1 to counter offset
sd x26, -417 (x31) # store value to put something in memory
lwu x18, -417(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x11, 0x4cbb5546015e6a05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9117827f50697db4 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x21) # store value to put something in memory
lwu x11, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0xb0c3a434853c772d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 0 # sub immediate from rs1 to counter offset
sd x14, 0 (x29) # store value to put something in memory
lwu x28, 0(x29) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0xec9ed8f34c9ffa8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000000000000 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sd x2, -1 (x11) # store value to put something in memory
lwu x15, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0xce69f6c2b95ac72b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe41e755fa23ef072 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x27) # store value to put something in memory
lwu x23, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x3dea78323781baaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1 # sub immediate from rs1 to counter offset
sd x13, 1 (x4) # store value to put something in memory
lwu x23, 1(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x25, 0x90285909842d09bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000000001 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sd x7, -1 (x2) # store value to put something in memory
lwu x25, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x15, 0xf7e4ee116790f482 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x901f2c47fd1aec80 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x22) # store value to put something in memory
lwu x15, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x9a92623ecf93edf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000002 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
sd x18, 2 (x8) # store value to put something in memory
lwu x29, 2(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0x59e67e443081f53b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000002 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1 # sub immediate from rs1 to counter offset
sd x19, -1 (x21) # store value to put something in memory
lwu x3, -1(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x20, 0xc458fbdb444a8095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2efa55b847e979ec # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x3) # store value to put something in memory
lwu x20, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x8b0f90993d6c75f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000080000000 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x6, 0 (x26) # store value to put something in memory
lwu x9, 0(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x29, 0x1c7fefde35d9f99f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000080000000 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1 # sub immediate from rs1 to counter offset
sd x11, -1 (x7) # store value to put something in memory
lwu x29, -1(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x10, 0xfa36841838af69a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xbbac817a708ddce5 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x31) # store value to put something in memory
lwu x10, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x8, 0x4fddf95853e6b0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000080000001 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1 # sub immediate from rs1 to counter offset
sd x20, 1 (x23) # store value to put something in memory
lwu x8, 1(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x9, 0x2a78968e770a4d91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000080000001 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sd x12, -1 (x17) # store value to put something in memory
lwu x9, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x14, 0xe8f89af82a755079 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x917aee52750d1541 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x7) # store value to put something in memory
lwu x14, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x26, 0x40bc9f16814cdde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x000000007fffffff # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sd x1, -1 (x22) # store value to put something in memory
lwu x26, -1(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x12, 0x23c98e92011d3102 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000007fffffff # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1 # sub immediate from rs1 to counter offset
sd x10, -1 (x23) # store value to put something in memory
lwu x12, -1(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x10, 0x497ebcd2c04b21cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x7d9e04c0511f1e68 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x13) # store value to put something in memory
lwu x10, 0(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x1, 0x2f6df2a73bc2a987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x000000007ffffffe # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2 # sub immediate from rs1 to counter offset
sd x21, -2 (x18) # store value to put something in memory
lwu x1, -2(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0x28ba2781deafcd75 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000007ffffffe # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sd x14, -1 (x11) # store value to put something in memory
lwu x8, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x29, 0x2dc6f759db6e2838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfb05682d5aa147c3 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x21) # store value to put something in memory
lwu x29, 0(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x8, 0xa21583cb3517a361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x20, -1 (x13) # store value to put something in memory
lwu x8, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x31, 0x52361b026748a7b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x00000000ffffffff # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1 # sub immediate from rs1 to counter offset
sd x17, -1 (x11) # store value to put something in memory
lwu x31, -1(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x14, 0xca64d1846d6c4c3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x27d20923d7121678 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x18) # store value to put something in memory
lwu x14, 0(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x23, 0xddc1edbf587075f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000fffffffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, 2 # sub immediate from rs1 to counter offset
sd x2, -2 (x10) # store value to put something in memory
lwu x23, -2(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x7, 0x20be6756ca9c6564 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00000000fffffffe # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1 # sub immediate from rs1 to counter offset
sd x5, -1 (x6) # store value to put something in memory
lwu x7, -1(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x17, 0x89a0add338e773bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0c4fdf3f4bcce638 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x27) # store value to put something in memory
lwu x17, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x10, 0x687df13ec94a5bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000aaaaaaaa # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1366 # sub immediate from rs1 to counter offset
sd x15, -1366 (x6) # store value to put something in memory
lwu x10, -1366(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x3, 0x747babc4470f9115 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000aaaaaaaa # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1 # sub immediate from rs1 to counter offset
sd x10, -1 (x19) # store value to put something in memory
lwu x3, -1(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0x2f1fa92e83b3525c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3ceef129824b7f4d # initialize rs2
la x28, scratch # base address 
addi x28, x28, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x28) # store value to put something in memory
lwu x6, 0(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x6, 0xfd166f06830323df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000055555555 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1365 # sub immediate from rs1 to counter offset
sd x7, 1365 (x26) # store value to put something in memory
lwu x6, 1365(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x22, 0x49b686654af4f0cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000055555555 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1 # sub immediate from rs1 to counter offset
sd x18, -1 (x30) # store value to put something in memory
lwu x22, -1(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0x6cf45f6706688483 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xccf07385b266b549 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x15) # store value to put something in memory
lwu x23, 0(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x13, 0x3e63750196feb735 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000063ae86f7 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1783 # sub immediate from rs1 to counter offset
sd x15, 1783 (x3) # store value to put something in memory
lwu x13, 1783(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x7, 0x5d536d968b7e2142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000063ae86f7 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1 # sub immediate from rs1 to counter offset
sd x27, -1 (x28) # store value to put something in memory
lwu x7, -1(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x31, 0x268d3b8406dd839a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x4f0eeaab79b4e875 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x16) # store value to put something in memory
lwu x31, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x10, 0x95d89bd0b6d96862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000e3ae86f7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1783 # sub immediate from rs1 to counter offset
sd x26, 1783 (x8) # store value to put something in memory
lwu x10, 1783(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x24, 0xa1102bb0f971e2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000e3ae86f7 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1 # sub immediate from rs1 to counter offset
sd x20, -1 (x29) # store value to put something in memory
lwu x24, -1(x29) # perform operation

# Testcase cp_imm_zero
li x4, 0x50d0d4302c0407c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x845134c395c3b6e8 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sd x15, 0 (x24) # store value to put something in memory
lwu x4, 0(x24) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lwu x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
