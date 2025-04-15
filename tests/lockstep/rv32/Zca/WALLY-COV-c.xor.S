///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zca/WALLY-COV-c.xor.S
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
li x9, 0xa1e40e43 # initialize rs2
li x10, 0x00000000 # initialize rd,rs1
c.xor x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x99ac9fae # initialize rs2
li x11, 0x00000001 # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x74870f0e # initialize rs2
li x14, 0x00000002 # initialize rd,rs1
c.xor x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0xde7a1daf # initialize rs2
li x10, 0x80000000 # initialize rd,rs1
c.xor x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 12)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x0ddcdbb0 # initialize rs2
li x12, 0x80000001 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7faa5cae # initialize rs2
li x9, 0x7fffffff # initialize rd,rs1
c.xor x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0xc9375cef # initialize rs2
li x8, 0x7ffffffe # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x40ea3898 # initialize rs2
li x10, 0xffffffff # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xa1ee173e # initialize rs2
li x11, 0xfffffffe # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0xa0a248d0 # initialize rs2
li x14, 0x5bbc8872 # initialize rd,rs1
c.xor x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 36)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0x753d607b # initialize rs2
li x13, 0xaaaaaaaa # initialize rd,rs1
c.xor x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x6b75edb6 # initialize rs2
li x9, 0x55555555 # initialize rd,rs1
c.xor x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 44)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x9, 0x00000000 # initialize rs2
li x8, 0xb2148168 # initialize rd,rs1
c.xor x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0x00000001 # initialize rs2
li x9, 0x53ef8e95 # initialize rd,rs1
c.xor x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 52)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x00000002 # initialize rs2
li x11, 0xea91b183 # initialize rd,rs1
c.xor x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x11, 0x80000000 # initialize rs2
li x13, 0x62dc5f24 # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 60)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x11, 0x80000001 # initialize rs2
li x13, 0x3bbbc5bb # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs2
li x13, 0xa28473aa # initialize rd,rs1
c.xor x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 68)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rs2
li x15, 0x5d393361 # initialize rd,rs1
c.xor x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0xffffffff # initialize rs2
li x15, 0xc3af1f5f # initialize rd,rs1
c.xor x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0xfffffffe # initialize rs2
li x15, 0x08b220fe # initialize rd,rs1
c.xor x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs2
li x9, 0xa56530c2 # initialize rd,rs1
c.xor x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x14, 0xaaaaaaaa # initialize rs2
li x13, 0x10012311 # initialize rd,rs1
c.xor x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x8, 0x55555555 # initialize rs2
li x10, 0x841bb390 # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xbe412018 # initialize rs2
li x11, 0x7d832a4b # initialize rd,rs1
c.xor x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xacc1d2a4 # initialize rs2
li x14, 0x1568a0cb # initialize rd,rs1
c.xor x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3f634ae4 # initialize rs2
li x11, 0x5d1966cc # initialize rd,rs1
c.xor x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x82d9e913 # initialize rs2
li x8, 0x2a476dba # initialize rd,rs1
c.xor x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4b66564e # initialize rs2
li x10, 0x462ade5a # initialize rd,rs1
c.xor x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x6b9090e8 # initialize rs2
li x14, 0xd70b8127 # initialize rd,rs1
c.xor x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x95f269c1 # initialize rs2
li x12, 0xed8b8117 # initialize rd,rs1
c.xor x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2aa9602a # initialize rs2
li x14, 0x3423ecc1 # initialize rd,rs1
c.xor x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x97f964f1 # initialize rs2
li x8, 0x01da8046 # initialize rd,rs1
c.xor x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0xebdb6bc6 # initialize rs2
li x9, 0x3b2dfc35 # initialize rd,rs1
c.xor x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xa44cbd05 # initialize rs2
li x10, 0x8409f64a # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xc9c4f928 # initialize rs2
li x11, 0x83e45a49 # initialize rd,rs1
c.xor x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0xc23e4d20 # initialize rs2
li x12, 0x61b8d87e # initialize rd,rs1
c.xor x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x4d91bcd7 # initialize rs2
li x13, 0x26981cca # initialize rd,rs1
c.xor x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 148)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x81df394f # initialize rs2
li x14, 0xfde221ea # initialize rd,rs1
c.xor x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xf560745a # initialize rs2
li x15, 0x092bb8ec # initialize rd,rs1
c.xor x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 156)

# Testcase cp_rs1 (Test source rs1 = x8)
li x12, 0x35021da8 # initialize rs2
li x13, 0xa8c67e8d # initialize rd,rs1
c.xor x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_rs1 (Test source rs1 = x9)
li x14, 0x3c04cbcb # initialize rs2
li x13, 0xcfd5e344 # initialize rd,rs1
c.xor x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_rs1 (Test source rs1 = x10)
li x11, 0x18965078 # initialize rs2
li x8, 0x88c36ce0 # initialize rd,rs1
c.xor x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x11)
li x13, 0x8994e092 # initialize rs2
li x15, 0x24560c57 # initialize rd,rs1
c.xor x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs1 (Test source rs1 = x12)
li x11, 0xdd3c3213 # initialize rs2
li x8, 0x81e2231d # initialize rd,rs1
c.xor x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 176)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0xc670079c # initialize rs2
li x11, 0x48f5e8b3 # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 180)

# Testcase cp_rs1 (Test source rs1 = x14)
li x15, 0x55c30be1 # initialize rs2
li x11, 0x554bca39 # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x15)
li x14, 0x59d83efb # initialize rs2
li x9, 0x60319bbf # initialize rd,rs1
c.xor x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 188)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0x13263076 # initialize rs2
li x10, 0x8eb390e8 # initialize rd,rs1
c.xor x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 192)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x48406e25 # initialize rs2
li x14, 0xe1b3cca1 # initialize rd,rs1
c.xor x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 196)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0xc701acfc # initialize rs2
li x8, 0x042d21af # initialize rd,rs1
c.xor x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x66af7082 # initialize rs2
li x12, 0x062ee755 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 204)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0x8f8a3c2b # initialize rs2
li x9, 0xe580b66c # initialize rd,rs1
c.xor x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x1d69aa90 # initialize rs2
li x8, 0x7bca8042 # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xe171ef77 # initialize rs2
li x12, 0xef99c051 # initialize rd,rs1
c.xor x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x88ced1dd # initialize rs2
li x12, 0x00ae5cbb # initialize rd,rs1
c.xor x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 220)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x8944a25b # initialize rs2
li x8, 0xc27d25b3 # initialize rd,rs1
c.xor x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0x05fd8599 # initialize rs2
li x9, 0xbc463fcd # initialize rd,rs1
c.xor x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb40a58ca # initialize rs2
li x10, 0x3f79e8d6 # initialize rd,rs1
c.xor x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0xfdcf412e # initialize rs2
li x11, 0xe3095e93 # initialize rd,rs1
c.xor x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 236)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xe675c391 # initialize rs2
li x12, 0xcf6a7f17 # initialize rd,rs1
c.xor x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6d3a2c96 # initialize rs2
li x13, 0xf172cc2d # initialize rd,rs1
c.xor x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rd (Test destination rd = x14)
li x8, 0xf4f30797 # initialize rs2
li x14, 0x7385c3b1 # initialize rd,rs1
c.xor x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rd (Test destination rd = x15)
li x14, 0x57c4a166 # initialize rs2
li x15, 0x78773e05 # initialize rd,rs1
c.xor x15, x14 # perform operation
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
