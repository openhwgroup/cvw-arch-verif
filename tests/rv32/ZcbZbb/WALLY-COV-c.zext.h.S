///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZcbZbb//WALLY-COV-c.zext.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.822857
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x032b7641 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0xd05bbc7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x39dd7d2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x7aa76060 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x80000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x5, 0xfeea749f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x23, 0x513b1185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7fffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x3c1539f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffe # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x5a1443ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0xfd284f05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfffffffe # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8877)
li x21, 0xe6a35ea5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x5bbc8877 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0x750c5a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0xb6cd0f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x55555555 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x409ab414)
li x21, 0x9796185b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x409ab414 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x642c3f5f)
li x13, 0xc2135f99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x9bd3c0a1 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6f36db17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x85e91a50 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa4778ec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0c22049e # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8f14aa2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x34d5f77f # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x5890fa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xf19ccc31 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x7e7efbe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0a3cf36c # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x164fe3ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8e5cd3c1 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x3d465bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x9d4bb7b6 # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf4a375af # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe3277dc8 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x17, 0xb2b81b45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x28, 0xc985aa7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x29, 0xa7b70b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x78ffa31f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xe465ff45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000001 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x4, 0x19f95815 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x24, 0x7e98e776 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x90d02676 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000002 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x1, 0x2aac1dd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x18, 0xd8974820 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x14, 0xf18d452a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00008000 # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000)
li x31, 0x79968f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x10, 0x72e4d4a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x3, 0x02fcadd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00008001 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8001)
li x5, 0xa16af7de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x11, 0x6ba40195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x1, 0xb1f33b83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00007fff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fff)
li x9, 0x7cfecbb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x4, 0x54d92297 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x27, 0x21f5e6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00007ffe # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffe)
li x18, 0xda7d7d5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x24, 0xaf18177b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x25, 0x18a0956c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000ffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffff)
li x6, 0x60a744f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x13, 0x34c9429b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x5, 0x820f42be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000fffe # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffe)
li x28, 0x40f5af18 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x4, 0xe2a0c789 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x13, 0x2207b895 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005555 # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555)
li x16, 0x5d712f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0x2ddbd126 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0xaa1b2c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000aaaa # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaa)
li x1, 0x1bb0aacb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x23, 0x6df0ad45 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x13, 0x91b9caba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00005bbc # initialize leagalized rd to a random value that should get changed
c.zext.h x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc)
li x23, 0x9b0c5eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x16, 0x2ebcbd12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x6, 0x310c693e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000dbbc # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdbbc)
li x30, 0x093191e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffff # initialize leagalized rd to a random value that should get changed
c.zext.h x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x82b6cf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x88f8fef2 # initialize leagalized rd to a random value that should get changed
c.zext.h x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x12, 0xedfb76a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xf7f8cc67 # initialize leagalized rd to a random value that should get changed
c.zext.h x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x31, 0x066f66ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x212de5e2 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x31, 0x4a5ecf2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0f85d5b2 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x23, 0x161c2754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xe26ea131 # initialize leagalized rd to a random value that should get changed
c.zext.h x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x3, 0x9df7439d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfdd8e682 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0x87b00546 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x752d55f7 # initialize leagalized rd to a random value that should get changed
c.zext.h x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x16, 0x871a4877 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x89e6ee3e # initialize leagalized rd to a random value that should get changed
c.zext.h x8 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
