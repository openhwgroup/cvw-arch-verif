///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.li.S
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
li x1, 0xbe5c027bda6c3559 # initialize rs1
c.li x1, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x8b7efeb2dd86236c # initialize rs1
c.li x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x35e4da830f172459 # initialize rs1
c.li x3, -31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa358c552edbe8f39 # initialize rs1
c.li x4, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab0ea9a42673da89 # initialize rs1
c.li x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb2644d8112cb68b7 # initialize rs1
c.li x6, -31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x56fe7b60f1da8635 # initialize rs1
c.li x7, -17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x589e6d98955563de # initialize rs1
c.li x8, 20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc04fe84fb8b72b26 # initialize rs1
c.li x9, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3fd23283e8be0966 # initialize rs1
c.li x10, -22 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xeb53ce4de8cf20ba # initialize rs1
c.li x11, -3 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf272a6010e421e0e # initialize rs1
c.li x12, -24 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xcdfea6d874a236fe # initialize rs1
c.li x13, -12 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0fac870e40557c09 # initialize rs1
c.li x14, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0228e9bf5caa79e4 # initialize rs1
c.li x15, -7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xfcfb6f06022db4a0 # initialize rs1
c.li x16, 29 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe9fd71c05589adb3 # initialize rs1
c.li x17, 12 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8efdceec255716ed # initialize rs1
c.li x18, -10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe2074ed9c8ae7d67 # initialize rs1
c.li x19, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd580feec3ae6e53a # initialize rs1
c.li x20, -14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xd93607ab34fb1dc5 # initialize rs1
c.li x21, -13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xb8dc18e28c16ecb7 # initialize rs1
c.li x22, 25 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xb5a4241fd59210de # initialize rs1
c.li x23, -24 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xb17dbd9758fa6fc1 # initialize rs1
c.li x24, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x3db05c2e5bd4e56c # initialize rs1
c.li x25, -8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x1b969800527d203e # initialize rs1
c.li x26, 26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x9884fc2279ce4e62 # initialize rs1
c.li x27, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xb82e12ff94871891 # initialize rs1
c.li x28, 6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x091241218c6920a2 # initialize rs1
c.li x29, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5a14071cae49a23b # initialize rs1
c.li x30, -14 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x9a23f66a048faa3e # initialize rs1
c.li x31, -4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 240)

# Testcase cp_imm_corners
li x13, 0x44ab52d159ad6198 # initialize rs1
c.li x13, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 248)

# Testcase cp_imm_corners
li x20, 0x4056e381f19ab81e # initialize rs1
c.li x20, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 256)

# Testcase cp_imm_corners
li x19, 0x1b3ca9259b2e1ccc # initialize rs1
c.li x19, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 264)

# Testcase cp_imm_corners
li x29, 0x029e92d483885796 # initialize rs1
c.li x29, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 272)

# Testcase cp_imm_corners
li x2, 0x5225d5961da2041e # initialize rs1
c.li x2, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 280)

# Testcase cp_imm_corners
li x25, 0xb6bfbe93f259bf0c # initialize rs1
c.li x25, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 288)

# Testcase cp_imm_corners
li x24, 0x558e4ab907b9fb71 # initialize rs1
c.li x24, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 296)

# Testcase cp_imm_corners
li x10, 0x4fdd2cedecacf0f1 # initialize rs1
c.li x10, 30 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 304)

# Testcase cp_imm_corners
li x11, 0x1cf863ad544ff727 # initialize rs1
c.li x11, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 312)

# Testcase cp_imm_corners
li x22, 0xa25fc6eca8a19d9a # initialize rs1
c.li x22, -32 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 320)

# Testcase cp_imm_corners
li x25, 0xb6acd8135b28b405 # initialize rs1
c.li x25, -31 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 328)

# Testcase cp_imm_corners
li x4, 0x1489eaabef642ed1 # initialize rs1
c.li x4, -2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 336)

# Testcase cp_imm_corners
li x16, 0x3492cb614325c7dc # initialize rs1
c.li x16, -1 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 344)

.EQU SIGSIZE,352


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
