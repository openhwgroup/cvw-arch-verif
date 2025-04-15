///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.lui.S
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
li x1, 0x4c272e03cf54494b # initialize rs1
c.lui x1, 0xfffec # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x41244b11971c8395 # initialize rs1
c.lui x9, 0xfffe6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa2e19ff3d7858f41 # initialize rs1
c.lui x3, 0x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa6a428637f5f6e99 # initialize rs1
c.lui x4, 0xb # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf77b48ea7f9a11dc # initialize rs1
c.lui x5, 0xffffd # perform operation
RVTEST_SIGUPD(x6, x0, x5, 32)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe0ad7d0e9f6c9087 # initialize rs1
c.lui x6, 0xffff5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa5751256d40a4e2f # initialize rs1
c.lui x7, 0xffffa # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x91a9022afdee21bb # initialize rs1
c.lui x8, 0xffffd # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x4fb4a07781eb48e8 # initialize rs1
c.lui x9, 0x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8d92ffab944286b6 # initialize rs1
c.lui x10, 0xc # perform operation
RVTEST_SIGUPD(x4, x0, x10, 72)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x9dab09202221be79 # initialize rs1
c.lui x11, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd8883e2e0676c46d # initialize rs1
c.lui x12, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x48cbcda664863495 # initialize rs1
c.lui x13, 0x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xbe660b15891f3984 # initialize rs1
c.lui x14, 0xfffe3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x31ac5c257cfa7fd9 # initialize rs1
c.lui x15, 0x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xf0ca60e4cb37174e # initialize rs1
c.lui x16, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcb19bd8f7e6d64ea # initialize rs1
c.lui x17, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x98a369c6e80b5e44 # initialize rs1
c.lui x18, 0xfffed # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x0f43a619537d7950 # initialize rs1
c.lui x19, 0xfffe7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x9f9a2d95a7d6279f # initialize rs1
c.lui x20, 0x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x4d67a858038c3be3 # initialize rs1
c.lui x21, 0xffff4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf3fefb5fd70a9102 # initialize rs1
c.lui x22, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x7edbf783db0a6219 # initialize rs1
c.lui x23, 0xffff5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xe65dfda4f81e4f8a # initialize rs1
c.lui x24, 0x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x883d228e063a3e0d # initialize rs1
c.lui x25, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x4e3280389ad9f02e # initialize rs1
c.lui x26, 0xfffef # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0ae604e80340de10 # initialize rs1
c.lui x27, 0xfffe4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x0189328199e18c13 # initialize rs1
c.lui x28, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x2147c4b450cd6a26 # initialize rs1
c.lui x29, 0xffff9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 224)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa0f4ec81f8bd72f7 # initialize rs1
c.lui x30, 0x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x207a1e75de32754f # initialize rs1
c.lui x31, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cp_imm_corners
li x28, 0x23962b2d431f5fc6 # initialize rs1
c.lui x28, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_imm_corners
li x25, 0x311eb5f220484f23 # initialize rs1
c.lui x25, 0x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_imm_corners
li x23, 0x56c56d2dd988550d # initialize rs1
c.lui x23, 0x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_imm_corners
li x18, 0x5fd50299a8a62a54 # initialize rs1
c.lui x18, 0x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_imm_corners
li x11, 0x172455299ad33c17 # initialize rs1
c.lui x11, 0x4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cp_imm_corners
li x10, 0xf36691787e503b32 # initialize rs1
c.lui x10, 0x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_imm_corners
li x28, 0x6bfe629bce22d6ca # initialize rs1
c.lui x28, 0x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 296)

# Testcase cp_imm_corners
li x20, 0x40442262f6709ac9 # initialize rs1
c.lui x20, 0x1e # perform operation
RVTEST_SIGUPD(x4, x0, x20, 304)

# Testcase cp_imm_corners
li x11, 0x90eda6488da1c394 # initialize rs1
c.lui x11, 0x1f # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_imm_corners
li x14, 0x8a990b110b8da179 # initialize rs1
c.lui x14, 0xfffe0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cp_imm_corners
li x8, 0xd402a3c7c206176b # initialize rs1
c.lui x8, 0xfffe1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cp_imm_corners
li x27, 0x5a7da0a340c2d168 # initialize rs1
c.lui x27, 0xffffe # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cp_imm_corners
li x9, 0xe452c59a69af4751 # initialize rs1
c.lui x9, 0xfffff # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

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
