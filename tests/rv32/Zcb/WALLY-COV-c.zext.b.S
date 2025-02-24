///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zcb//WALLY-COV-c.zext.b.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.802361
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x33cb9935)
li x16, 0xf495c85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x33cb9935 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x624ed1c2)
li x31, 0xa7f76ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9db12e3e # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf9519c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe26dd9a5 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x361d1ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x25ae898e # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x24d9b49d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x9b48063e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x18604d15 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xc24ae7f7 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x6b3823f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x9adca4ea # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xc064c451 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5e9a1470 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0444e2e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x36da313a # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa6d3f44b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x6cb66a41 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x232ce3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x1, 0xa95d594a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x8, 0x033714c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x16, 0x00941c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x17, 0x4e59f1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x11, 0xaa7b2efd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0x0de6c9e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0xeccc38f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x31, 0x425f2907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x9, 0xf99d4001 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x16, 0x95cb8353 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x25, 0x714668c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x25, 0xb35ba3fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x2, 0x09acdcf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x8, 0xddf71838 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x8, 0x90ca2343 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x20, 0x74918931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x2, 0xc3e7f4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x13, 0x8dede389 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x18, 0x803daff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x9, 0x99ff2034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x3, 0x5aac9127 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x21, 0xbf51bf6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x3, 0xb501b815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x16, 0xd965268a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x21, 0xb6e47f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0xbe373d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x19, 0x82762411 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x9, 0xa374651f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x23, 0xb110188c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x26, 0xe56ad6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x22, 0x8af0bd47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x7, 0x9f13c413 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x21, 0x8e372dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x24, 0x561662ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x13, 0x62e71444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x13, 0x772a6b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x20, 0x226db45a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x7, 0x4c31860f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x27, 0x2c622d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f357f1e # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x11, 0x692c5ae2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdfa8f37a # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x8, 0xa79ca76c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xea4deef2 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x10, 0x01ce5606 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x4743f7ff # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x5, 0x60efe0ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x95f2566a # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x985a01f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xcd150f5e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x7, 0x8aaf6355 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3c606d8d # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x29, 0x897b2775 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xfb8e81bd # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x8c8e5b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0xd2498155 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0xa49775fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x6fb7431e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x14, 0x94dad49e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0xbe998e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0xd92f9b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x180b7431 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xac736c78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x8, 0xbe977877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x21, 0xe8c3766e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x4, 0xeee23caf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
