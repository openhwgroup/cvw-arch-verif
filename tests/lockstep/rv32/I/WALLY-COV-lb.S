///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-lb.S
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
li x18, 0x9041aa4b # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1124 # sub immediate from rs1 to counter offset
sw x18, -1124 (x1) # store value to put something in memory
lb x7, -1124(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x13, 0x4d33593a # initialize rs2
la x2, scratch # base address 
addi x2, x2, -915 # sub immediate from rs1 to counter offset
sw x13, 915 (x2) # store value to put something in memory
lb x21, 915(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
li x17, 0xee8efa4d # initialize rs2
la x3, scratch # base address 
addi x3, x3, -340 # sub immediate from rs1 to counter offset
sw x17, 340 (x3) # store value to put something in memory
lb x2, 340(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xab819047 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1066 # sub immediate from rs1 to counter offset
sw x28, 1066 (x4) # store value to put something in memory
lb x29, 1066(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x9b9b1278 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -587 # sub immediate from rs1 to counter offset
sw x27, 587 (x5) # store value to put something in memory
lb x10, 587(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x79d93156 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -29 # sub immediate from rs1 to counter offset
sw x17, 29 (x6) # store value to put something in memory
lb x12, 29(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x12, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x30275d7d # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1164 # sub immediate from rs1 to counter offset
sw x11, 1164 (x7) # store value to put something in memory
lb x24, 1164(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x4e2bdbb9 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1796 # sub immediate from rs1 to counter offset
sw x14, 1796 (x8) # store value to put something in memory
lb x15, 1796(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x8b815b4b # initialize rs2
la x9, scratch # base address 
addi x9, x9, 244 # sub immediate from rs1 to counter offset
sw x29, -244 (x9) # store value to put something in memory
lb x10, -244(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0x433e8c13 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -667 # sub immediate from rs1 to counter offset
sw x1, 667 (x10) # store value to put something in memory
lb x8, 667(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x8340c3c7 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -777 # sub immediate from rs1 to counter offset
sw x13, 777 (x11) # store value to put something in memory
lb x24, 777(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
li x30, 0x906482c2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 119 # sub immediate from rs1 to counter offset
sw x30, -119 (x12) # store value to put something in memory
lb x24, -119(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0xe9cf1d07 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -121 # sub immediate from rs1 to counter offset
sw x3, 121 (x13) # store value to put something in memory
lb x9, 121(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0xa95009d8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1799 # sub immediate from rs1 to counter offset
sw x5, 1799 (x14) # store value to put something in memory
lb x31, 1799(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0x339f5ff3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -732 # sub immediate from rs1 to counter offset
sw x20, 732 (x15) # store value to put something in memory
lb x12, 732(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
li x2, 0xdb2eb666 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -720 # sub immediate from rs1 to counter offset
sw x2, 720 (x16) # store value to put something in memory
lb x5, 720(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
li x14, 0xfa5b4731 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1770 # sub immediate from rs1 to counter offset
sw x14, -1770 (x17) # store value to put something in memory
lb x30, -1770(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
li x22, 0x6ca72605 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -239 # sub immediate from rs1 to counter offset
sw x22, 239 (x18) # store value to put something in memory
lb x25, 239(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
li x30, 0x45ccfc14 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 624 # sub immediate from rs1 to counter offset
sw x30, -624 (x19) # store value to put something in memory
lb x2, -624(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
li x13, 0x0d664505 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -446 # sub immediate from rs1 to counter offset
sw x13, 446 (x20) # store value to put something in memory
lb x1, 446(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
li x9, 0xadac433b # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1538 # sub immediate from rs1 to counter offset
sw x9, 1538 (x21) # store value to put something in memory
lb x11, 1538(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
li x27, 0xc718a705 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1964 # sub immediate from rs1 to counter offset
sw x27, 1964 (x22) # store value to put something in memory
lb x5, 1964(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0xe6a9cdbb # initialize rs2
la x23, scratch # base address 
addi x23, x23, 417 # sub immediate from rs1 to counter offset
sw x8, -417 (x23) # store value to put something in memory
lb x22, -417(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
li x18, 0x97746dcf # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1260 # sub immediate from rs1 to counter offset
sw x18, 1260 (x24) # store value to put something in memory
lb x6, 1260(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
li x21, 0xbd0d6c40 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1923 # sub immediate from rs1 to counter offset
sw x21, -1923 (x25) # store value to put something in memory
lb x3, -1923(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
li x23, 0x995f6ecd # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1862 # sub immediate from rs1 to counter offset
sw x23, 1862 (x26) # store value to put something in memory
lb x29, 1862(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
li x15, 0x1b848634 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 809 # sub immediate from rs1 to counter offset
sw x15, -809 (x27) # store value to put something in memory
lb x20, -809(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
li x15, 0xe09f1fb9 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1216 # sub immediate from rs1 to counter offset
sw x15, 1216 (x28) # store value to put something in memory
lb x7, 1216(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x6f35adb8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1363 # sub immediate from rs1 to counter offset
sw x5, 1363 (x29) # store value to put something in memory
lb x7, 1363(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0xee88762b # initialize rs2
la x30, scratch # base address 
addi x30, x30, -394 # sub immediate from rs1 to counter offset
sw x9, 394 (x30) # store value to put something in memory
lb x24, 394(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
li x6, 0x17bc439b # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1597 # sub immediate from rs1 to counter offset
sw x6, 1597 (x31) # store value to put something in memory
lb x26, 1597(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x850d1f98 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1253 # sub immediate from rs1 to counter offset
sw x24, -1253 (x17) # store value to put something in memory
lb x0, -1253(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 124)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x3fc72d12 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1303 # sub immediate from rs1 to counter offset
sw x7, 1303 (x28) # store value to put something in memory
lb x1, 1303(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x5fdf97be # initialize rs2
la x28, scratch # base address 
addi x28, x28, 574 # sub immediate from rs1 to counter offset
sw x27, -574 (x28) # store value to put something in memory
lb x2, -574(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0xbbc329c3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1300 # sub immediate from rs1 to counter offset
sw x24, -1300 (x11) # store value to put something in memory
lb x3, -1300(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x3eda2267 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1822 # sub immediate from rs1 to counter offset
sw x11, 1822 (x14) # store value to put something in memory
lb x4, 1822(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x10d9c75e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1562 # sub immediate from rs1 to counter offset
sw x22, 1562 (x11) # store value to put something in memory
lb x5, 1562(x11) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0x407c74f8 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -372 # sub immediate from rs1 to counter offset
sw x28, 372 (x16) # store value to put something in memory
lb x6, 372(x16) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 148)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xa726553a # initialize rs2
la x14, scratch # base address 
addi x14, x14, 409 # sub immediate from rs1 to counter offset
sw x24, -409 (x14) # store value to put something in memory
lb x7, -409(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0xda044e1d # initialize rs2
la x7, scratch # base address 
addi x7, x7, -565 # sub immediate from rs1 to counter offset
sw x24, 565 (x7) # store value to put something in memory
lb x8, 565(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x89fd5b1c # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1612 # sub immediate from rs1 to counter offset
sw x14, -1612 (x10) # store value to put something in memory
lb x9, -1612(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0xdb8474c2 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1962 # sub immediate from rs1 to counter offset
sw x5, 1962 (x1) # store value to put something in memory
lb x10, 1962(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xd2ab8e51 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1286 # sub immediate from rs1 to counter offset
sw x18, 1286 (x19) # store value to put something in memory
lb x11, 1286(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xa78cd9d7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 494 # sub immediate from rs1 to counter offset
sw x12, -494 (x8) # store value to put something in memory
lb x12, -494(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0x68d290ea # initialize rs2
la x17, scratch # base address 
addi x17, x17, -613 # sub immediate from rs1 to counter offset
sw x23, 613 (x17) # store value to put something in memory
lb x13, 613(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0xc423eb6b # initialize rs2
la x30, scratch # base address 
addi x30, x30, 106 # sub immediate from rs1 to counter offset
sw x7, -106 (x30) # store value to put something in memory
lb x14, -106(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x8c4fcd7b # initialize rs2
la x26, scratch # base address 
addi x26, x26, -371 # sub immediate from rs1 to counter offset
sw x12, 371 (x26) # store value to put something in memory
lb x15, 371(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0x053e165c # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1400 # sub immediate from rs1 to counter offset
sw x11, -1400 (x27) # store value to put something in memory
lb x16, -1400(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0x82715c9c # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1338 # sub immediate from rs1 to counter offset
sw x15, 1338 (x16) # store value to put something in memory
lb x17, 1338(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x18857dd8 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -528 # sub immediate from rs1 to counter offset
sw x5, 528 (x11) # store value to put something in memory
lb x18, 528(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0xfdff9e43 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1612 # sub immediate from rs1 to counter offset
sw x8, -1612 (x26) # store value to put something in memory
lb x19, -1612(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rd (Test destination rd = x20)
li x8, 0x339549f7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -532 # sub immediate from rs1 to counter offset
sw x8, 532 (x15) # store value to put something in memory
lb x20, 532(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 204)

# Testcase cp_rd (Test destination rd = x21)
li x14, 0x8cdc254f # initialize rs2
la x10, scratch # base address 
addi x10, x10, 242 # sub immediate from rs1 to counter offset
sw x14, -242 (x10) # store value to put something in memory
lb x21, -242(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0x0a351a57 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -591 # sub immediate from rs1 to counter offset
sw x7, 591 (x11) # store value to put something in memory
lb x22, 591(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x5804139e # initialize rs2
la x17, scratch # base address 
addi x17, x17, 974 # sub immediate from rs1 to counter offset
sw x7, -974 (x17) # store value to put something in memory
lb x23, -974(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x07eb10ed # initialize rs2
la x15, scratch # base address 
addi x15, x15, 520 # sub immediate from rs1 to counter offset
sw x7, -520 (x15) # store value to put something in memory
lb x24, -520(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0xacfd7bc6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1744 # sub immediate from rs1 to counter offset
sw x10, -1744 (x14) # store value to put something in memory
lb x25, -1744(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0x2a8c63b5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1781 # sub immediate from rs1 to counter offset
sw x28, -1781 (x12) # store value to put something in memory
lb x26, -1781(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x03930b69 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1546 # sub immediate from rs1 to counter offset
sw x5, -1546 (x23) # store value to put something in memory
lb x27, -1546(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x033fb3c3 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1115 # sub immediate from rs1 to counter offset
sw x26, -1115 (x19) # store value to put something in memory
lb x28, -1115(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0xcc4f642f # initialize rs2
la x16, scratch # base address 
addi x16, x16, 496 # sub immediate from rs1 to counter offset
sw x6, -496 (x16) # store value to put something in memory
lb x29, -496(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x44865a60 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1898 # sub immediate from rs1 to counter offset
sw x30, -1898 (x29) # store value to put something in memory
lb x30, -1898(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rd (Test destination rd = x31)
li x29, 0x892975b8 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1117 # sub immediate from rs1 to counter offset
sw x29, 1117 (x6) # store value to put something in memory
lb x31, 1117(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x8, 0xed2e624e # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1060 # sub immediate from rs1 to counter offset
sw x8, -1060 (x1) # store value to put something in memory
lb x1, -1060(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x9, 0x312c5bca # initialize rs2
la x2, scratch # base address 
addi x2, x2, -735 # sub immediate from rs1 to counter offset
sw x9, 735 (x2) # store value to put something in memory
lb x2, 735(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x30, 0x542bf020 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1476 # sub immediate from rs1 to counter offset
sw x30, 1476 (x3) # store value to put something in memory
lb x3, 1476(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x1da0ae6a # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1774 # sub immediate from rs1 to counter offset
sw x25, 1774 (x4) # store value to put something in memory
lb x4, 1774(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x76bf8648 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 698 # sub immediate from rs1 to counter offset
sw x15, -698 (x5) # store value to put something in memory
lb x5, -698(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x199f6f2f # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1280 # sub immediate from rs1 to counter offset
sw x22, 1280 (x6) # store value to put something in memory
lb x6, 1280(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x7cce804d # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1191 # sub immediate from rs1 to counter offset
sw x6, 1191 (x7) # store value to put something in memory
lb x7, 1191(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x3, 0xa37c3b32 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1716 # sub immediate from rs1 to counter offset
sw x3, -1716 (x8) # store value to put something in memory
lb x8, -1716(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x13, 0x15fd6ec9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -303 # sub immediate from rs1 to counter offset
sw x13, 303 (x9) # store value to put something in memory
lb x9, 303(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x6, 0xf07ecd77 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 2012 # sub immediate from rs1 to counter offset
sw x6, -2012 (x10) # store value to put something in memory
lb x10, -2012(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x27, 0xd022096b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1476 # sub immediate from rs1 to counter offset
sw x27, 1476 (x11) # store value to put something in memory
lb x11, 1476(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x15, 0x815dede9 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1553 # sub immediate from rs1 to counter offset
sw x15, -1553 (x12) # store value to put something in memory
lb x12, -1553(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x29, 0xdb98c02d # initialize rs2
la x13, scratch # base address 
addi x13, x13, -587 # sub immediate from rs1 to counter offset
sw x29, 587 (x13) # store value to put something in memory
lb x13, 587(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x24, 0xff00703b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -536 # sub immediate from rs1 to counter offset
sw x24, 536 (x14) # store value to put something in memory
lb x14, 536(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x14, 0x470897f1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1342 # sub immediate from rs1 to counter offset
sw x14, 1342 (x15) # store value to put something in memory
lb x15, 1342(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x24, 0x3790823c # initialize rs2
la x16, scratch # base address 
addi x16, x16, 656 # sub immediate from rs1 to counter offset
sw x24, -656 (x16) # store value to put something in memory
lb x16, -656(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x8, 0xc97b11a6 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -519 # sub immediate from rs1 to counter offset
sw x8, 519 (x17) # store value to put something in memory
lb x17, 519(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x23, 0x11824b76 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1094 # sub immediate from rs1 to counter offset
sw x23, 1094 (x18) # store value to put something in memory
lb x18, 1094(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x28, 0x64e754e5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -975 # sub immediate from rs1 to counter offset
sw x28, 975 (x19) # store value to put something in memory
lb x19, 975(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x23, 0x8a181c2e # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1397 # sub immediate from rs1 to counter offset
sw x23, -1397 (x20) # store value to put something in memory
lb x20, -1397(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x18, 0x88f5b9b2 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1082 # sub immediate from rs1 to counter offset
sw x18, -1082 (x21) # store value to put something in memory
lb x21, -1082(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x29, 0xd993b6c2 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -474 # sub immediate from rs1 to counter offset
sw x29, 474 (x22) # store value to put something in memory
lb x22, 474(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x3, 0x36ff1437 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1175 # sub immediate from rs1 to counter offset
sw x3, -1175 (x23) # store value to put something in memory
lb x23, -1175(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x1, 0xbd36edcb # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1938 # sub immediate from rs1 to counter offset
sw x1, -1938 (x24) # store value to put something in memory
lb x24, -1938(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x1, 0x65135976 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -559 # sub immediate from rs1 to counter offset
sw x1, 559 (x25) # store value to put something in memory
lb x25, 559(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x3, 0x72f687cd # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1310 # sub immediate from rs1 to counter offset
sw x3, 1310 (x26) # store value to put something in memory
lb x26, 1310(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x28, 0x085b54b7 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -432 # sub immediate from rs1 to counter offset
sw x28, 432 (x27) # store value to put something in memory
lb x27, 432(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x16, 0x99b471e8 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -666 # sub immediate from rs1 to counter offset
sw x16, 666 (x28) # store value to put something in memory
lb x28, 666(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x8, 0x823b1381 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1720 # sub immediate from rs1 to counter offset
sw x8, 1720 (x29) # store value to put something in memory
lb x29, 1720(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x2, 0x33df499f # initialize rs2
la x30, scratch # base address 
addi x30, x30, -395 # sub immediate from rs1 to counter offset
sw x2, 395 (x30) # store value to put something in memory
lb x30, 395(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x11, 0xb51d1fab # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1594 # sub immediate from rs1 to counter offset
sw x11, 1594 (x31) # store value to put something in memory
lb x31, 1594(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 372)

# Testcase cp_imm_corners
li x14, 0x47460ddf # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sw x14, 0 (x6) # store value to put something in memory
lb x16, 0(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_imm_corners
li x29, 0x57db3756 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1 # sub immediate from rs1 to counter offset
sw x29, 1 (x16) # store value to put something in memory
lb x11, 1(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 380)

# Testcase cp_imm_corners
li x22, 0x1a864a7c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2 # sub immediate from rs1 to counter offset
sw x22, 2 (x8) # store value to put something in memory
lb x14, 2(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cp_imm_corners
li x23, 0x06cf17f9 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -3 # sub immediate from rs1 to counter offset
sw x23, 3 (x22) # store value to put something in memory
lb x27, 3(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 388)

# Testcase cp_imm_corners
li x13, 0x70bcad4b # initialize rs2
la x26, scratch # base address 
addi x26, x26, -4 # sub immediate from rs1 to counter offset
sw x13, 4 (x26) # store value to put something in memory
lb x28, 4(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_imm_corners
li x15, 0x092eab35 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -8 # sub immediate from rs1 to counter offset
sw x15, 8 (x16) # store value to put something in memory
lb x9, 8(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 396)

# Testcase cp_imm_corners
li x10, 0xde8b3de4 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -16 # sub immediate from rs1 to counter offset
sw x10, 16 (x9) # store value to put something in memory
lb x8, 16(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 400)

# Testcase cp_imm_corners
li x1, 0xae9d211f # initialize rs2
la x9, scratch # base address 
addi x9, x9, -32 # sub immediate from rs1 to counter offset
sw x1, 32 (x9) # store value to put something in memory
lb x19, 32(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 404)

# Testcase cp_imm_corners
li x31, 0xbf89dfd9 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -64 # sub immediate from rs1 to counter offset
sw x31, 64 (x25) # store value to put something in memory
lb x28, 64(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cp_imm_corners
li x26, 0x3dd163bd # initialize rs2
la x20, scratch # base address 
addi x20, x20, -128 # sub immediate from rs1 to counter offset
sw x26, 128 (x20) # store value to put something in memory
lb x15, 128(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 412)

# Testcase cp_imm_corners
li x20, 0x357314fd # initialize rs2
la x14, scratch # base address 
addi x14, x14, -256 # sub immediate from rs1 to counter offset
sw x20, 256 (x14) # store value to put something in memory
lb x1, 256(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cp_imm_corners
li x26, 0x9c6bc7fc # initialize rs2
la x3, scratch # base address 
addi x3, x3, -512 # sub immediate from rs1 to counter offset
sw x26, 512 (x3) # store value to put something in memory
lb x19, 512(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 420)

# Testcase cp_imm_corners
li x27, 0x51d835b6 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1023 # sub immediate from rs1 to counter offset
sw x27, 1023 (x18) # store value to put something in memory
lb x6, 1023(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_imm_corners
li x16, 0x1c3a79af # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1024 # sub immediate from rs1 to counter offset
sw x16, 1024 (x20) # store value to put something in memory
lb x29, 1024(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 428)

# Testcase cp_imm_corners
li x6, 0x8625265b # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1795 # sub immediate from rs1 to counter offset
sw x6, 1795 (x22) # store value to put something in memory
lb x13, 1795(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_imm_corners
li x3, 0xc2ebc436 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2047 # sub immediate from rs1 to counter offset
sw x3, 2047 (x17) # store value to put something in memory
lb x13, 2047(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 436)

# Testcase cp_imm_corners
li x29, 0xc7b391ce # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2047 # increment rs1 by 2047 
addi x1, x1, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x29, -2048 (x1) # store value to put something in memory
lb x2, -2048(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_imm_corners
li x22, 0x64c97e65 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 2047 # sub immediate from rs1 to counter offset
sw x22, -2047 (x20) # store value to put something in memory
lb x1, -2047(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 444)

# Testcase cp_imm_corners
li x15, 0xd5d1f941 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 2 # sub immediate from rs1 to counter offset
sw x15, -2 (x13) # store value to put something in memory
lb x14, -2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_imm_corners
li x12, 0x77b5ed27 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1 # sub immediate from rs1 to counter offset
sw x12, -1 (x8) # store value to put something in memory
lb x23, -1(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 452)

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -609
add x26, x11, x23 # perform first operation
lb x18, 609(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
addi x15, x15, -1530
add x28, x22, x24 # perform first operation
lb x2, 1530(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x28, scratch
addi x28, x28, 1808
add x6, x5, x26 # perform first operation
lb x18, -1808(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x22, scratch
addi x22, x22, 971
add x22, x22, x0 # perform first operation
lb x20, -971(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
addi x23, x23, 2016
add x23, x23, x0 # perform first operation
lb x31, -2016(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x26, scratch
addi x26, x26, -15
add x26, x26, x0 # perform first operation
lb x24, 15(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
addi x21, x21, 1051
add x26, x2, x29 # perform first operation
lb x26, -1051(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x2, scratch
addi x2, x2, -1065
add x23, x6, x7 # perform first operation
lb x23, 1065(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
addi x25, x25, -1843
add x27, x7, x26 # perform first operation
lb x27, 1843(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x17, scratch
addi x17, x17, -1404
add x16, x9, x25 # perform first operation
lb x9, 1404(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
addi x9, x9, -377
add x31, x25, x13 # perform first operation
lb x13, 377(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x24, scratch
addi x24, x24, 1421
add x14, x27, x29 # perform first operation
lb x26, -1421(x24) # perform second (triggering) operation

.EQU SIGSIZE,456


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
