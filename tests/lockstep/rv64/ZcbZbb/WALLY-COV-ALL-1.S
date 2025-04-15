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

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.zext.h.S
// ******************


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

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-c.sext.h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x8, 0x0000000000000000 # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x14, 0x8000000000000000 # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xffffffffffffffff # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rd to specific value
c.sext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rd to specific value
c.sext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x0000000100000001 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x616db67860125cec # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0xd1ca06713d869195 # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x3987cb84024193c6 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x04a07d382394cc71 # initialize rd to specific value
c.sext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x80ac0f15d74814b1 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x14, 0x95c813ddbadd55d2 # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x3f7bb784c4f17f18 # initialize rd to specific value
c.sext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0xc28f0940f7083d99 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x09047db6a15243a5 # initialize rd to specific value
c.sext.h x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xec70649bb57cbaff # initialize rd to specific value
c.sext.h x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8bdf39a6b15874fe # initialize rd to specific value
c.sext.h x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x6362ed99fb179079 # initialize rd to specific value
c.sext.h x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2430150eee4fe519 # initialize rd to specific value
c.sext.h x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x45b2f1b7948863f5 # initialize rd to specific value
c.sext.h x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xe25a6574c25b1def # initialize rd to specific value
c.sext.h x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0655078bfad976fc # initialize rd to specific value
c.sext.h x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

#.EQU SIGSIZE,256
.EQU SIGSIZE,768 #combined


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
