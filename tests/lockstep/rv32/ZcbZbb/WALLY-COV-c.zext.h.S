///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZcbZbb/WALLY-COV-c.zext.h.S
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

.EQU SIGSIZE,112


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
