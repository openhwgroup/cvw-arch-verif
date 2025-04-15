///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lb.S
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
li x18, 0x9041aa4b2168ce07 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1318 # sub immediate from rs1 to counter offset
sd x18, -1318 (x1) # store value to put something in memory
lb x7, -1318(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x7fa8a2c4272e0154 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1795 # sub immediate from rs1 to counter offset
sd x17, 1795 (x2) # store value to put something in memory
lb x20, 1795(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x5, 0xb0d040376134c43e # initialize rs2
la x3, scratch # base address 
addi x3, x3, -587 # sub immediate from rs1 to counter offset
sd x5, 587 (x3) # store value to put something in memory
lb x8, 587(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xb4ed94763ca6d9c6 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 565 # sub immediate from rs1 to counter offset
sd x15, -565 (x4) # store value to put something in memory
lb x2, -565(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x7393f53e76a888f8 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1600 # sub immediate from rs1 to counter offset
sd x24, 1600 (x5) # store value to put something in memory
lb x29, 1600(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0xf3fe471c571fb053 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1306 # sub immediate from rs1 to counter offset
sd x14, -1306 (x6) # store value to put something in memory
lb x15, -1306(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x15, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x0246bfc251fea030 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 644 # sub immediate from rs1 to counter offset
sd x23, -644 (x7) # store value to put something in memory
lb x26, -644(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x23, 0x906482c2216ea0a7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1411 # sub immediate from rs1 to counter offset
sd x23, -1411 (x8) # store value to put something in memory
lb x17, -1411(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x30, 0xdde04707561be1ba # initialize rs2
la x9, scratch # base address 
addi x9, x9, -279 # sub immediate from rs1 to counter offset
sd x30, 279 (x9) # store value to put something in memory
lb x24, 279(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x20, 0x739ad3052ad12aab # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2015 # sub immediate from rs1 to counter offset
sd x20, 2015 (x10) # store value to put something in memory
lb x12, 2015(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0x63c10cabedf77cf3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 536 # sub immediate from rs1 to counter offset
sd x17, -536 (x11) # store value to put something in memory
lb x2, -536(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x8a4446dd5d4c6f3c # initialize rs2
la x12, scratch # base address 
addi x12, x12, 841 # sub immediate from rs1 to counter offset
sd x15, -841 (x12) # store value to put something in memory
lb x20, -841(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x1, 0x83df71bee2f3b5b0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -533 # sub immediate from rs1 to counter offset
sd x1, 533 (x13) # store value to put something in memory
lb x11, 533(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0x43cb2275f9db7102 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -670 # sub immediate from rs1 to counter offset
sd x22, 670 (x14) # store value to put something in memory
lb x18, 670(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x25, 0xd0b51773646808f6 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 534 # sub immediate from rs1 to counter offset
sd x25, -534 (x15) # store value to put something in memory
lb x9, -534(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0x7ae60fd6d7f8de5f # initialize rs2
la x16, scratch # base address 
addi x16, x16, -806 # sub immediate from rs1 to counter offset
sd x5, 806 (x16) # store value to put something in memory
lb x8, 806(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x25, 0x1769b2b8a18681f4 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1923 # sub immediate from rs1 to counter offset
sd x25, -1923 (x17) # store value to put something in memory
lb x7, -1923(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0xbc8d0ccfebd2c1c0 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 584 # sub immediate from rs1 to counter offset
sd x20, -584 (x18) # store value to put something in memory
lb x2, -584(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x27, 0xd3ffa57107dad608 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1956 # sub immediate from rs1 to counter offset
sd x27, 1956 (x19) # store value to put something in memory
lb x12, 1956(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x2, 0x449fa0bf6f35adb8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 657 # sub immediate from rs1 to counter offset
sd x2, -657 (x20) # store value to put something in memory
lb x16, -657(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x30, 0xe16bc2c31abfd376 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 14 # sub immediate from rs1 to counter offset
sd x30, -14 (x21) # store value to put something in memory
lb x8, -14(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0xc27a3dadbe39f68b # initialize rs2
la x22, scratch # base address 
addi x22, x22, 848 # sub immediate from rs1 to counter offset
sd x9, -848 (x22) # store value to put something in memory
lb x11, -848(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x24, 0xac5eeca29806a538 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1246 # sub immediate from rs1 to counter offset
sd x24, 1246 (x23) # store value to put something in memory
lb x10, 1246(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x31, 0xf775f1f384be3814 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -5 # sub immediate from rs1 to counter offset
sd x31, 5 (x24) # store value to put something in memory
lb x22, 5(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x9, 0xf75b0143d5aeb561 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -936 # sub immediate from rs1 to counter offset
sd x9, 936 (x25) # store value to put something in memory
lb x1, 936(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x20, 0xb8e12c4415e8aead # initialize rs2
la x26, scratch # base address 
addi x26, x26, 471 # sub immediate from rs1 to counter offset
sd x20, -471 (x26) # store value to put something in memory
lb x15, -471(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0xe2f4dc660ed13b43 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -598 # sub immediate from rs1 to counter offset
sd x17, 598 (x27) # store value to put something in memory
lb x6, 598(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x19, 0x3074ffdf888cd83b # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1287 # sub immediate from rs1 to counter offset
sd x19, 1287 (x28) # store value to put something in memory
lb x3, 1287(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x5, 0x17976adcaa730abe # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1031 # sub immediate from rs1 to counter offset
sd x5, 1031 (x29) # store value to put something in memory
lb x21, 1031(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x2, 0xf6872eae9986295d # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1772 # sub immediate from rs1 to counter offset
sd x2, -1772 (x30) # store value to put something in memory
lb x21, -1772(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0x2101dea7009498cc # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1511 # sub immediate from rs1 to counter offset
sd x12, 1511 (x31) # store value to put something in memory
lb x13, 1511(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0xdd063b1bd1819157 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 761 # sub immediate from rs1 to counter offset
sd x24, -761 (x17) # store value to put something in memory
lb x0, -761(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0xd24b78e51e365dcf # initialize rs2
la x8, scratch # base address 
addi x8, x8, 612 # sub immediate from rs1 to counter offset
sd x5, -612 (x8) # store value to put something in memory
lb x1, -612(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x6e401b12988f4dc2 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1004 # sub immediate from rs1 to counter offset
sd x24, 1004 (x20) # store value to put something in memory
lb x2, 1004(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x588bb728e3ff6b78 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1260 # sub immediate from rs1 to counter offset
sd x3, -1260 (x24) # store value to put something in memory
lb x3, -1260(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xd46ddf20cbc63601 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1252 # sub immediate from rs1 to counter offset
sd x10, 1252 (x8) # store value to put something in memory
lb x4, 1252(x8) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x87fde9ac2a4ca622 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 319 # sub immediate from rs1 to counter offset
sd x28, -319 (x21) # store value to put something in memory
lb x5, -319(x21) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xfc9d5842f0d4cb5e # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1172 # sub immediate from rs1 to counter offset
sd x15, 1172 (x20) # store value to put something in memory
lb x6, 1172(x20) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xc2a2eb446c5876b6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1064 # sub immediate from rs1 to counter offset
sd x24, 1064 (x12) # store value to put something in memory
lb x7, 1064(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x59da34d1d44167aa # initialize rs2
la x5, scratch # base address 
addi x5, x5, -654 # sub immediate from rs1 to counter offset
sd x20, 654 (x5) # store value to put something in memory
lb x8, 654(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x3ae0a19b001697ba # initialize rs2
la x27, scratch # base address 
addi x27, x27, 604 # sub immediate from rs1 to counter offset
sd x15, -604 (x27) # store value to put something in memory
lb x9, -604(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x4fd2260328ff1e12 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1205 # sub immediate from rs1 to counter offset
sd x21, 1205 (x28) # store value to put something in memory
lb x10, 1205(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xbfc339e254fde194 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1173 # sub immediate from rs1 to counter offset
sd x16, -1173 (x20) # store value to put something in memory
lb x11, -1173(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x27, 0x12f3ddabfcf509b1 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 668 # sub immediate from rs1 to counter offset
sd x27, -668 (x8) # store value to put something in memory
lb x12, -668(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x20a30ce9cb4f3313 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 248 # sub immediate from rs1 to counter offset
sd x26, -248 (x7) # store value to put something in memory
lb x13, -248(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0xbf22b1974be316e4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -404 # sub immediate from rs1 to counter offset
sd x27, 404 (x10) # store value to put something in memory
lb x14, 404(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x7d55856f959f87bb # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1149 # sub immediate from rs1 to counter offset
sd x21, 1149 (x1) # store value to put something in memory
lb x15, 1149(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0x3645b84180958f51 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1031 # sub immediate from rs1 to counter offset
sd x31, 1031 (x7) # store value to put something in memory
lb x16, 1031(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0x55e25c68f912dbc9 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1191 # sub immediate from rs1 to counter offset
sd x28, -1191 (x31) # store value to put something in memory
lb x17, -1191(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x5fa7c463cb73a864 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1805 # sub immediate from rs1 to counter offset
sd x7, 1805 (x23) # store value to put something in memory
lb x18, 1805(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0x2a8c63b5aacee209 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1421 # sub immediate from rs1 to counter offset
sd x2, -1421 (x8) # store value to put something in memory
lb x19, -1421(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0xb09cdefb7762d816 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1125 # sub immediate from rs1 to counter offset
sd x6, 1125 (x24) # store value to put something in memory
lb x20, 1125(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x102f1e3cfba922c5 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1094 # sub immediate from rs1 to counter offset
sd x8, -1094 (x13) # store value to put something in memory
lb x21, -1094(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0x2cf57ac77ceeaf2b # initialize rs2
la x15, scratch # base address 
addi x15, x15, 569 # sub immediate from rs1 to counter offset
sd x8, -569 (x15) # store value to put something in memory
lb x22, -569(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x9da1c2d590b62274 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1733 # sub immediate from rs1 to counter offset
sd x21, 1733 (x9) # store value to put something in memory
lb x23, 1733(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x565c66a273b57a1b # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1117 # sub immediate from rs1 to counter offset
sd x7, 1117 (x9) # store value to put something in memory
lb x24, 1117(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x7e8beda295603773 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1419 # sub immediate from rs1 to counter offset
sd x7, -1419 (x19) # store value to put something in memory
lb x25, -1419(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x78151601591e9b9b # initialize rs2
la x7, scratch # base address 
addi x7, x7, -414 # sub immediate from rs1 to counter offset
sd x5, 414 (x7) # store value to put something in memory
lb x26, 414(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0xcdd55473be902f23 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 210 # sub immediate from rs1 to counter offset
sd x3, -210 (x13) # store value to put something in memory
lb x27, -210(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xde511ab8106c4ffd # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1670 # sub immediate from rs1 to counter offset
sd x29, -1670 (x26) # store value to put something in memory
lb x28, -1670(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x5, 0x39e94005395ac63d # initialize rs2
la x30, scratch # base address 
addi x30, x30, -8 # sub immediate from rs1 to counter offset
sd x5, 8 (x30) # store value to put something in memory
lb x29, 8(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x75f745c923e6f58e # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1162 # sub immediate from rs1 to counter offset
sd x30, -1162 (x16) # store value to put something in memory
lb x30, -1162(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x99c12aa8b2cdaf32 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 518 # sub immediate from rs1 to counter offset
sd x31, -518 (x20) # store value to put something in memory
lb x31, -518(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x8, 0xd182ebdcf748b279 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1332 # sub immediate from rs1 to counter offset
sd x8, 1332 (x1) # store value to put something in memory
lb x1, 1332(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x29, 0x20e99247e41e52df # initialize rs2
la x2, scratch # base address 
addi x2, x2, 52 # sub immediate from rs1 to counter offset
sd x29, -52 (x2) # store value to put something in memory
lb x2, -52(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x11, 0x101fdb0bdce936b8 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 240 # sub immediate from rs1 to counter offset
sd x11, -240 (x3) # store value to put something in memory
lb x3, -240(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0xbb253aca2c90baa0 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1455 # sub immediate from rs1 to counter offset
sd x8, 1455 (x4) # store value to put something in memory
lb x4, 1455(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xd8457c0ec3f2abee # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1458 # sub immediate from rs1 to counter offset
sd x24, 1458 (x5) # store value to put something in memory
lb x5, 1458(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xa37c3b3216507386 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -697 # sub immediate from rs1 to counter offset
sd x3, 697 (x6) # store value to put something in memory
lb x6, 697(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xbb3db9aba47672b1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 311 # sub immediate from rs1 to counter offset
sd x13, -311 (x7) # store value to put something in memory
lb x7, -311(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x12, 0x59802c262b047f85 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 219 # sub immediate from rs1 to counter offset
sd x12, -219 (x8) # store value to put something in memory
lb x8, -219(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x1, 0x65629ef48a22a572 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1058 # sub immediate from rs1 to counter offset
sd x1, -1058 (x9) # store value to put something in memory
lb x9, -1058(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x25, 0xadeab1f980d0d56d # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1703 # sub immediate from rs1 to counter offset
sd x25, 1703 (x10) # store value to put something in memory
lb x10, 1703(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x8, 0xdb98c02d2d77c653 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1012 # sub immediate from rs1 to counter offset
sd x8, 1012 (x11) # store value to put something in memory
lb x11, 1012(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x27, 0xbd31dcec4891f015 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -117 # sub immediate from rs1 to counter offset
sd x27, 117 (x12) # store value to put something in memory
lb x12, 117(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x21, 0x13377a3d63e070b6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -463 # sub immediate from rs1 to counter offset
sd x21, 463 (x13) # store value to put something in memory
lb x13, 463(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x30, 0x47bc62070d461a2e # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1109 # sub immediate from rs1 to counter offset
sd x30, 1109 (x14) # store value to put something in memory
lb x14, 1109(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x8, 0x85d929dd1854cb65 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1017 # sub immediate from rs1 to counter offset
sd x8, 1017 (x15) # store value to put something in memory
lb x15, 1017(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x23, 0xf596a8bded8e93e4 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 372 # sub immediate from rs1 to counter offset
sd x23, -372 (x16) # store value to put something in memory
lb x16, -372(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x14, 0xd993b6c21154d70c # initialize rs2
la x17, scratch # base address 
addi x17, x17, -715 # sub immediate from rs1 to counter offset
sd x14, 715 (x17) # store value to put something in memory
lb x17, 715(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x30, 0x50aa8c5102d44b69 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1913 # sub immediate from rs1 to counter offset
sd x30, -1913 (x18) # store value to put something in memory
lb x18, -1913(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x18, 0xb39f676ec3df3586 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1168 # sub immediate from rs1 to counter offset
sd x18, 1168 (x19) # store value to put something in memory
lb x19, 1168(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x3, 0x8718651e869974b9 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1132 # sub immediate from rs1 to counter offset
sd x3, -1132 (x20) # store value to put something in memory
lb x20, -1132(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x6, 0xab1acf96e49675fa # initialize rs2
la x21, scratch # base address 
addi x21, x21, 886 # sub immediate from rs1 to counter offset
sd x6, -886 (x21) # store value to put something in memory
lb x21, -886(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x12, 0x823b1381a7ecf970 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -247 # sub immediate from rs1 to counter offset
sd x12, 247 (x22) # store value to put something in memory
lb x22, 247(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x2, 0x33df499f438ceb14 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 904 # sub immediate from rs1 to counter offset
sd x2, -904 (x23) # store value to put something in memory
lb x23, -904(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x31, 0x8c76016bfb731d70 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1082 # sub immediate from rs1 to counter offset
sd x31, 1082 (x24) # store value to put something in memory
lb x24, 1082(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x7, 0x6f1cba747297629c # initialize rs2
la x25, scratch # base address 
addi x25, x25, -244 # sub immediate from rs1 to counter offset
sd x7, 244 (x25) # store value to put something in memory
lb x25, 244(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x5, 0xa7682c0aa731d436 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -986 # sub immediate from rs1 to counter offset
sd x5, 986 (x26) # store value to put something in memory
lb x26, 986(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x9, 0x4f78b074200a7bb7 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 215 # sub immediate from rs1 to counter offset
sd x9, -215 (x27) # store value to put something in memory
lb x27, -215(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x20, 0x9afd1465c2dbddd0 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1176 # sub immediate from rs1 to counter offset
sd x20, 1176 (x28) # store value to put something in memory
lb x28, 1176(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x17, 0xf597b228ddf9a668 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -787 # sub immediate from rs1 to counter offset
sd x17, 787 (x29) # store value to put something in memory
lb x29, 787(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x23, 0xc2317c465539338a # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1683 # sub immediate from rs1 to counter offset
sd x23, -1683 (x30) # store value to put something in memory
lb x30, -1683(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x27, 0xf4d98316b3f452fc # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1899 # sub immediate from rs1 to counter offset
sd x27, -1899 (x31) # store value to put something in memory
lb x31, -1899(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_corners
li x14, 0xd505d352d4c70077 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 0 # sub immediate from rs1 to counter offset
sd x14, 0 (x6) # store value to put something in memory
lb x16, 0(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cp_imm_corners
li x26, 0xafc4e3ce3fc4351d # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1 # sub immediate from rs1 to counter offset
sd x26, 1 (x2) # store value to put something in memory
lb x7, 1(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 760)

# Testcase cp_imm_corners
li x8, 0x06cf17f915b900a6 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -2 # sub immediate from rs1 to counter offset
sd x8, 2 (x2) # store value to put something in memory
lb x22, 2(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_imm_corners
li x26, 0xf9c0afaf7a2f0e16 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -3 # sub immediate from rs1 to counter offset
sd x26, 3 (x7) # store value to put something in memory
lb x22, 3(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 776)

# Testcase cp_imm_corners
li x9, 0xc409f4525b483397 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -4 # sub immediate from rs1 to counter offset
sd x9, 4 (x15) # store value to put something in memory
lb x1, 4(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cp_imm_corners
li x17, 0x690eb28639b0395a # initialize rs2
la x31, scratch # base address 
addi x31, x31, -8 # sub immediate from rs1 to counter offset
sd x17, 8 (x31) # store value to put something in memory
lb x19, 8(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cp_imm_corners
li x31, 0xbf89dfd907bd382e # initialize rs2
la x25, scratch # base address 
addi x25, x25, -16 # sub immediate from rs1 to counter offset
sd x31, 16 (x25) # store value to put something in memory
lb x28, 16(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

# Testcase cp_imm_corners
li x3, 0x01af076d9deee98d # initialize rs2
la x1, scratch # base address 
addi x1, x1, -32 # sub immediate from rs1 to counter offset
sd x3, 32 (x1) # store value to put something in memory
lb x21, 32(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cp_imm_corners
li x10, 0x9798db97c98dd692 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -64 # sub immediate from rs1 to counter offset
sd x10, 64 (x6) # store value to put something in memory
lb x23, 64(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cp_imm_corners
li x11, 0x308d16f8a9582c60 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -128 # sub immediate from rs1 to counter offset
sd x11, 128 (x24) # store value to put something in memory
lb x18, 128(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cp_imm_corners
li x21, 0xaad127fd7e688d84 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -256 # sub immediate from rs1 to counter offset
sd x21, 256 (x10) # store value to put something in memory
lb x30, 256(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cp_imm_corners
li x31, 0x607e27e91a330fe6 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -512 # sub immediate from rs1 to counter offset
sd x31, 512 (x6) # store value to put something in memory
lb x27, 512(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cp_imm_corners
li x2, 0xffde1a76ae14932c # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1023 # sub immediate from rs1 to counter offset
sd x2, 1023 (x29) # store value to put something in memory
lb x12, 1023(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cp_imm_corners
li x31, 0xf06112da6b0fffa2 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1024 # sub immediate from rs1 to counter offset
sd x31, 1024 (x3) # store value to put something in memory
lb x2, 1024(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 856)

# Testcase cp_imm_corners
li x9, 0x77b5ed2738105563 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1795 # sub immediate from rs1 to counter offset
sd x9, 1795 (x23) # store value to put something in memory
lb x18, 1795(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cp_imm_corners
li x20, 0x4f2ab9f06b16652e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2047 # sub immediate from rs1 to counter offset
sd x20, 2047 (x9) # store value to put something in memory
lb x28, 2047(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 872)

# Testcase cp_imm_corners
li x17, 0x3d563ca382350826 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 2047 # increment rs1 by 2047 
addi x24, x24, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x17, -2048 (x24) # store value to put something in memory
lb x9, -2048(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_imm_corners
li x1, 0xf0b2437f2d16dd87 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2047 # sub immediate from rs1 to counter offset
sd x1, -2047 (x6) # store value to put something in memory
lb x26, -2047(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cp_imm_corners
li x29, 0x6af6ec1c55f09b2d # initialize rs2
la x23, scratch # base address 
addi x23, x23, 2 # sub immediate from rs1 to counter offset
sd x29, -2 (x23) # store value to put something in memory
lb x31, -2(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cp_imm_corners
li x19, 0x02dade0e672d0f09 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1 # sub immediate from rs1 to counter offset
sd x19, -1 (x22) # store value to put something in memory
lb x5, -1(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x28, scratch
addi x28, x28, 1755
add x2, x11, x23 # perform first operation
lb x1, -1755(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, 1763
add x5, x13, x31 # perform first operation
lb x15, -1763(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, -517
add x28, x1, x12 # perform first operation
lb x16, 517(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x9, scratch
addi x9, x9, -1367
add x9, x9, x0 # perform first operation
lb x10, 1367(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
addi x28, x28, -1779
add x28, x28, x0 # perform first operation
lb x20, 1779(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x17, scratch
addi x17, x17, 1992
add x17, x17, x0 # perform first operation
lb x19, -1992(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
addi x13, x13, 1812
add x7, x30, x29 # perform first operation
lb x7, -1812(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x5, scratch
addi x5, x5, 1474
add x9, x22, x6 # perform first operation
lb x9, -1474(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x10, scratch
addi x10, x10, -65
add x24, x14, x15 # perform first operation
lb x24, 65(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x20, scratch
addi x20, x20, -1746
add x1, x26, x6 # perform first operation
lb x26, 1746(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x12, scratch
addi x12, x12, -1964
add x2, x16, x17 # perform first operation
lb x17, 1964(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x11, scratch
addi x11, x11, -535
add x1, x5, x17 # perform first operation
lb x8, 535(x11) # perform second (triggering) operation

.EQU SIGSIZE,912


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
