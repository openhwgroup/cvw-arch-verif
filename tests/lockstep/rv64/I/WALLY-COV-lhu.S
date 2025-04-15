///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lhu.S
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
li x2, 0x4ebd237e2ac2d983 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 340 # sub immediate from rs1 to counter offset
sd x2, -340 (x1) # store value to put something in memory
lhu x7, -340(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x27, 0x252df801ffbc0241 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -2018 # sub immediate from rs1 to counter offset
sd x27, 2018 (x2) # store value to put something in memory
lhu x15, 2018(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x19, 0x819b4062e4de8f66 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 401 # sub immediate from rs1 to counter offset
sd x19, -401 (x3) # store value to put something in memory
lhu x28, -401(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xf0c3eeb1f7eaba87 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1872 # sub immediate from rs1 to counter offset
sd x23, 1872 (x4) # store value to put something in memory
lhu x16, 1872(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x4f26281b91fa5954 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -799 # sub immediate from rs1 to counter offset
sd x14, 799 (x5) # store value to put something in memory
lhu x4, 799(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x4, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xa81c42acc9b57afb # initialize rs2
la x6, scratch # base address 
addi x6, x6, -495 # sub immediate from rs1 to counter offset
sd x17, 495 (x6) # store value to put something in memory
lhu x5, 495(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x5, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xd8946d7b20fa3007 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1472 # sub immediate from rs1 to counter offset
sd x24, -1472 (x7) # store value to put something in memory
lhu x29, -1472(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x2, 0x7632d44e93d6d162 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -385 # sub immediate from rs1 to counter offset
sd x2, 385 (x8) # store value to put something in memory
lhu x27, 385(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x17, 0x7e00230b2748e1c7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -437 # sub immediate from rs1 to counter offset
sd x17, 437 (x9) # store value to put something in memory
lhu x24, 437(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x9bf1cb400673aa43 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1225 # sub immediate from rs1 to counter offset
sd x18, -1225 (x10) # store value to put something in memory
lhu x14, -1225(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x18, 0xe6c0af525ed4adca # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1031 # sub immediate from rs1 to counter offset
sd x18, 1031 (x11) # store value to put something in memory
lhu x13, 1031(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x10, 0x52154d3f36c6bbab # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1574 # sub immediate from rs1 to counter offset
sd x10, -1574 (x12) # store value to put something in memory
lhu x20, -1574(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x955567142fde67b7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -958 # sub immediate from rs1 to counter offset
sd x11, 958 (x13) # store value to put something in memory
lhu x3, 958(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0x3cbff5e80457f802 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1643 # sub immediate from rs1 to counter offset
sd x3, -1643 (x14) # store value to put something in memory
lhu x21, -1643(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xa31887d270a8e966 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1980 # sub immediate from rs1 to counter offset
sd x12, 1980 (x15) # store value to put something in memory
lhu x11, 1980(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0xbf6a0f249ce0e087 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -8 # sub immediate from rs1 to counter offset
sd x15, 8 (x16) # store value to put something in memory
lhu x10, 8(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x19, 0x5f8539feed016ab7 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1036 # sub immediate from rs1 to counter offset
sd x19, 1036 (x17) # store value to put something in memory
lhu x22, 1036(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x9, 0xc62d32242335c43c # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1550 # sub immediate from rs1 to counter offset
sd x9, 1550 (x18) # store value to put something in memory
lhu x22, 1550(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x21, 0xc0a0dad08600741b # initialize rs2
la x19, scratch # base address 
addi x19, x19, 720 # sub immediate from rs1 to counter offset
sd x21, -720 (x19) # store value to put something in memory
lhu x7, -720(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x1, 0x1c6d55a3c4037dca # initialize rs2
la x20, scratch # base address 
addi x20, x20, -626 # sub immediate from rs1 to counter offset
sd x1, 626 (x20) # store value to put something in memory
lhu x31, 626(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0x84fb597e7dd0c1da # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1323 # sub immediate from rs1 to counter offset
sd x16, 1323 (x21) # store value to put something in memory
lhu x20, 1323(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x13, 0xe3c136dfcf31b247 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1220 # sub immediate from rs1 to counter offset
sd x13, -1220 (x22) # store value to put something in memory
lhu x14, -1220(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x2, 0x1a2f7b3690d8d8ae # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1800 # sub immediate from rs1 to counter offset
sd x2, -1800 (x23) # store value to put something in memory
lhu x28, -1800(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x19, 0xfe831e3ca33a6422 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 433 # sub immediate from rs1 to counter offset
sd x19, -433 (x24) # store value to put something in memory
lhu x10, -433(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0x5ba8708697faa56f # initialize rs2
la x25, scratch # base address 
addi x25, x25, -639 # sub immediate from rs1 to counter offset
sd x7, 639 (x25) # store value to put something in memory
lhu x1, 639(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x22, 0x058465c6ad6b0a8f # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1195 # sub immediate from rs1 to counter offset
sd x22, -1195 (x26) # store value to put something in memory
lhu x5, -1195(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0xc96d20a195ecee4a # initialize rs2
la x27, scratch # base address 
addi x27, x27, 27 # sub immediate from rs1 to counter offset
sd x2, -27 (x27) # store value to put something in memory
lhu x3, -27(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x30, 0x827a87b772e1888d # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1693 # sub immediate from rs1 to counter offset
sd x30, 1693 (x28) # store value to put something in memory
lhu x20, 1693(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0xf8fa473e60360fac # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1758 # sub immediate from rs1 to counter offset
sd x2, 1758 (x29) # store value to put something in memory
lhu x30, 1758(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x17, 0xe31f61da48360009 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1240 # sub immediate from rs1 to counter offset
sd x17, -1240 (x30) # store value to put something in memory
lhu x20, -1240(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x22, 0xe753b9853e504f41 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1374 # sub immediate from rs1 to counter offset
sd x22, -1374 (x31) # store value to put something in memory
lhu x27, -1374(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xf7dc23239a8fd186 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1179 # sub immediate from rs1 to counter offset
sd x10, 1179 (x12) # store value to put something in memory
lhu x0, 1179(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x27, 0x79ade9fd8122fed2 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1540 # sub immediate from rs1 to counter offset
sd x27, -1540 (x5) # store value to put something in memory
lhu x1, -1540(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0xb8bb053413c65983 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 740 # sub immediate from rs1 to counter offset
sd x30, -740 (x22) # store value to put something in memory
lhu x2, -740(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x7dedcd3af10226d5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1290 # sub immediate from rs1 to counter offset
sd x22, -1290 (x26) # store value to put something in memory
lhu x3, -1290(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x15083442986c43f2 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -101 # sub immediate from rs1 to counter offset
sd x19, 101 (x11) # store value to put something in memory
lhu x4, 101(x11) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x364d65d7ff8bcd41 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1180 # sub immediate from rs1 to counter offset
sd x11, -1180 (x9) # store value to put something in memory
lhu x5, -1180(x9) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0xb368ddf573f6a019 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1179 # sub immediate from rs1 to counter offset
sd x12, -1179 (x25) # store value to put something in memory
lhu x6, -1179(x25) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x4587a994ad6eccbf # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1633 # sub immediate from rs1 to counter offset
sd x31, 1633 (x1) # store value to put something in memory
lhu x7, 1633(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x61825bce7ed4efc8 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 215 # sub immediate from rs1 to counter offset
sd x20, -215 (x13) # store value to put something in memory
lhu x8, -215(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x7568e2989a37373b # initialize rs2
la x3, scratch # base address 
addi x3, x3, -919 # sub immediate from rs1 to counter offset
sd x15, 919 (x3) # store value to put something in memory
lhu x9, 919(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x12ffd7a362548f47 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -510 # sub immediate from rs1 to counter offset
sd x14, 510 (x8) # store value to put something in memory
lhu x10, 510(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x16cfa8f9ac1dce3c # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1125 # sub immediate from rs1 to counter offset
sd x17, -1125 (x9) # store value to put something in memory
lhu x11, -1125(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x91f3fd8dc4d0bff0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -687 # sub immediate from rs1 to counter offset
sd x8, 687 (x9) # store value to put something in memory
lhu x12, 687(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x411da27e6e2550c5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 114 # sub immediate from rs1 to counter offset
sd x28, -114 (x5) # store value to put something in memory
lhu x13, -114(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x9351270687142e4c # initialize rs2
la x23, scratch # base address 
addi x23, x23, -306 # sub immediate from rs1 to counter offset
sd x21, 306 (x23) # store value to put something in memory
lhu x14, 306(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0x8492d37d56fe70b1 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -2001 # sub immediate from rs1 to counter offset
sd x23, 2001 (x10) # store value to put something in memory
lhu x15, 2001(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xa8edb1d009688e5e # initialize rs2
la x21, scratch # base address 
addi x21, x21, 154 # sub immediate from rs1 to counter offset
sd x5, -154 (x21) # store value to put something in memory
lhu x16, -154(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x713a45907d49330f # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1201 # sub immediate from rs1 to counter offset
sd x1, 1201 (x16) # store value to put something in memory
lhu x17, 1201(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xf9483f1606e78bde # initialize rs2
la x7, scratch # base address 
addi x7, x7, 941 # sub immediate from rs1 to counter offset
sd x8, -941 (x7) # store value to put something in memory
lhu x18, -941(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0xbadf085fff253e57 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -38 # sub immediate from rs1 to counter offset
sd x26, 38 (x9) # store value to put something in memory
lhu x19, 38(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x8, 0xf20f2dad14dc2ebb # initialize rs2
la x6, scratch # base address 
addi x6, x6, 644 # sub immediate from rs1 to counter offset
sd x8, -644 (x6) # store value to put something in memory
lhu x20, -644(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0x30156b0af26b6a4c # initialize rs2
la x9, scratch # base address 
addi x9, x9, 546 # sub immediate from rs1 to counter offset
sd x15, -546 (x9) # store value to put something in memory
lhu x21, -546(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x26e3c61763368887 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -2023 # sub immediate from rs1 to counter offset
sd x18, 2023 (x2) # store value to put something in memory
lhu x22, 2023(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0xd8dede6e0c25db3b # initialize rs2
la x31, scratch # base address 
addi x31, x31, -655 # sub immediate from rs1 to counter offset
sd x17, 655 (x31) # store value to put something in memory
lhu x23, 655(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0xfdfc640784cf904e # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1406 # sub immediate from rs1 to counter offset
sd x31, -1406 (x7) # store value to put something in memory
lhu x24, -1406(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x41aa4cf7e5ff925b # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1389 # sub immediate from rs1 to counter offset
sd x2, -1389 (x16) # store value to put something in memory
lhu x25, -1389(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x25, 0x9fe9b4398e3214a6 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1467 # sub immediate from rs1 to counter offset
sd x25, 1467 (x20) # store value to put something in memory
lhu x26, 1467(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x9d303aaa6bcaaaa9 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 265 # sub immediate from rs1 to counter offset
sd x6, -265 (x24) # store value to put something in memory
lhu x27, -265(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x924924022eac8194 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1224 # sub immediate from rs1 to counter offset
sd x30, 1224 (x9) # store value to put something in memory
lhu x28, 1224(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0x2aa7145f738b3178 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -702 # sub immediate from rs1 to counter offset
sd x8, 702 (x12) # store value to put something in memory
lhu x29, 702(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xda9a07f825993a88 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1561 # sub immediate from rs1 to counter offset
sd x22, 1561 (x23) # store value to put something in memory
lhu x30, 1561(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0x718cc95a250bfc08 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1759 # sub immediate from rs1 to counter offset
sd x26, 1759 (x18) # store value to put something in memory
lhu x31, 1759(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x13, 0xd4771d8ec9ecfdf7 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -3 # sub immediate from rs1 to counter offset
sd x13, 3 (x1) # store value to put something in memory
lhu x1, 3(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x6, 0xc62270169df81676 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -26 # sub immediate from rs1 to counter offset
sd x6, 26 (x2) # store value to put something in memory
lhu x2, 26(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x919b32c51c5705b4 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1180 # sub immediate from rs1 to counter offset
sd x3, 1180 (x3) # store value to put something in memory
lhu x3, 1180(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xfd998a7ed4d5ef7d # initialize rs2
la x4, scratch # base address 
addi x4, x4, -530 # sub immediate from rs1 to counter offset
sd x27, 530 (x4) # store value to put something in memory
lhu x4, 530(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xe7f09643aa8c66ed # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1974 # sub immediate from rs1 to counter offset
sd x31, 1974 (x5) # store value to put something in memory
lhu x5, 1974(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0xb61d884ae67a537a # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1775 # sub immediate from rs1 to counter offset
sd x3, -1775 (x6) # store value to put something in memory
lhu x6, -1775(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xcbfb15121f626121 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -782 # sub immediate from rs1 to counter offset
sd x6, 782 (x7) # store value to put something in memory
lhu x7, 782(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x29, 0x7999cb61851d2005 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -2017 # sub immediate from rs1 to counter offset
sd x29, 2017 (x8) # store value to put something in memory
lhu x8, 2017(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x8, 0x9b86f3f830ad1dbd # initialize rs2
la x9, scratch # base address 
addi x9, x9, -888 # sub immediate from rs1 to counter offset
sd x8, 888 (x9) # store value to put something in memory
lhu x9, 888(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x13, 0xac15858916394f32 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1533 # sub immediate from rs1 to counter offset
sd x13, 1533 (x10) # store value to put something in memory
lhu x10, 1533(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x23, 0xd0665938e8ba8941 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1367 # sub immediate from rs1 to counter offset
sd x23, 1367 (x11) # store value to put something in memory
lhu x11, 1367(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x7, 0xd35fdf0ed475c5d8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1047 # sub immediate from rs1 to counter offset
sd x7, 1047 (x12) # store value to put something in memory
lhu x12, 1047(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x11, 0xddb665597edb2c59 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1709 # sub immediate from rs1 to counter offset
sd x11, 1709 (x13) # store value to put something in memory
lhu x13, 1709(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x24, 0x68d8c6c5c0a065f8 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1913 # sub immediate from rs1 to counter offset
sd x24, -1913 (x14) # store value to put something in memory
lhu x14, -1913(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x22, 0xb1a246c5cf54880d # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1941 # sub immediate from rs1 to counter offset
sd x22, 1941 (x15) # store value to put something in memory
lhu x15, 1941(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x22, 0x45831eb8cbccc801 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -564 # sub immediate from rs1 to counter offset
sd x22, 564 (x16) # store value to put something in memory
lhu x16, 564(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x16, 0xde7c3463137aca6c # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1727 # sub immediate from rs1 to counter offset
sd x16, -1727 (x17) # store value to put something in memory
lhu x17, -1727(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x9, 0x7f03505811a2f99b # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1201 # sub immediate from rs1 to counter offset
sd x9, -1201 (x18) # store value to put something in memory
lhu x18, -1201(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x29, 0x5b9ad639b465e4e3 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1955 # sub immediate from rs1 to counter offset
sd x29, 1955 (x19) # store value to put something in memory
lhu x19, 1955(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x24, 0x25ab98267f3f6fe3 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1703 # sub immediate from rs1 to counter offset
sd x24, 1703 (x20) # store value to put something in memory
lhu x20, 1703(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x31, 0x6d908e3ffad66ee9 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -650 # sub immediate from rs1 to counter offset
sd x31, 650 (x21) # store value to put something in memory
lhu x21, 650(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x20, 0xd5b4b6b558dbaa8c # initialize rs2
la x22, scratch # base address 
addi x22, x22, -359 # sub immediate from rs1 to counter offset
sd x20, 359 (x22) # store value to put something in memory
lhu x22, 359(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x5, 0xd2b25bfe9ad74b4d # initialize rs2
la x23, scratch # base address 
addi x23, x23, -544 # sub immediate from rs1 to counter offset
sd x5, 544 (x23) # store value to put something in memory
lhu x23, 544(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x21, 0x5822e3ce142b56f6 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -464 # sub immediate from rs1 to counter offset
sd x21, 464 (x24) # store value to put something in memory
lhu x24, 464(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x13, 0x96455de3de6643f6 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1713 # sub immediate from rs1 to counter offset
sd x13, 1713 (x25) # store value to put something in memory
lhu x25, 1713(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x9, 0xfdfbc7894074bf1c # initialize rs2
la x26, scratch # base address 
addi x26, x26, 930 # sub immediate from rs1 to counter offset
sd x9, -930 (x26) # store value to put something in memory
lhu x26, -930(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x23, 0xfc450790d9107c88 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1264 # sub immediate from rs1 to counter offset
sd x23, -1264 (x27) # store value to put something in memory
lhu x27, -1264(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x1, 0x069b0fa294aa08d1 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -262 # sub immediate from rs1 to counter offset
sd x1, 262 (x28) # store value to put something in memory
lhu x28, 262(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x28, 0x4fa80f3a17362942 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1800 # sub immediate from rs1 to counter offset
sd x28, 1800 (x29) # store value to put something in memory
lhu x29, 1800(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x28, 0xa08bb60126e56fbe # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1720 # sub immediate from rs1 to counter offset
sd x28, 1720 (x30) # store value to put something in memory
lhu x30, 1720(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x30, 0x0ce82671b7909ad6 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -222 # sub immediate from rs1 to counter offset
sd x30, 222 (x31) # store value to put something in memory
lhu x31, 222(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_corners
li x14, 0x217aa0d713e8f131 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sd x14, 0 (x22) # store value to put something in memory
lhu x3, 0(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cp_imm_corners
li x8, 0x87ee1a37bcbf7c6b # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1 # sub immediate from rs1 to counter offset
sd x8, 1 (x21) # store value to put something in memory
lhu x30, 1(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cp_imm_corners
li x18, 0x54d10f2708ea7043 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -2 # sub immediate from rs1 to counter offset
sd x18, 2 (x6) # store value to put something in memory
lhu x25, 2(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cp_imm_corners
li x1, 0x152dcceccea19fa3 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -3 # sub immediate from rs1 to counter offset
sd x1, 3 (x30) # store value to put something in memory
lhu x7, 3(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_imm_corners
li x19, 0xd9a246004b8b4d12 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -4 # sub immediate from rs1 to counter offset
sd x19, 4 (x13) # store value to put something in memory
lhu x2, 4(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 784)

# Testcase cp_imm_corners
li x17, 0x96ff5e9f26844b1c # initialize rs2
la x13, scratch # base address 
addi x13, x13, -8 # sub immediate from rs1 to counter offset
sd x17, 8 (x13) # store value to put something in memory
lhu x15, 8(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 792)

# Testcase cp_imm_corners
li x26, 0xe579eb8347a7b62a # initialize rs2
la x23, scratch # base address 
addi x23, x23, -16 # sub immediate from rs1 to counter offset
sd x26, 16 (x23) # store value to put something in memory
lhu x5, 16(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_imm_corners
li x9, 0xea665cf97215a8f8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -32 # sub immediate from rs1 to counter offset
sd x9, 32 (x20) # store value to put something in memory
lhu x14, 32(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cp_imm_corners
li x11, 0xb3cd4216d518d837 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -64 # sub immediate from rs1 to counter offset
sd x11, 64 (x22) # store value to put something in memory
lhu x3, 64(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

# Testcase cp_imm_corners
li x30, 0x223a798c50d3430f # initialize rs2
la x29, scratch # base address 
addi x29, x29, -128 # sub immediate from rs1 to counter offset
sd x30, 128 (x29) # store value to put something in memory
lhu x8, 128(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cp_imm_corners
li x12, 0xc39ab87ff43d51e4 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -256 # sub immediate from rs1 to counter offset
sd x12, 256 (x23) # store value to put something in memory
lhu x7, 256(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_imm_corners
li x22, 0x35c02c4fbc1f7ef3 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -512 # sub immediate from rs1 to counter offset
sd x22, 512 (x19) # store value to put something in memory
lhu x30, 512(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cp_imm_corners
li x11, 0x617c389d6ce46750 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1023 # sub immediate from rs1 to counter offset
sd x11, 1023 (x20) # store value to put something in memory
lhu x29, 1023(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cp_imm_corners
li x14, 0x0a697eda4296f09a # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1024 # sub immediate from rs1 to counter offset
sd x14, 1024 (x11) # store value to put something in memory
lhu x13, 1024(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cp_imm_corners
li x23, 0x12bf4489db8d14bd # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1795 # sub immediate from rs1 to counter offset
sd x23, 1795 (x10) # store value to put something in memory
lhu x30, 1795(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 864)

# Testcase cp_imm_corners
li x31, 0x9b1cf9ffa3d53f2f # initialize rs2
la x22, scratch # base address 
addi x22, x22, -2047 # sub immediate from rs1 to counter offset
sd x31, 2047 (x22) # store value to put something in memory
lhu x5, 2047(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

# Testcase cp_imm_corners
li x12, 0x33cae2d47c8a34c5 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 2047 # increment rs1 by 2047 
addi x22, x22, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x12, -2048 (x22) # store value to put something in memory
lhu x11, -2048(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cp_imm_corners
li x25, 0x75ec60cb0ee7f79e # initialize rs2
la x17, scratch # base address 
addi x17, x17, 2047 # sub immediate from rs1 to counter offset
sd x25, -2047 (x17) # store value to put something in memory
lhu x28, -2047(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cp_imm_corners
li x2, 0x80eb420e19cb1136 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 2 # sub immediate from rs1 to counter offset
sd x2, -2 (x14) # store value to put something in memory
lhu x27, -2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_imm_corners
li x1, 0x128d8b201c7d5ec6 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1 # sub immediate from rs1 to counter offset
sd x1, -1 (x19) # store value to put something in memory
lhu x15, -1(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 796
add x2, x1, x28 # perform first operation
lhu x25, -796(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, -638
add x28, x17, x8 # perform first operation
lhu x23, 638(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
addi x10, x10, 1382
add x1, x6, x9 # perform first operation
lhu x29, -1382(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
addi x21, x21, 1833
add x21, x21, x0 # perform first operation
lhu x26, -1833(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x12, scratch
addi x12, x12, 1659
add x12, x12, x0 # perform first operation
lhu x10, -1659(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x18, scratch
addi x18, x18, -1681
add x18, x18, x0 # perform first operation
lhu x22, 1681(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x12, scratch
addi x12, x12, -796
add x16, x22, x15 # perform first operation
lhu x16, 796(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x30, scratch
addi x30, x30, -12
add x6, x15, x12 # perform first operation
lhu x6, 12(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x18, scratch
addi x18, x18, 838
add x28, x14, x9 # perform first operation
lhu x28, -838(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x16, scratch
addi x16, x16, 165
add x2, x28, x23 # perform first operation
lhu x28, -165(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x27, scratch
addi x27, x27, 1568
add x28, x30, x2 # perform first operation
lhu x2, -1568(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x7, scratch
addi x7, x7, 543
add x29, x6, x3 # perform first operation
lhu x22, -543(x7) # perform second (triggering) operation

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
