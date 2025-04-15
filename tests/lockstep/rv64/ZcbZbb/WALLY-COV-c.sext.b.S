///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZcbZbb/WALLY-COV-c.sext.b.S
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
li x14, 0x0000000000000000 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x0000000000000001 # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rd to specific value
c.sext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x9, 0x5bbc887763ae86f2 # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rd to specific value
c.sext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rd to specific value
c.sext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x14, 0x1a5465b38727c5e0 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x00743cf43ec844ee # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0x617c2db0183226a6 # initialize rd to specific value
c.sext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x15435947894587c2 # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x0fd2f1a68b7ae489 # initialize rd to specific value
c.sext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x299a534faff5da47 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x56a2a84b52a95590 # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x37dde81c3e6da1fa # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x143e73ca9faddcc9 # initialize rd to specific value
c.sext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9f9c85f88ab0bcc7 # initialize rd to specific value
c.sext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x1cb2fd074aa93215 # initialize rd to specific value
c.sext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x4f72820c8fff65a7 # initialize rd to specific value
c.sext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2515a376e97cd80c # initialize rd to specific value
c.sext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc2fc866f3f841bb5 # initialize rd to specific value
c.sext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x29848a64ea043fc4 # initialize rd to specific value
c.sext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7fcf7acb2916631e # initialize rd to specific value
c.sext.b x15 # perform operation
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
