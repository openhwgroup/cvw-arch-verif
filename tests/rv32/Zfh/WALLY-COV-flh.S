///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zfh//WALLY-COV-flh.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.582607
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
li x21, 0x0156d8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 713 # sub immediate from rs1 to counter offset
li x26, 0x60802f5b # load x3 with value 0x60802f5b
sw x26, -713(x1) # store 0x60802f5b in memory
flh f21, -713(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x16, 0x2fd4d89b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, -1613 # sub immediate from rs1 to counter offset
li x1, 0x0f4e51c0 # load x3 with value 0x0f4e51c0
sw x1, 1613(x2) # store 0x0f4e51c0 in memory
flh f16, 1613(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x8, 0x823d1c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 156 # sub immediate from rs1 to counter offset
li x1, 0x31efb134 # load x3 with value 0x31efb134
sw x1, -156(x3) # store 0x31efb134 in memory
flh f8, -156(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x5, 0xacf3ac91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -418 # sub immediate from rs1 to counter offset
li x1, 0xce852a52 # load x3 with value 0xce852a52
sw x1, 418(x4) # store 0xce852a52 in memory
flh f5, 418(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x30, 0xdcd989b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 838 # sub immediate from rs1 to counter offset
li x1, 0xb9885fdc # load x3 with value 0xb9885fdc
sw x1, -838(x5) # store 0xb9885fdc in memory
flh f30, -838(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x9, 0x732c99bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 563 # sub immediate from rs1 to counter offset
li x1, 0xa172bcee # load x3 with value 0xa172bcee
sw x1, -563(x6) # store 0xa172bcee in memory
flh f9, -563(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0xed7ec5d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -444 # sub immediate from rs1 to counter offset
li x17, 0x81d7b910 # load x3 with value 0x81d7b910
sw x17, 444(x7) # store 0x81d7b910 in memory
flh f25, 444(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x18, 0x6d74d05e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, 603 # sub immediate from rs1 to counter offset
li x1, 0xc62795be # load x3 with value 0xc62795be
sw x1, -603(x8) # store 0xc62795be in memory
flh f18, -603(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0xdf1afc6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 1234 # sub immediate from rs1 to counter offset
li x1, 0xc47a64e9 # load x3 with value 0xc47a64e9
sw x1, -1234(x9) # store 0xc47a64e9 in memory
flh f17, -1234(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x19, 0x60886f5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -1260 # sub immediate from rs1 to counter offset
li x9, 0xb2e382d8 # load x3 with value 0xb2e382d8
sw x9, 1260(x10) # store 0xb2e382d8 in memory
flh f19, 1260(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x23, 0xf8442800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -123 # sub immediate from rs1 to counter offset
li x1, 0xea116621 # load x3 with value 0xea116621
sw x1, 123(x11) # store 0xea116621 in memory
flh f23, 123(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x3, 0x4f7a85b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 426 # sub immediate from rs1 to counter offset
li x1, 0xb83a9850 # load x3 with value 0xb83a9850
sw x1, -426(x12) # store 0xb83a9850 in memory
flh f3, -426(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x5, 0xe1e089f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, 709 # sub immediate from rs1 to counter offset
li x1, 0x911bbd5f # load x3 with value 0x911bbd5f
sw x1, -709(x13) # store 0x911bbd5f in memory
flh f5, -709(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x5f1412b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, -272 # sub immediate from rs1 to counter offset
li x1, 0x8408ee56 # load x3 with value 0x8408ee56
sw x1, 272(x14) # store 0x8408ee56 in memory
flh f7, 272(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0xe22f0cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 1411 # sub immediate from rs1 to counter offset
li x1, 0xc3edb71e # load x3 with value 0xc3edb71e
sw x1, -1411(x15) # store 0xc3edb71e in memory
flh f3, -1411(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x23, 0xd9c05014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, 1325 # sub immediate from rs1 to counter offset
li x1, 0x486bc4c4 # load x3 with value 0x486bc4c4
sw x1, -1325(x16) # store 0x486bc4c4 in memory
flh f23, -1325(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x29, 0x0a57c94f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, 720 # sub immediate from rs1 to counter offset
li x1, 0x8f4ab190 # load x3 with value 0x8f4ab190
sw x1, -720(x17) # store 0x8f4ab190 in memory
flh f29, -720(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x25, 0x6802fba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 1421 # sub immediate from rs1 to counter offset
li x1, 0xdacb7d45 # load x3 with value 0xdacb7d45
sw x1, -1421(x18) # store 0xdacb7d45 in memory
flh f25, -1421(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0x9d37898a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 1690 # sub immediate from rs1 to counter offset
li x1, 0x65c54014 # load x3 with value 0x65c54014
sw x1, -1690(x19) # store 0x65c54014 in memory
flh f10, -1690(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x31, 0x69ed1df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, 1363 # sub immediate from rs1 to counter offset
li x1, 0x39e8a696 # load x3 with value 0x39e8a696
sw x1, -1363(x20) # store 0x39e8a696 in memory
flh f31, -1363(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0x465424e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -1651 # sub immediate from rs1 to counter offset
li x1, 0x26a9ea61 # load x3 with value 0x26a9ea61
sw x1, 1651(x21) # store 0x26a9ea61 in memory
flh f29, 1651(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x4, 0xdd3ce991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 1083 # sub immediate from rs1 to counter offset
li x1, 0xba81e14b # load x3 with value 0xba81e14b
sw x1, -1083(x22) # store 0xba81e14b in memory
flh f4, -1083(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0x5b0f8471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, -674 # sub immediate from rs1 to counter offset
li x1, 0x00f400a1 # load x3 with value 0x00f400a1
sw x1, 674(x23) # store 0x00f400a1 in memory
flh f9, 674(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x6, 0xa0670839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, -1544 # sub immediate from rs1 to counter offset
li x1, 0xfbc7284c # load x3 with value 0xfbc7284c
sw x1, 1544(x24) # store 0xfbc7284c in memory
flh f6, 1544(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x23, 0xea37733b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, 633 # sub immediate from rs1 to counter offset
li x1, 0x808567dc # load x3 with value 0x808567dc
sw x1, -633(x25) # store 0x808567dc in memory
flh f23, -633(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x22, 0xc4576d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 82 # sub immediate from rs1 to counter offset
li x1, 0xe6743fff # load x3 with value 0xe6743fff
sw x1, -82(x26) # store 0xe6743fff in memory
flh f22, -82(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0xfb005028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, 1939 # sub immediate from rs1 to counter offset
li x1, 0x04a999aa # load x3 with value 0x04a999aa
sw x1, -1939(x27) # store 0x04a999aa in memory
flh f31, -1939(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x12, 0xfcf5ecc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 557 # sub immediate from rs1 to counter offset
li x1, 0xb9a576e2 # load x3 with value 0xb9a576e2
sw x1, -557(x28) # store 0xb9a576e2 in memory
flh f12, -557(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0x24c6872d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -283 # sub immediate from rs1 to counter offset
li x1, 0xfb166367 # load x3 with value 0xfb166367
sw x1, 283(x29) # store 0xfb166367 in memory
flh f11, 283(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x22, 0x9b3a742a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 1994 # sub immediate from rs1 to counter offset
li x1, 0x6e50071a # load x3 with value 0x6e50071a
sw x1, -1994(x30) # store 0x6e50071a in memory
flh f22, -1994(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0xa5228fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, -819 # sub immediate from rs1 to counter offset
li x1, 0x5b1e09c2 # load x3 with value 0x5b1e09c2
sw x1, 819(x31) # store 0x5b1e09c2 in memory
flh f16, 819(x31) # perform operation

# Testcase cp_imm_zero
li x11, 0x93a42fbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
li x1, 0x3fb85d59 # load x3 with value 0x3fb85d59
sw x1, 0(x14) # store 0x3fb85d59 in memory
flh f11, 0(x14) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x315fadc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, -1495 # sub immediate from rs1 to counter offset
li x1, 0x2ea440a1 # load x3 with value 0x2ea440a1
sw x1, 1495(x20) # store 0x2ea440a1 in memory
flh f0, 1495(x20) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x559e76c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -1566 # sub immediate from rs1 to counter offset
li x1, 0x6389d8ce # load x3 with value 0x6389d8ce
sw x1, 1566(x29) # store 0x6389d8ce in memory
flh f1, 1566(x29) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x3a6cf46f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 1125 # sub immediate from rs1 to counter offset
li x1, 0xea49ac91 # load x3 with value 0xea49ac91
sw x1, -1125(x3) # store 0xea49ac91 in memory
flh f2, -1125(x3) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x042c7be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 129 # sub immediate from rs1 to counter offset
li x1, 0xce2bb073 # load x3 with value 0xce2bb073
sw x1, -129(x31) # store 0xce2bb073 in memory
flh f3, -129(x31) # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x67e4214e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -1034 # sub immediate from rs1 to counter offset
li x1, 0x04ecbe47 # load x3 with value 0x04ecbe47
sw x1, 1034(x4) # store 0x04ecbe47 in memory
flh f4, 1034(x4) # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xf66dbae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 352 # sub immediate from rs1 to counter offset
li x1, 0x01f65697 # load x3 with value 0x01f65697
sw x1, -352(x30) # store 0x01f65697 in memory
flh f5, -352(x30) # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x87245136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, 1108 # sub immediate from rs1 to counter offset
li x1, 0x8dc62f44 # load x3 with value 0x8dc62f44
sw x1, -1108(x14) # store 0x8dc62f44 in memory
flh f6, -1108(x14) # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x974760be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, -1090 # sub immediate from rs1 to counter offset
li x1, 0xf26bbba9 # load x3 with value 0xf26bbba9
sw x1, 1090(x29) # store 0xf26bbba9 in memory
flh f7, 1090(x29) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x165ec199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -756 # sub immediate from rs1 to counter offset
li x1, 0x3093ca24 # load x3 with value 0x3093ca24
sw x1, 756(x10) # store 0x3093ca24 in memory
flh f8, 756(x10) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x9e76de28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, 1188 # sub immediate from rs1 to counter offset
li x1, 0xeefd1221 # load x3 with value 0xeefd1221
sw x1, -1188(x27) # store 0xeefd1221 in memory
flh f9, -1188(x27) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x7dcaefe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, -1168 # sub immediate from rs1 to counter offset
li x1, 0xc0b160de # load x3 with value 0xc0b160de
sw x1, 1168(x4) # store 0xc0b160de in memory
flh f10, 1168(x4) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x110e2c09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -1414 # sub immediate from rs1 to counter offset
li x1, 0xf5829a38 # load x3 with value 0xf5829a38
sw x1, 1414(x8) # store 0xf5829a38 in memory
flh f11, 1414(x8) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xdcca07c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 126 # sub immediate from rs1 to counter offset
li x1, 0x2486e3df # load x3 with value 0x2486e3df
sw x1, -126(x28) # store 0x2486e3df in memory
flh f12, -126(x28) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc40af923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, -210 # sub immediate from rs1 to counter offset
li x1, 0x47ba6e0a # load x3 with value 0x47ba6e0a
sw x1, 210(x22) # store 0x47ba6e0a in memory
flh f13, 210(x22) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x4e49f74c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 519 # sub immediate from rs1 to counter offset
li x1, 0xeb51b248 # load x3 with value 0xeb51b248
sw x1, -519(x3) # store 0xeb51b248 in memory
flh f14, -519(x3) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xcf991a86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, -191 # sub immediate from rs1 to counter offset
li x1, 0xc56fcb57 # load x3 with value 0xc56fcb57
sw x1, 191(x20) # store 0xc56fcb57 in memory
flh f15, 191(x20) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x89c0f256 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 204 # sub immediate from rs1 to counter offset
li x1, 0x9803f013 # load x3 with value 0x9803f013
sw x1, -204(x3) # store 0x9803f013 in memory
flh f16, -204(x3) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xa1850362 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, 773 # sub immediate from rs1 to counter offset
li x1, 0xd47a0ccf # load x3 with value 0xd47a0ccf
sw x1, -773(x15) # store 0xd47a0ccf in memory
flh f17, -773(x15) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x3c37c872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, 457 # sub immediate from rs1 to counter offset
li x1, 0xf7b379ed # load x3 with value 0xf7b379ed
sw x1, -457(x11) # store 0xf7b379ed in memory
flh f18, -457(x11) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x253d9644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, -937 # sub immediate from rs1 to counter offset
li x1, 0x7be934fb # load x3 with value 0x7be934fb
sw x1, 937(x6) # store 0x7be934fb in memory
flh f19, 937(x6) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x92c25f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, 514 # sub immediate from rs1 to counter offset
li x1, 0x0520ca82 # load x3 with value 0x0520ca82
sw x1, -514(x2) # store 0x0520ca82 in memory
flh f20, -514(x2) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x30363972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -247 # sub immediate from rs1 to counter offset
li x1, 0x54be3430 # load x3 with value 0x54be3430
sw x1, 247(x12) # store 0x54be3430 in memory
flh f21, 247(x12) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8414e9d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 1765 # sub immediate from rs1 to counter offset
li x1, 0x387137a1 # load x3 with value 0x387137a1
sw x1, -1765(x28) # store 0x387137a1 in memory
flh f22, -1765(x28) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xaa191ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -419 # sub immediate from rs1 to counter offset
li x1, 0xce655cd5 # load x3 with value 0xce655cd5
sw x1, 419(x27) # store 0xce655cd5 in memory
flh f23, 419(x27) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xb0403d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, -1885 # sub immediate from rs1 to counter offset
li x1, 0x11309ffb # load x3 with value 0x11309ffb
sw x1, 1885(x17) # store 0x11309ffb in memory
flh f24, 1885(x17) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x29488fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, -1754 # sub immediate from rs1 to counter offset
li x1, 0xcca16421 # load x3 with value 0xcca16421
sw x1, 1754(x6) # store 0xcca16421 in memory
flh f25, 1754(x6) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xf90b6dee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -1318 # sub immediate from rs1 to counter offset
li x1, 0xcbc50c95 # load x3 with value 0xcbc50c95
sw x1, 1318(x3) # store 0xcbc50c95 in memory
flh f26, 1318(x3) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x83880eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 1344 # sub immediate from rs1 to counter offset
li x1, 0x76dc0cab # load x3 with value 0x76dc0cab
sw x1, -1344(x9) # store 0x76dc0cab in memory
flh f27, -1344(x9) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x5a8fd5ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -1824 # sub immediate from rs1 to counter offset
li x1, 0x2f453334 # load x3 with value 0x2f453334
sw x1, 1824(x9) # store 0x2f453334 in memory
flh f28, 1824(x9) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xde4ee80e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, 29 # sub immediate from rs1 to counter offset
li x1, 0x84376d76 # load x3 with value 0x84376d76
sw x1, -29(x8) # store 0x84376d76 in memory
flh f29, -29(x8) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x1353f592 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, -349 # sub immediate from rs1 to counter offset
li x1, 0x1a1ee817 # load x3 with value 0x1a1ee817
sw x1, 349(x15) # store 0x1a1ee817 in memory
flh f30, 349(x15) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x88a8fcad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -639 # sub immediate from rs1 to counter offset
li x1, 0xca627d43 # load x3 with value 0xca627d43
sw x1, 639(x10) # store 0xca627d43 in memory
flh f31, 639(x10) # perform operation

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
