///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lh.S
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
li x27, 0xe0049a1610ea2baf # initialize rs2
la x1, scratch # base address 
addi x1, x1, 253 # sub immediate from rs1 to counter offset
sd x27, -253 (x1) # store value to put something in memory
lh x26, -253(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0x438615ea7007acf0 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1817 # sub immediate from rs1 to counter offset
sd x18, 1817 (x2) # store value to put something in memory
lh x30, 1817(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x29, 0xc815bd0485e5f2ee # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1405 # sub immediate from rs1 to counter offset
sd x29, 1405 (x3) # store value to put something in memory
lh x20, 1405(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x655b9fe286988642 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1665 # sub immediate from rs1 to counter offset
sd x8, 1665 (x4) # store value to put something in memory
lh x27, 1665(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x78c71e93f6f70737 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1471 # sub immediate from rs1 to counter offset
sd x3, 1471 (x5) # store value to put something in memory
lh x8, 1471(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0xbb8a638a9dbca35f # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1919 # sub immediate from rs1 to counter offset
sd x11, -1919 (x6) # store value to put something in memory
lh x4, -1919(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x4, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0x5607ff3c4f4d5cb3 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1208 # sub immediate from rs1 to counter offset
sd x19, 1208 (x7) # store value to put something in memory
lh x15, 1208(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xd8f3a430a3e495be # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1789 # sub immediate from rs1 to counter offset
sd x9, -1789 (x8) # store value to put something in memory
lh x19, -1789(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x21, 0x8dc3849b8afe98cd # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1755 # sub immediate from rs1 to counter offset
sd x21, -1755 (x9) # store value to put something in memory
lh x24, -1755(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x24, 0x4d8ca38dabab8fd3 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1548 # sub immediate from rs1 to counter offset
sd x24, 1548 (x10) # store value to put something in memory
lh x2, 1548(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x25, 0x5bf064f50f7e3769 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 835 # sub immediate from rs1 to counter offset
sd x25, -835 (x11) # store value to put something in memory
lh x6, -835(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x6, 0xd8c03a26ad9b41e8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1843 # sub immediate from rs1 to counter offset
sd x6, 1843 (x12) # store value to put something in memory
lh x3, 1843(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0xf6649a9ef9ed5e85 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -432 # sub immediate from rs1 to counter offset
sd x17, 432 (x13) # store value to put something in memory
lh x11, 432(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0xfcee463fe556bd70 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1269 # sub immediate from rs1 to counter offset
sd x15, 1269 (x14) # store value to put something in memory
lh x23, 1269(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x26, 0xae942d8c056fe421 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -546 # sub immediate from rs1 to counter offset
sd x26, 546 (x15) # store value to put something in memory
lh x29, 546(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x21, 0xdf853ca52b9546a9 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -987 # sub immediate from rs1 to counter offset
sd x21, 987 (x16) # store value to put something in memory
lh x24, 987(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0x6de9a2618b985743 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1532 # sub immediate from rs1 to counter offset
sd x6, -1532 (x17) # store value to put something in memory
lh x24, -1532(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x23, 0x93140a4a8711a1ea # initialize rs2
la x18, scratch # base address 
addi x18, x18, -899 # sub immediate from rs1 to counter offset
sd x23, 899 (x18) # store value to put something in memory
lh x29, 899(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x29, 0xbde0f9e9b9819771 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 53 # sub immediate from rs1 to counter offset
sd x29, -53 (x19) # store value to put something in memory
lh x9, -53(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x22, 0x7c18951bf3927640 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1017 # sub immediate from rs1 to counter offset
sd x22, 1017 (x20) # store value to put something in memory
lh x1, 1017(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x23, 0x5660245fbb31af58 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 423 # sub immediate from rs1 to counter offset
sd x23, -423 (x21) # store value to put something in memory
lh x28, -423(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0x10e9460e462284dd # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1369 # sub immediate from rs1 to counter offset
sd x9, 1369 (x22) # store value to put something in memory
lh x26, 1369(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x16, 0x2875fe69ab7f8cd3 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 737 # sub immediate from rs1 to counter offset
sd x16, -737 (x23) # store value to put something in memory
lh x19, -737(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x20, 0xc836d6ebb7f979b8 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1434 # sub immediate from rs1 to counter offset
sd x20, -1434 (x24) # store value to put something in memory
lh x10, -1434(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0xffe21a6f4f937545 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 514 # sub immediate from rs1 to counter offset
sd x29, -514 (x25) # store value to put something in memory
lh x14, -514(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0xf0778f6e15e29ddd # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1683 # sub immediate from rs1 to counter offset
sd x21, 1683 (x26) # store value to put something in memory
lh x5, 1683(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x5, 0x468f42dc4e881adc # initialize rs2
la x27, scratch # base address 
addi x27, x27, 246 # sub immediate from rs1 to counter offset
sd x5, -246 (x27) # store value to put something in memory
lh x15, -246(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x7, 0x0882d1fa98d25d2e # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1254 # sub immediate from rs1 to counter offset
sd x7, 1254 (x28) # store value to put something in memory
lh x18, 1254(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x6, 0x2bc5ee9cdfb20a74 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -379 # sub immediate from rs1 to counter offset
sd x6, 379 (x29) # store value to put something in memory
lh x18, 379(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0xd4f7f6db6b48be3e # initialize rs2
la x30, scratch # base address 
addi x30, x30, 772 # sub immediate from rs1 to counter offset
sd x12, -772 (x30) # store value to put something in memory
lh x9, -772(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x14, 0x4627a220068beb7f # initialize rs2
la x31, scratch # base address 
addi x31, x31, -770 # sub immediate from rs1 to counter offset
sd x14, 770 (x31) # store value to put something in memory
lh x27, 770(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0xac51d96e47bd50b1 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1189 # sub immediate from rs1 to counter offset
sd x21, 1189 (x16) # store value to put something in memory
lh x0, 1189(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0xf2b25bfd1339a7f7 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -91 # sub immediate from rs1 to counter offset
sd x8, 91 (x16) # store value to put something in memory
lh x1, 91(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xa024da4de4db9a09 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -542 # sub immediate from rs1 to counter offset
sd x8, 542 (x2) # store value to put something in memory
lh x2, 542(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0xa7e0198eb4c940fd # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1091 # sub immediate from rs1 to counter offset
sd x19, 1091 (x11) # store value to put something in memory
lh x3, 1091(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0xff9116d0e8557e62 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1147 # sub immediate from rs1 to counter offset
sd x26, 1147 (x14) # store value to put something in memory
lh x4, 1147(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x02b4bec3aceba5ed # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1167 # sub immediate from rs1 to counter offset
sd x3, -1167 (x2) # store value to put something in memory
lh x5, -1167(x2) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x3580f723992bb4d6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1735 # sub immediate from rs1 to counter offset
sd x22, 1735 (x13) # store value to put something in memory
lh x6, 1735(x13) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x9149ca8366f87d59 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1701 # sub immediate from rs1 to counter offset
sd x16, 1701 (x22) # store value to put something in memory
lh x7, 1701(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x3f74252dc756330b # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1666 # sub immediate from rs1 to counter offset
sd x27, -1666 (x26) # store value to put something in memory
lh x8, -1666(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x8187663141cedf3a # initialize rs2
la x26, scratch # base address 
addi x26, x26, -858 # sub immediate from rs1 to counter offset
sd x31, 858 (x26) # store value to put something in memory
lh x9, 858(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x20, 0xf63d0e5358813a4e # initialize rs2
la x30, scratch # base address 
addi x30, x30, -553 # sub immediate from rs1 to counter offset
sd x20, 553 (x30) # store value to put something in memory
lh x10, 553(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0x122d49edd84df1ec # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1065 # sub immediate from rs1 to counter offset
sd x21, -1065 (x10) # store value to put something in memory
lh x11, -1065(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x9878a398c69b2dae # initialize rs2
la x10, scratch # base address 
addi x10, x10, -119 # sub immediate from rs1 to counter offset
sd x7, 119 (x10) # store value to put something in memory
lh x12, 119(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xe860fc45ba2c7741 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 264 # sub immediate from rs1 to counter offset
sd x13, -264 (x17) # store value to put something in memory
lh x13, -264(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0xf3ca7680b7df06ef # initialize rs2
la x18, scratch # base address 
addi x18, x18, -534 # sub immediate from rs1 to counter offset
sd x16, 534 (x18) # store value to put something in memory
lh x14, 534(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x49b67e1d5dfe3f83 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 865 # sub immediate from rs1 to counter offset
sd x16, -865 (x31) # store value to put something in memory
lh x15, -865(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xaaa60b3e31ec94e3 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 540 # sub immediate from rs1 to counter offset
sd x6, -540 (x17) # store value to put something in memory
lh x16, -540(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x25277d3d371382a3 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -65 # sub immediate from rs1 to counter offset
sd x1, 65 (x15) # store value to put something in memory
lh x17, 65(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0x346e47398481deca # initialize rs2
la x11, scratch # base address 
addi x11, x11, -157 # sub immediate from rs1 to counter offset
sd x8, 157 (x11) # store value to put something in memory
lh x18, 157(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xd57d6f8ce70ca8b4 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1204 # sub immediate from rs1 to counter offset
sd x18, 1204 (x6) # store value to put something in memory
lh x19, 1204(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x37885a1877712092 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 148 # sub immediate from rs1 to counter offset
sd x20, -148 (x5) # store value to put something in memory
lh x20, -148(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0xc7245428074cb676 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 396 # sub immediate from rs1 to counter offset
sd x10, -396 (x18) # store value to put something in memory
lh x21, -396(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xcefed29bb6466343 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1086 # sub immediate from rs1 to counter offset
sd x22, -1086 (x21) # store value to put something in memory
lh x22, -1086(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0xed4730e608a40dac # initialize rs2
la x5, scratch # base address 
addi x5, x5, 53 # sub immediate from rs1 to counter offset
sd x11, -53 (x5) # store value to put something in memory
lh x23, -53(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x0fbc1e0bfd3940ba # initialize rs2
la x2, scratch # base address 
addi x2, x2, -696 # sub immediate from rs1 to counter offset
sd x5, 696 (x2) # store value to put something in memory
lh x24, 696(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x286ecd7822459261 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1321 # sub immediate from rs1 to counter offset
sd x10, 1321 (x18) # store value to put something in memory
lh x25, 1321(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xbb444aa2c8134e84 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 739 # sub immediate from rs1 to counter offset
sd x17, -739 (x31) # store value to put something in memory
lh x26, -739(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0xec89fdbecce07819 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1936 # sub immediate from rs1 to counter offset
sd x12, -1936 (x25) # store value to put something in memory
lh x27, -1936(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0x53117f7e1c888e31 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1881 # sub immediate from rs1 to counter offset
sd x5, -1881 (x10) # store value to put something in memory
lh x28, -1881(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x484bdb46d561215a # initialize rs2
la x9, scratch # base address 
addi x9, x9, -974 # sub immediate from rs1 to counter offset
sd x12, 974 (x9) # store value to put something in memory
lh x29, 974(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0xb439245d73dae43e # initialize rs2
la x19, scratch # base address 
addi x19, x19, -85 # sub immediate from rs1 to counter offset
sd x16, 85 (x19) # store value to put something in memory
lh x30, 85(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xf5d32586bbeb824a # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1366 # sub immediate from rs1 to counter offset
sd x9, 1366 (x3) # store value to put something in memory
lh x31, 1366(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x27, 0x1eba9bf3b546657f # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1506 # sub immediate from rs1 to counter offset
sd x27, -1506 (x1) # store value to put something in memory
lh x1, -1506(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x28, 0x3b0b88ff21dfba5f # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1963 # sub immediate from rs1 to counter offset
sd x28, -1963 (x2) # store value to put something in memory
lh x2, -1963(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x11, 0xb4e5046e4ac9a077 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -459 # sub immediate from rs1 to counter offset
sd x11, 459 (x3) # store value to put something in memory
lh x3, 459(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xafff64dd6315d813 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -833 # sub immediate from rs1 to counter offset
sd x19, 833 (x4) # store value to put something in memory
lh x4, 833(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0xdb62fab9fce2c054 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 200 # sub immediate from rs1 to counter offset
sd x26, -200 (x5) # store value to put something in memory
lh x5, -200(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x00240fa4aecac380 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 751 # sub immediate from rs1 to counter offset
sd x30, -751 (x6) # store value to put something in memory
lh x6, -751(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x7c6df4e64eef5e80 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 58 # sub immediate from rs1 to counter offset
sd x27, -58 (x7) # store value to put something in memory
lh x7, -58(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x13, 0x843174fca14a8968 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 208 # sub immediate from rs1 to counter offset
sd x13, -208 (x8) # store value to put something in memory
lh x8, -208(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x17, 0x4963a1c8ef537100 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -258 # sub immediate from rs1 to counter offset
sd x17, 258 (x9) # store value to put something in memory
lh x9, 258(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x26, 0x7c5b509accc28222 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1638 # sub immediate from rs1 to counter offset
sd x26, -1638 (x10) # store value to put something in memory
lh x10, -1638(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x8, 0xe65a4f1709bcdc8b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1948 # sub immediate from rs1 to counter offset
sd x8, 1948 (x11) # store value to put something in memory
lh x11, 1948(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x1, 0x3e6cbc22d2beb64b # initialize rs2
la x12, scratch # base address 
addi x12, x12, -723 # sub immediate from rs1 to counter offset
sd x1, 723 (x12) # store value to put something in memory
lh x12, 723(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x25, 0x23c3082da2a9e314 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 97 # sub immediate from rs1 to counter offset
sd x25, -97 (x13) # store value to put something in memory
lh x13, -97(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5cddc0ecead3e18a # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1846 # sub immediate from rs1 to counter offset
sd x14, 1846 (x14) # store value to put something in memory
lh x14, 1846(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x13, 0x0869a8941be2498e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1552 # sub immediate from rs1 to counter offset
sd x13, 1552 (x15) # store value to put something in memory
lh x15, 1552(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x20, 0x822b195128dbd116 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1476 # sub immediate from rs1 to counter offset
sd x20, 1476 (x16) # store value to put something in memory
lh x16, 1476(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3e0f1482eaae08a3 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1179 # sub immediate from rs1 to counter offset
sd x17, 1179 (x17) # store value to put something in memory
lh x17, 1179(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x7, 0x62a91c88c602e3a8 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1865 # sub immediate from rs1 to counter offset
sd x7, 1865 (x18) # store value to put something in memory
lh x18, 1865(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x20, 0x70189e589839ddd4 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -255 # sub immediate from rs1 to counter offset
sd x20, 255 (x19) # store value to put something in memory
lh x19, 255(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x16, 0xbed86cfa47ce0ba7 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -891 # sub immediate from rs1 to counter offset
sd x16, 891 (x20) # store value to put something in memory
lh x20, 891(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x22, 0x04103c3cfdb60e83 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1915 # sub immediate from rs1 to counter offset
sd x22, -1915 (x21) # store value to put something in memory
lh x21, -1915(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x31, 0x7776a7ca9dfdd40f # initialize rs2
la x22, scratch # base address 
addi x22, x22, -843 # sub immediate from rs1 to counter offset
sd x31, 843 (x22) # store value to put something in memory
lh x22, 843(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x25, 0x35d8aafb8c741df2 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 457 # sub immediate from rs1 to counter offset
sd x25, -457 (x23) # store value to put something in memory
lh x23, -457(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x6, 0x37347d9b9799c309 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1366 # sub immediate from rs1 to counter offset
sd x6, -1366 (x24) # store value to put something in memory
lh x24, -1366(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x24, 0xe922ad7a52a89683 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1680 # sub immediate from rs1 to counter offset
sd x24, 1680 (x25) # store value to put something in memory
lh x25, 1680(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x29, 0x6ab9141b5517cf75 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -873 # sub immediate from rs1 to counter offset
sd x29, 873 (x26) # store value to put something in memory
lh x26, 873(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x22, 0x98b435a158689bb5 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 406 # sub immediate from rs1 to counter offset
sd x22, -406 (x27) # store value to put something in memory
lh x27, -406(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x31, 0x4154f273b7270841 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 346 # sub immediate from rs1 to counter offset
sd x31, -346 (x28) # store value to put something in memory
lh x28, -346(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x31, 0x34e8d3d468e64632 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 445 # sub immediate from rs1 to counter offset
sd x31, -445 (x29) # store value to put something in memory
lh x29, -445(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x26, 0x31cbac4a6b725888 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1623 # sub immediate from rs1 to counter offset
sd x26, -1623 (x30) # store value to put something in memory
lh x30, -1623(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x24, 0xf76a1b86f45bfffa # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1325 # sub immediate from rs1 to counter offset
sd x24, -1325 (x31) # store value to put something in memory
lh x31, -1325(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_corners
li x16, 0x3d3a643f204ea351 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
sd x16, 0 (x9) # store value to put something in memory
lh x28, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

# Testcase cp_imm_corners
li x29, 0xe5eab35324581e54 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1 # sub immediate from rs1 to counter offset
sd x29, 1 (x1) # store value to put something in memory
lh x9, 1(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cp_imm_corners
li x19, 0xe7fbf4a6f5bbcd16 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -2 # sub immediate from rs1 to counter offset
sd x19, 2 (x1) # store value to put something in memory
lh x6, 2(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cp_imm_corners
li x27, 0x1613ed7e5a747705 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -3 # sub immediate from rs1 to counter offset
sd x27, 3 (x18) # store value to put something in memory
lh x10, 3(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cp_imm_corners
li x19, 0x1a177443593588e5 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -4 # sub immediate from rs1 to counter offset
sd x19, 4 (x22) # store value to put something in memory
lh x24, 4(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cp_imm_corners
li x8, 0xdfb7bdde3f1dd831 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -8 # sub immediate from rs1 to counter offset
sd x8, 8 (x23) # store value to put something in memory
lh x13, 8(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cp_imm_corners
li x17, 0x50872689342fce82 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -16 # sub immediate from rs1 to counter offset
sd x17, 16 (x15) # store value to put something in memory
lh x19, 16(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cp_imm_corners
li x24, 0x2117565832d79ed4 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -32 # sub immediate from rs1 to counter offset
sd x24, 32 (x14) # store value to put something in memory
lh x26, 32(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cp_imm_corners
li x5, 0xbafc0f198f18e87a # initialize rs2
la x1, scratch # base address 
addi x1, x1, -64 # sub immediate from rs1 to counter offset
sd x5, 64 (x1) # store value to put something in memory
lh x16, 64(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cp_imm_corners
li x21, 0x5339250b60b379fa # initialize rs2
la x26, scratch # base address 
addi x26, x26, -128 # sub immediate from rs1 to counter offset
sd x21, 128 (x26) # store value to put something in memory
lh x11, 128(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cp_imm_corners
li x11, 0x3b1256f67b4d5ed1 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -256 # sub immediate from rs1 to counter offset
sd x11, 256 (x15) # store value to put something in memory
lh x7, 256(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cp_imm_corners
li x26, 0x6dc9b08e1c1feb30 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -512 # sub immediate from rs1 to counter offset
sd x26, 512 (x16) # store value to put something in memory
lh x30, 512(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cp_imm_corners
li x26, 0xb407d2b7e4449e9e # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1023 # sub immediate from rs1 to counter offset
sd x26, 1023 (x31) # store value to put something in memory
lh x5, 1023(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cp_imm_corners
li x15, 0x371549e831d0716c # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1024 # sub immediate from rs1 to counter offset
sd x15, 1024 (x1) # store value to put something in memory
lh x19, 1024(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cp_imm_corners
li x27, 0x67a8c9e7f306c5bb # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1795 # sub immediate from rs1 to counter offset
sd x27, 1795 (x25) # store value to put something in memory
lh x20, 1795(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cp_imm_corners
li x8, 0xb23e3cebec555da6 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -2047 # sub immediate from rs1 to counter offset
sd x8, 2047 (x27) # store value to put something in memory
lh x6, 2047(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cp_imm_corners
li x20, 0x2942a0bbaa2c60ef # initialize rs2
la x15, scratch # base address 
addi x15, x15, 2047 # increment rs1 by 2047 
addi x15, x15, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x20, -2048 (x15) # store value to put something in memory
lh x24, -2048(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_imm_corners
li x18, 0xe97cfbdc202f9fab # initialize rs2
la x30, scratch # base address 
addi x30, x30, 2047 # sub immediate from rs1 to counter offset
sd x18, -2047 (x30) # store value to put something in memory
lh x1, -2047(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cp_imm_corners
li x27, 0xe339efdd8f603dcf # initialize rs2
la x14, scratch # base address 
addi x14, x14, 2 # sub immediate from rs1 to counter offset
sd x27, -2 (x14) # store value to put something in memory
lh x9, -2(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cp_imm_corners
li x13, 0x0aee43f5a5489efc # initialize rs2
la x27, scratch # base address 
addi x27, x27, 1 # sub immediate from rs1 to counter offset
sd x13, -1 (x27) # store value to put something in memory
lh x16, -1(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x30, scratch
addi x30, x30, -728
add x3, x14, x5 # perform first operation
lh x17, 728(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
addi x19, x19, 1986
add x24, x5, x29 # perform first operation
lh x14, -1986(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, -195
add x10, x20, x27 # perform first operation
lh x6, 195(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x1, scratch
addi x1, x1, -954
add x1, x1, x0 # perform first operation
lh x26, 954(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
addi x23, x23, -1434
add x23, x23, x0 # perform first operation
lh x28, 1434(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
addi x28, x28, -975
add x28, x28, x0 # perform first operation
lh x2, 975(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x1, scratch
addi x1, x1, 1775
add x2, x25, x8 # perform first operation
lh x2, -1775(x1) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x12, scratch
addi x12, x12, -810
add x2, x20, x17 # perform first operation
lh x2, 810(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x29, scratch
addi x29, x29, 390
add x22, x10, x30 # perform first operation
lh x22, -390(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x11, scratch
addi x11, x11, -1609
add x19, x27, x12 # perform first operation
lh x27, 1609(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x6, scratch
addi x6, x6, -1499
add x7, x12, x30 # perform first operation
lh x30, 1499(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x20, scratch
addi x20, x20, -353
add x25, x27, x13 # perform first operation
lh x26, 353(x20) # perform second (triggering) operation

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
