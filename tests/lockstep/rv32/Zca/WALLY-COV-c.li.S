///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.li.S
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
li x1, 0xcc8476e3 # initialize rs1
c.li x1, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x98882cd4 # initialize rs1
c.li x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xe20282b1 # initialize rs1
c.li x3, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x08a38b41 # initialize rs1
c.li x4, -9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 12)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0f172459 # initialize rs1
c.li x5, -18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2d8ad694 # initialize rs1
c.li x6, -19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6d955bfa # initialize rs1
c.li x7, -26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xdaf24f1a # initialize rs1
c.li x8, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 28)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xb2644d81 # initialize rs1
c.li x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x56fe7b60 # initialize rs1
c.li x10, -5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x23abef8d # initialize rs1
c.li x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x466b243f # initialize rs1
c.li x12, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xdf700926 # initialize rs1
c.li x13, -12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5b2d266f # initialize rs1
c.li x14, -26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 52)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xbda889bc # initialize rs1
c.li x15, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xeb53ce4d # initialize rs1
c.li x16, -3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x3a8cb846 # initialize rs1
c.li x17, -10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xe4e5f3db # initialize rs1
c.li x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x04a5a7f2 # initialize rs1
c.li x19, -16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x113a376c # initialize rs1
c.li x20, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 76)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xa09f8b91 # initialize rs1
c.li x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0228e9bf # initialize rs1
c.li x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 84)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x97b1bdaf # initialize rs1
c.li x23, -20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x6bf7209c # initialize rs1
c.li x24, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 92)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3d02a307 # initialize rs1
c.li x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x2716e8ad # initialize rs1
c.li x26, -28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0bbc8396 # initialize rs1
c.li x27, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x6f9972f2 # initialize rs1
c.li x28, -26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x14b603b1 # initialize rs1
c.li x29, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x167c3444 # initialize rs1
c.li x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x04738b8a # initialize rs1
c.li x31, -15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_imm_corners
li x13, 0xeb69b4a0 # initialize rs1
c.li x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_imm_corners
li x21, 0x44ab52d1 # initialize rs1
c.li x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_imm_corners
li x20, 0x20b50721 # initialize rs1
c.li x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 132)

# Testcase cp_imm_corners
li x31, 0x4adc87d7 # initialize rs1
c.li x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_imm_corners
li x10, 0x560b9f20 # initialize rs1
c.li x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 140)

# Testcase cp_imm_corners
li x29, 0xcd233317 # initialize rs1
c.li x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_imm_corners
li x9, 0xf9e62369 # initialize rs1
c.li x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 148)

# Testcase cp_imm_corners
li x19, 0xc1f96e9b # initialize rs1
c.li x19, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cp_imm_corners
li x7, 0x4d226b91 # initialize rs1
c.li x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_imm_corners
li x19, 0x558e4ab9 # initialize rs1
c.li x19, -32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cp_imm_corners
li x10, 0x22361def # initialize rs1
c.li x10, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_imm_corners
li x23, 0x570447f9 # initialize rs1
c.li x23, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_imm_corners
li x12, 0x5dea7472 # initialize rs1
c.li x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

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
