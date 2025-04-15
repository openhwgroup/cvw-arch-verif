///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lw.S
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
li x3, 0x9740c30ae7acc05a # initialize rs2
la x1, scratch # base address 
addi x1, x1, -7 # sub immediate from rs1 to counter offset
sd x3, 7 (x1) # store value to put something in memory
lw x14, 7(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0x9d6acbef387bf694 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1489 # sub immediate from rs1 to counter offset
sd x17, -1489 (x2) # store value to put something in memory
lw x12, -1489(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x16, 0x2b94186ed35a1758 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -87 # sub immediate from rs1 to counter offset
sd x16, 87 (x3) # store value to put something in memory
lw x15, 87(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x37b71a2d20043fe3 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 128 # sub immediate from rs1 to counter offset
sd x5, -128 (x4) # store value to put something in memory
lw x8, -128(x4) # perform operation
RVTEST_SIGUPD(x6, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
li x27, 0x9445d89dd834b53d # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1427 # sub immediate from rs1 to counter offset
sd x27, -1427 (x5) # store value to put something in memory
lw x30, -1427(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xe3792d7c0fc19171 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -993 # sub immediate from rs1 to counter offset
sd x9, 993 (x6) # store value to put something in memory
lw x25, 993(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x282c9b1e68e462c1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1273 # sub immediate from rs1 to counter offset
sd x11, 1273 (x7) # store value to put something in memory
lw x18, 1273(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x8560cc341ee6f284 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 776 # sub immediate from rs1 to counter offset
sd x13, -776 (x8) # store value to put something in memory
lw x15, -776(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0xdc5e2ceddd5ac250 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 997 # sub immediate from rs1 to counter offset
sd x15, -997 (x9) # store value to put something in memory
lw x30, -997(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x5, 0x841cf5a14a09c1b7 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1279 # sub immediate from rs1 to counter offset
sd x5, -1279 (x10) # store value to put something in memory
lw x23, -1279(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x7, 0x45e0d097af1f4d1d # initialize rs2
la x11, scratch # base address 
addi x11, x11, 392 # sub immediate from rs1 to counter offset
sd x7, -392 (x11) # store value to put something in memory
lw x1, -392(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x20, 0xe6c34577cb85706e # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1016 # sub immediate from rs1 to counter offset
sd x20, -1016 (x12) # store value to put something in memory
lw x23, -1016(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x31, 0x9903ea828bb08310 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1392 # sub immediate from rs1 to counter offset
sd x31, 1392 (x13) # store value to put something in memory
lw x1, 1392(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x9, 0x7a2368d114e923fa # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1734 # sub immediate from rs1 to counter offset
sd x9, 1734 (x14) # store value to put something in memory
lw x30, 1734(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x31, 0x42ff7839e324174d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -321 # sub immediate from rs1 to counter offset
sd x31, 321 (x15) # store value to put something in memory
lw x16, 321(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0x1e9327bbd227df63 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1832 # sub immediate from rs1 to counter offset
sd x9, 1832 (x16) # store value to put something in memory
lw x13, 1832(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x10, 0x25a5f84ce20706d1 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -582 # sub immediate from rs1 to counter offset
sd x10, 582 (x17) # store value to put something in memory
lw x26, 582(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x24, 0xc02cc92fe5a8b5c1 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1163 # sub immediate from rs1 to counter offset
sd x24, 1163 (x18) # store value to put something in memory
lw x17, 1163(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x9, 0x0d290030c87028db # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1532 # sub immediate from rs1 to counter offset
sd x9, 1532 (x19) # store value to put something in memory
lw x24, 1532(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x28, 0x2b9f7a13aab9c548 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1849 # sub immediate from rs1 to counter offset
sd x28, 1849 (x20) # store value to put something in memory
lw x14, 1849(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x24, 0xc5947466c44ece2b # initialize rs2
la x21, scratch # base address 
addi x21, x21, -78 # sub immediate from rs1 to counter offset
sd x24, 78 (x21) # store value to put something in memory
lw x23, 78(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x19, 0xd457601602f7e037 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 2019 # sub immediate from rs1 to counter offset
sd x19, -2019 (x22) # store value to put something in memory
lw x3, -2019(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x30, 0x6c9ab7b99d007a5d # initialize rs2
la x23, scratch # base address 
addi x23, x23, -855 # sub immediate from rs1 to counter offset
sd x30, 855 (x23) # store value to put something in memory
lw x31, 855(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x9, 0xbbbf32cdad23e9a5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1736 # sub immediate from rs1 to counter offset
sd x9, 1736 (x24) # store value to put something in memory
lw x20, 1736(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x30, 0xd6f576eb3a590d55 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -179 # sub immediate from rs1 to counter offset
sd x30, 179 (x25) # store value to put something in memory
lw x2, 179(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x25, 0x5404c6a25e25947b # initialize rs2
la x26, scratch # base address 
addi x26, x26, -381 # sub immediate from rs1 to counter offset
sd x25, 381 (x26) # store value to put something in memory
lw x10, 381(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x7, 0xa3d07dbfe73097fb # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1105 # sub immediate from rs1 to counter offset
sd x7, 1105 (x27) # store value to put something in memory
lw x23, 1105(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x25, 0x7c020d937d3de90d # initialize rs2
la x28, scratch # base address 
addi x28, x28, 203 # sub immediate from rs1 to counter offset
sd x25, -203 (x28) # store value to put something in memory
lw x31, -203(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x11, 0xa6dcf2fa1f712887 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1848 # sub immediate from rs1 to counter offset
sd x11, 1848 (x29) # store value to put something in memory
lw x28, 1848(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x10, 0x800b0fb11c2f48e3 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 880 # sub immediate from rs1 to counter offset
sd x10, -880 (x30) # store value to put something in memory
lw x17, -880(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0x3131b987aab4731e # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1564 # sub immediate from rs1 to counter offset
sd x16, -1564 (x31) # store value to put something in memory
lw x14, -1564(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x92ed7a5cec83bd48 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -695 # sub immediate from rs1 to counter offset
sd x15, 695 (x1) # store value to put something in memory
lw x0, 695(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0x4b4efe47110ad27b # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1906 # sub immediate from rs1 to counter offset
sd x15, -1906 (x18) # store value to put something in memory
lw x1, -1906(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x28, 0xd79952bd19168ce6 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 970 # sub immediate from rs1 to counter offset
sd x28, -970 (x31) # store value to put something in memory
lw x2, -970(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xf7aabf1d5e1cac78 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -58 # sub immediate from rs1 to counter offset
sd x12, 58 (x1) # store value to put something in memory
lw x3, 58(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x6bfc6bbe1cde72c2 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1620 # sub immediate from rs1 to counter offset
sd x27, -1620 (x17) # store value to put something in memory
lw x4, -1620(x17) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x43d9de0f2f6130a3 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -386 # sub immediate from rs1 to counter offset
sd x23, 386 (x16) # store value to put something in memory
lw x5, 386(x16) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x55b7fce3932753d7 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1953 # sub immediate from rs1 to counter offset
sd x18, -1953 (x12) # store value to put something in memory
lw x6, -1953(x12) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x72d672e75b265a14 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -306 # sub immediate from rs1 to counter offset
sd x21, 306 (x14) # store value to put something in memory
lw x7, 306(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x21, 0xdfc31d96b22f9bce # initialize rs2
la x19, scratch # base address 
addi x19, x19, 947 # sub immediate from rs1 to counter offset
sd x21, -947 (x19) # store value to put something in memory
lw x8, -947(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xe50b53f589d08a43 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1428 # sub immediate from rs1 to counter offset
sd x18, 1428 (x3) # store value to put something in memory
lw x9, 1428(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x315ee7e218c6d6dc # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1462 # sub immediate from rs1 to counter offset
sd x1, -1462 (x26) # store value to put something in memory
lw x10, -1462(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x5c28c5f2c99d8afc # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1734 # sub immediate from rs1 to counter offset
sd x23, 1734 (x29) # store value to put something in memory
lw x11, 1734(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0x0cb20976a129c2eb # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1842 # sub immediate from rs1 to counter offset
sd x22, -1842 (x16) # store value to put something in memory
lw x12, -1842(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x31, 0xa87770638926a0a8 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1136 # sub immediate from rs1 to counter offset
sd x31, 1136 (x15) # store value to put something in memory
lw x13, 1136(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0xaf3eacc3c6868d5a # initialize rs2
la x7, scratch # base address 
addi x7, x7, -758 # sub immediate from rs1 to counter offset
sd x18, 758 (x7) # store value to put something in memory
lw x14, 758(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0x60793a0bf2f6ea43 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1193 # sub immediate from rs1 to counter offset
sd x3, 1193 (x14) # store value to put something in memory
lw x15, 1193(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x2807a176cf224a6a # initialize rs2
la x9, scratch # base address 
addi x9, x9, 24 # sub immediate from rs1 to counter offset
sd x30, -24 (x9) # store value to put something in memory
lw x16, -24(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x7e1afbea8dd1163d # initialize rs2
la x28, scratch # base address 
addi x28, x28, -2040 # sub immediate from rs1 to counter offset
sd x5, 2040 (x28) # store value to put something in memory
lw x17, 2040(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0xdbb3392393a3d221 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 880 # sub immediate from rs1 to counter offset
sd x30, -880 (x2) # store value to put something in memory
lw x18, -880(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0x51619a6670969468 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 789 # sub immediate from rs1 to counter offset
sd x1, -789 (x26) # store value to put something in memory
lw x19, -789(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x56be26ac480f0a22 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -535 # sub immediate from rs1 to counter offset
sd x9, 535 (x17) # store value to put something in memory
lw x20, 535(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xba5ee393849ebaf9 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1143 # sub immediate from rs1 to counter offset
sd x16, 1143 (x27) # store value to put something in memory
lw x21, 1143(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0xa8b6599f1693bfeb # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1569 # sub immediate from rs1 to counter offset
sd x30, -1569 (x28) # store value to put something in memory
lw x22, -1569(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0xe53d3c00400f61f4 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1702 # sub immediate from rs1 to counter offset
sd x26, -1702 (x15) # store value to put something in memory
lw x23, -1702(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x8e267fb2966d5cbc # initialize rs2
la x1, scratch # base address 
addi x1, x1, -368 # sub immediate from rs1 to counter offset
sd x14, 368 (x1) # store value to put something in memory
lw x24, 368(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x88c7a02b51c73673 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 841 # sub immediate from rs1 to counter offset
sd x24, -841 (x26) # store value to put something in memory
lw x25, -841(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x25, 0x2e68ebb1d0d4b3ed # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1946 # sub immediate from rs1 to counter offset
sd x25, -1946 (x21) # store value to put something in memory
lw x26, -1946(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x31, 0xe7be869c42c12f63 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1399 # sub immediate from rs1 to counter offset
sd x31, 1399 (x29) # store value to put something in memory
lw x27, 1399(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0x64d88445b33f5bc7 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -308 # sub immediate from rs1 to counter offset
sd x24, 308 (x21) # store value to put something in memory
lw x28, 308(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0xfe98cd532b03c307 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1529 # sub immediate from rs1 to counter offset
sd x9, -1529 (x15) # store value to put something in memory
lw x29, -1529(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x7ff6361dc2148bff # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1499 # sub immediate from rs1 to counter offset
sd x3, -1499 (x28) # store value to put something in memory
lw x30, -1499(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x29, 0x75856032ff27cee7 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -248 # sub immediate from rs1 to counter offset
sd x29, 248 (x11) # store value to put something in memory
lw x31, 248(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x26, 0x80926243c2cf4f21 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 44 # sub immediate from rs1 to counter offset
sd x26, -44 (x1) # store value to put something in memory
lw x1, -44(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x1, 0x35e1f473076b0605 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -185 # sub immediate from rs1 to counter offset
sd x1, 185 (x2) # store value to put something in memory
lw x2, 185(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x12, 0x1a1dc2c59dd29aa0 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1049 # sub immediate from rs1 to counter offset
sd x12, 1049 (x3) # store value to put something in memory
lw x3, 1049(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xbd0a103d663414c2 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1711 # sub immediate from rs1 to counter offset
sd x10, 1711 (x4) # store value to put something in memory
lw x4, 1711(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0xf75eac5acaa7a1ec # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1464 # sub immediate from rs1 to counter offset
sd x13, 1464 (x5) # store value to put something in memory
lw x5, 1464(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x515055d5377ec06c # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1059 # sub immediate from rs1 to counter offset
sd x26, 1059 (x6) # store value to put something in memory
lw x6, 1059(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xa4c794a3db9731b5 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1129 # sub immediate from rs1 to counter offset
sd x19, 1129 (x7) # store value to put something in memory
lw x7, 1129(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x31, 0xd84b2e0705fa0e81 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -115 # sub immediate from rs1 to counter offset
sd x31, 115 (x8) # store value to put something in memory
lw x8, 115(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x15, 0x157a09f0052a175c # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1303 # sub immediate from rs1 to counter offset
sd x15, -1303 (x9) # store value to put something in memory
lw x9, -1303(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x15, 0xf515523655bc3bc6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -684 # sub immediate from rs1 to counter offset
sd x15, 684 (x10) # store value to put something in memory
lw x10, 684(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x24, 0x32aa3848ea0e9524 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1005 # sub immediate from rs1 to counter offset
sd x24, -1005 (x11) # store value to put something in memory
lw x11, -1005(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x24, 0x36e6a364ace41ab4 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1034 # sub immediate from rs1 to counter offset
sd x24, -1034 (x12) # store value to put something in memory
lw x12, -1034(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x14, 0x71491e8953467030 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1435 # sub immediate from rs1 to counter offset
sd x14, -1435 (x13) # store value to put something in memory
lw x13, -1435(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x29, 0x746000a016f8848c # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1862 # sub immediate from rs1 to counter offset
sd x29, 1862 (x14) # store value to put something in memory
lw x14, 1862(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x7, 0xb0cfc34a759857d3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1242 # sub immediate from rs1 to counter offset
sd x7, -1242 (x15) # store value to put something in memory
lw x15, -1242(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x8, 0xd73021605e3b255b # initialize rs2
la x16, scratch # base address 
addi x16, x16, -765 # sub immediate from rs1 to counter offset
sd x8, 765 (x16) # store value to put something in memory
lw x16, 765(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x21, 0xdb6465b83cd6e1f6 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -285 # sub immediate from rs1 to counter offset
sd x21, 285 (x17) # store value to put something in memory
lw x17, 285(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x1, 0x96345914cf39d8a0 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -849 # sub immediate from rs1 to counter offset
sd x1, 849 (x18) # store value to put something in memory
lw x18, 849(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x17, 0xac22a939ceb7fc5a # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1989 # sub immediate from rs1 to counter offset
sd x17, 1989 (x19) # store value to put something in memory
lw x19, 1989(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x29, 0x900d8263d3509ed6 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1821 # sub immediate from rs1 to counter offset
sd x29, -1821 (x20) # store value to put something in memory
lw x20, -1821(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x6, 0x22f841c8c96a7d99 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1535 # sub immediate from rs1 to counter offset
sd x6, 1535 (x21) # store value to put something in memory
lw x21, 1535(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x24, 0xaa4643d0adcc19f8 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1765 # sub immediate from rs1 to counter offset
sd x24, 1765 (x22) # store value to put something in memory
lw x22, 1765(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x3, 0xe2bf8d105f487c1b # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1138 # sub immediate from rs1 to counter offset
sd x3, -1138 (x23) # store value to put something in memory
lw x23, -1138(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x2, 0x8a470c450e7887f8 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 430 # sub immediate from rs1 to counter offset
sd x2, -430 (x24) # store value to put something in memory
lw x24, -430(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x22, 0xdf092d88ad9739b9 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1970 # sub immediate from rs1 to counter offset
sd x22, -1970 (x25) # store value to put something in memory
lw x25, -1970(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x13, 0x23356b72c71ea6c4 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 959 # sub immediate from rs1 to counter offset
sd x13, -959 (x26) # store value to put something in memory
lw x26, -959(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x12, 0x5aacd5975100cd3b # initialize rs2
la x27, scratch # base address 
addi x27, x27, 739 # sub immediate from rs1 to counter offset
sd x12, -739 (x27) # store value to put something in memory
lw x27, -739(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x26, 0xc8bdabbb50b723ee # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1131 # sub immediate from rs1 to counter offset
sd x26, -1131 (x28) # store value to put something in memory
lw x28, -1131(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x6, 0xe7d3533c8b7d7902 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1366 # sub immediate from rs1 to counter offset
sd x6, 1366 (x29) # store value to put something in memory
lw x29, 1366(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x5, 0xd6ccccef5385bddf # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1114 # sub immediate from rs1 to counter offset
sd x5, -1114 (x30) # store value to put something in memory
lw x30, -1114(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x29, 0xd8f4b645fc2e93a8 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 104 # sub immediate from rs1 to counter offset
sd x29, -104 (x31) # store value to put something in memory
lw x31, -104(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_corners
li x28, 0x815d8a2272850801 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sd x28, 0 (x31) # store value to put something in memory
lw x19, 0(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 752)

# Testcase cp_imm_corners
li x18, 0x1b804b15ce5f8a51 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1 # sub immediate from rs1 to counter offset
sd x18, 1 (x28) # store value to put something in memory
lw x16, 1(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cp_imm_corners
li x27, 0xda71fbf9d3e3ee18 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -2 # sub immediate from rs1 to counter offset
sd x27, 2 (x19) # store value to put something in memory
lw x26, 2(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cp_imm_corners
li x27, 0x50c23b561ca04c1e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -3 # sub immediate from rs1 to counter offset
sd x27, 3 (x13) # store value to put something in memory
lw x3, 3(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cp_imm_corners
li x1, 0xa22ee765da06185e # initialize rs2
la x30, scratch # base address 
addi x30, x30, -4 # sub immediate from rs1 to counter offset
sd x1, 4 (x30) # store value to put something in memory
lw x14, 4(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cp_imm_corners
li x23, 0x6e8449fff7487de2 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -8 # sub immediate from rs1 to counter offset
sd x23, 8 (x7) # store value to put something in memory
lw x30, 8(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cp_imm_corners
li x31, 0x6908ee46b36e3cc0 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -16 # sub immediate from rs1 to counter offset
sd x31, 16 (x10) # store value to put something in memory
lw x17, 16(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cp_imm_corners
li x28, 0x9f2c3a543e0ecb34 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -32 # sub immediate from rs1 to counter offset
sd x28, 32 (x3) # store value to put something in memory
lw x5, 32(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cp_imm_corners
li x6, 0x9dcc2a51d96b9aee # initialize rs2
la x10, scratch # base address 
addi x10, x10, -64 # sub immediate from rs1 to counter offset
sd x6, 64 (x10) # store value to put something in memory
lw x7, 64(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 816)

# Testcase cp_imm_corners
li x23, 0xfa303f6f977c9d65 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -128 # sub immediate from rs1 to counter offset
sd x23, 128 (x6) # store value to put something in memory
lw x22, 128(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cp_imm_corners
li x10, 0x25df4c4961b888e8 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -256 # sub immediate from rs1 to counter offset
sd x10, 256 (x19) # store value to put something in memory
lw x23, 256(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_imm_corners
li x9, 0xf657dcefd8f4ffa4 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -512 # sub immediate from rs1 to counter offset
sd x9, 512 (x29) # store value to put something in memory
lw x17, 512(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cp_imm_corners
li x9, 0xffb46675b7298423 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1023 # sub immediate from rs1 to counter offset
sd x9, 1023 (x25) # store value to put something in memory
lw x7, 1023(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 848)

# Testcase cp_imm_corners
li x28, 0x9e8d3c82965fbf06 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1024 # sub immediate from rs1 to counter offset
sd x28, 1024 (x15) # store value to put something in memory
lw x25, 1024(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cp_imm_corners
li x29, 0x7e7eaf10fcbcfcec # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1795 # sub immediate from rs1 to counter offset
sd x29, 1795 (x9) # store value to put something in memory
lw x12, 1795(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 864)

# Testcase cp_imm_corners
li x2, 0x783925ef5de1c494 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -2047 # sub immediate from rs1 to counter offset
sd x2, 2047 (x22) # store value to put something in memory
lw x16, 2047(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cp_imm_corners
li x28, 0xb5663bf363a67efb # initialize rs2
la x19, scratch # base address 
addi x19, x19, 2047 # increment rs1 by 2047 
addi x19, x19, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x28, -2048 (x19) # store value to put something in memory
lw x9, -2048(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_imm_corners
li x27, 0x1c954e78c670f951 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2047 # sub immediate from rs1 to counter offset
sd x27, -2047 (x18) # store value to put something in memory
lw x20, -2047(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 888)

# Testcase cp_imm_corners
li x11, 0xd87e8a85e1ea3b9e # initialize rs2
la x13, scratch # base address 
addi x13, x13, 2 # sub immediate from rs1 to counter offset
sd x11, -2 (x13) # store value to put something in memory
lw x21, -2(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cp_imm_corners
li x24, 0x6991603e97e07589 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1 # sub immediate from rs1 to counter offset
sd x24, -1 (x30) # store value to put something in memory
lw x28, -1(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x14, scratch
addi x14, x14, 1165
add x22, x1, x11 # perform first operation
lw x3, -1165(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, 1381
add x26, x29, x15 # perform first operation
lw x24, -1381(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
addi x3, x3, -1046
add x21, x11, x6 # perform first operation
lw x22, 1046(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x25, scratch
addi x25, x25, -1069
add x25, x25, x0 # perform first operation
lw x30, 1069(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
addi x12, x12, -187
add x12, x12, x0 # perform first operation
lw x15, 187(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x24, scratch
addi x24, x24, -439
add x24, x24, x0 # perform first operation
lw x28, 439(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x30, scratch
addi x30, x30, -1459
add x24, x5, x29 # perform first operation
lw x24, 1459(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x2, scratch
addi x2, x2, -151
add x24, x6, x8 # perform first operation
lw x24, 151(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x10, scratch
addi x10, x10, 460
add x25, x16, x7 # perform first operation
lw x25, -460(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x23, scratch
addi x23, x23, 1548
add x7, x8, x2 # perform first operation
lw x8, -1548(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
addi x5, x5, 1212
add x21, x3, x23 # perform first operation
lw x23, -1212(x5) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x13, scratch
addi x13, x13, 1792
add x19, x26, x23 # perform first operation
lw x17, -1792(x13) # perform second (triggering) operation

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
