///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zaamo/WALLY-COV-amoand.w.S
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
li x15, 0x7e0e21a1 # load random value
la x1, scratch # base address
sw x15, 0(x1) # store in memory
li x15, 0xdfad9a7a # load another value into integer register
amoand.w x8, x15, (x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x21, 0x7aa741f8 # load random value
la x2, scratch # base address
sw x21, 0(x2) # store in memory
li x21, 0x824fc238 # load another value into integer register
amoand.w x11, x21, (x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x9, 0x5c3dd78a # load random value
la x3, scratch # base address
sw x9, 0(x3) # store in memory
li x9, 0x1e089c1b # load another value into integer register
amoand.w x25, x9, (x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xf40c143c # load random value
la x4, scratch # base address
sw x7, 0(x4) # store in memory
li x7, 0x23241ec2 # load another value into integer register
amoand.w x23, x7, (x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x3f8de24a # load random value
la x5, scratch # base address
sw x9, 0(x5) # store in memory
li x9, 0x8cf23a1b # load another value into integer register
amoand.w x12, x9, (x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x2cae967e # load random value
la x6, scratch # base address
sw x30, 0(x6) # store in memory
li x30, 0x6cb494ba # load another value into integer register
amoand.w x11, x30, (x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x179308af # load random value
la x7, scratch # base address
sw x8, 0(x7) # store in memory
li x8, 0xb51f42ba # load another value into integer register
amoand.w x9, x8, (x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0xb0106a40 # load random value
la x8, scratch # base address
sw x2, 0(x8) # store in memory
li x2, 0xd21b9e1b # load another value into integer register
amoand.w x23, x2, (x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x27, 0xf04dd7a7 # load random value
la x9, scratch # base address
sw x27, 0(x9) # store in memory
li x27, 0xc7ed0710 # load another value into integer register
amoand.w x13, x27, (x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x160a0350 # load random value
la x10, scratch # base address
sw x15, 0(x10) # store in memory
li x15, 0xb8063f99 # load another value into integer register
amoand.w x8, x15, (x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0x0125f5e0 # load random value
la x11, scratch # base address
sw x27, 0(x11) # store in memory
li x27, 0x1fd62472 # load another value into integer register
amoand.w x12, x27, (x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0x357004d3 # load random value
la x12, scratch # base address
sw x8, 0(x12) # store in memory
li x8, 0x91455e89 # load another value into integer register
amoand.w x17, x8, (x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x79e434dc # load random value
la x13, scratch # base address
sw x9, 0(x13) # store in memory
li x9, 0x8896b8fe # load another value into integer register
amoand.w x3, x9, (x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0xd3231877 # load random value
la x14, scratch # base address
sw x7, 0(x14) # store in memory
li x7, 0x0216a20d # load another value into integer register
amoand.w x15, x7, (x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x5935c38d # load random value
la x15, scratch # base address
sw x2, 0(x15) # store in memory
li x2, 0xff52a87a # load another value into integer register
amoand.w x11, x2, (x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x1, 0x98c6db07 # load random value
la x16, scratch # base address
sw x1, 0(x16) # store in memory
li x1, 0xd5c65480 # load another value into integer register
amoand.w x25, x1, (x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0x5120930d # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x8a6bc9ab # load another value into integer register
amoand.w x13, x9, (x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x12, 0xde121f88 # load random value
la x18, scratch # base address
sw x12, 0(x18) # store in memory
li x12, 0x15e20bd5 # load another value into integer register
amoand.w x14, x12, (x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x24, 0x1ffb9a35 # load random value
la x19, scratch # base address
sw x24, 0(x19) # store in memory
li x24, 0x2d033651 # load another value into integer register
amoand.w x9, x24, (x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x21fdfc11 # load random value
la x20, scratch # base address
sw x22, 0(x20) # store in memory
li x22, 0x2e6dcfb9 # load another value into integer register
amoand.w x7, x22, (x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x28, 0x7497d116 # load random value
la x21, scratch # base address
sw x28, 0(x21) # store in memory
li x28, 0x4ccdfdc0 # load another value into integer register
amoand.w x31, x28, (x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x8, 0x41a2ff67 # load random value
la x22, scratch # base address
sw x8, 0(x22) # store in memory
li x8, 0xbb57fec0 # load another value into integer register
amoand.w x25, x8, (x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x31, 0x278b54da # load random value
la x23, scratch # base address
sw x31, 0(x23) # store in memory
li x31, 0x83e98961 # load another value into integer register
amoand.w x18, x31, (x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xd532e7b4 # load random value
la x24, scratch # base address
sw x19, 0(x24) # store in memory
li x19, 0x7f007100 # load another value into integer register
amoand.w x8, x19, (x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xa3a4a8e4 # load random value
la x25, scratch # base address
sw x11, 0(x25) # store in memory
li x11, 0xf676e651 # load another value into integer register
amoand.w x12, x11, (x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0x3e86f78a # load random value
la x26, scratch # base address
sw x21, 0(x26) # store in memory
li x21, 0xc966bf63 # load another value into integer register
amoand.w x11, x21, (x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x060b9d33 # load random value
la x27, scratch # base address
sw x3, 0(x27) # store in memory
li x3, 0x7f914452 # load another value into integer register
amoand.w x9, x3, (x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x23, 0x1fec5677 # load random value
la x28, scratch # base address
sw x23, 0(x28) # store in memory
li x23, 0x6c609938 # load another value into integer register
amoand.w x7, x23, (x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x24, 0x7ed8b746 # load random value
la x29, scratch # base address
sw x24, 0(x29) # store in memory
li x24, 0x402f85b7 # load another value into integer register
amoand.w x1, x24, (x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x27, 0x3a615144 # load random value
la x30, scratch # base address
sw x27, 0(x30) # store in memory
li x27, 0x6f5716c8 # load another value into integer register
amoand.w x28, x27, (x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0x58896b28 # load random value
la x31, scratch # base address
sw x12, 0(x31) # store in memory
li x12, 0x1916001d # load another value into integer register
amoand.w x26, x12, (x31) # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x0, 0x0063fb2b # load random value
la x25, scratch # base address
sw x0, 0(x25) # store in memory
li x0, 0x518ca512 # load another value into integer register
amoand.w x2, x0, (x25) # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0xb72189f7 # load random value
la x19, scratch # base address
sw x1, 0(x19) # store in memory
li x1, 0x0d8ad858 # load another value into integer register
amoand.w x2, x1, (x19) # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0xaea54a73 # load random value
la x1, scratch # base address
sw x2, 0(x1) # store in memory
li x2, 0xaf25a8a8 # load another value into integer register
amoand.w x28, x2, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0xd8c58df5 # load random value
la x11, scratch # base address
sw x3, 0(x11) # store in memory
li x3, 0x05ba480e # load another value into integer register
amoand.w x27, x3, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd4122493 # load random value
la x15, scratch # base address
sw x4, 0(x15) # store in memory
li x4, 0xc0c2ae41 # load another value into integer register
amoand.w x2, x4, (x15) # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5841b50e # load random value
la x17, scratch # base address
sw x5, 0(x17) # store in memory
li x5, 0x204700fb # load another value into integer register
amoand.w x29, x5, (x17) # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcc23aae4 # load random value
la x29, scratch # base address
sw x6, 0(x29) # store in memory
li x6, 0xbda5c43a # load another value into integer register
amoand.w x14, x6, (x29) # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe33db20e # load random value
la x27, scratch # base address
sw x7, 0(x27) # store in memory
li x7, 0x33564ead # load another value into integer register
amoand.w x1, x7, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x795fa868 # load random value
la x24, scratch # base address
sw x8, 0(x24) # store in memory
li x8, 0xe77e14bc # load another value into integer register
amoand.w x27, x8, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x3e466f5f # load random value
la x18, scratch # base address
sw x9, 0(x18) # store in memory
li x9, 0xef313b90 # load another value into integer register
amoand.w x15, x9, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x2b5a0059 # load random value
la x2, scratch # base address
sw x10, 0(x2) # store in memory
li x10, 0xde8a0584 # load another value into integer register
amoand.w x28, x10, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x50085425 # load random value
la x5, scratch # base address
sw x11, 0(x5) # store in memory
li x11, 0x004c04b1 # load another value into integer register
amoand.w x3, x11, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xac3d9ffa # load random value
la x1, scratch # base address
sw x12, 0(x1) # store in memory
li x12, 0x2df842ea # load another value into integer register
amoand.w x21, x12, (x1) # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xa409942d # load random value
la x18, scratch # base address
sw x13, 0(x18) # store in memory
li x13, 0x2b6b50df # load another value into integer register
amoand.w x2, x13, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x45d37aa8 # load random value
la x12, scratch # base address
sw x14, 0(x12) # store in memory
li x14, 0x3f67a48c # load another value into integer register
amoand.w x18, x14, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xf31645d1 # load random value
la x18, scratch # base address
sw x15, 0(x18) # store in memory
li x15, 0x200f4df6 # load another value into integer register
amoand.w x9, x15, (x18) # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0xd03b7065 # load random value
la x5, scratch # base address
sw x16, 0(x5) # store in memory
li x16, 0xa79cc02c # load another value into integer register
amoand.w x13, x16, (x5) # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xb9dcbfa6 # load random value
la x3, scratch # base address
sw x17, 0(x3) # store in memory
li x17, 0x17f9d00b # load another value into integer register
amoand.w x22, x17, (x3) # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0xeb7aa77d # load random value
la x23, scratch # base address
sw x18, 0(x23) # store in memory
li x18, 0x028be1e8 # load another value into integer register
amoand.w x26, x18, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x25aa8d93 # load random value
la x12, scratch # base address
sw x19, 0(x12) # store in memory
li x19, 0xd1d61e7c # load another value into integer register
amoand.w x25, x19, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xde6acbb2 # load random value
la x11, scratch # base address
sw x20, 0(x11) # store in memory
li x20, 0x220a9746 # load another value into integer register
amoand.w x6, x20, (x11) # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x83f10d52 # load random value
la x20, scratch # base address
sw x21, 0(x20) # store in memory
li x21, 0x673c6139 # load another value into integer register
amoand.w x31, x21, (x20) # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x9770f501 # load random value
la x14, scratch # base address
sw x22, 0(x14) # store in memory
li x22, 0xa166944a # load another value into integer register
amoand.w x9, x22, (x14) # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0xbe146e3f # load random value
la x22, scratch # base address
sw x23, 0(x22) # store in memory
li x23, 0x3ff91bf2 # load another value into integer register
amoand.w x11, x23, (x22) # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0x04bcb4aa # load random value
la x27, scratch # base address
sw x24, 0(x27) # store in memory
li x24, 0xea033e37 # load another value into integer register
amoand.w x30, x24, (x27) # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xd3dee8ee # load random value
la x2, scratch # base address
sw x25, 0(x2) # store in memory
li x25, 0x4b92d70d # load another value into integer register
amoand.w x1, x25, (x2) # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x13fa73eb # load random value
la x23, scratch # base address
sw x26, 0(x23) # store in memory
li x26, 0x22aa084e # load another value into integer register
amoand.w x15, x26, (x23) # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0x7f8e89e4 # load random value
la x30, scratch # base address
sw x27, 0(x30) # store in memory
li x27, 0x052c20f8 # load another value into integer register
amoand.w x29, x27, (x30) # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x5bc972ee # load random value
la x24, scratch # base address
sw x28, 0(x24) # store in memory
li x28, 0xcc601932 # load another value into integer register
amoand.w x17, x28, (x24) # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x64d35dca # load random value
la x21, scratch # base address
sw x29, 0(x21) # store in memory
li x29, 0x2218a551 # load another value into integer register
amoand.w x25, x29, (x21) # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0x67348758 # load random value
la x12, scratch # base address
sw x30, 0(x12) # store in memory
li x30, 0x9c1a219b # load another value into integer register
amoand.w x14, x30, (x12) # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x3b941a25 # load random value
la x22, scratch # base address
sw x31, 0(x22) # store in memory
li x31, 0x89dac8fa # load another value into integer register
amoand.w x12, x31, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x5807b725 # load random value
la x20, scratch # base address
sw x21, 0(x20) # store in memory
li x21, 0x51405f4f # load another value into integer register
amoand.w x0, x21, (x20) # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x3d7d37bf # load random value
la x10, scratch # base address
sw x26, 0(x10) # store in memory
li x26, 0x841989e3 # load another value into integer register
amoand.w x1, x26, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xc26a7cef # load random value
la x26, scratch # base address
sw x19, 0(x26) # store in memory
li x19, 0x6770c200 # load another value into integer register
amoand.w x2, x19, (x26) # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x7fdb0683 # load random value
la x5, scratch # base address
sw x22, 0(x5) # store in memory
li x22, 0x784a19c1 # load another value into integer register
amoand.w x3, x22, (x5) # perform operation

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x8e619fea # load random value
la x2, scratch # base address
sw x16, 0(x2) # store in memory
li x16, 0xc7a9ed1b # load another value into integer register
amoand.w x4, x16, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x64b90d42 # load random value
la x24, scratch # base address
sw x10, 0(x24) # store in memory
li x10, 0x2c986026 # load another value into integer register
amoand.w x5, x10, (x24) # perform operation

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xa176df3b # load random value
la x27, scratch # base address
sw x29, 0(x27) # store in memory
li x29, 0x5eefd18e # load another value into integer register
amoand.w x6, x29, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x6320e367 # load random value
la x4, scratch # base address
sw x3, 0(x4) # store in memory
li x3, 0xd4a515cc # load another value into integer register
amoand.w x7, x3, (x4) # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x10, 0x322cd20d # load random value
la x12, scratch # base address
sw x10, 0(x12) # store in memory
li x10, 0x1ae6372f # load another value into integer register
amoand.w x8, x10, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x26f01034 # load random value
la x14, scratch # base address
sw x11, 0(x14) # store in memory
li x11, 0xf8391256 # load another value into integer register
amoand.w x9, x11, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x1, 0xdcac4d8c # load random value
la x11, scratch # base address
sw x1, 0(x11) # store in memory
li x1, 0xcb040c6f # load another value into integer register
amoand.w x10, x1, (x11) # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x6, 0xdc56a6eb # load random value
la x22, scratch # base address
sw x6, 0(x22) # store in memory
li x6, 0x15c8ed1f # load another value into integer register
amoand.w x11, x6, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xad6f08e8 # load random value
la x28, scratch # base address
sw x1, 0(x28) # store in memory
li x1, 0x96b71c72 # load another value into integer register
amoand.w x12, x1, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xf457c3e3 # load random value
la x12, scratch # base address
sw x27, 0(x12) # store in memory
li x27, 0xd4a9499e # load another value into integer register
amoand.w x13, x27, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x804d8eb0 # load random value
la x1, scratch # base address
sw x23, 0(x1) # store in memory
li x23, 0x8d6d247e # load another value into integer register
amoand.w x14, x23, (x1) # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x0adb9b92 # load random value
la x14, scratch # base address
sw x8, 0(x14) # store in memory
li x8, 0x20752b0e # load another value into integer register
amoand.w x15, x8, (x14) # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x8, 0x69d36aa0 # load random value
la x7, scratch # base address
sw x8, 0(x7) # store in memory
li x8, 0x586fac27 # load another value into integer register
amoand.w x16, x8, (x7) # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x39ced83f # load random value
la x12, scratch # base address
sw x17, 0(x12) # store in memory
li x17, 0xbbc560da # load another value into integer register
amoand.w x17, x17, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x6, 0xc5fab2b4 # load random value
la x2, scratch # base address
sw x6, 0(x2) # store in memory
li x6, 0x7e988162 # load another value into integer register
amoand.w x18, x6, (x2) # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x810bb3a1 # load random value
la x16, scratch # base address
sw x6, 0(x16) # store in memory
li x6, 0x3125558f # load another value into integer register
amoand.w x19, x6, (x16) # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x8aea8263 # load random value
la x27, scratch # base address
sw x21, 0(x27) # store in memory
li x21, 0x27b99ca0 # load another value into integer register
amoand.w x20, x21, (x27) # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x7b647cfd # load random value
la x25, scratch # base address
sw x28, 0(x25) # store in memory
li x28, 0xbb168d5a # load another value into integer register
amoand.w x21, x28, (x25) # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x7501f1bd # load random value
la x10, scratch # base address
sw x24, 0(x10) # store in memory
li x24, 0x6de5036b # load another value into integer register
amoand.w x22, x24, (x10) # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x6e3984f6 # load random value
la x17, scratch # base address
sw x20, 0(x17) # store in memory
li x20, 0xc7b512da # load another value into integer register
amoand.w x23, x20, (x17) # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x5b1f7af6 # load random value
la x12, scratch # base address
sw x17, 0(x12) # store in memory
li x17, 0xbbabc1bd # load another value into integer register
amoand.w x24, x17, (x12) # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x0a4a61f3 # load random value
la x3, scratch # base address
sw x30, 0(x3) # store in memory
li x30, 0x05a630ed # load another value into integer register
amoand.w x25, x30, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x64c5af4a # load random value
la x22, scratch # base address
sw x21, 0(x22) # store in memory
li x21, 0x3c3747e5 # load another value into integer register
amoand.w x26, x21, (x22) # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x25b2d071 # load random value
la x28, scratch # base address
sw x7, 0(x28) # store in memory
li x7, 0xb9034902 # load another value into integer register
amoand.w x27, x7, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xd67df8f9 # load random value
la x3, scratch # base address
sw x6, 0(x3) # store in memory
li x6, 0x1fc95271 # load another value into integer register
amoand.w x28, x6, (x3) # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x6412484f # load random value
la x8, scratch # base address
sw x21, 0(x8) # store in memory
li x21, 0x0c769177 # load another value into integer register
amoand.w x29, x21, (x8) # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x7b5cf574 # load random value
la x28, scratch # base address
sw x22, 0(x28) # store in memory
li x22, 0x1335a341 # load another value into integer register
amoand.w x30, x22, (x28) # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x10, 0xc89e30e8 # load random value
la x4, scratch # base address
sw x10, 0(x4) # store in memory
li x10, 0xe51f71a6 # load another value into integer register
amoand.w x31, x10, (x4) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0x45b3e2f7 # load random value
la x9, scratch # base address
sw x24, 0(x9) # store in memory
li x24, 0x00000000 # load another value into integer register
amoand.w x15, x24, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x6, 0x098a5e4c # load random value
la x24, scratch # base address
sw x6, 0(x24) # store in memory
li x6, 0x00000001 # load another value into integer register
amoand.w x13, x6, (x24) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x46673db3 # load random value
la x19, scratch # base address
sw x15, 0(x19) # store in memory
li x15, 0x00000002 # load another value into integer register
amoand.w x14, x15, (x19) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x7cfb7d41 # load random value
la x14, scratch # base address
sw x15, 0(x14) # store in memory
li x15, 0x80000000 # load another value into integer register
amoand.w x17, x15, (x14) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x4, 0x734c21c6 # load random value
la x3, scratch # base address
sw x4, 0(x3) # store in memory
li x4, 0x80000001 # load another value into integer register
amoand.w x1, x4, (x3) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x1, 0xa9b87379 # load random value
la x9, scratch # base address
sw x1, 0(x9) # store in memory
li x1, 0x7fffffff # load another value into integer register
amoand.w x20, x1, (x9) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0xe1f8c403 # load random value
la x8, scratch # base address
sw x31, 0(x8) # store in memory
li x31, 0x7ffffffe # load another value into integer register
amoand.w x10, x31, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x1e58e604 # load random value
la x8, scratch # base address
sw x16, 0(x8) # store in memory
li x16, 0xffffffff # load another value into integer register
amoand.w x25, x16, (x8) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0x87845b65 # load random value
la x22, scratch # base address
sw x28, 0(x22) # store in memory
li x28, 0xfffffffe # load another value into integer register
amoand.w x27, x28, (x22) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x14, 0x4f46f59c # load random value
la x12, scratch # base address
sw x14, 0(x12) # store in memory
li x14, 0x5bbc8872 # load another value into integer register
amoand.w x30, x14, (x12) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x27, 0x8523411e # load random value
la x21, scratch # base address
sw x27, 0(x21) # store in memory
li x27, 0xaaaaaaaa # load another value into integer register
amoand.w x22, x27, (x21) # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x31, 0xfbea8b96 # load random value
la x26, scratch # base address
sw x31, 0(x26) # store in memory
li x31, 0x55555555 # load another value into integer register
amoand.w x16, x31, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xf6cb29ea # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoand.w x20, x1, (x1) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x9ec8e044 # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoand.w x3, x2, (x2) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc5a0c435 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoand.w x25, x3, (x3) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0xf0761af3 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoand.w x27, x4, (x4) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xea6fc32b # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoand.w x3, x5, (x5) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdb47eba3 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoand.w x2, x6, (x6) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x012ceae0 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoand.w x17, x7, (x7) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x76b442ea # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoand.w x31, x8, (x8) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5bad35b8 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoand.w x5, x9, (x9) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x87618da2 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoand.w x27, x10, (x10) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x58f689f0 # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoand.w x21, x11, (x11) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd947ca9d # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoand.w x28, x12, (x12) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5b9044c1 # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoand.w x3, x13, (x13) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc1eeb7e1 # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoand.w x3, x14, (x14) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x10f90af2 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoand.w x21, x15, (x15) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x38c670a9 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoand.w x8, x16, (x16) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x7af8c29f # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoand.w x25, x17, (x17) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6a2892d2 # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoand.w x29, x18, (x18) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0128349a # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoand.w x6, x19, (x19) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xf1dec80a # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoand.w x27, x20, (x20) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xfdc029ad # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoand.w x16, x21, (x21) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x0fb6f37d # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoand.w x13, x22, (x22) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x207fabfb # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoand.w x10, x23, (x23) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8c7fcff1 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoand.w x13, x24, (x24) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x28537b0c # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoand.w x8, x25, (x25) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1750efce # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoand.w x9, x26, (x26) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1a06a695 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoand.w x10, x27, (x27) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xda690c5c # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoand.w x25, x28, (x28) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x7b37f4d0 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoand.w x16, x29, (x29) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x69cab3b3 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoand.w x19, x30, (x30) # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xfa1d64b0 # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoand.w x1, x31, (x31) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x21, 0x6f8742b8 # load random value
la x1, scratch # base address
sw x21, 0(x1) # store in memory
li x21, 0x8559f50b # load another value into integer register
amoand.w x1, x21, (x1) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x14, 0xe40bbf88 # load random value
la x2, scratch # base address
sw x14, 0(x2) # store in memory
li x14, 0xe77ece0b # load another value into integer register
amoand.w x2, x14, (x2) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x23, 0x3ec277b5 # load random value
la x3, scratch # base address
sw x23, 0(x3) # store in memory
li x23, 0x08de874c # load another value into integer register
amoand.w x3, x23, (x3) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xa8afd59b # load random value
la x4, scratch # base address
sw x19, 0(x4) # store in memory
li x19, 0x213f262d # load another value into integer register
amoand.w x4, x19, (x4) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xe3a2be18 # load random value
la x5, scratch # base address
sw x14, 0(x5) # store in memory
li x14, 0x63409b7c # load another value into integer register
amoand.w x5, x14, (x5) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xb2801653 # load random value
la x6, scratch # base address
sw x24, 0(x6) # store in memory
li x24, 0x33cf48e1 # load another value into integer register
amoand.w x6, x24, (x6) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x5552dee8 # load random value
la x7, scratch # base address
sw x18, 0(x7) # store in memory
li x18, 0xa52b72bb # load another value into integer register
amoand.w x7, x18, (x7) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x3, 0xf792a3ef # load random value
la x8, scratch # base address
sw x3, 0(x8) # store in memory
li x3, 0xb989440c # load another value into integer register
amoand.w x8, x3, (x8) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x15, 0x294fd701 # load random value
la x9, scratch # base address
sw x15, 0(x9) # store in memory
li x15, 0xca5d7d4e # load another value into integer register
amoand.w x9, x15, (x9) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x19, 0x9e38c9d4 # load random value
la x10, scratch # base address
sw x19, 0(x10) # store in memory
li x19, 0xdff32e91 # load another value into integer register
amoand.w x10, x19, (x10) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x5, 0x2c9d7c27 # load random value
la x11, scratch # base address
sw x5, 0(x11) # store in memory
li x5, 0x82e34574 # load another value into integer register
amoand.w x11, x5, (x11) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x28, 0x9f616811 # load random value
la x12, scratch # base address
sw x28, 0(x12) # store in memory
li x28, 0x275e9e61 # load another value into integer register
amoand.w x12, x28, (x12) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x25, 0x0c1e9eb0 # load random value
la x13, scratch # base address
sw x25, 0(x13) # store in memory
li x25, 0xb0f36973 # load another value into integer register
amoand.w x13, x25, (x13) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x23, 0x5cd5e4e9 # load random value
la x14, scratch # base address
sw x23, 0(x14) # store in memory
li x23, 0x030d7d7c # load another value into integer register
amoand.w x14, x23, (x14) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x31, 0x4a664ebb # load random value
la x15, scratch # base address
sw x31, 0(x15) # store in memory
li x31, 0x4d6daafc # load another value into integer register
amoand.w x15, x31, (x15) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x21, 0xaa5bbf7d # load random value
la x16, scratch # base address
sw x21, 0(x16) # store in memory
li x21, 0xe76e6406 # load another value into integer register
amoand.w x16, x21, (x16) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x16, 0xed57f71b # load random value
la x17, scratch # base address
sw x16, 0(x17) # store in memory
li x16, 0x42f7d4ac # load another value into integer register
amoand.w x17, x16, (x17) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x27, 0x4b7d7d7b # load random value
la x18, scratch # base address
sw x27, 0(x18) # store in memory
li x27, 0x78fc5501 # load another value into integer register
amoand.w x18, x27, (x18) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x27, 0xec105e98 # load random value
la x19, scratch # base address
sw x27, 0(x19) # store in memory
li x27, 0xb02277c6 # load another value into integer register
amoand.w x19, x27, (x19) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x25, 0xa1b9853e # load random value
la x20, scratch # base address
sw x25, 0(x20) # store in memory
li x25, 0xae0b8a34 # load another value into integer register
amoand.w x20, x25, (x20) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x30, 0xad0c0016 # load random value
la x21, scratch # base address
sw x30, 0(x21) # store in memory
li x30, 0xe512e24c # load another value into integer register
amoand.w x21, x30, (x21) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x5, 0xf69f58ed # load random value
la x22, scratch # base address
sw x5, 0(x22) # store in memory
li x5, 0x4bdee9b5 # load another value into integer register
amoand.w x22, x5, (x22) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x31, 0x00693542 # load random value
la x23, scratch # base address
sw x31, 0(x23) # store in memory
li x31, 0x34547eb5 # load another value into integer register
amoand.w x23, x31, (x23) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x22, 0x1dbf0746 # load random value
la x24, scratch # base address
sw x22, 0(x24) # store in memory
li x22, 0x8d0027c1 # load another value into integer register
amoand.w x24, x22, (x24) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x16, 0x403fd617 # load random value
la x25, scratch # base address
sw x16, 0(x25) # store in memory
li x16, 0xb2077a28 # load another value into integer register
amoand.w x25, x16, (x25) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x12, 0x7c77b21a # load random value
la x26, scratch # base address
sw x12, 0(x26) # store in memory
li x12, 0xa39b45dd # load another value into integer register
amoand.w x26, x12, (x26) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x22, 0x0c21c3eb # load random value
la x27, scratch # base address
sw x22, 0(x27) # store in memory
li x22, 0x175628c5 # load another value into integer register
amoand.w x27, x22, (x27) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x33d03fff # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoand.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x7, 0x1f6f76da # load random value
la x29, scratch # base address
sw x7, 0(x29) # store in memory
li x7, 0x17aa9ee6 # load another value into integer register
amoand.w x29, x7, (x29) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4c240d87 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoand.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x23, 0xa8bb7fea # load random value
la x31, scratch # base address
sw x23, 0(x31) # store in memory
li x23, 0x5484b235 # load another value into integer register
amoand.w x31, x23, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x0, 0x460be3d9 # load random value
la x25, scratch # base address
sw x0, 0(x25) # store in memory
li x0, 0xfdaa3009 # load another value into integer register
amoand.w x0, x0, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x8837b31b # load random value
la x7, scratch # base address
sw x1, 0(x7) # store in memory
li x1, 0xf59f5879 # load another value into integer register
amoand.w x1, x1, (x7) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0x7d6ba834 # load random value
la x27, scratch # base address
sw x2, 0(x27) # store in memory
li x2, 0x28a823f4 # load another value into integer register
amoand.w x2, x2, (x27) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0x9b645b71 # load random value
la x25, scratch # base address
sw x3, 0(x25) # store in memory
li x3, 0x17e6d2a8 # load another value into integer register
amoand.w x3, x3, (x25) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc9c1dffe # load random value
la x17, scratch # base address
sw x4, 0(x17) # store in memory
li x4, 0xa5a0a7b5 # load another value into integer register
amoand.w x4, x4, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4dcbabce # load random value
la x6, scratch # base address
sw x5, 0(x6) # store in memory
li x5, 0x97a43dfd # load another value into integer register
amoand.w x5, x5, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x6, 0x62bb60ad # load random value
la x21, scratch # base address
sw x6, 0(x21) # store in memory
li x6, 0x1e872d6a # load another value into integer register
amoand.w x6, x6, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5f6c3ff8 # load random value
la x16, scratch # base address
sw x7, 0(x16) # store in memory
li x7, 0x0a980a4b # load another value into integer register
amoand.w x7, x7, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0xe5b12f00 # load random value
la x16, scratch # base address
sw x8, 0(x16) # store in memory
li x8, 0xb935574c # load another value into integer register
amoand.w x8, x8, (x16) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x5c82c196 # load random value
la x17, scratch # base address
sw x9, 0(x17) # store in memory
li x9, 0x77a0dd6c # load another value into integer register
amoand.w x9, x9, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xd3a91741 # load random value
la x21, scratch # base address
sw x10, 0(x21) # store in memory
li x10, 0x8c75f73d # load another value into integer register
amoand.w x10, x10, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x82379401 # load random value
la x29, scratch # base address
sw x11, 0(x29) # store in memory
li x11, 0xa3e2ee57 # load another value into integer register
amoand.w x11, x11, (x29) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xbe213f6a # load random value
la x21, scratch # base address
sw x12, 0(x21) # store in memory
li x12, 0x69f58fc4 # load another value into integer register
amoand.w x12, x12, (x21) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x7177de2a # load random value
la x31, scratch # base address
sw x13, 0(x31) # store in memory
li x13, 0x80ba6fd6 # load another value into integer register
amoand.w x13, x13, (x31) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0xa482d224 # load random value
la x6, scratch # base address
sw x14, 0(x6) # store in memory
li x14, 0x78ef7abe # load another value into integer register
amoand.w x14, x14, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x8edd4ad1 # load random value
la x17, scratch # base address
sw x15, 0(x17) # store in memory
li x15, 0x9b3684ac # load another value into integer register
amoand.w x15, x15, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xf8095557 # load random value
la x19, scratch # base address
sw x16, 0(x19) # store in memory
li x16, 0x689ea780 # load another value into integer register
amoand.w x16, x16, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x53ccefe4 # load random value
la x6, scratch # base address
sw x17, 0(x6) # store in memory
li x17, 0x4939477c # load another value into integer register
amoand.w x17, x17, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x692327e9 # load random value
la x17, scratch # base address
sw x18, 0(x17) # store in memory
li x18, 0x0c5ae550 # load another value into integer register
amoand.w x18, x18, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x20330487 # load random value
la x6, scratch # base address
sw x19, 0(x6) # store in memory
li x19, 0x26b443d8 # load another value into integer register
amoand.w x19, x19, (x6) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x82051328 # load random value
la x8, scratch # base address
sw x20, 0(x8) # store in memory
li x20, 0x4e76145a # load another value into integer register
amoand.w x20, x20, (x8) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x246c05ea # load random value
la x2, scratch # base address
sw x21, 0(x2) # store in memory
li x21, 0x786893af # load another value into integer register
amoand.w x21, x21, (x2) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xb2265115 # load random value
la x23, scratch # base address
sw x22, 0(x23) # store in memory
li x22, 0xe822a62d # load another value into integer register
amoand.w x22, x22, (x23) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0xbc38ff43 # load random value
la x30, scratch # base address
sw x23, 0(x30) # store in memory
li x23, 0xbf5a0546 # load another value into integer register
amoand.w x23, x23, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0xdba701eb # load random value
la x22, scratch # base address
sw x24, 0(x22) # store in memory
li x24, 0x346f03f3 # load another value into integer register
amoand.w x24, x24, (x22) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x8fd68427 # load random value
la x19, scratch # base address
sw x25, 0(x19) # store in memory
li x25, 0xd48a738d # load another value into integer register
amoand.w x25, x25, (x19) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x0d071efa # load random value
la x30, scratch # base address
sw x26, 0(x30) # store in memory
li x26, 0x60e373da # load another value into integer register
amoand.w x26, x26, (x30) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0x6e12327e # load random value
la x24, scratch # base address
sw x27, 0(x24) # store in memory
li x27, 0xc3d6feba # load another value into integer register
amoand.w x27, x27, (x24) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x7cae6af3 # load random value
la x17, scratch # base address
sw x28, 0(x17) # store in memory
li x28, 0x1fecfabd # load another value into integer register
amoand.w x28, x28, (x17) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xaaa9a05a # load random value
la x5, scratch # base address
sw x29, 0(x5) # store in memory
li x29, 0x7cd478ef # load another value into integer register
amoand.w x29, x29, (x5) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x2b4f232d # load random value
la x3, scratch # base address
sw x30, 0(x3) # store in memory
li x30, 0xb56081a3 # load another value into integer register
amoand.w x30, x30, (x3) # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0x78a5df37 # load random value
la x1, scratch # base address
sw x31, 0(x1) # store in memory
li x31, 0x00a4b379 # load another value into integer register
amoand.w x31, x31, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x49c6781d # load random value
la x1, scratch # base address
sw x1, 0(x1) # store in memory
amoand.w x1, x1, (x1) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x01573b0a # load random value
la x2, scratch # base address
sw x2, 0(x2) # store in memory
amoand.w x2, x2, (x2) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xea4228f7 # load random value
la x3, scratch # base address
sw x3, 0(x3) # store in memory
amoand.w x3, x3, (x3) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8419afa2 # load random value
la x4, scratch # base address
sw x4, 0(x4) # store in memory
amoand.w x4, x4, (x4) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7e5c3b19 # load random value
la x5, scratch # base address
sw x5, 0(x5) # store in memory
amoand.w x5, x5, (x5) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa9de8027 # load random value
la x6, scratch # base address
sw x6, 0(x6) # store in memory
amoand.w x6, x6, (x6) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc28b3b38 # load random value
la x7, scratch # base address
sw x7, 0(x7) # store in memory
amoand.w x7, x7, (x7) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x04f9f046 # load random value
la x8, scratch # base address
sw x8, 0(x8) # store in memory
amoand.w x8, x8, (x8) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x61a7c625 # load random value
la x9, scratch # base address
sw x9, 0(x9) # store in memory
amoand.w x9, x9, (x9) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2c396612 # load random value
la x10, scratch # base address
sw x10, 0(x10) # store in memory
amoand.w x10, x10, (x10) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x95cd5dfe # load random value
la x11, scratch # base address
sw x11, 0(x11) # store in memory
amoand.w x11, x11, (x11) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xcc8f0365 # load random value
la x12, scratch # base address
sw x12, 0(x12) # store in memory
amoand.w x12, x12, (x12) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x47eb101c # load random value
la x13, scratch # base address
sw x13, 0(x13) # store in memory
amoand.w x13, x13, (x13) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6ba5d67e # load random value
la x14, scratch # base address
sw x14, 0(x14) # store in memory
amoand.w x14, x14, (x14) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc1c27082 # load random value
la x15, scratch # base address
sw x15, 0(x15) # store in memory
amoand.w x15, x15, (x15) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x15c0f120 # load random value
la x16, scratch # base address
sw x16, 0(x16) # store in memory
amoand.w x16, x16, (x16) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xac117cc2 # load random value
la x17, scratch # base address
sw x17, 0(x17) # store in memory
amoand.w x17, x17, (x17) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x168639ff # load random value
la x18, scratch # base address
sw x18, 0(x18) # store in memory
amoand.w x18, x18, (x18) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xe3209252 # load random value
la x19, scratch # base address
sw x19, 0(x19) # store in memory
amoand.w x19, x19, (x19) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x7c302aef # load random value
la x20, scratch # base address
sw x20, 0(x20) # store in memory
amoand.w x20, x20, (x20) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x294acde2 # load random value
la x21, scratch # base address
sw x21, 0(x21) # store in memory
amoand.w x21, x21, (x21) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xf2cae9ae # load random value
la x22, scratch # base address
sw x22, 0(x22) # store in memory
amoand.w x22, x22, (x22) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4050e011 # load random value
la x23, scratch # base address
sw x23, 0(x23) # store in memory
amoand.w x23, x23, (x23) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xd4a8ba93 # load random value
la x24, scratch # base address
sw x24, 0(x24) # store in memory
amoand.w x24, x24, (x24) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb810c7a2 # load random value
la x25, scratch # base address
sw x25, 0(x25) # store in memory
amoand.w x25, x25, (x25) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x12cab330 # load random value
la x26, scratch # base address
sw x26, 0(x26) # store in memory
amoand.w x26, x26, (x26) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xf20f5e85 # load random value
la x27, scratch # base address
sw x27, 0(x27) # store in memory
amoand.w x27, x27, (x27) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb805f1c9 # load random value
la x28, scratch # base address
sw x28, 0(x28) # store in memory
amoand.w x28, x28, (x28) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3191fbe6 # load random value
la x29, scratch # base address
sw x29, 0(x29) # store in memory
amoand.w x29, x29, (x29) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x82bfbeb0 # load random value
la x30, scratch # base address
sw x30, 0(x30) # store in memory
amoand.w x30, x30, (x30) # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6db02d8b # load random value
la x31, scratch # base address
sw x31, 0(x31) # store in memory
amoand.w x31, x31, (x31) # perform operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
add x20, x17, x14 # perform first operation
amoand.w x5, x3, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
add x13, x27, x15 # perform first operation
amoand.w x25, x31, (x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
add x6, x11, x25 # perform first operation
amoand.w x10, x24, (x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
add x9, x9, x0 # perform first operation
amoand.w x17, x9, (x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
add x21, x21, x0 # perform first operation
amoand.w x25, x18, (x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
add x27, x27, x0 # perform first operation
amoand.w x28, x17, (x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
add x20, x5, x30 # perform first operation
amoand.w x20, x14, (x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x27, scratch
add x16, x1, x10 # perform first operation
amoand.w x16, x28, (x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x7, scratch
add x20, x10, x26 # perform first operation
amoand.w x20, x29, (x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x29, scratch
add x27, x17, x24 # perform first operation
amoand.w x17, x26, (x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
add x8, x2, x25 # perform first operation
amoand.w x25, x15, (x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x25, scratch
add x30, x28, x21 # perform first operation
amoand.w x24, x26, (x25) # perform second (triggering) operation

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
