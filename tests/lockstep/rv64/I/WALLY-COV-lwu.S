///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lwu.S
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
li x9, 0x3d1f7e69a2d88950 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 676 # sub immediate from rs1 to counter offset
sd x9, -676 (x1) # store value to put something in memory
lwu x6, -676(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x17, 0xfd873665a9125932 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -433 # sub immediate from rs1 to counter offset
sd x17, 433 (x2) # store value to put something in memory
lwu x18, 433(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0xd26cb50b7d38b48b # initialize rs2
la x3, scratch # base address 
addi x3, x3, -373 # sub immediate from rs1 to counter offset
sd x27, 373 (x3) # store value to put something in memory
lwu x20, 373(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x59bcf78456fb333c # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1090 # sub immediate from rs1 to counter offset
sd x24, 1090 (x4) # store value to put something in memory
lwu x17, 1090(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x02aee8822c53fb53 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 275 # sub immediate from rs1 to counter offset
sd x23, -275 (x5) # store value to put something in memory
lwu x30, -275(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x4405d9097eee79e2 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1140 # sub immediate from rs1 to counter offset
sd x20, 1140 (x6) # store value to put something in memory
lwu x18, 1140(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0xe743b39cba633bca # initialize rs2
la x7, scratch # base address 
addi x7, x7, -684 # sub immediate from rs1 to counter offset
sd x31, 684 (x7) # store value to put something in memory
lwu x9, 684(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x24478c4f53556ad2 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1192 # sub immediate from rs1 to counter offset
sd x27, 1192 (x8) # store value to put something in memory
lwu x10, 1192(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x52ec0ef10c6561de # initialize rs2
la x9, scratch # base address 
addi x9, x9, 5 # sub immediate from rs1 to counter offset
sd x14, -5 (x9) # store value to put something in memory
lwu x31, -5(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x17, 0xd3f37f36fe660023 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 651 # sub immediate from rs1 to counter offset
sd x17, -651 (x10) # store value to put something in memory
lwu x20, -651(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x36a15c907503ccef # initialize rs2
la x11, scratch # base address 
addi x11, x11, -492 # sub immediate from rs1 to counter offset
sd x9, 492 (x11) # store value to put something in memory
lwu x15, 492(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x19, 0xbeef4eca8a797b1c # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1442 # sub immediate from rs1 to counter offset
sd x19, 1442 (x12) # store value to put something in memory
lwu x6, 1442(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x23, 0x14efd666775bda1a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1832 # sub immediate from rs1 to counter offset
sd x23, 1832 (x13) # store value to put something in memory
lwu x29, 1832(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x21, 0x1489aadf48a20836 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1540 # sub immediate from rs1 to counter offset
sd x21, 1540 (x14) # store value to put something in memory
lwu x5, 1540(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0x68b17f2a76d652c5 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1593 # sub immediate from rs1 to counter offset
sd x3, -1593 (x15) # store value to put something in memory
lwu x31, -1593(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x23, 0xa65f9dec729103d2 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1241 # sub immediate from rs1 to counter offset
sd x23, 1241 (x16) # store value to put something in memory
lwu x1, 1241(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x27, 0xc44562bac88a109a # initialize rs2
la x17, scratch # base address 
addi x17, x17, -715 # sub immediate from rs1 to counter offset
sd x27, 715 (x17) # store value to put something in memory
lwu x24, 715(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x1, 0xd4ebf9b2c6397abb # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1262 # sub immediate from rs1 to counter offset
sd x1, -1262 (x18) # store value to put something in memory
lwu x14, -1262(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x13, 0x45ce5208f4580dd1 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -290 # sub immediate from rs1 to counter offset
sd x13, 290 (x19) # store value to put something in memory
lwu x18, 290(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x24, 0xd936c621764eca8b # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1155 # sub immediate from rs1 to counter offset
sd x24, 1155 (x20) # store value to put something in memory
lwu x31, 1155(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x15, 0x4661a60c47df392a # initialize rs2
la x21, scratch # base address 
addi x21, x21, -808 # sub immediate from rs1 to counter offset
sd x15, 808 (x21) # store value to put something in memory
lwu x10, 808(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x20, 0xe3f385885c479428 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1330 # sub immediate from rs1 to counter offset
sd x20, -1330 (x22) # store value to put something in memory
lwu x14, -1330(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x15, 0x7e8ac809505d5ea3 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1707 # sub immediate from rs1 to counter offset
sd x15, 1707 (x23) # store value to put something in memory
lwu x13, 1707(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x2, 0x319f7271edc22e68 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1273 # sub immediate from rs1 to counter offset
sd x2, -1273 (x24) # store value to put something in memory
lwu x12, -1273(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x11, 0xb013639724177fe1 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 351 # sub immediate from rs1 to counter offset
sd x11, -351 (x25) # store value to put something in memory
lwu x9, -351(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x11, 0x8e684dbc39442a50 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1019 # sub immediate from rs1 to counter offset
sd x11, 1019 (x26) # store value to put something in memory
lwu x27, 1019(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x31, 0x0fa4c55760bc41a4 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1660 # sub immediate from rs1 to counter offset
sd x31, 1660 (x27) # store value to put something in memory
lwu x29, 1660(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x6, 0xdc65f90fccdd0c61 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 965 # sub immediate from rs1 to counter offset
sd x6, -965 (x28) # store value to put something in memory
lwu x23, -965(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x20, 0x2e8179f09e0a6367 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -522 # sub immediate from rs1 to counter offset
sd x20, 522 (x29) # store value to put something in memory
lwu x1, 522(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x16, 0xd0508248e7343421 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1620 # sub immediate from rs1 to counter offset
sd x16, -1620 (x30) # store value to put something in memory
lwu x25, -1620(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x1, 0xa35978d9d9af4da2 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1648 # sub immediate from rs1 to counter offset
sd x1, -1648 (x31) # store value to put something in memory
lwu x24, -1648(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rd (Test destination rd = x0)
li x27, 0x96e0ca7770d25973 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1354 # sub immediate from rs1 to counter offset
sd x27, 1354 (x6) # store value to put something in memory
lwu x0, 1354(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x46241493c45721fe # initialize rs2
la x5, scratch # base address 
addi x5, x5, 35 # sub immediate from rs1 to counter offset
sd x9, -35 (x5) # store value to put something in memory
lwu x1, -35(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xe7837f56f1dc3452 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -498 # sub immediate from rs1 to counter offset
sd x13, 498 (x7) # store value to put something in memory
lwu x2, 498(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x2fd3e89915312243 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1342 # sub immediate from rs1 to counter offset
sd x8, -1342 (x3) # store value to put something in memory
lwu x3, -1342(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xa71a963cf528363a # initialize rs2
la x28, scratch # base address 
addi x28, x28, -913 # sub immediate from rs1 to counter offset
sd x25, 913 (x28) # store value to put something in memory
lwu x4, 913(x28) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0xa0dcfafe6d690c97 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1027 # sub immediate from rs1 to counter offset
sd x23, 1027 (x21) # store value to put something in memory
lwu x5, 1027(x21) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x948353f8ba3bf786 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1018 # sub immediate from rs1 to counter offset
sd x20, -1018 (x16) # store value to put something in memory
lwu x6, -1018(x16) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x6610b034e15056c0 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1271 # sub immediate from rs1 to counter offset
sd x19, -1271 (x13) # store value to put something in memory
lwu x7, -1271(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xc82e0cd6b1672207 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -544 # sub immediate from rs1 to counter offset
sd x8, 544 (x16) # store value to put something in memory
lwu x8, 544(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0xe7f7525e29318938 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1585 # sub immediate from rs1 to counter offset
sd x8, 1585 (x6) # store value to put something in memory
lwu x9, 1585(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x7f6fa87bf7f6b17d # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1891 # sub immediate from rs1 to counter offset
sd x7, -1891 (x9) # store value to put something in memory
lwu x10, -1891(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xc79aac8852d90590 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -216 # sub immediate from rs1 to counter offset
sd x24, 216 (x9) # store value to put something in memory
lwu x11, 216(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x74bb39839a58230e # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1547 # sub immediate from rs1 to counter offset
sd x10, 1547 (x20) # store value to put something in memory
lwu x12, 1547(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0x2ce97be22133a75d # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1464 # sub immediate from rs1 to counter offset
sd x30, -1464 (x29) # store value to put something in memory
lwu x13, -1464(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x608ff7c0b8075066 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -655 # sub immediate from rs1 to counter offset
sd x20, 655 (x26) # store value to put something in memory
lwu x14, 655(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3305451f0534bf18 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1619 # sub immediate from rs1 to counter offset
sd x15, -1619 (x2) # store value to put something in memory
lwu x15, -1619(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0xb6626232434b2bf9 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1587 # sub immediate from rs1 to counter offset
sd x29, -1587 (x6) # store value to put something in memory
lwu x16, -1587(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x162203271b33be29 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -268 # sub immediate from rs1 to counter offset
sd x13, 268 (x1) # store value to put something in memory
lwu x17, 268(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0xf6eb35607cb2a036 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1244 # sub immediate from rs1 to counter offset
sd x11, -1244 (x28) # store value to put something in memory
lwu x18, -1244(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0xe287f3a7d3fc428e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1292 # sub immediate from rs1 to counter offset
sd x14, 1292 (x15) # store value to put something in memory
lwu x19, 1292(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x670067624ac78eb4 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1254 # sub immediate from rs1 to counter offset
sd x14, 1254 (x26) # store value to put something in memory
lwu x20, 1254(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0x20f26a053d4928ce # initialize rs2
la x5, scratch # base address 
addi x5, x5, -343 # sub immediate from rs1 to counter offset
sd x20, 343 (x5) # store value to put something in memory
lwu x21, 343(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x46dabea9064d3fb4 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1357 # sub immediate from rs1 to counter offset
sd x6, -1357 (x24) # store value to put something in memory
lwu x22, -1357(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0xdbcde5dff8817f94 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1600 # sub immediate from rs1 to counter offset
sd x6, 1600 (x23) # store value to put something in memory
lwu x23, 1600(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x0e5c0df13ba4ff1b # initialize rs2
la x25, scratch # base address 
addi x25, x25, -724 # sub immediate from rs1 to counter offset
sd x14, 724 (x25) # store value to put something in memory
lwu x24, 724(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x00a69272a2311a9e # initialize rs2
la x11, scratch # base address 
addi x11, x11, -622 # sub immediate from rs1 to counter offset
sd x19, 622 (x11) # store value to put something in memory
lwu x25, 622(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x8d6022aad20e4dde # initialize rs2
la x5, scratch # base address 
addi x5, x5, 2033 # sub immediate from rs1 to counter offset
sd x2, -2033 (x5) # store value to put something in memory
lwu x26, -2033(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x587b9737770dc3ce # initialize rs2
la x9, scratch # base address 
addi x9, x9, -853 # sub immediate from rs1 to counter offset
sd x27, 853 (x9) # store value to put something in memory
lwu x27, 853(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x7072c5985ef5836e # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1313 # sub immediate from rs1 to counter offset
sd x18, -1313 (x1) # store value to put something in memory
lwu x28, -1313(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x7, 0x4423ca6ff30d162c # initialize rs2
la x27, scratch # base address 
addi x27, x27, 209 # sub immediate from rs1 to counter offset
sd x7, -209 (x27) # store value to put something in memory
lwu x29, -209(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0xde206639ff641f4e # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1103 # sub immediate from rs1 to counter offset
sd x20, 1103 (x10) # store value to put something in memory
lwu x30, 1103(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x167d69019677bb9b # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1739 # sub immediate from rs1 to counter offset
sd x24, -1739 (x26) # store value to put something in memory
lwu x31, -1739(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x25, 0x4ed8afcb825415c0 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 861 # sub immediate from rs1 to counter offset
sd x25, -861 (x1) # store value to put something in memory
lwu x1, -861(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x28, 0x0f129f71fef79d22 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -2030 # sub immediate from rs1 to counter offset
sd x28, 2030 (x2) # store value to put something in memory
lwu x2, 2030(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x28, 0x8d5a563d5e6450ea # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1417 # sub immediate from rs1 to counter offset
sd x28, -1417 (x3) # store value to put something in memory
lwu x3, -1417(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x02bb6a2dd53ebc5b # initialize rs2
la x4, scratch # base address 
addi x4, x4, 101 # sub immediate from rs1 to counter offset
sd x21, -101 (x4) # store value to put something in memory
lwu x4, -101(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x1d5ba645ff243553 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -831 # sub immediate from rs1 to counter offset
sd x14, 831 (x5) # store value to put something in memory
lwu x5, 831(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0x56946d33e55d5995 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 956 # sub immediate from rs1 to counter offset
sd x16, -956 (x6) # store value to put something in memory
lwu x6, -956(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0xa4c9688f0815eced # initialize rs2
la x7, scratch # base address 
addi x7, x7, -244 # sub immediate from rs1 to counter offset
sd x4, 244 (x7) # store value to put something in memory
lwu x7, 244(x7) # perform operation
RVTEST_SIGUPD(x5, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x4, 0xd4d043ae80fd72b5 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1930 # sub immediate from rs1 to counter offset
sd x4, -1930 (x8) # store value to put something in memory
lwu x8, -1930(x8) # perform operation
RVTEST_SIGUPD(x5, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x19, 0xd53e6eca1c5f9e4c # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1295 # sub immediate from rs1 to counter offset
sd x19, 1295 (x9) # store value to put something in memory
lwu x9, 1295(x9) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x18, 0xa09c7a972caa467b # initialize rs2
la x10, scratch # base address 
addi x10, x10, 303 # sub immediate from rs1 to counter offset
sd x18, -303 (x10) # store value to put something in memory
lwu x10, -303(x10) # perform operation
RVTEST_SIGUPD(x5, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x21, 0xc4f3cb2ed40ba930 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 689 # sub immediate from rs1 to counter offset
sd x21, -689 (x11) # store value to put something in memory
lwu x11, -689(x11) # perform operation
RVTEST_SIGUPD(x5, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x25, 0x35f7ec5f04b7da3c # initialize rs2
la x12, scratch # base address 
addi x12, x12, 88 # sub immediate from rs1 to counter offset
sd x25, -88 (x12) # store value to put something in memory
lwu x12, -88(x12) # perform operation
RVTEST_SIGUPD(x5, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x21, 0xd5604d31f2bc76b7 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 404 # sub immediate from rs1 to counter offset
sd x21, -404 (x13) # store value to put something in memory
lwu x13, -404(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x25, 0x6692d9d02a5c5f5e # initialize rs2
la x14, scratch # base address 
addi x14, x14, 902 # sub immediate from rs1 to counter offset
sd x25, -902 (x14) # store value to put something in memory
lwu x14, -902(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x30, 0xaf2f642ec778b3be # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1335 # sub immediate from rs1 to counter offset
sd x30, 1335 (x15) # store value to put something in memory
lwu x15, 1335(x15) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x22, 0xa2b77d54fc82f185 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -297 # sub immediate from rs1 to counter offset
sd x22, 297 (x16) # store value to put something in memory
lwu x16, 297(x16) # perform operation
RVTEST_SIGUPD(x5, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x8, 0x830f46425c639457 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1800 # sub immediate from rs1 to counter offset
sd x8, 1800 (x17) # store value to put something in memory
lwu x17, 1800(x17) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x9, 0x410b8528b7d4eb9f # initialize rs2
la x18, scratch # base address 
addi x18, x18, 730 # sub immediate from rs1 to counter offset
sd x9, -730 (x18) # store value to put something in memory
lwu x18, -730(x18) # perform operation
RVTEST_SIGUPD(x5, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x13, 0x74aa24fbcbf33b76 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -176 # sub immediate from rs1 to counter offset
sd x13, 176 (x19) # store value to put something in memory
lwu x19, 176(x19) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x3, 0x7d7eaf56bced7ea2 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 432 # sub immediate from rs1 to counter offset
sd x3, -432 (x20) # store value to put something in memory
lwu x20, -432(x20) # perform operation
RVTEST_SIGUPD(x5, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x22, 0x9e9083dfaffe72c4 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 692 # sub immediate from rs1 to counter offset
sd x22, -692 (x21) # store value to put something in memory
lwu x21, -692(x21) # perform operation
RVTEST_SIGUPD(x5, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x24, 0x17f09391b754b2af # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1142 # sub immediate from rs1 to counter offset
sd x24, 1142 (x22) # store value to put something in memory
lwu x22, 1142(x22) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x26, 0x5d27d519cc962955 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1894 # sub immediate from rs1 to counter offset
sd x26, -1894 (x23) # store value to put something in memory
lwu x23, -1894(x23) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x6, 0xe047c1788f203766 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 477 # sub immediate from rs1 to counter offset
sd x6, -477 (x24) # store value to put something in memory
lwu x24, -477(x24) # perform operation
RVTEST_SIGUPD(x5, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x23, 0x9471f1ba32072995 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -684 # sub immediate from rs1 to counter offset
sd x23, 684 (x25) # store value to put something in memory
lwu x25, 684(x25) # perform operation
RVTEST_SIGUPD(x5, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x20, 0x3e27cdf584edda77 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 615 # sub immediate from rs1 to counter offset
sd x20, -615 (x26) # store value to put something in memory
lwu x26, -615(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x15, 0x50d9fa4e36980020 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1205 # sub immediate from rs1 to counter offset
sd x15, 1205 (x27) # store value to put something in memory
lwu x27, 1205(x27) # perform operation
RVTEST_SIGUPD(x5, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x10, 0xbbe72137af665235 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1184 # sub immediate from rs1 to counter offset
sd x10, 1184 (x28) # store value to put something in memory
lwu x28, 1184(x28) # perform operation
RVTEST_SIGUPD(x5, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x9, 0x237c06f49ddb6c07 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1499 # sub immediate from rs1 to counter offset
sd x9, 1499 (x29) # store value to put something in memory
lwu x29, 1499(x29) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x10, 0x87edf4f606a41f3a # initialize rs2
la x30, scratch # base address 
addi x30, x30, 833 # sub immediate from rs1 to counter offset
sd x10, -833 (x30) # store value to put something in memory
lwu x30, -833(x30) # perform operation
RVTEST_SIGUPD(x5, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x25, 0xc6bb25cb1e49c434 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1292 # sub immediate from rs1 to counter offset
sd x25, 1292 (x31) # store value to put something in memory
lwu x31, 1292(x31) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 744)

# Testcase cp_imm_corners
li x11, 0x5272fee184a1b977 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 0 # sub immediate from rs1 to counter offset
sd x11, 0 (x25) # store value to put something in memory
lwu x22, 0(x25) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 752)

# Testcase cp_imm_corners
li x9, 0x045f56f87cffb2f4 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1 # sub immediate from rs1 to counter offset
sd x9, 1 (x31) # store value to put something in memory
lwu x8, 1(x31) # perform operation
RVTEST_SIGUPD(x5, x0, x8, 760)

# Testcase cp_imm_corners
li x22, 0x7b7b08aa9a54edcf # initialize rs2
la x1, scratch # base address 
addi x1, x1, -2 # sub immediate from rs1 to counter offset
sd x22, 2 (x1) # store value to put something in memory
lwu x12, 2(x1) # perform operation
RVTEST_SIGUPD(x5, x0, x12, 768)

# Testcase cp_imm_corners
li x12, 0x5d7885c43695f399 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -3 # sub immediate from rs1 to counter offset
sd x12, 3 (x26) # store value to put something in memory
lwu x3, 3(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x3, 776)

# Testcase cp_imm_corners
li x3, 0xf10be832f82ab1cb # initialize rs2
la x20, scratch # base address 
addi x20, x20, -4 # sub immediate from rs1 to counter offset
sd x3, 4 (x20) # store value to put something in memory
lwu x9, 4(x20) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 784)

# Testcase cp_imm_corners
li x28, 0xa848ab18326f9b1f # initialize rs2
la x26, scratch # base address 
addi x26, x26, -8 # sub immediate from rs1 to counter offset
sd x28, 8 (x26) # store value to put something in memory
lwu x31, 8(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 792)

# Testcase cp_imm_corners
li x2, 0x99ec4ab95c581211 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -16 # sub immediate from rs1 to counter offset
sd x2, 16 (x26) # store value to put something in memory
lwu x25, 16(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x25, 800)

# Testcase cp_imm_corners
li x22, 0x920f643efef4472f # initialize rs2
la x24, scratch # base address 
addi x24, x24, -32 # sub immediate from rs1 to counter offset
sd x22, 32 (x24) # store value to put something in memory
lwu x11, 32(x24) # perform operation
RVTEST_SIGUPD(x5, x0, x11, 808)

# Testcase cp_imm_corners
li x9, 0xac9380c7151d9afe # initialize rs2
la x6, scratch # base address 
addi x6, x6, -64 # sub immediate from rs1 to counter offset
sd x9, 64 (x6) # store value to put something in memory
lwu x26, 64(x6) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 816)

# Testcase cp_imm_corners
li x26, 0x8969293420a15d4c # initialize rs2
la x24, scratch # base address 
addi x24, x24, -128 # sub immediate from rs1 to counter offset
sd x26, 128 (x24) # store value to put something in memory
lwu x12, 128(x24) # perform operation
RVTEST_SIGUPD(x5, x0, x12, 824)

# Testcase cp_imm_corners
li x13, 0xe952d4511323dc63 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -256 # sub immediate from rs1 to counter offset
sd x13, 256 (x9) # store value to put something in memory
lwu x1, 256(x9) # perform operation
RVTEST_SIGUPD(x5, x0, x1, 832)

# Testcase cp_imm_corners
li x26, 0x71820e0691ad8921 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -512 # sub immediate from rs1 to counter offset
sd x26, 512 (x6) # store value to put something in memory
lwu x17, 512(x6) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 840)

# Testcase cp_imm_corners
li x4, 0x61854a33c6479919 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1023 # sub immediate from rs1 to counter offset
sd x4, 1023 (x6) # store value to put something in memory
lwu x29, 1023(x6) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 848)

# Testcase cp_imm_corners
li x24, 0x197e776f8cd7ff96 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1024 # sub immediate from rs1 to counter offset
sd x24, 1024 (x27) # store value to put something in memory
lwu x14, 1024(x27) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 856)

# Testcase cp_imm_corners
li x2, 0x4657ee6ba1963e3e # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1795 # sub immediate from rs1 to counter offset
sd x2, 1795 (x4) # store value to put something in memory
lwu x17, 1795(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 864)

# Testcase cp_imm_corners
li x17, 0xa8ad1f92150bd2bf # initialize rs2
la x11, scratch # base address 
addi x11, x11, -2047 # sub immediate from rs1 to counter offset
sd x17, 2047 (x11) # store value to put something in memory
lwu x14, 2047(x11) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 872)

# Testcase cp_imm_corners
li x14, 0xb7e69738966634ed # initialize rs2
la x24, scratch # base address 
addi x24, x24, 2047 # increment rs1 by 2047 
addi x24, x24, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x14, -2048 (x24) # store value to put something in memory
lwu x18, -2048(x24) # perform operation
RVTEST_SIGUPD(x5, x0, x18, 880)

# Testcase cp_imm_corners
li x29, 0x08c6b63eb7943d2e # initialize rs2
la x13, scratch # base address 
addi x13, x13, 2047 # sub immediate from rs1 to counter offset
sd x29, -2047 (x13) # store value to put something in memory
lwu x26, -2047(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 888)

# Testcase cp_imm_corners
li x31, 0xe1f48b775346bed9 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2 # sub immediate from rs1 to counter offset
sd x31, -2 (x18) # store value to put something in memory
lwu x9, -2(x18) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 896)

# Testcase cp_imm_corners
li x30, 0xa74af07bcb369ff9 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x26) # store value to put something in memory
lwu x6, -1(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x6, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x17, scratch
addi x17, x17, -476
add x1, x16, x28 # perform first operation
lwu x18, 476(x17) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -1461
add x2, x31, x11 # perform first operation
lwu x8, 1461(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x10, scratch
addi x10, x10, -1454
add x16, x13, x11 # perform first operation
lwu x30, 1454(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
addi x27, x27, -70
add x27, x27, x0 # perform first operation
lwu x15, 70(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x21, scratch
addi x21, x21, 1000
add x21, x21, x0 # perform first operation
lwu x7, -1000(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x14, scratch
addi x14, x14, 1748
add x14, x14, x0 # perform first operation
lwu x6, -1748(x14) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x22, scratch
addi x22, x22, 2032
add x10, x6, x7 # perform first operation
lwu x10, -2032(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x24, scratch
addi x24, x24, -393
add x20, x3, x21 # perform first operation
lwu x20, 393(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x20, scratch
addi x20, x20, -458
add x23, x24, x9 # perform first operation
lwu x23, 458(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x25, scratch
addi x25, x25, 1274
add x8, x14, x28 # perform first operation
lwu x14, -1274(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x23, scratch
addi x23, x23, 1240
add x10, x18, x14 # perform first operation
lwu x14, -1240(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x27, scratch
addi x27, x27, -2037
add x18, x23, x8 # perform first operation
lwu x9, 2037(x27) # perform second (triggering) operation

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
