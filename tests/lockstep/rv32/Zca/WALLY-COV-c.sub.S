///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.sub.S
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
li x9, 0x937c36bf # initialize rs2
li x11, 0x00000000 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0xbb99dc3b # initialize rs2
li x12, 0x00000001 # initialize rd,rs1
c.sub x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0xe37ca2a8 # initialize rs2
li x8, 0x00000002 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0xc9edfe9e # initialize rs2
li x8, 0x80000000 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x9, 0x2e505f91 # initialize rs2
li x13, 0x80000001 # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0xe4607400 # initialize rs2
li x8, 0x7fffffff # initialize rd,rs1
c.sub x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x8af80f2c # initialize rs2
li x9, 0x7ffffffe # initialize rd,rs1
c.sub x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0x7c5528a9 # initialize rs2
li x15, 0xffffffff # initialize rd,rs1
c.sub x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xb94d0091 # initialize rs2
li x9, 0xfffffffe # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0xca5b34e8 # initialize rs2
li x11, 0x5bbc8872 # initialize rd,rs1
c.sub x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xf206fba2 # initialize rs2
li x9, 0xaaaaaaaa # initialize rd,rs1
c.sub x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x142723e7 # initialize rs2
li x8, 0x55555555 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x00000000 # initialize rs2
li x14, 0x6663e2b5 # initialize rd,rs1
c.sub x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x00000001 # initialize rs2
li x15, 0xc543fdf5 # initialize rd,rs1
c.sub x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x14, 0x00000002 # initialize rs2
li x15, 0x669b6cad # initialize rd,rs1
c.sub x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x9, 0x80000000 # initialize rs2
li x15, 0x305b2ff3 # initialize rd,rs1
c.sub x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x10, 0x80000001 # initialize rs2
li x11, 0x501d5038 # initialize rd,rs1
c.sub x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x8, 0x7fffffff # initialize rs2
li x14, 0x52a01d23 # initialize rd,rs1
c.sub x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs2
li x8, 0x8a07fd0f # initialize rd,rs1
c.sub x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xffffffff # initialize rs2
li x13, 0xb65add60 # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs2
li x8, 0xb3deda41 # initialize rd,rs1
c.sub x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs2
li x14, 0xc800d913 # initialize rd,rs1
c.sub x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x15, 0xaaaaaaaa # initialize rs2
li x11, 0x70722979 # initialize rd,rs1
c.sub x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x14, 0x55555555 # initialize rs2
li x10, 0x8adf2c09 # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xeec5e9fc # initialize rs2
li x15, 0x4ca53162 # initialize rd,rs1
c.sub x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe05c13c7 # initialize rs2
li x15, 0x9e61ee13 # initialize rd,rs1
c.sub x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa54c8854 # initialize rs2
li x9, 0x1d2141c3 # initialize rd,rs1
c.sub x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x11350530 # initialize rs2
li x10, 0x4578a503 # initialize rd,rs1
c.sub x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0e1c4c50 # initialize rs2
li x10, 0x3b4fa2fe # initialize rd,rs1
c.sub x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd03e30b6 # initialize rs2
li x9, 0x3aee80b1 # initialize rd,rs1
c.sub x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9771ae70 # initialize rs2
li x13, 0xea2599c9 # initialize rd,rs1
c.sub x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xaf8cabce # initialize rs2
li x11, 0xbe96db25 # initialize rd,rs1
c.sub x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x67a15c24 # initialize rs2
li x8, 0x22ed7eae # initialize rd,rs1
c.sub x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xfe6e87f8 # initialize rs2
li x9, 0x07896902 # initialize rd,rs1
c.sub x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0x4c67750b # initialize rs2
li x10, 0xe3a7bca1 # initialize rd,rs1
c.sub x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xd7f38443 # initialize rs2
li x11, 0xfcddf1fe # initialize rd,rs1
c.sub x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x45b030c4 # initialize rs2
li x12, 0xa6214083 # initialize rd,rs1
c.sub x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4d9a1a7b # initialize rs2
li x13, 0xdb9fb409 # initialize rd,rs1
c.sub x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x19e5da23 # initialize rs2
li x14, 0x2e4ea7bf # initialize rd,rs1
c.sub x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xff2c6f67 # initialize rs2
li x15, 0x894dc6af # initialize rd,rs1
c.sub x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0xc9b387fa # initialize rs2
li x9, 0x6d29d614 # initialize rd,rs1
c.sub x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xea32a723 # initialize rs2
li x11, 0x99fab9a3 # initialize rd,rs1
c.sub x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xe7c94b37 # initialize rs2
li x12, 0xe002ff9d # initialize rd,rs1
c.sub x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x22871b48 # initialize rs2
li x12, 0x634f3230 # initialize rd,rs1
c.sub x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0x6f06b959 # initialize rs2
li x15, 0x0afb5213 # initialize rd,rs1
c.sub x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x9, 0x9df793f6 # initialize rs2
li x10, 0x82e87f82 # initialize rd,rs1
c.sub x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xc549f63e # initialize rs2
li x13, 0x8f6160fd # initialize rd,rs1
c.sub x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x02ce0085 # initialize rs2
li x10, 0xf62ed646 # initialize rd,rs1
c.sub x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xfa4c0bab # initialize rs2
li x13, 0xa38a409c # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x8381c0a4 # initialize rs2
li x13, 0x0ce6041f # initialize rd,rs1
c.sub x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x4cba77ca # initialize rs2
li x14, 0xd53fd6c0 # initialize rd,rs1
c.sub x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0xab1f0b94 # initialize rs2
li x13, 0x560f860f # initialize rd,rs1
c.sub x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x8bef0c4c # initialize rs2
li x11, 0x1a8ea863 # initialize rd,rs1
c.sub x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x50f66e9a # initialize rs2
li x11, 0x78112064 # initialize rd,rs1
c.sub x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0x3aaf7a10 # initialize rs2
li x13, 0x803ba8e0 # initialize rd,rs1
c.sub x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x068756e6 # initialize rs2
li x8, 0x85c9efb9 # initialize rd,rs1
c.sub x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0xa55156b9 # initialize rs2
li x8, 0xab2b7e30 # initialize rd,rs1
c.sub x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0xae70e855 # initialize rs2
li x9, 0x3e25814c # initialize rd,rs1
c.sub x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xebad5f00 # initialize rs2
li x10, 0x93072a78 # initialize rd,rs1
c.sub x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xbde72341 # initialize rs2
li x11, 0x1787e5d6 # initialize rd,rs1
c.sub x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x780b88e4 # initialize rs2
li x12, 0xa3f5914d # initialize rd,rs1
c.sub x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x182d823d # initialize rs2
li x13, 0xa45e7736 # initialize rd,rs1
c.sub x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0x98a2a2ff # initialize rs2
li x14, 0x4a5e8912 # initialize rd,rs1
c.sub x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0x2d049250 # initialize rs2
li x15, 0x207f0d1d # initialize rd,rs1
c.sub x15, x8 # perform operation
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
