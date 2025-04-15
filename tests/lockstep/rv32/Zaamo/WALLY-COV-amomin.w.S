///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amomin.w.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x31, 0x00a12893 # load random value
la x1, scratch # base address
sw x31, 0(x1) # store in memory
li x31, 0xa49665c6 # load another value into integer register
amomin.w x8, x31, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x19, 0x3c4cacd8 # load random value
la x2, scratch # base address
sw x19, 0(x2) # store in memory
li x19, 0x3be33644 # load another value into integer register
amomin.w x17, x19, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x26, 0x28ef5ecf # load random value
la x3, scratch # base address
sw x26, 0(x3) # store in memory
li x26, 0xa57172b8 # load another value into integer register
amomin.w x5, x26, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xac28eebf # load random value
la x4, scratch # base address
sw x19, 0(x4) # store in memory
li x19, 0x565b7125 # load another value into integer register
amomin.w x21, x19, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xf284945d # load random value
la x5, scratch # base address
sw x30, 0(x5) # store in memory
li x30, 0xc850368d # load another value into integer register
amomin.w x7, x30, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x369d7097 # load random value
la x6, scratch # base address
sw x7, 0(x6) # store in memory
li x7, 0xa1def39e # load another value into integer register
amomin.w x1, x7, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x29, 0xcdbd4083 # load random value
la x7, scratch # base address
sw x29, 0(x7) # store in memory
li x29, 0x515aa69a # load another value into integer register
amomin.w x31, x29, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0x2026d06b # load random value
la x8, scratch # base address
sw x22, 0(x8) # store in memory
li x22, 0xab30fa15 # load another value into integer register
amomin.w x11, x22, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x6, 0x8a3d6d29 # load random value
la x9, scratch # base address
sw x6, 0(x9) # store in memory
li x6, 0x2149bbf4 # load another value into integer register
amomin.w x19, x6, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x3, 0x4e8941d6 # load random value
la x10, scratch # base address
sw x3, 0(x10) # store in memory
li x3, 0xf31a0e18 # load another value into integer register
amomin.w x28, x3, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x20, 0xb3716b9b # load random value
la x11, scratch # base address
sw x20, 0(x11) # store in memory
li x20, 0xb5772c19 # load another value into integer register
amomin.w x21, x20, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0x1004ffa1 # load random value
la x12, scratch # base address
sw x6, 0(x12) # store in memory
li x6, 0x56d567e3 # load another value into integer register
amomin.w x7, x6, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0x3c8fbf03 # load random value
la x13, scratch # base address
sw x29, 0(x13) # store in memory
li x29, 0xd75e4bd3 # load another value into integer register
amomin.w x14, x29, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x16, 0x695871f9 # load random value
la x14, scratch # base address
sw x16, 0(x14) # store in memory
li x16, 0x6732385f # load another value into integer register
amomin.w x18, x16, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x9029e7cf # load random value
la x15, scratch # base address
sw x16, 0(x15) # store in memory
li x16, 0x27c71118 # load another value into integer register
amomin.w x8, x16, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x8de1c75e # load random value
la x16, scratch # base address
sw x20, 0(x16) # store in memory
li x20, 0x868c46dc # load another value into integer register
amomin.w x24, x20, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x7, 0x1c886f65 # load random value
la x17, scratch # base address
sw x7, 0(x17) # store in memory
li x7, 0x98ed2898 # load another value into integer register
amomin.w x16, x7, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x11, 0x9ab7b0ec # load random value
la x18, scratch # base address
sw x11, 0(x18) # store in memory
li x11, 0xe1981a3e # load another value into integer register
amomin.w x13, x11, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x8, 0xd3d217fc # load random value
la x19, scratch # base address
sw x8, 0(x19) # store in memory
li x8, 0x2b166666 # load another value into integer register
amomin.w x29, x8, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0xe0c5fae5 # load random value
la x20, scratch # base address
sw x24, 0(x20) # store in memory
li x24, 0x3f9926bb # load another value into integer register
amomin.w x19, x24, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x13, 0xdffe03f6 # load random value
la x21, scratch # base address
sw x13, 0(x21) # store in memory
li x13, 0x4bb6256a # load another value into integer register
amomin.w x30, x13, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x30, 0x364d320a # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0xe194cef0 # load another value into integer register
amomin.w x16, x30, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x28, 0x0897b692 # load random value
la x23, scratch # base address
sw x28, 0(x23) # store in memory
li x28, 0x34073a84 # load another value into integer register
amomin.w x27, x28, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x29, 0x7ca0763d # load random value
la x24, scratch # base address
sw x29, 0(x24) # store in memory
li x29, 0x24d2bfcc # load another value into integer register
amomin.w x9, x29, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x31, 0x1f72ce79 # load random value
la x25, scratch # base address
sw x31, 0(x25) # store in memory
li x31, 0x24075362 # load another value into integer register
amomin.w x20, x31, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x14, 0x46a9e6d5 # load random value
la x26, scratch # base address
sw x14, 0(x26) # store in memory
li x14, 0xab6a54bc # load another value into integer register
amomin.w x31, x14, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0x3c7be882 # load random value
la x27, scratch # base address
sw x5, 0(x27) # store in memory
li x5, 0x6f799599 # load another value into integer register
amomin.w x19, x5, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0x17833b0f # load random value
la x28, scratch # base address
sw x17, 0(x28) # store in memory
li x17, 0xd1379897 # load another value into integer register
amomin.w x15, x17, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x19, 0xde3b2ed8 # load random value
la x29, scratch # base address
sw x19, 0(x29) # store in memory
li x19, 0x23e83b61 # load another value into integer register
amomin.w x2, x19, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x25, 0x70419397 # load random value
la x30, scratch # base address
sw x25, 0(x30) # store in memory
li x25, 0xb8389333 # load another value into integer register
amomin.w x19, x25, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x21, 0x81e55c64 # load random value
la x31, scratch # base address
sw x21, 0(x31) # store in memory
li x21, 0xbdff21f5 # load another value into integer register
amomin.w x18, x21, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x6ae05f43 # load random value
la x7, scratch # base address
sw x0, 0(x7) # store in memory
li x0, 0xef96eb1b # load another value into integer register
amomin.w x21, x0, (x7) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xf5db7ced # load random value
la x12, scratch # base address
sw x1, 0(x12) # store in memory
li x1, 0x04f7ac5e # load another value into integer register
amomin.w x23, x1, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xbf14adb5 # load random value
la x16, scratch # base address
sw x2, 0(x16) # store in memory
li x2, 0x5bd6a7cc # load another value into integer register
amomin.w x9, x2, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xef71842f # load random value
la x19, scratch # base address
sw x3, 0(x19) # store in memory
li x3, 0x55e82ad5 # load another value into integer register
amomin.w x1, x3, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc698f37e # load random value
la x2, scratch # base address
sw x4, 0(x2) # store in memory
li x4, 0x6ca0b0f0 # load another value into integer register
amomin.w x1, x4, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcac57fbe # load random value
la x30, scratch # base address
sw x5, 0(x30) # store in memory
li x5, 0x4b997914 # load another value into integer register
amomin.w x17, x5, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4bc32e76 # load random value
la x27, scratch # base address
sw x6, 0(x27) # store in memory
li x6, 0x8f7b00a7 # load another value into integer register
amomin.w x5, x6, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f18f6a1 # load random value
la x24, scratch # base address
sw x7, 0(x24) # store in memory
li x7, 0x6008cd02 # load another value into integer register
amomin.w x2, x7, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xe3a995ef # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0xdf7b6912 # load another value into integer register
amomin.w x24, x8, (x16) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xf35a8580 # load random value
la x5, scratch # base address
sw x9, 0(x5) # store in memory
li x9, 0x84da79b2 # load another value into integer register
amomin.w x29, x9, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x41aca0c5 # load random value
la x22, scratch # base address
sw x10, 0(x22) # store in memory
li x10, 0xe480fbef # load another value into integer register
amomin.w x23, x10, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x1654b129 # load random value
la x14, scratch # base address
sw x11, 0(x14) # store in memory
li x11, 0xc6e22a8f # load another value into integer register
amomin.w x3, x11, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x344312c1 # load random value
la x9, scratch # base address
sw x12, 0(x9) # store in memory
li x12, 0x7de9a617 # load another value into integer register
amomin.w x17, x12, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x8e48ee61 # load random value
la x2, scratch # base address
sw x13, 0(x2) # store in memory
li x13, 0xd6f44dd4 # load another value into integer register
amomin.w x18, x13, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xa3003fdd # load random value
la x17, scratch # base address
sw x14, 0(x17) # store in memory
li x14, 0x2fbb3fe1 # load another value into integer register
amomin.w x21, x14, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x14af0abe # load random value
la x1, scratch # base address
sw x15, 0(x1) # store in memory
li x15, 0xc47bbf1c # load another value into integer register
amomin.w x5, x15, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x017af680 # load random value
la x24, scratch # base address
sw x16, 0(x24) # store in memory
li x16, 0xca15e8e1 # load another value into integer register
amomin.w x13, x16, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0x7a5be47a # load random value
la x19, scratch # base address
sw x17, 0(x19) # store in memory
li x17, 0xf4837aa7 # load another value into integer register
amomin.w x1, x17, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xbcf72718 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x31add777 # load another value into integer register
amomin.w x7, x18, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x7134bb96 # load random value
la x21, scratch # base address
sw x19, 0(x21) # store in memory
li x19, 0x34eeb23a # load another value into integer register
amomin.w x14, x19, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0x3058aa1e # load random value
la x13, scratch # base address
sw x20, 0(x13) # store in memory
li x20, 0xd49b709a # load another value into integer register
amomin.w x15, x20, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x1ae16b57 # load random value
la x24, scratch # base address
sw x21, 0(x24) # store in memory
li x21, 0x1709eefc # load another value into integer register
amomin.w x31, x21, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x02a4d2f6 # load random value
la x9, scratch # base address
sw x22, 0(x9) # store in memory
li x22, 0x6b173bd6 # load another value into integer register
amomin.w x24, x22, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x4826a7bb # load random value
la x13, scratch # base address
sw x23, 0(x13) # store in memory
li x23, 0x5b302f02 # load another value into integer register
amomin.w x17, x23, (x13) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x5ed631d8 # load random value
la x3, scratch # base address
sw x24, 0(x3) # store in memory
li x24, 0xfb0cc10a # load another value into integer register
amomin.w x11, x24, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0x8c408522 # load random value
la x15, scratch # base address
sw x25, 0(x15) # store in memory
li x25, 0x514ab395 # load another value into integer register
amomin.w x5, x25, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x0e3214fb # load random value
la x14, scratch # base address
sw x26, 0(x14) # store in memory
li x26, 0xbbac4050 # load another value into integer register
amomin.w x1, x26, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x9b29aa55 # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0xd0ddc804 # load another value into integer register
amomin.w x12, x27, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x5743d0e3 # load random value
la x9, scratch # base address
sw x28, 0(x9) # store in memory
li x28, 0xcf0beb2d # load another value into integer register
amomin.w x3, x28, (x9) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x0a0b50f8 # load random value
la x17, scratch # base address
sw x29, 0(x17) # store in memory
li x29, 0x6496638a # load another value into integer register
amomin.w x5, x29, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x487b4859 # load random value
la x3, scratch # base address
sw x30, 0(x3) # store in memory
li x30, 0x465001fb # load another value into integer register
amomin.w x25, x30, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0xa026ee92 # load random value
la x16, scratch # base address
sw x31, 0(x16) # store in memory
li x31, 0xa5052f5c # load another value into integer register
amomin.w x23, x31, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x13, 0xaacbe188 # load random value
la x21, scratch # base address
sw x13, 0(x21) # store in memory
li x13, 0x76546250 # load another value into integer register
amomin.w x0, x13, (x21) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x3870223b # load random value
la x13, scratch # base address
sw x1, 0(x13) # store in memory
li x1, 0x29dcfd46 # load another value into integer register
amomin.w x1, x1, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x5, 0x67538f37 # load random value
la x18, scratch # base address
sw x5, 0(x18) # store in memory
li x5, 0xd15e2898 # load another value into integer register
amomin.w x2, x5, (x18) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x0e14c260 # load random value
la x30, scratch # base address
sw x7, 0(x30) # store in memory
li x7, 0x4c0f9300 # load another value into integer register
amomin.w x3, x7, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0x47e820de # load random value
la x17, scratch # base address
sw x13, 0(x17) # store in memory
li x13, 0x8bd6fa44 # load another value into integer register
amomin.w x4, x13, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xb650a8d8 # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0x94c0192e # load another value into integer register
amomin.w x5, x8, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x5b4c2b32 # load random value
la x9, scratch # base address
sw x2, 0(x9) # store in memory
li x2, 0x6271cf51 # load another value into integer register
amomin.w x6, x2, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0xf705b598 # load random value
la x17, scratch # base address
sw x15, 0(x17) # store in memory
li x15, 0xe8d1ab44 # load another value into integer register
amomin.w x7, x15, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x31, 0xc15201b0 # load random value
la x30, scratch # base address
sw x31, 0(x30) # store in memory
li x31, 0xdc46bcba # load another value into integer register
amomin.w x8, x31, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x23, 0xb42a9836 # load random value
la x2, scratch # base address
sw x23, 0(x2) # store in memory
li x23, 0x71999305 # load another value into integer register
amomin.w x9, x23, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x9, 0xe8e8f4e9 # load random value
la x10, scratch # base address
sw x9, 0(x10) # store in memory
li x9, 0x4a4c1a53 # load another value into integer register
amomin.w x10, x9, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x2d889405 # load random value
la x9, scratch # base address
sw x18, 0(x9) # store in memory
li x18, 0x65744b56 # load another value into integer register
amomin.w x11, x18, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x22, 0xa6c8f86c # load random value
la x3, scratch # base address
sw x22, 0(x3) # store in memory
li x22, 0x0a6ed280 # load another value into integer register
amomin.w x12, x22, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x26, 0xfa36039f # load random value
la x31, scratch # base address
sw x26, 0(x31) # store in memory
li x26, 0xbd569129 # load another value into integer register
amomin.w x13, x26, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x21, 0xa8e3befa # load random value
la x13, scratch # base address
sw x21, 0(x13) # store in memory
li x21, 0x20c8dee5 # load another value into integer register
amomin.w x14, x21, (x13) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x66e1f0a7 # load random value
la x30, scratch # base address
sw x24, 0(x30) # store in memory
li x24, 0xd1de4858 # load another value into integer register
amomin.w x15, x24, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x30, 0xf72a1f34 # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0x93f4b265 # load another value into integer register
amomin.w x16, x30, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x400b7e04 # load random value
la x7, scratch # base address
sw x11, 0(x7) # store in memory
li x11, 0x790eb02a # load another value into integer register
amomin.w x17, x11, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x55a83f0c # load random value
la x9, scratch # base address
sw x20, 0(x9) # store in memory
li x20, 0xd520db8f # load another value into integer register
amomin.w x18, x20, (x9) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x58b3cb5c # load random value
la x6, scratch # base address
sw x28, 0(x6) # store in memory
li x28, 0x7105060b # load another value into integer register
amomin.w x19, x28, (x6) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x3a2ecdd1 # load random value
la x29, scratch # base address
sw x5, 0(x29) # store in memory
li x5, 0xdea270d9 # load another value into integer register
amomin.w x20, x5, (x29) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xef7c74fd # load random value
la x23, scratch # base address
sw x3, 0(x23) # store in memory
li x3, 0x1b30d900 # load another value into integer register
amomin.w x21, x3, (x23) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x8911f29e # load random value
la x31, scratch # base address
sw x13, 0(x31) # store in memory
li x13, 0x432ffc44 # load another value into integer register
amomin.w x22, x13, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x25, 0x8d5e0560 # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0x4e8fbb12 # load another value into integer register
amomin.w x23, x25, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x14aac97d # load random value
la x30, scratch # base address
sw x19, 0(x30) # store in memory
li x19, 0xa2fb5bfb # load another value into integer register
amomin.w x24, x19, (x30) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x142e176d # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x9e160b75 # load another value into integer register
amomin.w x25, x9, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x24, 0x2ff21cc9 # load random value
la x11, scratch # base address
sw x24, 0(x11) # store in memory
li x24, 0xadd6f3a4 # load another value into integer register
amomin.w x26, x24, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x7c072722 # load random value
la x20, scratch # base address
sw x5, 0(x20) # store in memory
li x5, 0x28fa3334 # load another value into integer register
amomin.w x27, x5, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xf6bd3dac # load random value
la x7, scratch # base address
sw x24, 0(x7) # store in memory
li x24, 0x14eb3939 # load another value into integer register
amomin.w x28, x24, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x5, 0x88d74d98 # load random value
la x1, scratch # base address
sw x5, 0(x1) # store in memory
li x5, 0x6422fe27 # load another value into integer register
amomin.w x29, x5, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x23, 0xfeefde35 # load random value
la x31, scratch # base address
sw x23, 0(x31) # store in memory
li x23, 0x5fb849b5 # load another value into integer register
amomin.w x30, x23, (x31) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x29, 0x0b6867e0 # load random value
la x1, scratch # base address
sw x29, 0(x1) # store in memory
li x29, 0xc1410c31 # load another value into integer register
amomin.w x31, x29, (x1) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x3, 0x42b9a4ba # load random value
la x9, scratch # base address
sw x3, 0(x9) # store in memory
li x3, 0x00000000 # load another value into integer register
amomin.w x11, x3, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x25b95d61 # load random value
la x10, scratch # base address
sw x7, 0(x10) # store in memory
li x7, 0x00000001 # load another value into integer register
amomin.w x28, x7, (x10) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0xae3c28bb # load random value
la x16, scratch # base address
sw x30, 0(x16) # store in memory
li x30, 0x00000002 # load another value into integer register
amomin.w x26, x30, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x14, 0x5de6c13a # load random value
la x7, scratch # base address
sw x14, 0(x7) # store in memory
li x14, 0x80000000 # load another value into integer register
amomin.w x28, x14, (x7) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x7, 0x788c6f64 # load random value
la x16, scratch # base address
sw x7, 0(x16) # store in memory
li x7, 0x80000001 # load another value into integer register
amomin.w x28, x7, (x16) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0xa9b0d064 # load random value
la x22, scratch # base address
sw x9, 0(x22) # store in memory
li x9, 0x7fffffff # load another value into integer register
amomin.w x25, x9, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x1, 0x8912c899 # load random value
la x13, scratch # base address
sw x1, 0(x13) # store in memory
li x1, 0x7ffffffe # load another value into integer register
amomin.w x8, x1, (x13) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x0397fd6c # load random value
la x25, scratch # base address
sw x30, 0(x25) # store in memory
li x30, 0xffffffff # load another value into integer register
amomin.w x29, x30, (x25) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0x6ad2d2a8 # load random value
la x21, scratch # base address
sw x19, 0(x21) # store in memory
li x19, 0xfffffffe # load another value into integer register
amomin.w x14, x19, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x30, 0xa6e06e1e # load random value
la x22, scratch # base address
sw x30, 0(x22) # store in memory
li x30, 0x5bbc8872 # load another value into integer register
amomin.w x31, x30, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0xcd108f98 # load random value
la x17, scratch # base address
sw x16, 0(x17) # store in memory
li x16, 0xaaaaaaaa # load another value into integer register
amomin.w x2, x16, (x17) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x20, 0x8193499e # load random value
la x28, scratch # base address
sw x20, 0(x28) # store in memory
li x20, 0x55555555 # load another value into integer register
amomin.w x6, x20, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9edba9a2 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomin.w x1, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc11b4d67 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomin.w x19, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xe36a64ce # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomin.w x5, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x96158380 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomin.w x2, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8eb12223 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomin.w x9, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x520fb976 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomin.w x22, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x966834d5 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomin.w x31, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xe5d812e5 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomin.w x18, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe3604a01 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomin.w x17, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x92ad0dad # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomin.w x3, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xfe78dd25 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomin.w x3, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x70d8b4af # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomin.w x29, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x953a833d # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomin.w x21, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x356437bc # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomin.w x15, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x56fd8f88 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomin.w x11, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xebcb194e # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomin.w x26, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xaaf79aae # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomin.w x16, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfc20cb1f # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomin.w x16, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x2bc9840e # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomin.w x3, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x44c9fdf5 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomin.w x23, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7e02f76a # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomin.w x24, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xc9ab45a6 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomin.w x22, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x85fbf91e # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomin.w x16, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x337914b2 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomin.w x6, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xfccd5c9c # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomin.w x22, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x0da10f86 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomin.w x31, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x7790a7ec # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomin.w x21, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf8ac5db7 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomin.w x15, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x20e29bbd # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomin.w x3, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x83b25bef # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomin.w x5, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xba5f6107 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomin.w x31, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x28, 0x47e67639 # load random value
la x1, scratch # base address
sw x28, 0(x1) # store in memory
li x28, 0xee51ef04 # load another value into integer register
amomin.w x1, x28, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x1, 0x84591204 # load random value
la x2, scratch # base address
sw x1, 0(x2) # store in memory
li x1, 0xce1e92ad # load another value into integer register
amomin.w x2, x1, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x12, 0x0c174fd9 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0xab898c60 # load another value into integer register
amomin.w x3, x12, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x767d913d # load random value
la x4, scratch # base address
sw x21, 0(x4) # store in memory
li x21, 0x3f837340 # load another value into integer register
amomin.w x4, x21, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x82f880c3 # load random value
la x5, scratch # base address
sw x18, 0(x5) # store in memory
li x18, 0x14f66592 # load another value into integer register
amomin.w x5, x18, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xa899c5f0 # load random value
la x6, scratch # base address
sw x26, 0(x6) # store in memory
li x26, 0x4cdda32d # load another value into integer register
amomin.w x6, x26, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x3eeb34a1 # load random value
la x7, scratch # base address
sw x18, 0(x7) # store in memory
li x18, 0xd3ac0f83 # load another value into integer register
amomin.w x7, x18, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x15, 0x7f9c6ed5 # load random value
la x8, scratch # base address
sw x15, 0(x8) # store in memory
li x15, 0xd30d7679 # load another value into integer register
amomin.w x8, x15, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x15, 0xb1caf274 # load random value
la x9, scratch # base address
sw x15, 0(x9) # store in memory
li x15, 0xdd965e98 # load another value into integer register
amomin.w x9, x15, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x17, 0x250c3422 # load random value
la x10, scratch # base address
sw x17, 0(x10) # store in memory
li x17, 0x9b84dcde # load another value into integer register
amomin.w x10, x17, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x19, 0x3db08bda # load random value
la x11, scratch # base address
sw x19, 0(x11) # store in memory
li x19, 0x60dee5d7 # load another value into integer register
amomin.w x11, x19, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x24, 0xf1d7c336 # load random value
la x12, scratch # base address
sw x24, 0(x12) # store in memory
li x24, 0x46d580ca # load another value into integer register
amomin.w x12, x24, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x20, 0x1b4ecbc8 # load random value
la x13, scratch # base address
sw x20, 0(x13) # store in memory
li x20, 0x347522d1 # load another value into integer register
amomin.w x13, x20, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x2, 0xa76b6fd1 # load random value
la x14, scratch # base address
sw x2, 0(x14) # store in memory
li x2, 0xe4c8bb7d # load another value into integer register
amomin.w x14, x2, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0xb49522e4 # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0x03b7e47f # load another value into integer register
amomin.w x15, x14, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x28, 0x8576d1e4 # load random value
la x16, scratch # base address
sw x28, 0(x16) # store in memory
li x28, 0xd01d9ed7 # load another value into integer register
amomin.w x16, x28, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x31, 0xf91cb593 # load random value
la x17, scratch # base address
sw x31, 0(x17) # store in memory
li x31, 0x8d4875e2 # load another value into integer register
amomin.w x17, x31, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x14, 0x6ec44323 # load random value
la x18, scratch # base address
sw x14, 0(x18) # store in memory
li x14, 0x91b0f201 # load another value into integer register
amomin.w x18, x14, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x30, 0x2cb83ae2 # load random value
la x19, scratch # base address
sw x30, 0(x19) # store in memory
li x30, 0x28025586 # load another value into integer register
amomin.w x19, x30, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfcd59559 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomin.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x30, 0xc3272fb7 # load random value
la x21, scratch # base address
sw x30, 0(x21) # store in memory
li x30, 0x61570eaa # load another value into integer register
amomin.w x21, x30, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x28, 0x0ec8b4bf # load random value
la x22, scratch # base address
sw x28, 0(x22) # store in memory
li x28, 0x8062c416 # load another value into integer register
amomin.w x22, x28, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x2, 0xf33e3aed # load random value
la x23, scratch # base address
sw x2, 0(x23) # store in memory
li x2, 0xf9dd705a # load another value into integer register
amomin.w x23, x2, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x27, 0xabe2c483 # load random value
la x24, scratch # base address
sw x27, 0(x24) # store in memory
li x27, 0x1372b66d # load another value into integer register
amomin.w x24, x27, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x29, 0x28411be1 # load random value
la x25, scratch # base address
sw x29, 0(x25) # store in memory
li x29, 0x616ee599 # load another value into integer register
amomin.w x25, x29, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x30, 0x0a6f3be4 # load random value
la x26, scratch # base address
sw x30, 0(x26) # store in memory
li x30, 0x651cffbb # load another value into integer register
amomin.w x26, x30, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x17, 0x6394b51f # load random value
la x27, scratch # base address
sw x17, 0(x27) # store in memory
li x17, 0x289ac752 # load another value into integer register
amomin.w x27, x17, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x26, 0x43a79ea5 # load random value
la x28, scratch # base address
sw x26, 0(x28) # store in memory
li x26, 0x9b702c91 # load another value into integer register
amomin.w x28, x26, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x18, 0xae59f2ab # load random value
la x29, scratch # base address
sw x18, 0(x29) # store in memory
li x18, 0x11f3b77d # load another value into integer register
amomin.w x29, x18, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x18, 0x23482781 # load random value
la x30, scratch # base address
sw x18, 0(x30) # store in memory
li x18, 0x38b3bd78 # load another value into integer register
amomin.w x30, x18, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x19, 0xd6a4e49c # load random value
la x31, scratch # base address
sw x19, 0(x31) # store in memory
li x19, 0x8240e0e0 # load another value into integer register
amomin.w x31, x19, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x41a82ea8 # load random value
la x8, scratch # base address
sw x0, 0(x8) # store in memory
li x0, 0xad99bd5f # load another value into integer register
amomin.w x0, x0, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xc100d8bf # load random value
la x10, scratch # base address
sw x1, 0(x10) # store in memory
li x1, 0x9d225077 # load another value into integer register
amomin.w x1, x1, (x10) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x50c71ac5 # load random value
la x1, scratch # base address
sw x2, 0(x1) # store in memory
li x2, 0xb904f27d # load another value into integer register
amomin.w x2, x2, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x5dd9a6af # load random value
la x6, scratch # base address
sw x3, 0(x6) # store in memory
li x3, 0xf8738356 # load another value into integer register
amomin.w x3, x3, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xad1a4927 # load random value
la x12, scratch # base address
sw x4, 0(x12) # store in memory
li x4, 0x39712362 # load another value into integer register
amomin.w x4, x4, (x12) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xef893512 # load random value
la x27, scratch # base address
sw x5, 0(x27) # store in memory
li x5, 0xe744d2d7 # load another value into integer register
amomin.w x5, x5, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1b81a496 # load random value
la x15, scratch # base address
sw x6, 0(x15) # store in memory
li x6, 0x2679f659 # load another value into integer register
amomin.w x6, x6, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd7802bad # load random value
la x30, scratch # base address
sw x7, 0(x30) # store in memory
li x7, 0x857ec3c8 # load another value into integer register
amomin.w x7, x7, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x9a74ed1c # load random value
la x23, scratch # base address
sw x8, 0(x23) # store in memory
li x8, 0x5782271e # load another value into integer register
amomin.w x8, x8, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x94df026e # load random value
la x23, scratch # base address
sw x9, 0(x23) # store in memory
li x9, 0x66780767 # load another value into integer register
amomin.w x9, x9, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x05c2f391 # load random value
la x11, scratch # base address
sw x10, 0(x11) # store in memory
li x10, 0x7ed8b0ea # load another value into integer register
amomin.w x10, x10, (x11) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x28d3bf2c # load random value
la x9, scratch # base address
sw x11, 0(x9) # store in memory
li x11, 0x8e956a3b # load another value into integer register
amomin.w x11, x11, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x75b4d942 # load random value
la x3, scratch # base address
sw x12, 0(x3) # store in memory
li x12, 0xf79f5900 # load another value into integer register
amomin.w x12, x12, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xa1123d45 # load random value
la x18, scratch # base address
sw x13, 0(x18) # store in memory
li x13, 0x1a9716f2 # load another value into integer register
amomin.w x13, x13, (x18) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x7f4e52a8 # load random value
la x15, scratch # base address
sw x14, 0(x15) # store in memory
li x14, 0x683d4ff4 # load another value into integer register
amomin.w x14, x14, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x446bc546 # load random value
la x30, scratch # base address
sw x15, 0(x30) # store in memory
li x15, 0x41a30fc5 # load another value into integer register
amomin.w x15, x15, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xb15d672b # load random value
la x21, scratch # base address
sw x16, 0(x21) # store in memory
li x16, 0x872363e0 # load another value into integer register
amomin.w x16, x16, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xad4dc0b8 # load random value
la x1, scratch # base address
sw x17, 0(x1) # store in memory
li x17, 0x8cd1d38a # load another value into integer register
amomin.w x17, x17, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x18199541 # load random value
la x9, scratch # base address
sw x18, 0(x9) # store in memory
li x18, 0xcfe97c7c # load another value into integer register
amomin.w x18, x18, (x9) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x5b3e73d5 # load random value
la x30, scratch # base address
sw x19, 0(x30) # store in memory
li x19, 0xe0792ede # load another value into integer register
amomin.w x19, x19, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0xf1cf4d86 # load random value
la x27, scratch # base address
sw x20, 0(x27) # store in memory
li x20, 0x4b548c31 # load another value into integer register
amomin.w x20, x20, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xaa5dde96 # load random value
la x5, scratch # base address
sw x21, 0(x5) # store in memory
li x21, 0xb6022c84 # load another value into integer register
amomin.w x21, x21, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x471cc858 # load random value
la x1, scratch # base address
sw x22, 0(x1) # store in memory
li x22, 0x2ec854b8 # load another value into integer register
amomin.w x22, x22, (x1) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x618e6dcd # load random value
la x16, scratch # base address
sw x23, 0(x16) # store in memory
li x23, 0x28ea8ad4 # load another value into integer register
amomin.w x23, x23, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x66b0e78f # load random value
la x14, scratch # base address
sw x24, 0(x14) # store in memory
li x24, 0x45b199dc # load another value into integer register
amomin.w x24, x24, (x14) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x9c3200cc # load random value
la x24, scratch # base address
sw x25, 0(x24) # store in memory
li x25, 0xae504e8a # load another value into integer register
amomin.w x25, x25, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x0c1ada35 # load random value
la x20, scratch # base address
sw x26, 0(x20) # store in memory
li x26, 0x22798407 # load another value into integer register
amomin.w x26, x26, (x20) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xc982911d # load random value
la x6, scratch # base address
sw x27, 0(x6) # store in memory
li x27, 0xf2c111ff # load another value into integer register
amomin.w x27, x27, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x171b83b1 # load random value
la x15, scratch # base address
sw x28, 0(x15) # store in memory
li x28, 0xfd3c8154 # load another value into integer register
amomin.w x28, x28, (x15) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0x2c51af81 # load random value
la x2, scratch # base address
sw x29, 0(x2) # store in memory
li x29, 0xfedc6e7d # load another value into integer register
amomin.w x29, x29, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xe191bf71 # load random value
la x31, scratch # base address
sw x30, 0(x31) # store in memory
li x30, 0x985e38b3 # load another value into integer register
amomin.w x30, x30, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x83e50fd8 # load random value
la x11, scratch # base address
sw x31, 0(x11) # store in memory
li x31, 0x0e278c0c # load another value into integer register
amomin.w x31, x31, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa00ef513 # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amomin.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa4505f29 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amomin.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xd3a18001 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amomin.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x251f7a3e # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amomin.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc67aebc2 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amomin.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x43b344a2 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amomin.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xce1cfba8 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amomin.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x882d8694 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amomin.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xe6601449 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amomin.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc5bb7be3 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amomin.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xe8120715 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amomin.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb133b390 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amomin.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xdd374a28 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amomin.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0e899f68 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amomin.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xbee69b4b # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amomin.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x40088786 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amomin.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1a590e0b # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amomin.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x22d490d6 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amomin.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x12a5cbeb # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amomin.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x18a09ed1 # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amomin.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xfb454884 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amomin.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7af297f3 # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amomin.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcef4a080 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amomin.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xaa7bca9e # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amomin.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x3bfbd422 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amomin.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7d98b1e7 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amomin.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf5705668 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amomin.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4ff22bb6 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amomin.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xbd6e05f2 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amomin.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x0045658a # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amomin.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x9c0848a0 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amomin.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x1, scratch
add x19, x17, x12 # perform first operation
amomin.w x29, x7, (x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
add x24, x16, x25 # perform first operation
amomin.w x31, x29, (x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x6, x22, x18 # perform first operation
amomin.w x12, x25, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
add x9, x9, x0 # perform first operation
amomin.w x21, x7, (x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
add x26, x26, x0 # perform first operation
amomin.w x10, x18, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
add x1, x1, x0 # perform first operation
amomin.w x22, x13, (x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x31, scratch
add x29, x16, x1 # perform first operation
amomin.w x29, x5, (x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
add x15, x5, x10 # perform first operation
amomin.w x15, x2, (x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
add x27, x31, x7 # perform first operation
amomin.w x27, x28, (x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
add x16, x20, x22 # perform first operation
amomin.w x20, x19, (x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x10, scratch
add x31, x25, x30 # perform first operation
amomin.w x30, x9, (x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x21, scratch
add x9, x26, x10 # perform first operation
amomin.w x22, x31, (x21) # perform second (triggering) operation

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
