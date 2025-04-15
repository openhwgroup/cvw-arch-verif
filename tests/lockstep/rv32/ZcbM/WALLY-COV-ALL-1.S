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

    

// ******************
// Tests from: WALLY-COV-c.mul.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x2677b44c # initialize rs2
li x8, 0x00000000 # initialize rd,rs1
c.mul x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x923352fc # initialize rs2
li x11, 0x00000001 # initialize rd,rs1
c.mul x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x13, 0xaff533ae # initialize rs2
li x8, 0x00000002 # initialize rd,rs1
c.mul x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x73dbab7d # initialize rs2
li x15, 0x80000000 # initialize rd,rs1
c.mul x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0xb8fad5c0 # initialize rs2
li x11, 0x80000001 # initialize rd,rs1
c.mul x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x9, 0x24825e18 # initialize rs2
li x11, 0x7fffffff # initialize rd,rs1
c.mul x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x689593df # initialize rs2
li x11, 0x7ffffffe # initialize rd,rs1
c.mul x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xa31039a8 # initialize rs2
li x13, 0xffffffff # initialize rd,rs1
c.mul x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x32894ce2 # initialize rs2
li x12, 0xfffffffe # initialize rd,rs1
c.mul x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x14, 0x560fa456 # initialize rs2
li x10, 0x5bbc8872 # initialize rd,rs1
c.mul x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0x4ca3b4bd # initialize rs2
li x14, 0xaaaaaaaa # initialize rd,rs1
c.mul x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0xe4dace31 # initialize rs2
li x15, 0x55555555 # initialize rd,rs1
c.mul x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x00000000 # initialize rs2
li x12, 0x1048c5dc # initialize rd,rs1
c.mul x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x00000001 # initialize rs2
li x10, 0xa4c44a37 # initialize rd,rs1
c.mul x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x00000002 # initialize rs2
li x8, 0x0e17a20c # initialize rd,rs1
c.mul x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x10, 0x80000000 # initialize rs2
li x11, 0xdd0c73e0 # initialize rd,rs1
c.mul x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x14, 0x80000001 # initialize rs2
li x9, 0x0de90326 # initialize rd,rs1
c.mul x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x15, 0x7fffffff # initialize rs2
li x8, 0x40054874 # initialize rd,rs1
c.mul x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs2
li x14, 0xee589ebc # initialize rd,rs1
c.mul x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x12, 0xffffffff # initialize rs2
li x14, 0xb79f2467 # initialize rd,rs1
c.mul x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0xfffffffe # initialize rs2
li x10, 0xed609c35 # initialize rd,rs1
c.mul x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs2
li x9, 0xffcda64f # initialize rd,rs1
c.mul x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs2
li x12, 0x33146520 # initialize rd,rs1
c.mul x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x9, 0x55555555 # initialize rs2
li x12, 0x0e7e40d9 # initialize rd,rs1
c.mul x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x1932aa43 # initialize rs2
li x8, 0x9091e7ca # initialize rd,rs1
c.mul x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xc15e6edc # initialize rs2
li x9, 0xc1174c8b # initialize rd,rs1
c.mul x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 100)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x52c253b8 # initialize rs2
li x10, 0x273ee928 # initialize rd,rs1
c.mul x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xf49afd5e # initialize rs2
li x11, 0x77b8c9d6 # initialize rd,rs1
c.mul x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xf0a213a7 # initialize rs2
li x12, 0x92fc2eca # initialize rd,rs1
c.mul x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x9581e967 # initialize rs2
li x13, 0xd36b7425 # initialize rd,rs1
c.mul x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 116)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x61bea8e9 # initialize rs2
li x14, 0x4103f9bf # initialize rd,rs1
c.mul x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x107051bc # initialize rs2
li x15, 0x936bfff6 # initialize rd,rs1
c.mul x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 124)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xda20fcf1 # initialize rs2
li x9, 0xfced0dfb # initialize rd,rs1
c.mul x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x4829a61d # initialize rs2
li x8, 0xdcdde620 # initialize rd,rs1
c.mul x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 132)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x74aa53f2 # initialize rs2
li x8, 0x02ce19b8 # initialize rd,rs1
c.mul x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xacee3c34 # initialize rs2
li x9, 0x0f278fc7 # initialize rd,rs1
c.mul x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 140)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x853ed724 # initialize rs2
li x13, 0x9c27867c # initialize rd,rs1
c.mul x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xfb84625c # initialize rs2
li x15, 0x229019e0 # initialize rd,rs1
c.mul x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 148)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xa97afc1e # initialize rs2
li x15, 0xfb40e099 # initialize rd,rs1
c.mul x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x83a03332 # initialize rs2
li x9, 0x2d6bd51d # initialize rd,rs1
c.mul x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x0ffe822c # initialize rs2
li x8, 0xb9be0f03 # initialize rd,rs1
c.mul x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x48efe56b # initialize rs2
li x9, 0xadf46566 # initialize rd,rs1
c.mul x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xba6a561e # initialize rs2
li x10, 0x1ec3cf91 # initialize rd,rs1
c.mul x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x457caba8 # initialize rs2
li x11, 0xaaf4e169 # initialize rd,rs1
c.mul x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x1c9a822f # initialize rs2
li x12, 0x5fcae18e # initialize rd,rs1
c.mul x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0x68c9989b # initialize rs2
li x13, 0xe874003f # initialize rd,rs1
c.mul x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x37d07b5a # initialize rs2
li x14, 0x636c1d73 # initialize rd,rs1
c.mul x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x6501d85a # initialize rs2
li x15, 0x7a6894be # initialize rd,rs1
c.mul x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

#.EQU SIGSIZE,192
.EQU SIGSIZE,192 #combined


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
