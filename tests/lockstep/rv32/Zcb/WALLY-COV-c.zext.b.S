///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zcb/WALLY-COV-c.zext.b.S
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
li x12, 0x00000000 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x00000001 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x8, 0x80000000 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x8, 0x80000001 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rd to specific value
c.zext.b x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x8, 0x55555555 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs1 (Test source rs1 = x8)
li x13, 0xef93da45 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0x1ebeebf4 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_rs1 (Test source rs1 = x10)
li x12, 0x09a88528 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x11)
li x9, 0xa1fb0930 # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 60)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x9ce807af # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0xd894ee76 # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x14)
li x13, 0x6c90ef69 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x15)
li x12, 0xf3cb01e0 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8bf59817 # initialize rd to specific value
c.zext.b x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xefa3770e # initialize rd to specific value
c.zext.b x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xf10c4891 # initialize rd to specific value
c.zext.b x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe42b860e # initialize rd to specific value
c.zext.b x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 92)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x954f7e58 # initialize rd to specific value
c.zext.b x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xf7000938 # initialize rd to specific value
c.zext.b x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6f8781b9 # initialize rd to specific value
c.zext.b x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xc4e9ec54 # initialize rd to specific value
c.zext.b x15 # perform operation
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
