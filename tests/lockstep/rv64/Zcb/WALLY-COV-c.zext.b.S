///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcb/WALLY-COV-c.zext.b.S
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
li x12, 0x0000000000000000 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0x530f0f7e44c52b57 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x9ef609c11fb8ca10 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x13, 0xaacbfc573d7f21ea # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x0951d746b6908bf6 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x15, 0x02b5670ac81d86e8 # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0xc994c5d09475cbf4 # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x11, 0x8b402614ad344579 # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x10, 0xd176360008a266a1 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x147691206ae38b5a # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x215ec36ed8d360dd # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x7d6f6ff40d0e3b20 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x954f7e58bcf0f4e8 # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb7f377498a478b83 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6921c5f276a9c5c2 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfc48fbf98642d36b # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7a256a3803ce5d32 # initialize rd to specific value
c.zext.b x15 # perform operation
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
