///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-lbu.S
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
li x6, 0x6b56cdb81642956c # initialize rs2
la x1, scratch # base address 
addi x1, x1, -7 # sub immediate from rs1 to counter offset
sd x6, 7 (x1) # store value to put something in memory
lbu x23, 7(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x06d94280da6e1d8f # initialize rs2
la x2, scratch # base address 
addi x2, x2, 1071 # sub immediate from rs1 to counter offset
sd x29, -1071 (x2) # store value to put something in memory
lbu x27, -1071(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x6, 0x44e366fdcba020e3 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 811 # sub immediate from rs1 to counter offset
sd x6, -811 (x3) # store value to put something in memory
lbu x17, -811(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x7a12f355f4ed2c7e # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1981 # sub immediate from rs1 to counter offset
sd x14, -1981 (x4) # store value to put something in memory
lbu x13, -1981(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x1b00851abbb268b7 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -842 # sub immediate from rs1 to counter offset
sd x12, 842 (x5) # store value to put something in memory
lbu x18, 842(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x18, 32)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x5ed85afea80ac2b7 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1003 # sub immediate from rs1 to counter offset
sd x23, 1003 (x6) # store value to put something in memory
lbu x14, 1003(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x8d6f1465ea69fdfa # initialize rs2
la x7, scratch # base address 
addi x7, x7, 953 # sub immediate from rs1 to counter offset
sd x6, -953 (x7) # store value to put something in memory
lbu x16, -953(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cp_rs1 (Test source rs1 = x8)
li x7, 0x8d627f68bc49445c # initialize rs2
la x8, scratch # base address 
addi x8, x8, 498 # sub immediate from rs1 to counter offset
sd x7, -498 (x8) # store value to put something in memory
lbu x13, -498(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x371a879ca9f4d42e # initialize rs2
la x9, scratch # base address 
addi x9, x9, 251 # sub immediate from rs1 to counter offset
sd x29, -251 (x9) # store value to put something in memory
lbu x21, -251(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xa87ea16dc17b82cb # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1374 # sub immediate from rs1 to counter offset
sd x21, 1374 (x10) # store value to put something in memory
lbu x31, 1374(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x11)
li x30, 0xb1b8c7a9a565c786 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1882 # sub immediate from rs1 to counter offset
sd x30, -1882 (x11) # store value to put something in memory
lbu x26, -1882(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0xdf2301ef44b0d51c # initialize rs2
la x12, scratch # base address 
addi x12, x12, 457 # sub immediate from rs1 to counter offset
sd x22, -457 (x12) # store value to put something in memory
lbu x15, -457(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1 (Test source rs1 = x13)
li x17, 0x17907af8eef6dbfb # initialize rs2
la x13, scratch # base address 
addi x13, x13, 157 # sub immediate from rs1 to counter offset
sd x17, -157 (x13) # store value to put something in memory
lbu x3, -157(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x5d3d9bf83b750cc3 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 254 # sub immediate from rs1 to counter offset
sd x11, -254 (x14) # store value to put something in memory
lbu x6, -254(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0xc5abb0d57b82d87d # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1427 # sub immediate from rs1 to counter offset
sd x3, -1427 (x15) # store value to put something in memory
lbu x5, -1427(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 112)

# Testcase cp_rs1 (Test source rs1 = x16)
li x9, 0xda9baf4d7bb61d07 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1524 # sub immediate from rs1 to counter offset
sd x9, 1524 (x16) # store value to put something in memory
lbu x19, 1524(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x17)
li x20, 0xd842662bf063e5e4 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 43 # sub immediate from rs1 to counter offset
sd x20, -43 (x17) # store value to put something in memory
lbu x12, -43(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x18)
li x8, 0x1a24df6b30ed9610 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -954 # sub immediate from rs1 to counter offset
sd x8, 954 (x18) # store value to put something in memory
lbu x10, 954(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x19)
li x5, 0x88a4a7d5b92e4dcb # initialize rs2
la x19, scratch # base address 
addi x19, x19, -649 # sub immediate from rs1 to counter offset
sd x5, 649 (x19) # store value to put something in memory
lbu x25, 649(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cp_rs1 (Test source rs1 = x20)
li x12, 0x1d154682314a908d # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1645 # sub immediate from rs1 to counter offset
sd x12, 1645 (x20) # store value to put something in memory
lbu x27, 1645(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x158aeac31ea700cb # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1393 # sub immediate from rs1 to counter offset
sd x12, 1393 (x21) # store value to put something in memory
lbu x11, 1393(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x22)
li x24, 0xd4e45071338f8090 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -969 # sub immediate from rs1 to counter offset
sd x24, 969 (x22) # store value to put something in memory
lbu x8, 969(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0xd116735910a9d6af # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1462 # sub immediate from rs1 to counter offset
sd x7, 1462 (x23) # store value to put something in memory
lbu x14, 1462(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x24)
li x26, 0x9c6cfa085c40bb2a # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1228 # sub immediate from rs1 to counter offset
sd x26, -1228 (x24) # store value to put something in memory
lbu x22, -1228(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x1d956a43a8a45834 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -18 # sub immediate from rs1 to counter offset
sd x16, 18 (x25) # store value to put something in memory
lbu x12, 18(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 192)

# Testcase cp_rs1 (Test source rs1 = x26)
li x7, 0x8dbc75855c1ba231 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -545 # sub immediate from rs1 to counter offset
sd x7, 545 (x26) # store value to put something in memory
lbu x9, 545(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x27)
li x3, 0x5fdfd7fe5d55c0d8 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 210 # sub immediate from rs1 to counter offset
sd x3, -210 (x27) # store value to put something in memory
lbu x21, -210(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs1 (Test source rs1 = x28)
li x31, 0x170fa072abb1b6dd # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1595 # sub immediate from rs1 to counter offset
sd x31, -1595 (x28) # store value to put something in memory
lbu x2, -1595(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs1 (Test source rs1 = x29)
li x2, 0x9a4df2f546da2f03 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1441 # sub immediate from rs1 to counter offset
sd x2, 1441 (x29) # store value to put something in memory
lbu x21, 1441(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x30)
li x20, 0x069eb1ca39dcd77c # initialize rs2
la x30, scratch # base address 
addi x30, x30, -886 # sub immediate from rs1 to counter offset
sd x20, 886 (x30) # store value to put something in memory
lbu x26, 886(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rs1 (Test source rs1 = x31)
li x19, 0x64ceba98ed6a9d5c # initialize rs2
la x31, scratch # base address 
addi x31, x31, -225 # sub immediate from rs1 to counter offset
sd x19, 225 (x31) # store value to put something in memory
lbu x6, 225(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rd (Test destination rd = x0)
li x27, 0x26e3912277508df5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -531 # sub immediate from rs1 to counter offset
sd x27, 531 (x26) # store value to put something in memory
lbu x0, 531(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 248)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0x9b3531ed3c5fc3f6 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1273 # sub immediate from rs1 to counter offset
sd x20, 1273 (x5) # store value to put something in memory
lbu x1, 1273(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 256)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0xdc517b020b3609a5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1824 # sub immediate from rs1 to counter offset
sd x15, 1824 (x5) # store value to put something in memory
lbu x2, 1824(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0x5e77c9721bcd85f4 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1714 # sub immediate from rs1 to counter offset
sd x25, 1714 (x30) # store value to put something in memory
lbu x3, 1714(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x27c169d00b8879ce # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1167 # sub immediate from rs1 to counter offset
sd x27, 1167 (x14) # store value to put something in memory
lbu x4, 1167(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 280)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x974408de24595641 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 624 # sub immediate from rs1 to counter offset
sd x28, -624 (x23) # store value to put something in memory
lbu x5, -624(x23) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 288)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x1823fb8369b470d0 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1128 # sub immediate from rs1 to counter offset
sd x31, 1128 (x25) # store value to put something in memory
lbu x6, 1128(x25) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 296)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0x0e82546a2df7c5ae # initialize rs2
la x15, scratch # base address 
addi x15, x15, -9 # sub immediate from rs1 to counter offset
sd x27, 9 (x15) # store value to put something in memory
lbu x7, 9(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 304)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0x4b381d3c9b4763b9 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1316 # sub immediate from rs1 to counter offset
sd x31, -1316 (x3) # store value to put something in memory
lbu x8, -1316(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x4f3f9e227919610c # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1675 # sub immediate from rs1 to counter offset
sd x15, 1675 (x3) # store value to put something in memory
lbu x9, 1675(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0xfb5dfba89c527abd # initialize rs2
la x3, scratch # base address 
addi x3, x3, 777 # sub immediate from rs1 to counter offset
sd x16, -777 (x3) # store value to put something in memory
lbu x10, -777(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0xa084704b851c3a5b # initialize rs2
la x5, scratch # base address 
addi x5, x5, -911 # sub immediate from rs1 to counter offset
sd x20, 911 (x5) # store value to put something in memory
lbu x11, 911(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x889e8cbae3c97f74 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 1808 # sub immediate from rs1 to counter offset
sd x11, -1808 (x18) # store value to put something in memory
lbu x12, -1808(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0xa361ba9647eb8517 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 751 # sub immediate from rs1 to counter offset
sd x23, -751 (x24) # store value to put something in memory
lbu x13, -751(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x6147cd7d7b69b5a3 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 529 # sub immediate from rs1 to counter offset
sd x21, -529 (x24) # store value to put something in memory
lbu x14, -529(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xf80399b071825773 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -578 # sub immediate from rs1 to counter offset
sd x29, 578 (x11) # store value to put something in memory
lbu x15, 578(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 368)

# Testcase cp_rd (Test destination rd = x16)
li x20, 0xd7ca4e5dd2da4ded # initialize rs2
la x10, scratch # base address 
addi x10, x10, -809 # sub immediate from rs1 to counter offset
sd x20, 809 (x10) # store value to put something in memory
lbu x16, 809(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0x90d09a466e05f0db # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1986 # sub immediate from rs1 to counter offset
sd x10, 1986 (x16) # store value to put something in memory
lbu x17, 1986(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rd (Test destination rd = x18)
li x6, 0x9cc967d8f098c1ba # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2018 # sub immediate from rs1 to counter offset
sd x6, -2018 (x1) # store value to put something in memory
lbu x18, -2018(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0xd034e78df52cbee3 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -2007 # sub immediate from rs1 to counter offset
sd x10, 2007 (x20) # store value to put something in memory
lbu x19, 2007(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rd (Test destination rd = x20)
li x10, 0xb4ac2ae35894a2d5 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 289 # sub immediate from rs1 to counter offset
sd x10, -289 (x23) # store value to put something in memory
lbu x20, -289(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0xa8caa1f27c4396d8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1431 # sub immediate from rs1 to counter offset
sd x1, -1431 (x17) # store value to put something in memory
lbu x21, -1431(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0xf53adcd038c30cab # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1163 # sub immediate from rs1 to counter offset
sd x6, -1163 (x28) # store value to put something in memory
lbu x22, -1163(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x47c04086918ecbe4 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1415 # sub immediate from rs1 to counter offset
sd x20, -1415 (x23) # store value to put something in memory
lbu x23, -1415(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0xa16b7a6ee4547e06 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -347 # sub immediate from rs1 to counter offset
sd x21, 347 (x9) # store value to put something in memory
lbu x24, 347(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x71f35c6b9cdf9496 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -389 # sub immediate from rs1 to counter offset
sd x9, 389 (x11) # store value to put something in memory
lbu x25, 389(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0x52f628dffb547229 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -134 # sub immediate from rs1 to counter offset
sd x1, 134 (x24) # store value to put something in memory
lbu x26, 134(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x8c25f6c4aeac14a6 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -685 # sub immediate from rs1 to counter offset
sd x7, 685 (x30) # store value to put something in memory
lbu x27, 685(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xbb868b14a93b78c4 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -215 # sub immediate from rs1 to counter offset
sd x28, 215 (x20) # store value to put something in memory
lbu x28, 215(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x7b7df6e46ef50822 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1311 # sub immediate from rs1 to counter offset
sd x17, -1311 (x24) # store value to put something in memory
lbu x29, -1311(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x962f3ffb0e3177c1 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1730 # sub immediate from rs1 to counter offset
sd x11, 1730 (x5) # store value to put something in memory
lbu x30, 1730(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xa17b69cc60dd7d36 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -781 # sub immediate from rs1 to counter offset
sd x17, 781 (x13) # store value to put something in memory
lbu x31, 781(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x24, 0xcd20518acc203557 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1227 # sub immediate from rs1 to counter offset
sd x24, 1227 (x1) # store value to put something in memory
lbu x1, 1227(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x26, 0x7bde63a62680a5de # initialize rs2
la x2, scratch # base address 
addi x2, x2, -592 # sub immediate from rs1 to counter offset
sd x26, 592 (x2) # store value to put something in memory
lbu x2, 592(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x13, 0x02c486399fbb9069 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 308 # sub immediate from rs1 to counter offset
sd x13, -308 (x3) # store value to put something in memory
lbu x3, -308(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xc384fbec50de60df # initialize rs2
la x4, scratch # base address 
addi x4, x4, -600 # sub immediate from rs1 to counter offset
sd x30, 600 (x4) # store value to put something in memory
lbu x4, 600(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0x4273477dce5c6d95 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1434 # sub immediate from rs1 to counter offset
sd x27, -1434 (x5) # store value to put something in memory
lbu x5, -1434(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x82df9135c8a087fa # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1627 # sub immediate from rs1 to counter offset
sd x4, -1627 (x6) # store value to put something in memory
lbu x6, -1627(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x5b1b550007250ddd # initialize rs2
la x7, scratch # base address 
addi x7, x7, -519 # sub immediate from rs1 to counter offset
sd x22, 519 (x7) # store value to put something in memory
lbu x7, 519(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x1, 0xfb98cfa6e13bdde3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1435 # sub immediate from rs1 to counter offset
sd x1, -1435 (x8) # store value to put something in memory
lbu x8, -1435(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x20, 0xe291347c065c07d0 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 73 # sub immediate from rs1 to counter offset
sd x20, -73 (x9) # store value to put something in memory
lbu x9, -73(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x9, 0xdc0657550d0b0955 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1630 # sub immediate from rs1 to counter offset
sd x9, -1630 (x10) # store value to put something in memory
lbu x10, -1630(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x15, 0x51dd742caff86b79 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1138 # sub immediate from rs1 to counter offset
sd x15, -1138 (x11) # store value to put something in memory
lbu x11, -1138(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x15, 0x53d465f4fadb1655 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1465 # sub immediate from rs1 to counter offset
sd x15, -1465 (x12) # store value to put something in memory
lbu x12, -1465(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x25, 0x2286e93098a49407 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -783 # sub immediate from rs1 to counter offset
sd x25, 783 (x13) # store value to put something in memory
lbu x13, 783(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x12, 0x8d62255dd337ef2b # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1378 # sub immediate from rs1 to counter offset
sd x12, 1378 (x14) # store value to put something in memory
lbu x14, 1378(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x9, 0xba287c9a09140c72 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1922 # sub immediate from rs1 to counter offset
sd x9, -1922 (x15) # store value to put something in memory
lbu x15, -1922(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x12, 0x1fe7ea6dfd803ebc # initialize rs2
la x16, scratch # base address 
addi x16, x16, 161 # sub immediate from rs1 to counter offset
sd x12, -161 (x16) # store value to put something in memory
lbu x16, -161(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x062a682568c45891 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1140 # sub immediate from rs1 to counter offset
sd x17, -1140 (x17) # store value to put something in memory
lbu x17, -1140(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x25, 0xa8b2213f266ce64c # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1905 # sub immediate from rs1 to counter offset
sd x25, 1905 (x18) # store value to put something in memory
lbu x18, 1905(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x24, 0x648c7b4a995d395e # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1792 # sub immediate from rs1 to counter offset
sd x24, -1792 (x19) # store value to put something in memory
lbu x19, -1792(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x7, 0x2b6eab157caa6348 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 114 # sub immediate from rs1 to counter offset
sd x7, -114 (x20) # store value to put something in memory
lbu x20, -114(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x31, 0x665f4664dc131bb3 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -228 # sub immediate from rs1 to counter offset
sd x31, 228 (x21) # store value to put something in memory
lbu x21, 228(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x1, 0x87a6bd6f5151d4fa # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1971 # sub immediate from rs1 to counter offset
sd x1, 1971 (x22) # store value to put something in memory
lbu x22, 1971(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x6, 0x5b55593a27c0c7b3 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -785 # sub immediate from rs1 to counter offset
sd x6, 785 (x23) # store value to put something in memory
lbu x23, 785(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x2, 0x24cca77c44bcf5ee # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1933 # sub immediate from rs1 to counter offset
sd x2, 1933 (x24) # store value to put something in memory
lbu x24, 1933(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x16, 0xc88b4c2d8cb6ee6f # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1316 # sub immediate from rs1 to counter offset
sd x16, -1316 (x25) # store value to put something in memory
lbu x25, -1316(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x3, 0xf7b60c6fb675fa6d # initialize rs2
la x26, scratch # base address 
addi x26, x26, -194 # sub immediate from rs1 to counter offset
sd x3, 194 (x26) # store value to put something in memory
lbu x26, 194(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x29, 0x453797b1d21973a3 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1920 # sub immediate from rs1 to counter offset
sd x29, 1920 (x27) # store value to put something in memory
lbu x27, 1920(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x18, 0x41e0ae4adab67388 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 652 # sub immediate from rs1 to counter offset
sd x18, -652 (x28) # store value to put something in memory
lbu x28, -652(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x15, 0x3b579c88b57a64b8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1432 # sub immediate from rs1 to counter offset
sd x15, 1432 (x29) # store value to put something in memory
lbu x29, 1432(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x27, 0x43e0aab0f61cfd6c # initialize rs2
la x30, scratch # base address 
addi x30, x30, 580 # sub immediate from rs1 to counter offset
sd x27, -580 (x30) # store value to put something in memory
lbu x30, -580(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x6, 0x6a42a371837964a3 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1905 # sub immediate from rs1 to counter offset
sd x6, 1905 (x31) # store value to put something in memory
lbu x31, 1905(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 744)

# Testcase cp_imm_corners
li x7, 0x2af16c84a7a1baa7 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sd x7, 0 (x24) # store value to put something in memory
lbu x16, 0(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cp_imm_corners
li x11, 0xc45521854a8a32be # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1 # sub immediate from rs1 to counter offset
sd x11, 1 (x22) # store value to put something in memory
lbu x13, 1(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cp_imm_corners
li x12, 0x8b9773f59225afaf # initialize rs2
la x31, scratch # base address 
addi x31, x31, -2 # sub immediate from rs1 to counter offset
sd x12, 2 (x31) # store value to put something in memory
lbu x22, 2(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_imm_corners
li x28, 0x78e0c5df38356d9b # initialize rs2
la x16, scratch # base address 
addi x16, x16, -3 # sub immediate from rs1 to counter offset
sd x28, 3 (x16) # store value to put something in memory
lbu x23, 3(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cp_imm_corners
li x21, 0x2ba7b43a29bd0c2e # initialize rs2
la x24, scratch # base address 
addi x24, x24, -4 # sub immediate from rs1 to counter offset
sd x21, 4 (x24) # store value to put something in memory
lbu x8, 4(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cp_imm_corners
li x15, 0x749190a2dead2df3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -8 # sub immediate from rs1 to counter offset
sd x15, 8 (x8) # store value to put something in memory
lbu x1, 8(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 792)

# Testcase cp_imm_corners
li x6, 0x91d6cb0c03bb4048 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -16 # sub immediate from rs1 to counter offset
sd x6, 16 (x3) # store value to put something in memory
lbu x13, 16(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_imm_corners
li x12, 0x77cac8185f3ee6a5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -32 # sub immediate from rs1 to counter offset
sd x12, 32 (x5) # store value to put something in memory
lbu x13, 32(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cp_imm_corners
li x5, 0xb1f3f79733a9314f # initialize rs2
la x31, scratch # base address 
addi x31, x31, -64 # sub immediate from rs1 to counter offset
sd x5, 64 (x31) # store value to put something in memory
lbu x30, 64(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cp_imm_corners
li x8, 0x21b634dab52c7e3b # initialize rs2
la x11, scratch # base address 
addi x11, x11, -128 # sub immediate from rs1 to counter offset
sd x8, 128 (x11) # store value to put something in memory
lbu x16, 128(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cp_imm_corners
li x16, 0x28712afea8e75502 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -256 # sub immediate from rs1 to counter offset
sd x16, 256 (x2) # store value to put something in memory
lbu x24, 256(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cp_imm_corners
li x3, 0xcc3786df9e021370 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -512 # sub immediate from rs1 to counter offset
sd x3, 512 (x12) # store value to put something in memory
lbu x17, 512(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cp_imm_corners
li x26, 0xb614fc5a009343d8 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1023 # sub immediate from rs1 to counter offset
sd x26, 1023 (x18) # store value to put something in memory
lbu x28, 1023(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cp_imm_corners
li x2, 0x91d66541fea1d920 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1024 # sub immediate from rs1 to counter offset
sd x2, 1024 (x5) # store value to put something in memory
lbu x1, 1024(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cp_imm_corners
li x29, 0xb8d3ec288e05212c # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1795 # sub immediate from rs1 to counter offset
sd x29, 1795 (x7) # store value to put something in memory
lbu x3, 1795(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cp_imm_corners
li x25, 0x876dc21037c4a9b2 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -2047 # sub immediate from rs1 to counter offset
sd x25, 2047 (x20) # store value to put something in memory
lbu x31, 2047(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cp_imm_corners
li x27, 0x55aeb1f7b7813ade # initialize rs2
la x18, scratch # base address 
addi x18, x18, 2047 # increment rs1 by 2047 
addi x18, x18, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sd x27, -2048 (x18) # store value to put something in memory
lbu x7, -2048(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cp_imm_corners
li x7, 0xc48b458bc6c8a1bf # initialize rs2
la x10, scratch # base address 
addi x10, x10, 2047 # sub immediate from rs1 to counter offset
sd x7, -2047 (x10) # store value to put something in memory
lbu x17, -2047(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 888)

# Testcase cp_imm_corners
li x7, 0xbeb77691ff477a60 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 2 # sub immediate from rs1 to counter offset
sd x7, -2 (x26) # store value to put something in memory
lbu x23, -2(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 896)

# Testcase cp_imm_corners
li x30, 0x385f4ea64b17ecfe # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1 # sub immediate from rs1 to counter offset
sd x30, -1 (x13) # store value to put something in memory
lbu x17, -1(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_gpr/fpr_hazard nohaz test
la x21, scratch
addi x21, x21, 847
add x29, x11, x26 # perform first operation
lbu x5, -847(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -815
add x15, x12, x19 # perform first operation
lbu x8, 815(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x6, scratch
addi x6, x6, -1211
add x15, x1, x9 # perform first operation
lbu x7, 1211(x6) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x23, scratch
addi x23, x23, -216
add x23, x23, x0 # perform first operation
lbu x24, 216(x23) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
addi x20, x20, 833
add x20, x20, x0 # perform first operation
lbu x17, -833(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x2, scratch
addi x2, x2, 1353
add x2, x2, x0 # perform first operation
lbu x29, -1353(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x7, scratch
addi x7, x7, -1269
add x23, x18, x10 # perform first operation
lbu x23, 1269(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x19, scratch
addi x19, x19, 609
add x16, x5, x7 # perform first operation
lbu x16, -609(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x24, scratch
addi x24, x24, 1234
add x16, x28, x3 # perform first operation
lbu x16, -1234(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x29, scratch
addi x29, x29, -553
add x19, x5, x12 # perform first operation
lbu x5, 553(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x18, scratch
addi x18, x18, -1556
add x1, x17, x26 # perform first operation
lbu x26, 1556(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x20, scratch
addi x20, x20, 1246
add x9, x8, x15 # perform first operation
lbu x30, -1246(x20) # perform second (triggering) operation

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
