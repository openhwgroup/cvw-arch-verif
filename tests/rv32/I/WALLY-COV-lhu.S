///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-lhu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.968236
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xec3b9f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf3fdcbd9 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1113 # sub immediate from rs1 to counter offset
sw x20, -1113 (x11) # store value to put something in memory
lhu x0, -1113(x11) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x7c5c77ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xaec28146 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -334 # sub immediate from rs1 to counter offset
sw x5, 334 (x2) # store value to put something in memory
lhu x1, 334(x2) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x40725018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x50b3df81 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1835 # sub immediate from rs1 to counter offset
sw x1, -1835 (x28) # store value to put something in memory
lhu x2, -1835(x28) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x79b949d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xca64f56e # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1752 # sub immediate from rs1 to counter offset
sw x19, -1752 (x30) # store value to put something in memory
lhu x3, -1752(x30) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x533a156e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xf5905f53 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 443 # sub immediate from rs1 to counter offset
sw x29, -443 (x19) # store value to put something in memory
lhu x4, -443(x19) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x33a98438 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1a14e48e # initialize rs2
la x4, scratch # base address 
addi x4, x4, 890 # sub immediate from rs1 to counter offset
sw x26, -890 (x4) # store value to put something in memory
lhu x5, -890(x4) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x31dac9ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xc0fee39e # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1167 # sub immediate from rs1 to counter offset
sw x26, 1167 (x29) # store value to put something in memory
lhu x6, 1167(x29) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x03ac2884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x7f65e787 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -369 # sub immediate from rs1 to counter offset
sw x18, 369 (x13) # store value to put something in memory
lhu x7, 369(x13) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe87e109e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa1aeb96e # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1930 # sub immediate from rs1 to counter offset
sw x7, 1930 (x8) # store value to put something in memory
lhu x8, 1930(x8) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9aa647e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa4351236 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1107 # sub immediate from rs1 to counter offset
sw x9, 1107 (x10) # store value to put something in memory
lhu x9, 1107(x10) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x43080cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x58fe50ab # initialize rs2
la x18, scratch # base address 
addi x18, x18, 7 # sub immediate from rs1 to counter offset
sw x22, -7 (x18) # store value to put something in memory
lhu x10, -7(x18) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xc89a45ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x343ea0a5 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -631 # sub immediate from rs1 to counter offset
sw x25, 631 (x7) # store value to put something in memory
lhu x11, 631(x7) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x81fd2313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x44dd0ed9 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -132 # sub immediate from rs1 to counter offset
sw x7, 132 (x29) # store value to put something in memory
lhu x12, 132(x29) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6354c1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8adbfdc5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -308 # sub immediate from rs1 to counter offset
sw x27, 308 (x12) # store value to put something in memory
lhu x13, 308(x12) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x729dbf0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc120de1f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -319 # sub immediate from rs1 to counter offset
sw x16, 319 (x11) # store value to put something in memory
lhu x14, 319(x11) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x194f1a4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe4483e08 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1384 # sub immediate from rs1 to counter offset
sw x15, -1384 (x19) # store value to put something in memory
lhu x15, -1384(x19) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd053ed98 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x888738a6 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -847 # sub immediate from rs1 to counter offset
sw x1, 847 (x26) # store value to put something in memory
lhu x16, 847(x26) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x21130376 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd7174c84 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1900 # sub immediate from rs1 to counter offset
sw x7, -1900 (x18) # store value to put something in memory
lhu x17, -1900(x18) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2ff16d1b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xae51cf3a # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1599 # sub immediate from rs1 to counter offset
sw x9, 1599 (x10) # store value to put something in memory
lhu x18, 1599(x10) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x6ad2efc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xa27e272f # initialize rs2
la x7, scratch # base address 
addi x7, x7, 260 # sub immediate from rs1 to counter offset
sw x27, -260 (x7) # store value to put something in memory
lhu x19, -260(x7) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x130de934 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x965e4d6c # initialize rs2
la x28, scratch # base address 
addi x28, x28, 290 # sub immediate from rs1 to counter offset
sw x16, -290 (x28) # store value to put something in memory
lhu x20, -290(x28) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa9564365 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x30841e9f # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1823 # sub immediate from rs1 to counter offset
sw x5, 1823 (x29) # store value to put something in memory
lhu x21, 1823(x29) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x73c17150 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6d95a3b4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1741 # sub immediate from rs1 to counter offset
sw x29, 1741 (x8) # store value to put something in memory
lhu x22, 1741(x8) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xdb28c396 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf0ed9545 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 104 # sub immediate from rs1 to counter offset
sw x3, -104 (x1) # store value to put something in memory
lhu x23, -104(x1) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x72af2a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x448e4bcb # initialize rs2
la x17, scratch # base address 
addi x17, x17, 291 # sub immediate from rs1 to counter offset
sw x15, -291 (x17) # store value to put something in memory
lhu x24, -291(x17) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x56264b91 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5b254958 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 2018 # sub immediate from rs1 to counter offset
sw x21, -2018 (x7) # store value to put something in memory
lhu x25, -2018(x7) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x612140a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3d412515 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1087 # sub immediate from rs1 to counter offset
sw x29, -1087 (x18) # store value to put something in memory
lhu x26, -1087(x18) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x28c3244c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0e703123 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 525 # sub immediate from rs1 to counter offset
sw x22, -525 (x4) # store value to put something in memory
lhu x27, -525(x4) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x5bd3dd31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xfe07de0b # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1013 # sub immediate from rs1 to counter offset
sw x16, 1013 (x6) # store value to put something in memory
lhu x28, 1013(x6) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x227eca8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xd6324a22 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1532 # sub immediate from rs1 to counter offset
sw x16, -1532 (x11) # store value to put something in memory
lhu x29, -1532(x11) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x1c428205 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x564246b7 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -881 # sub immediate from rs1 to counter offset
sw x1, 881 (x20) # store value to put something in memory
lhu x30, 881(x20) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x34ad8066 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb36974be # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1404 # sub immediate from rs1 to counter offset
sw x12, 1404 (x25) # store value to put something in memory
lhu x31, 1404(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x23, 0x7578beee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0a081191 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1300 # sub immediate from rs1 to counter offset
sw x4, 1300 (x1) # store value to put something in memory
lhu x23, 1300(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x1, 0xce0e48c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xd370cd19 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -603 # sub immediate from rs1 to counter offset
sw x24, 603 (x2) # store value to put something in memory
lhu x1, 603(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0xa6358b3d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0e11cfb7 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1895 # sub immediate from rs1 to counter offset
sw x24, 1895 (x3) # store value to put something in memory
lhu x15, 1895(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x6, 0x67070abc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x35dfe4c3 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 192 # sub immediate from rs1 to counter offset
sw x12, -192 (x4) # store value to put something in memory
lhu x6, -192(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x7, 0x3ae3c862 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x90114f7c # initialize rs2
la x5, scratch # base address 
addi x5, x5, 357 # sub immediate from rs1 to counter offset
sw x30, -357 (x5) # store value to put something in memory
lhu x7, -357(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x11, 0x91f78dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xa5e35d4f # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1625 # sub immediate from rs1 to counter offset
sw x18, 1625 (x6) # store value to put something in memory
lhu x11, 1625(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x27, 0xa357f92a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2fefe61a # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1754 # sub immediate from rs1 to counter offset
sw x12, -1754 (x7) # store value to put something in memory
lhu x27, -1754(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0x8c76b67e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x52cb6e30 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1449 # sub immediate from rs1 to counter offset
sw x15, -1449 (x8) # store value to put something in memory
lhu x28, -1449(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x50fb91ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x1fc3c97e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -597 # sub immediate from rs1 to counter offset
sw x30, 597 (x9) # store value to put something in memory
lhu x10, 597(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x5d2f6f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xd185e355 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2008 # sub immediate from rs1 to counter offset
sw x27, 2008 (x10) # store value to put something in memory
lhu x14, 2008(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x8, 0x810d843a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0e607a78 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -965 # sub immediate from rs1 to counter offset
sw x4, 965 (x11) # store value to put something in memory
lhu x8, 965(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0xbc02cb69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x2884a694 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 397 # sub immediate from rs1 to counter offset
sw x27, -397 (x12) # store value to put something in memory
lhu x18, -397(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x2, 0x98f6f4d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf90d2488 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 155 # sub immediate from rs1 to counter offset
sw x17, -155 (x13) # store value to put something in memory
lhu x2, -155(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0x050d2abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x711c7cc3 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 592 # sub immediate from rs1 to counter offset
sw x22, -592 (x14) # store value to put something in memory
lhu x21, -592(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x57bd4336 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x21719dea # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1664 # sub immediate from rs1 to counter offset
sw x19, 1664 (x15) # store value to put something in memory
lhu x27, 1664(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x10, 0x21bc946c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x85117d5e # initialize rs2
la x16, scratch # base address 
addi x16, x16, -220 # sub immediate from rs1 to counter offset
sw x3, 220 (x16) # store value to put something in memory
lhu x10, 220(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0xbf031b2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xd9aa210c # initialize rs2
la x17, scratch # base address 
addi x17, x17, -964 # sub immediate from rs1 to counter offset
sw x31, 964 (x17) # store value to put something in memory
lhu x30, 964(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0xe1a9b114 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x84cdf94c # initialize rs2
la x18, scratch # base address 
addi x18, x18, 733 # sub immediate from rs1 to counter offset
sw x6, -733 (x18) # store value to put something in memory
lhu x9, -733(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x16, 0xb54ddc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xb19d2193 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1418 # sub immediate from rs1 to counter offset
sw x13, -1418 (x19) # store value to put something in memory
lhu x16, -1418(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x8, 0xc800bb0a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0754af91 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -875 # sub immediate from rs1 to counter offset
sw x28, 875 (x20) # store value to put something in memory
lhu x8, 875(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0xd264902d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0fb718a3 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1349 # sub immediate from rs1 to counter offset
sw x2, -1349 (x21) # store value to put something in memory
lhu x12, -1349(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0xd236c5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x231483e8 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 281 # sub immediate from rs1 to counter offset
sw x17, -281 (x22) # store value to put something in memory
lhu x11, -281(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x25, 0xd978bf30 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9508bb24 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 942 # sub immediate from rs1 to counter offset
sw x28, -942 (x23) # store value to put something in memory
lhu x25, -942(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x25, 0x26236d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x88d436cc # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1292 # sub immediate from rs1 to counter offset
sw x30, -1292 (x24) # store value to put something in memory
lhu x25, -1292(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x12, 0xd7c972e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x49fbdfc3 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1277 # sub immediate from rs1 to counter offset
sw x3, 1277 (x25) # store value to put something in memory
lhu x12, 1277(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x27, 0x9d996664 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1a4dc613 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1328 # sub immediate from rs1 to counter offset
sw x13, 1328 (x26) # store value to put something in memory
lhu x27, 1328(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0xa8452726 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xe8e9b988 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1110 # sub immediate from rs1 to counter offset
sw x29, 1110 (x27) # store value to put something in memory
lhu x11, 1110(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x25, 0x7e031e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xdbfeba79 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 28 # sub immediate from rs1 to counter offset
sw x3, -28 (x28) # store value to put something in memory
lhu x25, -28(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x08e215c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x9427cbfa # initialize rs2
la x29, scratch # base address 
addi x29, x29, -726 # sub immediate from rs1 to counter offset
sw x26, 726 (x29) # store value to put something in memory
lhu x20, 726(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x10, 0xf423cb9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xd5565200 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1292 # sub immediate from rs1 to counter offset
sw x20, 1292 (x30) # store value to put something in memory
lhu x10, 1292(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x24, 0x020f5073 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xf875dedc # initialize rs2
la x31, scratch # base address 
addi x31, x31, -797 # sub immediate from rs1 to counter offset
sw x20, 797 (x31) # store value to put something in memory
lhu x24, 797(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x19, 0x08358135 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0e69e143 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x1) # store value to put something in memory
lhu x19, 0(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x1ac6a7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x00000000 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x21, 0 (x12) # store value to put something in memory
lhu x10, 0(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x10, 0x000c5e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00000000 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1 # sub immediate from rs1 to counter offset
sw x19, -1 (x30) # store value to put something in memory
lhu x10, -1(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x18, 0x1b240d67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x16843c52 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x25) # store value to put something in memory
lhu x18, 0(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x025acf7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000001 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1 # sub immediate from rs1 to counter offset
sw x2, 1 (x9) # store value to put something in memory
lhu x6, 1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x1, 0x3ce2ebed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1 # sub immediate from rs1 to counter offset
sw x14, -1 (x20) # store value to put something in memory
lhu x1, -1(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0x8a40e439 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3ed6fff6 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x23) # store value to put something in memory
lhu x12, 0(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x6, 0x997e1335 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2 # sub immediate from rs1 to counter offset
sw x30, 2 (x9) # store value to put something in memory
lhu x6, 2(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x3, 0xd6d4bdcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000002 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sw x30, -1 (x26) # store value to put something in memory
lhu x3, -1(x26) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x8, 0xc5d5a338 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6e001e69 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x19) # store value to put something in memory
lhu x8, 0(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x15, 0x894db6b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00008000 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x20, 0 (x22) # store value to put something in memory
lhu x15, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x11, 0x469c5e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x00008000 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1 # sub immediate from rs1 to counter offset
sw x19, -1 (x15) # store value to put something in memory
lhu x11, -1(x15) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x4, 0xa96b3147 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x81209a54 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x8) # store value to put something in memory
lhu x4, 0(x8) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x30, 0xe7a71f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x00008001 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1 # sub immediate from rs1 to counter offset
sw x4, 1 (x17) # store value to put something in memory
lhu x30, 1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x30, 0x8ee9c3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00008001 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sw x14, -1 (x3) # store value to put something in memory
lhu x30, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x30, 0x2bfa27f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x32dd9c89 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x22) # store value to put something in memory
lhu x30, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x8, 0x53373d43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00007fff # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1 # sub immediate from rs1 to counter offset
sw x3, -1 (x4) # store value to put something in memory
lhu x8, -1(x4) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x11, 0x28a69519 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00007fff # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
sw x23, -1 (x31) # store value to put something in memory
lhu x11, -1(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x23, 0x16586c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x3c9affce # initialize rs2
la x16, scratch # base address 
addi x16, x16, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x16) # store value to put something in memory
lhu x23, 0(x16) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x16, 0xc378bf35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00007ffe # initialize rs2
la x14, scratch # base address 
addi x14, x14, 2 # sub immediate from rs1 to counter offset
sw x8, -2 (x14) # store value to put something in memory
lhu x16, -2(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x24, 0x24d6d4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00007ffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sw x16, -1 (x10) # store value to put something in memory
lhu x24, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x26, 0x6c0a8b8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x1c9fb236 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x22) # store value to put something in memory
lhu x26, 0(x22) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x15, 0x344eab5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000ffff # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sw x8, -1 (x1) # store value to put something in memory
lhu x15, -1(x1) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x13, 0xcf353518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000ffff # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sw x24, -1 (x3) # store value to put something in memory
lhu x13, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x26, 0xa2f2c1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe6db820c # initialize rs2
la x7, scratch # base address 
addi x7, x7, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x7) # store value to put something in memory
lhu x26, 0(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x23, 0xd62a3048 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000fffe # initialize rs2
la x19, scratch # base address 
addi x19, x19, 2 # sub immediate from rs1 to counter offset
sw x8, -2 (x19) # store value to put something in memory
lhu x23, -2(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x14, 0x663261e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000fffe # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sw x31, -1 (x10) # store value to put something in memory
lhu x14, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x25, 0x5cb54b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc4c763b5 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x23) # store value to put something in memory
lhu x25, 0(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x4, 0xac923653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00005555 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1365 # sub immediate from rs1 to counter offset
sw x1, 1365 (x14) # store value to put something in memory
lhu x4, 1365(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x5, 0x5cb02938 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00005555 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1 # sub immediate from rs1 to counter offset
sw x3, -1 (x17) # store value to put something in memory
lhu x5, -1(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x6, 0xf82c9c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5196bfc5 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x3) # store value to put something in memory
lhu x6, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x20, 0x110a7700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000aaaa # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1366 # sub immediate from rs1 to counter offset
sw x30, -1366 (x21) # store value to put something in memory
lhu x20, -1366(x21) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0x01eba29a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000aaaa # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sw x27, -1 (x2) # store value to put something in memory
lhu x26, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x23, 0x2d44b01a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xa3bc780c # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x3) # store value to put something in memory
lhu x23, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x8, 0xc0bffc2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00005bbc # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1092 # sub immediate from rs1 to counter offset
sw x20, -1092 (x2) # store value to put something in memory
lhu x8, -1092(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x11, 0x37689466 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00005bbc # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sw x7, -1 (x2) # store value to put something in memory
lhu x11, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x10, 0x74fda769 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9bf8c2ae # initialize rs2
la x14, scratch # base address 
addi x14, x14, 0 # sub immediate from rs1 to counter offset
sw x0, 0 (x14) # store value to put something in memory
lhu x10, 0(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x13, 0x11243933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000dbbc # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1092 # sub immediate from rs1 to counter offset
sw x22, -1092 (x7) # store value to put something in memory
lhu x13, -1092(x7) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x8, 0xa925fbd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000dbbc # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1 # sub immediate from rs1 to counter offset
sw x5, -1 (x14) # store value to put something in memory
lhu x8, -1(x14) # perform operation

# Testcase cp_imm_zero
li x2, 0x4dbe70a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x68fd8973 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
sw x3, 0 (x12) # store value to put something in memory
lhu x2, 0(x12) # perform operation

# Testcase mem_hazard (no dependency)
la x1, scratch
lhu x2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
