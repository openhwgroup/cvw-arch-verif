///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.or.S
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
li x13, 0x62cdd02f # initialize rs2
li x8, 0x00000000 # initialize rd,rs1
c.or x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0xd52a7068 # initialize rs2
li x8, 0x00000001 # initialize rd,rs1
c.or x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x8af8c8a3 # initialize rs2
li x13, 0x00000002 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x14, 0x831d3fc3 # initialize rs2
li x15, 0x80000000 # initialize rd,rs1
c.or x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0xf467a40e # initialize rs2
li x10, 0x80000001 # initialize rd,rs1
c.or x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x5a2f5b80 # initialize rs2
li x11, 0x7fffffff # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x10, 0xf99882c2 # initialize rs2
li x11, 0x7ffffffe # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xd6aba3e4 # initialize rs2
li x11, 0xffffffff # initialize rd,rs1
c.or x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0xaa1c163b # initialize rs2
li x8, 0xfffffffe # initialize rd,rs1
c.or x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x10, 0x8ac11230 # initialize rs2
li x12, 0x5bbc8872 # initialize rd,rs1
c.or x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xd9a6c402 # initialize rs2
li x10, 0xaaaaaaaa # initialize rd,rs1
c.or x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x7271775a # initialize rs2
li x11, 0x55555555 # initialize rd,rs1
c.or x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x00000000 # initialize rs2
li x8, 0xd7e8d78c # initialize rd,rs1
c.or x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x11, 0x00000001 # initialize rs2
li x13, 0xed0b67a9 # initialize rd,rs1
c.or x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x00000002 # initialize rs2
li x12, 0x430b23ae # initialize rd,rs1
c.or x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x8, 0x80000000 # initialize rs2
li x12, 0x3e2e9b41 # initialize rd,rs1
c.or x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x9, 0x80000001 # initialize rs2
li x11, 0x8287b9c0 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x15, 0x7fffffff # initialize rs2
li x9, 0x5461ef67 # initialize rd,rs1
c.or x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs2
li x12, 0x2b6b4954 # initialize rd,rs1
c.or x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xffffffff # initialize rs2
li x15, 0xd2a07b1f # initialize rd,rs1
c.or x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rs2
li x8, 0x77e28b2f # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs2
li x13, 0xb08bcc37 # initialize rd,rs1
c.or x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs2
li x13, 0xd174fe93 # initialize rd,rs1
c.or x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x13, 0x55555555 # initialize rs2
li x9, 0x29374bae # initialize rd,rs1
c.or x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x39472a45 # initialize rs2
li x11, 0xdd2947e2 # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6feee18f # initialize rs2
li x9, 0x94c420c5 # initialize rd,rs1
c.or x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5fea8105 # initialize rs2
li x15, 0x2479f43e # initialize rd,rs1
c.or x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x6413b56e # initialize rs2
li x14, 0xba11da51 # initialize rd,rs1
c.or x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x18945d75 # initialize rs2
li x10, 0x2a227033 # initialize rd,rs1
c.or x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x8c88cb17 # initialize rs2
li x12, 0xa4d5554c # initialize rd,rs1
c.or x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5a21fe4e # initialize rs2
li x12, 0x6f77014a # initialize rd,rs1
c.or x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x515c117e # initialize rs2
li x9, 0x556a0c85 # initialize rd,rs1
c.or x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x0aeb2835 # initialize rs2
li x8, 0x3f8c9e33 # initialize rd,rs1
c.or x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x71a2ecf0 # initialize rs2
li x9, 0x5f69043d # initialize rd,rs1
c.or x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x3124f0d7 # initialize rs2
li x10, 0x9ddd2bf7 # initialize rd,rs1
c.or x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xe1f9cf95 # initialize rs2
li x11, 0x8aa1cd84 # initialize rd,rs1
c.or x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x6503fe8a # initialize rs2
li x12, 0xf7ed4c0b # initialize rd,rs1
c.or x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xe14af0d9 # initialize rs2
li x13, 0x123320b3 # initialize rd,rs1
c.or x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x701ed212 # initialize rs2
li x14, 0xed442072 # initialize rd,rs1
c.or x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0x05b3ffc3 # initialize rs2
li x15, 0x3ea29faf # initialize rd,rs1
c.or x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0xa585b06d # initialize rs2
li x11, 0x8e4d6dc7 # initialize rd,rs1
c.or x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x10, 0xecd2c791 # initialize rs2
li x12, 0xf942bfce # initialize rd,rs1
c.or x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0x3cc59447 # initialize rs2
li x14, 0xeed1af8c # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0xd45e2089 # initialize rs2
li x10, 0x33e0df58 # initialize rd,rs1
c.or x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x9, 0x62d28a14 # initialize rs2
li x14, 0x74b42712 # initialize rd,rs1
c.or x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0x1f8de2ca # initialize rs2
li x10, 0xeb60facf # initialize rd,rs1
c.or x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0x88bddd0e # initialize rs2
li x13, 0xdbe20bc4 # initialize rd,rs1
c.or x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x678f1bfa # initialize rs2
li x8, 0x6bcba4ac # initialize rd,rs1
c.or x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xf295459e # initialize rs2
li x14, 0xfff91608 # initialize rd,rs1
c.or x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0xea496633 # initialize rs2
li x8, 0xfd131061 # initialize rd,rs1
c.or x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x7516f2c5 # initialize rs2
li x14, 0x6aa2f575 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xd1f69c2a # initialize rs2
li x9, 0xcfced7f7 # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xa4f7123a # initialize rs2
li x10, 0xc4e4982d # initialize rd,rs1
c.or x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x7e3ea634 # initialize rs2
li x9, 0xb7995b05 # initialize rd,rs1
c.or x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x0275114d # initialize rs2
li x8, 0x7dfe6fb5 # initialize rd,rs1
c.or x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x15f1e22a # initialize rs2
li x10, 0x8a07f46b # initialize rd,rs1
c.or x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 220)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xd0218c05 # initialize rs2
li x8, 0xd90e2ef0 # initialize rd,rs1
c.or x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x70f22e12 # initialize rs2
li x9, 0x3680dc6f # initialize rd,rs1
c.or x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0xcad857b8 # initialize rs2
li x10, 0xed90dd94 # initialize rd,rs1
c.or x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xf0fa72f1 # initialize rs2
li x11, 0x0f89321a # initialize rd,rs1
c.or x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xc0ddf21b # initialize rs2
li x12, 0x5b40a168 # initialize rd,rs1
c.or x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0x06b481c9 # initialize rs2
li x13, 0xb5de7818 # initialize rd,rs1
c.or x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x7f4183c0 # initialize rs2
li x14, 0x2a094a69 # initialize rd,rs1
c.or x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x35036558 # initialize rs2
li x15, 0xcafb6514 # initialize rd,rs1
c.or x15, x15 # perform operation
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
