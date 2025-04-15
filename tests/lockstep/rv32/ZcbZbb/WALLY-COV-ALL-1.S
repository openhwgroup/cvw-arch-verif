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
// Tests from: WALLY-COV-c.sext.b.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rd to specific value
c.sext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7fffffff # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0xffffffff # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rd to specific value
c.sext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x8727c5e0 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x00743cf4 # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 52)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x739fa14d # initialize rd to specific value
c.sext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x33d1dc74 # initialize rd to specific value
c.sext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 60)

# Testcase cp_rs1 (Test source rs1 = x12)
li x14, 0x5391a09c # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x67ffd1cf # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x299a534f # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0xdf471cb1 # initialize rd to specific value
c.sext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf1f20540 # initialize rd to specific value
c.sext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x66cc52be # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb65a2cc1 # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4aa93215 # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x51c0706a # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xec49a64a # initialize rd to specific value
c.sext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe7e7df35 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3225f351 # initialize rd to specific value
c.sext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-c.zext.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x00000000 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x00000001 # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x00000002 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x80000000 # initialize rd to specific value
c.zext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x15, 0x80000001 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0x7ffffffe # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0xffffffff # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0xfffffffe # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x0b748f3f # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0xdc7dad1c # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x0c282312 # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0x6f3d1bac # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x0861f4fd # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0x7fdf9850 # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 68)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x29cd5a1b # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xd7dbdf6d # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x7974e487 # initialize rd to specific value
c.zext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x91898719 # initialize rd to specific value
c.zext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3ba1fca2 # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x73b5dc72 # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaa96f6d0 # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xab3a8b83 # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x67e8221a # initialize rd to specific value
c.zext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa50ebbe9 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

#.EQU SIGSIZE,112


// ******************
// Tests from: WALLY-COV-c.sext.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x00000000 # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x00000001 # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x00000002 # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rd to specific value
c.sext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0x7ffffffe # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0xffffffff # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555 # initialize rd to specific value
c.sext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xb26bb579 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x8661598f # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 52)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0x0cb933a6 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0x33fd526b # initialize rd to specific value
c.sext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 60)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x4364c419 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0xd206823f # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x5ac0fbed # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0xb7dc4b44 # initialize rd to specific value
c.sext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa3342a2b # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x0a9bd7c9 # initialize rd to specific value
c.sext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb30c9a57 # initialize rd to specific value
c.sext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x11bdba51 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2e70ab67 # initialize rd to specific value
c.sext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x25786598 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1550cd3f # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x63baf632 # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

#.EQU SIGSIZE,112
.EQU SIGSIZE,336 #combined


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
