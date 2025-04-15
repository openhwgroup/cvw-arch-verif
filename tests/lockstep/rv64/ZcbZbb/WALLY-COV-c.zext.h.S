///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZcbZbb/WALLY-COV-c.zext.h.S
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

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x0000000000000000 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rd to specific value
c.zext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rd to specific value
c.zext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rd to specific value
c.zext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rd to specific value
c.zext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x9, 0x5bbc887763ae86f2 # initialize rd to specific value
c.zext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.zext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rd to specific value
c.zext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0x81d6b1b71ffac2df # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0x417c84b22afbb18f # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x75a0acc15e9db7eb # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x12, 0x95fd4977e2e0b20c # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x49ab9680d4e6508b # initialize rd to specific value
c.zext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x067eea20f1d3afcc # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x7af425c28247a502 # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xd6afded60a9c09b6 # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2bc1571d8e0489cf # initialize rd to specific value
c.zext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9900edf4eafd9f88 # initialize rd to specific value
c.zext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd47715393d5e797e # initialize rd to specific value
c.zext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe6b68334a93f18d4 # initialize rd to specific value
c.zext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xab3a8b838ab96256 # initialize rd to specific value
c.zext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x38356c8f67e8221a # initialize rd to specific value
c.zext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0bdb117f6c4c91c3 # initialize rd to specific value
c.zext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xb87309c49679c751 # initialize rd to specific value
c.zext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

.EQU SIGSIZE,256


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
