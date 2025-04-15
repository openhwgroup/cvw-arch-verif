///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.lui.S
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

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0xda245f74 # initialize rs1
c.lui x1, 0xffffd # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x41244b11 # initialize rs1
c.lui x9, 0x1b # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe973945f # initialize rs1
c.lui x3, 0xd # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xefc2eba4 # initialize rs1
c.lui x4, 0xfffe9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4cf1adbc # initialize rs1
c.lui x5, 0xfffe1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x33ac48c4 # initialize rs1
c.lui x6, 0xffffb # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3e71ad54 # initialize rs1
c.lui x7, 0xe # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa5751256 # initialize rs1
c.lui x8, 0xffffa # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6883504b # initialize rs1
c.lui x9, 0xffff1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xe91906ec # initialize rs1
c.lui x10, 0xfffe6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x81eb48e8 # initialize rs1
c.lui x11, 0xffff5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd2d497ca # initialize rs1
c.lui x12, 0xffff4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x5cf515e6 # initialize rs1
c.lui x13, 0x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6536b834 # initialize rs1
c.lui x14, 0x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x25327d27 # initialize rs1
c.lui x15, 0xfffe6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xaa066881 # initialize rs1
c.lui x16, 0xfffea # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x53c9aac2 # initialize rs1
c.lui x17, 0xfffea # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x2839f082 # initialize rs1
c.lui x18, 0xffff3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xd900d7bc # initialize rs1
c.lui x19, 0xffff6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xb4409a21 # initialize rs1
c.lui x20, 0xffff3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xc09822e8 # initialize rs1
c.lui x21, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x11cfbcb4 # initialize rs1
c.lui x22, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6dcb75bc # initialize rs1
c.lui x23, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb9269ba3 # initialize rs1
c.lui x24, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x038c3be3 # initialize rs1
c.lui x25, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xf3fefb5f # initialize rs1
c.lui x26, 0x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x47adeba7 # initialize rs1
c.lui x27, 0xfffe3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x05706670 # initialize rs1
c.lui x28, 0xffff0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x293f3dc4 # initialize rs1
c.lui x29, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x6a1b428b # initialize rs1
c.lui x30, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x06a4f3cc # initialize rs1
c.lui x31, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_imm_corners
li x28, 0x26767077 # initialize rs1
c.lui x28, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 124)

# Testcase cp_imm_corners
li x30, 0x779013b6 # initialize rs1
c.lui x30, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_imm_corners
li x26, 0x3ded0aa2 # initialize rs1
c.lui x26, 0x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 132)

# Testcase cp_imm_corners
li x30, 0x85ff0d15 # initialize rs1
c.lui x30, 0x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_imm_corners
li x13, 0xa8a62a54 # initialize rs1
c.lui x13, 0x4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 140)

# Testcase cp_imm_corners
li x11, 0x2d242132 # initialize rs1
c.lui x11, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cp_imm_corners
li x14, 0xac378820 # initialize rs1
c.lui x14, 0x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 148)

# Testcase cp_imm_corners
li x24, 0xce22d6ca # initialize rs1
c.lui x24, 0x1e # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cp_imm_corners
li x19, 0x40442262 # initialize rs1
c.lui x19, 0x1f # perform operation
RVTEST_SIGUPD(x4, x0, x19, 156)

# Testcase cp_imm_corners
li x11, 0xa295e4a7 # initialize rs1
c.lui x11, 0xfffe0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_imm_corners
li x5, 0x7bfa7748 # initialize rs1
c.lui x5, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 164)

# Testcase cp_imm_corners
li x9, 0x91909575 # initialize rs1
c.lui x9, 0xffffe # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cp_imm_corners
li x9, 0x0f18b388 # initialize rs1
c.lui x9, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x9, 172)

.EQU SIGSIZE,176


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
