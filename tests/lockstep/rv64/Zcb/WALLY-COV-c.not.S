///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zcb/WALLY-COV-c.not.S
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
li x9, 0x0000000000000000 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xebd458d7aab47ec3 # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xe24fc3ad0bb5214c # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x71b10496dacf1416 # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x11)
li x14, 0x42217088600848e9 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x198d247c908ab2d8 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0x1aebf2a121bb818f # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xeeb2d59bbad159f3 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x2f112498fab4a595 # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x61fdeaeb2ba10244 # initialize rd to specific value
c.not x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb7c72cfe908ba0e8 # initialize rd to specific value
c.not x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf848bd6b0c25d907 # initialize rd to specific value
c.not x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x466a6e639fe88b98 # initialize rd to specific value
c.not x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x82a5344e408d199d # initialize rd to specific value
c.not x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x21d3b6c5ed1fca4e # initialize rd to specific value
c.not x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 232)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x2c617d4598669ac7 # initialize rd to specific value
c.not x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x54a785ccc9633397 # initialize rd to specific value
c.not x15 # perform operation
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
