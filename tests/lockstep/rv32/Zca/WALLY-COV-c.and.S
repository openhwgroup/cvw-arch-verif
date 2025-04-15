///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.and.S
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
li x11, 0x083a894e # initialize rs2
li x15, 0x00000000 # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x8b17744f # initialize rs2
li x14, 0x00000001 # initialize rd,rs1
c.and x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0xf7e155c6 # initialize rs2
li x10, 0x00000002 # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x13, 0xf2af4d04 # initialize rs2
li x11, 0x80000000 # initialize rd,rs1
c.and x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0xc7f2121e # initialize rs2
li x15, 0x80000001 # initialize rd,rs1
c.and x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0xd1921303 # initialize rs2
li x9, 0x7fffffff # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x14, 0xdd918757 # initialize rs2
li x12, 0x7ffffffe # initialize rd,rs1
c.and x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x1035e42f # initialize rs2
li x12, 0xffffffff # initialize rd,rs1
c.and x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x5e164a4d # initialize rs2
li x13, 0xfffffffe # initialize rd,rs1
c.and x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x15, 0x0c59405f # initialize rs2
li x13, 0x5bbc8872 # initialize rd,rs1
c.and x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x15, 0x718a6e3c # initialize rs2
li x11, 0xaaaaaaaa # initialize rd,rs1
c.and x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x84fd7328 # initialize rs2
li x12, 0x55555555 # initialize rd,rs1
c.and x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x13, 0x00000000 # initialize rs2
li x14, 0x53757c64 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x13, 0x00000001 # initialize rs2
li x9, 0xacf11052 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x00000002 # initialize rs2
li x11, 0xb195d527 # initialize rd,rs1
c.and x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0x80000000 # initialize rs2
li x11, 0x8ed2735f # initialize rd,rs1
c.and x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x13, 0x80000001 # initialize rs2
li x9, 0x7c0cbfa3 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x9, 0x7fffffff # initialize rs2
li x15, 0x107fbd59 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs2
li x12, 0x6882f0a1 # initialize rd,rs1
c.and x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0xffffffff # initialize rs2
li x9, 0x28032d7d # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs2
li x10, 0x9d3595ee # initialize rd,rs1
c.and x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs2
li x15, 0xce8a1659 # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs2
li x10, 0x7f08f6d4 # initialize rd,rs1
c.and x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x10, 0x55555555 # initialize rs2
li x9, 0xccc8ae22 # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd459bb84 # initialize rs2
li x11, 0xc2d2dac2 # initialize rd,rs1
c.and x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x96fc0e3d # initialize rs2
li x10, 0x1b6a9150 # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x9fdeb39f # initialize rs2
li x8, 0x5e78da9c # initialize rd,rs1
c.and x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xcd4befcd # initialize rs2
li x11, 0xd61f58a1 # initialize rd,rs1
c.and x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb6fa2c8f # initialize rs2
li x10, 0x08ffd399 # initialize rd,rs1
c.and x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5ef4caf9 # initialize rs2
li x8, 0x846a85d8 # initialize rd,rs1
c.and x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xf9af6be4 # initialize rs2
li x9, 0x6bebbba0 # initialize rd,rs1
c.and x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x3e4248d8 # initialize rs2
li x14, 0x9d4bb464 # initialize rd,rs1
c.and x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x184dd24e # initialize rs2
li x8, 0xdc3ceef8 # initialize rd,rs1
c.and x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x72736529 # initialize rs2
li x9, 0x8e5e22ab # initialize rd,rs1
c.and x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x5d684030 # initialize rs2
li x10, 0x095b1658 # initialize rd,rs1
c.and x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x2a224c9e # initialize rs2
li x11, 0x9a31c05c # initialize rd,rs1
c.and x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x2c5aac0f # initialize rs2
li x12, 0xdb487a35 # initialize rd,rs1
c.and x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x68f27f3e # initialize rs2
li x13, 0x40e956bc # initialize rd,rs1
c.and x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x5ec53adb # initialize rs2
li x14, 0xf43478e6 # initialize rd,rs1
c.and x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x48cdfb92 # initialize rs2
li x15, 0x8b4d0c15 # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x11, 0x2a6ebd95 # initialize rs2
li x15, 0x2f23bdcf # initialize rd,rs1
c.and x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xf1249c62 # initialize rs2
li x14, 0x646eaa0b # initialize rd,rs1
c.and x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x26902356 # initialize rs2
li x15, 0x12a358ea # initialize rd,rs1
c.and x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0xa431b24b # initialize rs2
li x12, 0x76b0a29f # initialize rd,rs1
c.and x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x922019cd # initialize rs2
li x10, 0xb45ec5d8 # initialize rd,rs1
c.and x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x8, 0xb2b80f13 # initialize rs2
li x14, 0x9fcc1d79 # initialize rd,rs1
c.and x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x0f1831dd # initialize rs2
li x9, 0x91af17ba # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x13, 0x5c75de26 # initialize rs2
li x14, 0x399fc96b # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x2311a8c0 # initialize rs2
li x10, 0x953fc89f # initialize rd,rs1
c.and x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xa1a9026b # initialize rs2
li x15, 0x214af89b # initialize rd,rs1
c.and x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x045b6cec # initialize rs2
li x13, 0x07722bb8 # initialize rd,rs1
c.and x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x4aa64eee # initialize rs2
li x8, 0x48ac2ff3 # initialize rd,rs1
c.and x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x5ee2470c # initialize rs2
li x9, 0x71ea8556 # initialize rd,rs1
c.and x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0xbca9dafe # initialize rs2
li x9, 0x0be0bc27 # initialize rd,rs1
c.and x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x6e99384d # initialize rs2
li x15, 0x44874154 # initialize rd,rs1
c.and x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0xfd987239 # initialize rs2
li x12, 0x14f79398 # initialize rd,rs1
c.and x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x8f34ee81 # initialize rs2
li x8, 0x0b06356a # initialize rd,rs1
c.and x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x6492ce0a # initialize rs2
li x9, 0xa228dfa5 # initialize rd,rs1
c.and x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0xd8e8b8d4 # initialize rs2
li x10, 0xa5c74c24 # initialize rd,rs1
c.and x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x9, 0x0b9e259d # initialize rs2
li x11, 0xbbe749cc # initialize rd,rs1
c.and x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xb9a335a8 # initialize rs2
li x12, 0x22c960eb # initialize rd,rs1
c.and x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0xdff71518 # initialize rs2
li x13, 0x5073d6bb # initialize rd,rs1
c.and x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x72fe48e6 # initialize rs2
li x14, 0x2eb8b668 # initialize rd,rs1
c.and x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x2659dfbc # initialize rs2
li x15, 0x98826ece # initialize rd,rs1
c.and x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 252)

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
