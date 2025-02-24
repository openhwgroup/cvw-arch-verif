///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-lhu.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.482958
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x6c8e6bff27b27530 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x07ec1d40e4840784 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 780 # sub immediate from rs1 to counter offset
sd x10, -780 (x19) # store value to put something in memory
lhu x0, -780(x19) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x9f7fc610b9d90b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x916df00174db5274 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -157 # sub immediate from rs1 to counter offset
sd x3, 157 (x27) # store value to put something in memory
lhu x1, 157(x27) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xd406c3c762425a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf4a6870931de9bd7 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 741 # sub immediate from rs1 to counter offset
sd x8, -741 (x1) # store value to put something in memory
lhu x2, -741(x1) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xfcc3fa0262938096 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7c7b9ef829323906 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 733 # sub immediate from rs1 to counter offset
sd x7, -733 (x5) # store value to put something in memory
lhu x3, -733(x5) # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x4781fca6b5e1f042 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x52500bb96502f9ed # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1006 # sub immediate from rs1 to counter offset
sd x4, 1006 (x18) # store value to put something in memory
lhu x4, 1006(x18) # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x77a3dfdc9f308bce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xfb660c647d11e361 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1892 # sub immediate from rs1 to counter offset
sd x22, -1892 (x23) # store value to put something in memory
lhu x5, -1892(x23) # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xc96f2d408e9f69c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa365e0e6ff546cbd # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1148 # sub immediate from rs1 to counter offset
sd x20, -1148 (x9) # store value to put something in memory
lhu x6, -1148(x9) # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xdbe5737bba93909b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x068af73e6b7f991b # initialize rs2
la x1, scratch # base address 
addi x1, x1, -709 # sub immediate from rs1 to counter offset
sd x20, 709 (x1) # store value to put something in memory
lhu x7, 709(x1) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc76637a474c6f33f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x52deeb515a70bd12 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1903 # sub immediate from rs1 to counter offset
sd x27, 1903 (x4) # store value to put something in memory
lhu x8, 1903(x4) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xeeccb00a87bead82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x4c4bc675636375ec # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1735 # sub immediate from rs1 to counter offset
sd x20, -1735 (x6) # store value to put something in memory
lhu x9, -1735(x6) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb2f3f57d0eb9f2b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd84338552a1737d1 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 674 # sub immediate from rs1 to counter offset
sd x14, -674 (x27) # store value to put something in memory
lhu x10, -674(x27) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x127797e0f1cf2556 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x9dee49e3e1dbc3eb # initialize rs2
la x20, scratch # base address 
addi x20, x20, 548 # sub immediate from rs1 to counter offset
sd x2, -548 (x20) # store value to put something in memory
lhu x11, -548(x20) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6e1a9220049fdddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x1eb0363739bbea4a # initialize rs2
la x21, scratch # base address 
addi x21, x21, 876 # sub immediate from rs1 to counter offset
sd x18, -876 (x21) # store value to put something in memory
lhu x12, -876(x21) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xd489143ba1c35853 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a53ad6739b05999 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -641 # sub immediate from rs1 to counter offset
sd x10, 641 (x31) # store value to put something in memory
lhu x13, 641(x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1fbf1d8d054b4197 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x6e61eda1d3257b1b # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1460 # sub immediate from rs1 to counter offset
sd x3, -1460 (x27) # store value to put something in memory
lhu x14, -1460(x27) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x71fa632e39ec8078 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc450b5833e3b7a2f # initialize rs2
la x11, scratch # base address 
addi x11, x11, 499 # sub immediate from rs1 to counter offset
sd x29, -499 (x11) # store value to put something in memory
lhu x15, -499(x11) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xfeb1d474fef40eda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8cae2fd1b0010f97 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1457 # sub immediate from rs1 to counter offset
sd x23, -1457 (x31) # store value to put something in memory
lhu x16, -1457(x31) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x25b318a50378a744 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaa27420ed3c3ef26 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -643 # sub immediate from rs1 to counter offset
sd x11, 643 (x28) # store value to put something in memory
lhu x17, 643(x28) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb843c7fe694458de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xdf1a6c66b88c5983 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 814 # sub immediate from rs1 to counter offset
sd x24, -814 (x16) # store value to put something in memory
lhu x18, -814(x16) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xf6c27c5d83154a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x544ac1114ab51cbd # initialize rs2
la x25, scratch # base address 
addi x25, x25, -680 # sub immediate from rs1 to counter offset
sd x22, 680 (x25) # store value to put something in memory
lhu x19, 680(x25) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf0712a88e2cf1da3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xf1ecd4d050b05b19 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -556 # sub immediate from rs1 to counter offset
sd x6, 556 (x19) # store value to put something in memory
lhu x20, 556(x19) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x96c53c83fec232fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa7bfa1be73af2132 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1982 # sub immediate from rs1 to counter offset
sd x22, -1982 (x3) # store value to put something in memory
lhu x21, -1982(x3) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x418344579a47fdae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x34f40c4630a0e8f2 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 14 # sub immediate from rs1 to counter offset
sd x15, -14 (x3) # store value to put something in memory
lhu x22, -14(x3) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x95b5a6f398eb6823 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xa399910153405067 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -355 # sub immediate from rs1 to counter offset
sd x1, 355 (x30) # store value to put something in memory
lhu x23, 355(x30) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x0c4ad9282cbe825c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x79d881d48a2ced96 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1222 # sub immediate from rs1 to counter offset
sd x19, 1222 (x29) # store value to put something in memory
lhu x24, 1222(x29) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x61f62676a2b4f760 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xcc48e5a54c65346c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1061 # sub immediate from rs1 to counter offset
sd x22, 1061 (x29) # store value to put something in memory
lhu x25, 1061(x29) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x6df38b60543098f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x81910c9eb317fc72 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -832 # sub immediate from rs1 to counter offset
sd x6, 832 (x30) # store value to put something in memory
lhu x26, 832(x30) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x086fd2f390825a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x19756bccc56af34c # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1746 # sub immediate from rs1 to counter offset
sd x23, 1746 (x20) # store value to put something in memory
lhu x27, 1746(x20) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xe6052f3de61232f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xf6d43c68801bbb6f # initialize rs2
la x22, scratch # base address 
addi x22, x22, -600 # sub immediate from rs1 to counter offset
sd x24, 600 (x22) # store value to put something in memory
lhu x28, 600(x22) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x1545c2b03891e98e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x253c8eb6ada9b457 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -577 # sub immediate from rs1 to counter offset
sd x1, 577 (x30) # store value to put something in memory
lhu x29, 577(x30) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x11996a16fb09ec8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x476ff807560f9c2f # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1543 # sub immediate from rs1 to counter offset
sd x13, 1543 (x9) # store value to put something in memory
lhu x30, 1543(x9) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xfcaefcd84bf88c53 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x40b2715555f43812 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 812 # sub immediate from rs1 to counter offset
sd x23, -812 (x22) # store value to put something in memory
lhu x31, -812(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0xbdf57c43f032b657 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x89371fd27ad3239f # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1162 # sub immediate from rs1 to counter offset
sd x18, -1162 (x1) # store value to put something in memory
lhu x31, -1162(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x28, 0xb5b30e24bb6d45c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x1f433413126e007c # initialize rs2
la x2, scratch # base address 
addi x2, x2, -877 # sub immediate from rs1 to counter offset
sd x10, 877 (x2) # store value to put something in memory
lhu x28, 877(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x10, 0xe204e976ea6d7041 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x2ea345ac802e4a51 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -95 # sub immediate from rs1 to counter offset
sd x14, 95 (x3) # store value to put something in memory
lhu x10, 95(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x19, 0xadc65769a34d7932 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x569d5eb8bbbe59fd # initialize rs2
la x4, scratch # base address 
addi x4, x4, -928 # sub immediate from rs1 to counter offset
sd x2, 928 (x4) # store value to put something in memory
lhu x19, 928(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x2, 0xf727d0d0d6c3ffd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0be701fc31394725 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -675 # sub immediate from rs1 to counter offset
sd x9, 675 (x5) # store value to put something in memory
lhu x2, 675(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x17, 0x4903627eb6e75084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xbd17f57d12cee0b7 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1814 # sub immediate from rs1 to counter offset
sd x24, -1814 (x6) # store value to put something in memory
lhu x17, -1814(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x19, 0x92774f7f25a58273 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc2bb7657c65721e4 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 263 # sub immediate from rs1 to counter offset
sd x31, -263 (x7) # store value to put something in memory
lhu x19, -263(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x17, 0xfab25410e9609aa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7510cb68495cd574 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -855 # sub immediate from rs1 to counter offset
sd x22, 855 (x8) # store value to put something in memory
lhu x17, 855(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0x76b98856dfed6e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xbe0d9d5d5d6f6d78 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -978 # sub immediate from rs1 to counter offset
sd x13, 978 (x9) # store value to put something in memory
lhu x5, 978(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x0fbbb40e244d9bd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x55efe2b537c27582 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1546 # sub immediate from rs1 to counter offset
sd x3, 1546 (x10) # store value to put something in memory
lhu x31, 1546(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0xe54f850e65a51cec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8dcf49da6e1d87ef # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1587 # sub immediate from rs1 to counter offset
sd x24, 1587 (x11) # store value to put something in memory
lhu x10, 1587(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x7, 0xb535f4329b2e32a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3e22dbc5e1638652 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1876 # sub immediate from rs1 to counter offset
sd x23, 1876 (x12) # store value to put something in memory
lhu x7, 1876(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0x44c371ebd6d618e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x996167ee236a5f88 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -539 # sub immediate from rs1 to counter offset
sd x14, 539 (x13) # store value to put something in memory
lhu x29, 539(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x0fb5fd1ddd3eaeaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xa5c18579f6c80c54 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -61 # sub immediate from rs1 to counter offset
sd x6, 61 (x14) # store value to put something in memory
lhu x11, 61(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x0195e889b4203184 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfdf58728f3e3e3cb # initialize rs2
la x15, scratch # base address 
addi x15, x15, -865 # sub immediate from rs1 to counter offset
sd x10, 865 (x15) # store value to put something in memory
lhu x16, 865(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x62fcf0084a23fa74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdc4cc386db40bfa3 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1885 # sub immediate from rs1 to counter offset
sd x21, 1885 (x16) # store value to put something in memory
lhu x1, 1885(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x805286320399c9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0aec791bb95969f0 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -953 # sub immediate from rs1 to counter offset
sd x22, 953 (x17) # store value to put something in memory
lhu x2, 953(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0xd14dfd5bb2daa9af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x145b03960e61d969 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -67 # sub immediate from rs1 to counter offset
sd x2, 67 (x18) # store value to put something in memory
lhu x23, 67(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x25, 0x5197b512dd00e924 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x67e86103a9d7c8af # initialize rs2
la x19, scratch # base address 
addi x19, x19, -499 # sub immediate from rs1 to counter offset
sd x16, 499 (x19) # store value to put something in memory
lhu x25, 499(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x27, 0x98011ca719c7507b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x21ecce73159ed030 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1293 # sub immediate from rs1 to counter offset
sd x7, 1293 (x20) # store value to put something in memory
lhu x27, 1293(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x7, 0x1921da39598cb543 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xf1479cac483ded6d # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1293 # sub immediate from rs1 to counter offset
sd x17, -1293 (x21) # store value to put something in memory
lhu x7, -1293(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0xe9b4e04f0807da5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xd5c663071cd75669 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1950 # sub immediate from rs1 to counter offset
sd x9, 1950 (x22) # store value to put something in memory
lhu x27, 1950(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0x171c876eaf6addd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x4a36e1523f1834f7 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -583 # sub immediate from rs1 to counter offset
sd x4, 583 (x23) # store value to put something in memory
lhu x27, 583(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x27, 0xf5cda2c1cee650e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa68605d177d5630d # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1641 # sub immediate from rs1 to counter offset
sd x7, 1641 (x24) # store value to put something in memory
lhu x27, 1641(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0x7958aa1eb109453c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf08766b9ac4077d2 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1894 # sub immediate from rs1 to counter offset
sd x12, -1894 (x25) # store value to put something in memory
lhu x29, -1894(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0x93517cbc677678ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8a5ec408ec24ff1e # initialize rs2
la x26, scratch # base address 
addi x26, x26, -367 # sub immediate from rs1 to counter offset
sd x21, 367 (x26) # store value to put something in memory
lhu x14, 367(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x19, 0x687ee860db680f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0637787e840ac5cd # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1903 # sub immediate from rs1 to counter offset
sd x28, -1903 (x27) # store value to put something in memory
lhu x19, -1903(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x6ac1cc5bc83e8cac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xac0bbfdb792020fc # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1013 # sub immediate from rs1 to counter offset
sd x22, -1013 (x28) # store value to put something in memory
lhu x4, -1013(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x06a448c0809786fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x23f523c4dde6d17b # initialize rs2
la x29, scratch # base address 
addi x29, x29, 596 # sub immediate from rs1 to counter offset
sd x5, -596 (x29) # store value to put something in memory
lhu x20, -596(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x23, 0xcf32fa9872876383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x80cb1752ec167f97 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -422 # sub immediate from rs1 to counter offset
sd x1, 422 (x30) # store value to put something in memory
lhu x23, 422(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x23, 0xc58df16d7e324200 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x013ddd9557be727c # initialize rs2
la x31, scratch # base address 
addi x31, x31, -877 # sub immediate from rs1 to counter offset
sd x18, 877 (x31) # store value to put something in memory
lhu x23, 877(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x7091a59cd29dfcce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x0b6cab9df7a2e138 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x3) # store value to put something in memory
lhu x21, 0(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x18, 0x6ea90a1b2c26f700 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 0 # sub immediate from rs1 to counter offset
sd x25, 0 (x10) # store value to put something in memory
lhu x18, 0(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x27, 0xa45865692fe77c65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1 # sub immediate from rs1 to counter offset
sd x13, -1 (x30) # store value to put something in memory
lhu x27, -1(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x2, 0x1030b2fc9c73d773 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xab84f072b7ca34be # initialize rs2
la x28, scratch # base address 
addi x28, x28, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x28) # store value to put something in memory
lhu x2, 0(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0x710d2bc770295a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1 # sub immediate from rs1 to counter offset
sd x17, 1 (x5) # store value to put something in memory
lhu x20, 1(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x9, 0x4fd1ab7bdf2b76d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000001 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1 # sub immediate from rs1 to counter offset
sd x21, -1 (x24) # store value to put something in memory
lhu x9, -1(x24) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x20, 0xc1ad2dc515b6b090 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xb952db992481854e # initialize rs2
la x17, scratch # base address 
addi x17, x17, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x17) # store value to put something in memory
lhu x20, 0(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x006415cd0721a12f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -2 # sub immediate from rs1 to counter offset
sd x29, 2 (x13) # store value to put something in memory
lhu x1, 2(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x9, 0x0754e387aa198ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x20) # store value to put something in memory
lhu x9, -1(x20) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x1, 0x1cf321ff02c9c689 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xe83be27c957d00ed # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x6) # store value to put something in memory
lhu x1, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x19, 0x842209cb95d8e09f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000008000 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 0 # sub immediate from rs1 to counter offset
sd x5, 0 (x23) # store value to put something in memory
lhu x19, 0(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x6, 0xe1481f019b8f0026 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000008000 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1 # sub immediate from rs1 to counter offset
sd x17, -1 (x23) # store value to put something in memory
lhu x6, -1(x23) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x27, 0x13a4302f64f0a911 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x9ba1cb54745d41e3 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x2) # store value to put something in memory
lhu x27, 0(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x27, 0xfbd87b60f952502c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000008001 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1 # sub immediate from rs1 to counter offset
sd x15, 1 (x25) # store value to put something in memory
lhu x27, 1(x25) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x25, 0x2f2c132dabfa54b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000008001 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x27, -1 (x13) # store value to put something in memory
lhu x25, -1(x13) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x21, 0x5767bbb2bfdfe9f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6260ceccf692fc13 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x27) # store value to put something in memory
lhu x21, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x19, 0xb61a0a5d98d72f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x0000000000007fff # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1 # sub immediate from rs1 to counter offset
sd x7, -1 (x28) # store value to put something in memory
lhu x19, -1(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x26, 0x11ae4123f1a7f124 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000000007fff # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1 # sub immediate from rs1 to counter offset
sd x6, -1 (x28) # store value to put something in memory
lhu x26, -1(x28) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x19, 0x107deaf468ffce69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xc5349efa57082711 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x11) # store value to put something in memory
lhu x19, 0(x11) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x30, 0x88b5b53242af78ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000007ffe # initialize rs2
la x12, scratch # base address 
addi x12, x12, 2 # sub immediate from rs1 to counter offset
sd x16, -2 (x12) # store value to put something in memory
lhu x30, -2(x12) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x1, 0x9536fb39cea3d37b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000007ffe # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1 # sub immediate from rs1 to counter offset
sd x10, -1 (x9) # store value to put something in memory
lhu x1, -1(x9) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x26, 0x16b7f660b7c2e08f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x243a0c9c6bc04a16 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x27) # store value to put something in memory
lhu x26, 0(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x11, 0xf8cc2ce33cade442 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x000000000000ffff # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1 # sub immediate from rs1 to counter offset
sd x2, -1 (x27) # store value to put something in memory
lhu x11, -1(x27) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x10, 0xa29131595affc268 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x000000000000ffff # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1 # sub immediate from rs1 to counter offset
sd x24, -1 (x6) # store value to put something in memory
lhu x10, -1(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x30, 0xc935def375e4e3e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x6cbca56bae0010d4 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x5) # store value to put something in memory
lhu x30, 0(x5) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x17, 0x1c5db5fa79926ac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x000000000000fffe # initialize rs2
la x2, scratch # base address 
addi x2, x2, 2 # sub immediate from rs1 to counter offset
sd x28, -2 (x2) # store value to put something in memory
lhu x17, -2(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x20, 0x097aac5965cb9182 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x000000000000fffe # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sd x5, -1 (x3) # store value to put something in memory
lhu x20, -1(x3) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x26, 0xfb5085028b034fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x843fb7a8e04fe28c # initialize rs2
la x30, scratch # base address 
addi x30, x30, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x30) # store value to put something in memory
lhu x26, 0(x30) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x30, 0x221613913efa2e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000005555 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1365 # sub immediate from rs1 to counter offset
sd x16, 1365 (x10) # store value to put something in memory
lhu x30, 1365(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x27, 0x6603f113e2a7a255 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000005555 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sd x28, -1 (x10) # store value to put something in memory
lhu x27, -1(x10) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x2, 0x46e7eb6247ad7e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xfbe5bd43655c8243 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x6) # store value to put something in memory
lhu x2, 0(x6) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x15, 0xfa9689983fe1e881 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x000000000000aaaa # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1366 # sub immediate from rs1 to counter offset
sd x31, -1366 (x14) # store value to put something in memory
lhu x15, -1366(x14) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0xc2cf173f30fec17e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x000000000000aaaa # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1 # sub immediate from rs1 to counter offset
sd x23, -1 (x31) # store value to put something in memory
lhu x26, -1(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x21, 0x280f9403d6321ada # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x95b64d26d0132d9c # initialize rs2
la x18, scratch # base address 
addi x18, x18, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x18) # store value to put something in memory
lhu x21, 0(x18) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x17, 0x5eceb4cf9d00a943 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000005bbc # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1092 # sub immediate from rs1 to counter offset
sd x27, -1092 (x19) # store value to put something in memory
lhu x17, -1092(x19) # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x27, 0x7c1c9848d4479653 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000005bbc # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1 # sub immediate from rs1 to counter offset
sd x12, -1 (x2) # store value to put something in memory
lhu x27, -1(x2) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x16, 0xfe2a7f98c955146a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x5eaea94f37069891 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sd x0, 0 (x31) # store value to put something in memory
lhu x16, 0(x31) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x19, 0x4fdd9702a4cd47ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x000000000000dbbc # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1092 # sub immediate from rs1 to counter offset
sd x30, -1092 (x17) # store value to put something in memory
lhu x19, -1092(x17) # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x4, 0x2b00a8aef9d2de03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x000000000000dbbc # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1 # sub immediate from rs1 to counter offset
sd x26, -1 (x3) # store value to put something in memory
lhu x4, -1(x3) # perform operation

# Testcase cp_imm_zero
li x24, 0xae47b7cf80be7de8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xbad8219b86ae5546 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 0 # sub immediate from rs1 to counter offset
sd x14, 0 (x19) # store value to put something in memory
lhu x24, 0(x19) # perform operation

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
