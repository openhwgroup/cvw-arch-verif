///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-ld.S
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
li x21, 0x5ee18f1e0bfbce7f # initialize rs2
la x1, scratch # base address 
addi x1, x1, 192 # sub immediate from rs1 to counter offset
sd x21, -192 (x1) # store value to put something in memory
ld x19, -192(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x10, 0xb6e123d9efe0dcaa # initialize rs2
la x2, scratch # base address 
addi x2, x2, 955 # sub immediate from rs1 to counter offset
sd x10, -955 (x2) # store value to put something in memory
ld x30, -955(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x2, 0x3bab3846bdfd72a9 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1335 # sub immediate from rs1 to counter offset
sd x2, -1335 (x3) # store value to put something in memory
ld x6, -1335(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x10b612a403fd1182 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1649 # sub immediate from rs1 to counter offset
sd x28, -1649 (x4) # store value to put something in memory
ld x15, -1649(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x785ad902ca1e4600 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 545 # sub immediate from rs1 to counter offset
sd x9, -545 (x5) # store value to put something in memory
ld x13, -545(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x033396e5e63a1de3 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -70 # sub immediate from rs1 to counter offset
sd x17, 70 (x6) # store value to put something in memory
ld x19, 70(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x619d5ddd8100847f # initialize rs2
la x7, scratch # base address 
addi x7, x7, -990 # sub immediate from rs1 to counter offset
sd x11, 990 (x7) # store value to put something in memory
ld x8, 990(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x29, 0xf588a8fb0fc64e5b # initialize rs2
la x8, scratch # base address 
addi x8, x8, 838 # sub immediate from rs1 to counter offset
sd x29, -838 (x8) # store value to put something in memory
ld x30, -838(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0x95dfc776ac09fbf6 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 348 # sub immediate from rs1 to counter offset
sd x15, -348 (x9) # store value to put something in memory
ld x26, -348(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x6, 0x556f18a9f2ec34fe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -314 # sub immediate from rs1 to counter offset
sd x6, 314 (x10) # store value to put something in memory
ld x31, 314(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x3, 0x69e62a736545fa35 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1191 # sub immediate from rs1 to counter offset
sd x3, -1191 (x11) # store value to put something in memory
ld x13, -1191(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x26, 0x7fe5ef3905431bfe # initialize rs2
la x12, scratch # base address 
addi x12, x12, 147 # sub immediate from rs1 to counter offset
sd x26, -147 (x12) # store value to put something in memory
ld x17, -147(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0xcc98745e8955fcaa # initialize rs2
la x13, scratch # base address 
addi x13, x13, -932 # sub immediate from rs1 to counter offset
sd x27, 932 (x13) # store value to put something in memory
ld x19, 932(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0x0d84a746ae12a894 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 498 # sub immediate from rs1 to counter offset
sd x28, -498 (x14) # store value to put something in memory
ld x16, -498(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x7, 0x2305bc95d8fb4e13 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 373 # sub immediate from rs1 to counter offset
sd x7, -373 (x15) # store value to put something in memory
ld x23, -373(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x18, 0xe43092aa19bfc155 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 347 # sub immediate from rs1 to counter offset
sd x18, -347 (x16) # store value to put something in memory
ld x3, -347(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x8841279988a52c58 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1518 # sub immediate from rs1 to counter offset
sd x30, 1518 (x17) # store value to put something in memory
ld x21, 1518(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0x56633a98241b971a # initialize rs2
la x18, scratch # base address 
addi x18, x18, -555 # sub immediate from rs1 to counter offset
sd x1, 555 (x18) # store value to put something in memory
ld x14, 555(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x14, 0x0374a806770302aa # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1374 # sub immediate from rs1 to counter offset
sd x14, -1374 (x19) # store value to put something in memory
ld x1, -1374(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x6, 0x2c0380eda0fcf842 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -465 # sub immediate from rs1 to counter offset
sd x6, 465 (x20) # store value to put something in memory
ld x8, 465(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x3, 0xd350587734ef2e71 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1661 # sub immediate from rs1 to counter offset
sd x3, -1661 (x21) # store value to put something in memory
ld x13, -1661(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0x11d76f888aca3568 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1770 # sub immediate from rs1 to counter offset
sd x28, -1770 (x22) # store value to put something in memory
ld x8, -1770(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x27, 0x5c9c9ca21c2470eb # initialize rs2
la x23, scratch # base address 
addi x23, x23, -797 # sub immediate from rs1 to counter offset
sd x27, 797 (x23) # store value to put something in memory
ld x6, 797(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x17, 0xdceed97226d1b5ef # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1514 # sub immediate from rs1 to counter offset
sd x17, -1514 (x24) # store value to put something in memory
ld x3, -1514(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0xd3d119090a489420 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 299 # sub immediate from rs1 to counter offset
sd x29, -299 (x25) # store value to put something in memory
ld x17, -299(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x29, 0x14e7a7aa22abea93 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1915 # sub immediate from rs1 to counter offset
sd x29, -1915 (x26) # store value to put something in memory
ld x18, -1915(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x14, 0x27b0d600619baa9d # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1281 # sub immediate from rs1 to counter offset
sd x14, -1281 (x27) # store value to put something in memory
ld x29, -1281(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x2, 0xdacad027a99dc237 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1565 # sub immediate from rs1 to counter offset
sd x2, -1565 (x28) # store value to put something in memory
ld x14, -1565(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x695f08fd8b21714b # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1318 # sub immediate from rs1 to counter offset
sd x20, -1318 (x29) # store value to put something in memory
ld x16, -1318(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0x5088d18137fc811a # initialize rs2
la x30, scratch # base address 
addi x30, x30, -810 # sub immediate from rs1 to counter offset
sd x17, 810 (x30) # store value to put something in memory
ld x7, 810(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x12, 0x04657444f09ad49d # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1231 # sub immediate from rs1 to counter offset
sd x12, -1231 (x31) # store value to put something in memory
ld x17, -1231(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cp_rd (Test destination rd = x0)
li x26, 0x50473155717c10a9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 916 # sub immediate from rs1 to counter offset
sd x26, -916 (x9) # store value to put something in memory
ld x0, -916(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x8ab41631dbf66314 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 637 # sub immediate from rs1 to counter offset
sd x16, -637 (x20) # store value to put something in memory
ld x1, -637(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xe7f614e2bd80efc2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 476 # sub immediate from rs1 to counter offset
sd x8, -476 (x10) # store value to put something in memory
ld x2, -476(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x9bc2e6191d509d6d # initialize rs2
la x31, scratch # base address 
addi x31, x31, 930 # sub immediate from rs1 to counter offset
sd x1, -930 (x31) # store value to put something in memory
ld x3, -930(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x5ffed15723f687b5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1075 # sub immediate from rs1 to counter offset
sd x31, 1075 (x26) # store value to put something in memory
ld x4, 1075(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xc458add0c728bf90 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -807 # sub immediate from rs1 to counter offset
sd x9, 807 (x23) # store value to put something in memory
ld x5, 807(x23) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xc47920023ba36990 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -781 # sub immediate from rs1 to counter offset
sd x1, 781 (x16) # store value to put something in memory
ld x6, 781(x16) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x384d8a0c57610112 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 408 # sub immediate from rs1 to counter offset
sd x14, -408 (x18) # store value to put something in memory
ld x7, -408(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0x2934fd11e8ed7344 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1972 # sub immediate from rs1 to counter offset
sd x25, -1972 (x12) # store value to put something in memory
ld x8, -1972(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x692607d19c471ead # initialize rs2
la x1, scratch # base address 
addi x1, x1, -2030 # sub immediate from rs1 to counter offset
sd x6, 2030 (x1) # store value to put something in memory
ld x9, 2030(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x8f0dbd1b277d354c # initialize rs2
la x5, scratch # base address 
addi x5, x5, 9 # sub immediate from rs1 to counter offset
sd x29, -9 (x5) # store value to put something in memory
ld x10, -9(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x0ebc5c4d76df5425 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1872 # sub immediate from rs1 to counter offset
sd x20, -1872 (x6) # store value to put something in memory
ld x11, -1872(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xb68fc4d5e23c7b3f # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1964 # sub immediate from rs1 to counter offset
sd x26, 1964 (x29) # store value to put something in memory
ld x12, 1964(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x8acc259ee68e9f30 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 2018 # sub immediate from rs1 to counter offset
sd x17, -2018 (x24) # store value to put something in memory
ld x13, -2018(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x0772588664a6302b # initialize rs2
la x26, scratch # base address 
addi x26, x26, 42 # sub immediate from rs1 to counter offset
sd x20, -42 (x26) # store value to put something in memory
ld x14, -42(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x3826a906405e8ffe # initialize rs2
la x21, scratch # base address 
addi x21, x21, -43 # sub immediate from rs1 to counter offset
sd x24, 43 (x21) # store value to put something in memory
ld x15, 43(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x35c4d2560d7cea4a # initialize rs2
la x3, scratch # base address 
addi x3, x3, 554 # sub immediate from rs1 to counter offset
sd x23, -554 (x3) # store value to put something in memory
ld x16, -554(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0x81d28b56466f4fc3 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1432 # sub immediate from rs1 to counter offset
sd x30, -1432 (x2) # store value to put something in memory
ld x17, -1432(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0x3918e64c3ac290ea # initialize rs2
la x26, scratch # base address 
addi x26, x26, 122 # sub immediate from rs1 to counter offset
sd x23, -122 (x26) # store value to put something in memory
ld x18, -122(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0xf6f3ba3701866187 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1985 # sub immediate from rs1 to counter offset
sd x28, -1985 (x30) # store value to put something in memory
ld x19, -1985(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x1bce0eb9b8af4517 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1819 # sub immediate from rs1 to counter offset
sd x1, -1819 (x29) # store value to put something in memory
ld x20, -1819(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xe51154b23bcc24d4 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1644 # sub immediate from rs1 to counter offset
sd x30, -1644 (x29) # store value to put something in memory
ld x21, -1644(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x15a4ac6b61bedfae # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1043 # sub immediate from rs1 to counter offset
sd x15, -1043 (x31) # store value to put something in memory
ld x22, -1043(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0xf0cd19237f9adcac # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1083 # sub immediate from rs1 to counter offset
sd x22, 1083 (x9) # store value to put something in memory
ld x23, 1083(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x4102cafff052d63d # initialize rs2
la x27, scratch # base address 
addi x27, x27, 304 # sub immediate from rs1 to counter offset
sd x24, -304 (x27) # store value to put something in memory
ld x24, -304(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xfe81953cd55d7144 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 591 # sub immediate from rs1 to counter offset
sd x14, -591 (x28) # store value to put something in memory
ld x25, -591(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x7e64c1e4a0e316a6 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 209 # sub immediate from rs1 to counter offset
sd x19, -209 (x31) # store value to put something in memory
ld x26, -209(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x808c0a282d02892d # initialize rs2
la x10, scratch # base address 
addi x10, x10, 17 # sub immediate from rs1 to counter offset
sd x7, -17 (x10) # store value to put something in memory
ld x27, -17(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0xb34ca871db5aa344 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 563 # sub immediate from rs1 to counter offset
sd x14, -563 (x17) # store value to put something in memory
ld x28, -563(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x35048a1182474cf9 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1600 # sub immediate from rs1 to counter offset
sd x21, 1600 (x10) # store value to put something in memory
ld x29, 1600(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0xd95e79a329929173 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1930 # sub immediate from rs1 to counter offset
sd x6, -1930 (x29) # store value to put something in memory
ld x30, -1930(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x3e4196856063b479 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 55 # sub immediate from rs1 to counter offset
sd x13, -55 (x7) # store value to put something in memory
ld x31, -55(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x8, 0x2e286a59d2bf0cf2 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 604 # sub immediate from rs1 to counter offset
sd x8, -604 (x1) # store value to put something in memory
ld x1, -604(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x5, 0x15ceb5f9583055f0 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 275 # sub immediate from rs1 to counter offset
sd x5, -275 (x2) # store value to put something in memory
ld x2, -275(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x17, 0x91181f4e3f53674a # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1210 # sub immediate from rs1 to counter offset
sd x17, 1210 (x3) # store value to put something in memory
ld x3, 1210(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x53e8ff54a2a80bb2 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1018 # sub immediate from rs1 to counter offset
sd x5, -1018 (x4) # store value to put something in memory
ld x4, -1018(x4) # perform operation
RVTEST_SIGUPD(x6, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x8, 0x21aa705d8384b75e # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1467 # sub immediate from rs1 to counter offset
sd x8, -1467 (x5) # store value to put something in memory
ld x5, -1467(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x654a7cb41c51e89f # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1653 # sub immediate from rs1 to counter offset
sd x13, -1653 (x6) # store value to put something in memory
ld x6, -1653(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xad43a1f2ebc9c52b # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1896 # sub immediate from rs1 to counter offset
sd x12, 1896 (x7) # store value to put something in memory
ld x7, 1896(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x20, 0xd78b29c5900d6e79 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1740 # sub immediate from rs1 to counter offset
sd x20, 1740 (x8) # store value to put something in memory
ld x8, 1740(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3d97d826fd310348 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -704 # sub immediate from rs1 to counter offset
sd x9, 704 (x9) # store value to put something in memory
ld x9, 704(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7474f370970b5154 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1973 # sub immediate from rs1 to counter offset
sd x10, -1973 (x10) # store value to put something in memory
ld x10, -1973(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x21, 0xae7098a4dead9db7 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1881 # sub immediate from rs1 to counter offset
sd x21, 1881 (x11) # store value to put something in memory
ld x11, 1881(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x16, 0x82ea049f70a90d63 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 992 # sub immediate from rs1 to counter offset
sd x16, -992 (x12) # store value to put something in memory
ld x12, -992(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x14, 0xccfaff77d018ce4b # initialize rs2
la x13, scratch # base address 
addi x13, x13, 837 # sub immediate from rs1 to counter offset
sd x14, -837 (x13) # store value to put something in memory
ld x13, -837(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x30, 0xa60fd4b9c1880719 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1186 # sub immediate from rs1 to counter offset
sd x30, 1186 (x14) # store value to put something in memory
ld x14, 1186(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x19, 0x28105a375f68b511 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1227 # sub immediate from rs1 to counter offset
sd x19, -1227 (x15) # store value to put something in memory
ld x15, -1227(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x27, 0xc334dcb8799bb196 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -891 # sub immediate from rs1 to counter offset
sd x27, 891 (x16) # store value to put something in memory
ld x16, 891(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x28, 0x52ccca323a1aee3b # initialize rs2
la x17, scratch # base address 
addi x17, x17, 668 # sub immediate from rs1 to counter offset
sd x28, -668 (x17) # store value to put something in memory
ld x17, -668(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x20, 0x15cf24f4007e4f98 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1802 # sub immediate from rs1 to counter offset
sd x20, -1802 (x18) # store value to put something in memory
ld x18, -1802(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x25, 0xa9fde8ae418e76fe # initialize rs2
la x19, scratch # base address 
addi x19, x19, 2035 # sub immediate from rs1 to counter offset
sd x25, -2035 (x19) # store value to put something in memory
ld x19, -2035(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x1, 0xf24ad4dbc8bb82c9 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1381 # sub immediate from rs1 to counter offset
sd x1, -1381 (x20) # store value to put something in memory
ld x20, -1381(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x9, 0xe21960f3198c3c5f # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1140 # sub immediate from rs1 to counter offset
sd x9, -1140 (x21) # store value to put something in memory
ld x21, -1140(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x25, 0xb5acaa708712c8a8 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1484 # sub immediate from rs1 to counter offset
sd x25, -1484 (x22) # store value to put something in memory
ld x22, -1484(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x21, 0x0073786ffdd86a0c # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1879 # sub immediate from rs1 to counter offset
sd x21, 1879 (x23) # store value to put something in memory
ld x23, 1879(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x13, 0xad23b934a3d067c7 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1046 # sub immediate from rs1 to counter offset
sd x13, -1046 (x24) # store value to put something in memory
ld x24, -1046(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x30, 0x1f1b98434a729801 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1926 # sub immediate from rs1 to counter offset
sd x30, -1926 (x25) # store value to put something in memory
ld x25, -1926(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x29, 0xa7ec23fc115339d3 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -411 # sub immediate from rs1 to counter offset
sd x29, 411 (x26) # store value to put something in memory
ld x26, 411(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x12, 0x3ea0617fdc5d0370 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -36 # sub immediate from rs1 to counter offset
sd x12, 36 (x27) # store value to put something in memory
ld x27, 36(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x1, 0x886bba2e585c5166 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 985 # sub immediate from rs1 to counter offset
sd x1, -985 (x28) # store value to put something in memory
ld x28, -985(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x21, 0xf93ebc2137dbb868 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1066 # sub immediate from rs1 to counter offset
sd x21, -1066 (x29) # store value to put something in memory
ld x29, -1066(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x10, 0xf81dadad26aa33f2 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 955 # sub immediate from rs1 to counter offset
sd x10, -955 (x30) # store value to put something in memory
ld x30, -955(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x15, 0xb59958e8ef2013a4 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1408 # sub immediate from rs1 to counter offset
sd x15, -1408 (x31) # store value to put something in memory
ld x31, -1408(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_corners
li x15, 0x17c1f8bad3058bef # initialize rs2
la x26, scratch # base address 
addi x26, x26, 0 # sub immediate from rs1 to counter offset
sd x15, 0 (x26) # store value to put something in memory
ld x8, 0(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cp_imm_corners
li x15, 0x3f89f22dc2731ec5 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1 # sub immediate from rs1 to counter offset
sd x15, 1 (x14) # store value to put something in memory
ld x16, 1(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cp_imm_corners
li x23, 0xfc3cb76479b9dd11 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -2 # sub immediate from rs1 to counter offset
sd x23, 2 (x3) # store value to put something in memory
ld x31, 2(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cp_imm_corners
li x29, 0x48b048461afe2b1b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -3 # sub immediate from rs1 to counter offset
sd x29, 3 (x11) # store value to put something in memory
ld x19, 3(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 776)

# Testcase cp_imm_corners
li x15, 0x159ab996445bbe82 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -4 # sub immediate from rs1 to counter offset
sd x15, 4 (x7) # store value to put something in memory
ld x28, 4(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cp_imm_corners
li x3, 0x1efe8e840671a9c1 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -8 # sub immediate from rs1 to counter offset
sd x3, 8 (x11) # store value to put something in memory
ld x29, 8(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cp_imm_corners
li x17, 0x54a16e816b6ed108 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -16 # sub immediate from rs1 to counter offset
sd x17, 16 (x30) # store value to put something in memory
ld x26, 16(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 800)

# Testcase cp_imm_corners
li x19, 0xeec06bcc042ce183 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -32 # sub immediate from rs1 to counter offset
sd x19, 32 (x22) # store value to put something in memory
ld x15, 32(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_imm_corners
li x2, 0xeb2c482a75d31293 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -64 # sub immediate from rs1 to counter offset
sd x2, 64 (x28) # store value to put something in memory
ld x6, 64(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cp_imm_corners
li x23, 0xf29b4cc0c6e99c7a # initialize rs2
la x5, scratch # base address 
addi x5, x5, -128 # sub immediate from rs1 to counter offset
sd x23, 128 (x5) # store value to put something in memory
ld x28, 128(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cp_imm_corners
li x1, 0x2a0df061b92965a2 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -256 # sub immediate from rs1 to counter offset
sd x1, 256 (x31) # store value to put something in memory
ld x29, 256(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 832)

# Testcase cp_imm_corners
li x8, 0xf814fa0941be9b5e # initialize rs2
la x30, scratch # base address 
addi x30, x30, -512 # sub immediate from rs1 to counter offset
sd x8, 512 (x30) # store value to put something in memory
ld x7, 512(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cp_imm_corners
li x6, 0x706ab088383de9eb # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1023 # sub immediate from rs1 to counter offset
sd x6, 1023 (x17) # store value to put something in memory
ld x16, 1023(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 848)

# Testcase cp_imm_corners
li x29, 0x44598197a7fd19d9 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1024 # sub immediate from rs1 to counter offset
sd x29, 1024 (x24) # store value to put something in memory
ld x21, 1024(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_imm_corners
li x11, 0xdfbc2e48c95bd4da # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1795 # sub immediate from rs1 to counter offset
sd x11, 1795 (x21) # store value to put something in memory
ld x5, 1795(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

# Testcase cp_imm_corners
li x28, 0x4e449be587b6ee80 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -2047 # sub immediate from rs1 to counter offset
sd x28, 2047 (x15) # store value to put something in memory
ld x23, 2047(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cp_imm_corners
li x12, 0xb3d1e042f3117c28 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2047 # increment rs1 by 2047 
addi x1, x1, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x12, -2048 (x1) # store value to put something in memory
ld x9, -2048(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_imm_corners
li x6, 0xb10dbf0a4e7d89aa # initialize rs2
la x12, scratch # base address 
addi x12, x12, 2047 # sub immediate from rs1 to counter offset
sd x6, -2047 (x12) # store value to put something in memory
ld x10, -2047(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)

# Testcase cp_imm_corners
li x18, 0xe57ebef8700917ab # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2 # sub immediate from rs1 to counter offset
sd x18, -2 (x1) # store value to put something in memory
ld x6, -2(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cp_imm_corners
li x30, 0xb04e4e441f5399d5 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x25) # store value to put something in memory
ld x24, -1(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x26, scratch
addi x26, x26, 1544
add x5, x3, x1 # perform first operation
ld x10, -1544(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
addi x31, x31, -1384
add x26, x8, x27 # perform first operation
ld x2, 1384(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x28, scratch
addi x28, x28, -1805
add x24, x29, x25 # perform first operation
ld x2, 1805(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, -655
add x29, x29, x0 # perform first operation
ld x31, 655(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x10, scratch
addi x10, x10, 1078
add x10, x10, x0 # perform first operation
ld x25, -1078(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
addi x7, x7, -1965
add x7, x7, x0 # perform first operation
ld x6, 1965(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x13, scratch
addi x13, x13, 2035
add x5, x7, x10 # perform first operation
ld x5, -2035(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x23, scratch
addi x23, x23, 533
add x17, x26, x18 # perform first operation
ld x17, -533(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
addi x21, x21, 448
add x16, x5, x2 # perform first operation
ld x16, -448(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
addi x9, x9, -555
add x29, x25, x26 # perform first operation
ld x25, 555(x9) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x20, scratch
addi x20, x20, -511
add x26, x5, x28 # perform first operation
ld x28, 511(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x9, scratch
addi x9, x9, 871
add x20, x13, x16 # perform first operation
ld x31, -871(x9) # perform second (triggering) operation

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
