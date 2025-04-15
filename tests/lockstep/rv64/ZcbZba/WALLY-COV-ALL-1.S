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
// Tests from: WALLY-COV-c.zext.w.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rd to specific value
c.zext.w x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x0000000000000001 # initialize rd to specific value
c.zext.w x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rd to specific value
c.zext.w x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rd to specific value
c.zext.w x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rd to specific value
c.zext.w x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rd to specific value
c.zext.w x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rd to specific value
c.zext.w x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xffffffffffffffff # initialize rd to specific value
c.zext.w x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rd to specific value
c.zext.w x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rd to specific value
c.zext.w x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.zext.w x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rd to specific value
c.zext.w x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rd to specific value
c.zext.w x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rd to specific value
c.zext.w x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x9, 0x0000000100000000 # initialize rd to specific value
c.zext.w x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rd to specific value
c.zext.w x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xaba4dc974517eb6d # initialize rd to specific value
c.zext.w x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xcc028e3186f145c7 # initialize rd to specific value
c.zext.w x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x33cdb056e421fc7b # initialize rd to specific value
c.zext.w x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x8f3f16e279c842e7 # initialize rd to specific value
c.zext.w x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x373f19eb226aa9d5 # initialize rd to specific value
c.zext.w x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xb562eb2387b436eb # initialize rd to specific value
c.zext.w x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x960101d28c429554 # initialize rd to specific value
c.zext.w x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x9, 0x45ddbd6f99e868c3 # initialize rd to specific value
c.zext.w x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2bb8d6ca181c97fd # initialize rd to specific value
c.zext.w x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x8cb4bf281c8540af # initialize rd to specific value
c.zext.w x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x570c48f2a39237ef # initialize rd to specific value
c.zext.w x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x601d52fffc65219d # initialize rd to specific value
c.zext.w x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x56afc8232b2a87fb # initialize rd to specific value
c.zext.w x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x197d9f91e6645ee8 # initialize rd to specific value
c.zext.w x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x22716eb54ef89388 # initialize rd to specific value
c.zext.w x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x04a8567a66cc4def # initialize rd to specific value
c.zext.w x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

#.EQU SIGSIZE,256
.EQU SIGSIZE,256 #combined


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
