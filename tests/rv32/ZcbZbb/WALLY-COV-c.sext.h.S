///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZcbZbb//WALLY-COV-c.sext.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.822010
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0xfabe8d19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x14, 0x0876588a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0xd3c9791a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x0b00ba79 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x2ebc4ebe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0xf27f1794 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x4f773845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x244279a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0xbde062e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x22, 0x8317b6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xf67c12e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0x62d18c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x672b9774)
li x26, 0x2b4f822a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x672b9774 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x54252fdd)
li x30, 0x0646b6ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xabdad023 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x490a3561 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xf62b6632 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x99140c7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaad79018 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x76222342 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd007a8b4 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x21439a22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55e71522 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x1c350beb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7d82d867 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xec34b11c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xc499ce09 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x0b13e32e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf8d51e3a # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x0e1d71b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x092ca3f7 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x14, 0x60ccae20 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x4, 0x61ee66f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x26, 0x9a171af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x20, 0x2311c375 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x6, 0x4735b843 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x15, 0x4087d28b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x16, 0xc2bb78e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x30, 0x777b3b55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x23, 0x0366fc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x17, 0x73ee4831 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x2, 0x77b5685e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x6, 0x83ae8b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x1, 0xbdf1f10a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x29, 0xa53bf8cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x14, 0x6cb71d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x8, 0x7f0ad460 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x6, 0x49de9e87 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x19, 0x0f1917c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x21, 0x4a029a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x23, 0xe8aa26be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x29, 0x7101f56c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x31, 0x400b9194 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x30, 0x01c93a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x24, 0x9225cd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x26, 0x8a673dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x15, 0xb34feb31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x21, 0xca110444 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x2, 0xf12f2d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x15, 0xa728f133 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x6, 0xd99d393a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x26, 0xdc9dd1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x3, 0x94c7a6c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x23, 0x957aa2a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x9, 0x38d541cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x13, 0x45aa86d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x21, 0x92e15093 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x20, 0x00ba0a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x5, 0x7c3d00a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x26, 0xb96686bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x21, 0xfee75d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2fac0486 # initialize leagalized rd to a random value that should get changed
c.sext.h x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x8, 0xd3003af8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xe5f44350 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x2, 0x837ce8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xe34e5114 # initialize leagalized rd to a random value that should get changed
c.sext.h x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x87d8ad8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x42b4b19c # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x8, 0xa94493b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x637c02c3 # initialize leagalized rd to a random value that should get changed
c.sext.h x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x27, 0xd971cc06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xec476587 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x22, 0x3f4bb57d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1373159f # initialize leagalized rd to a random value that should get changed
c.sext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x11, 0x7d06ad28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7eec5058 # initialize leagalized rd to a random value that should get changed
c.sext.h x11 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
