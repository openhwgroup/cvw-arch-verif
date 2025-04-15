///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZcbZbb/WALLY-COV-c.sext.h.S
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
