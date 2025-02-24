///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/Zca//WALLY-COV-c.lui.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.488933
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x1)
li x1, 0x4ed1bbf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x1, 31 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xa200260b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048555 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xff8e2e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x3, 13 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x26591c24 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x4, 16 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x42a61048 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x5, 13 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x15af7595 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x6, 17 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x61171a16 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x7, 30 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xa76c6948 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x8, 1048553 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x6cf141af # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048559 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x07171db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x10, 1048567 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xeb918b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x11, 1048568 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xf78140cd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 1048562 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x2f2eb1c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x13, 3 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x50294ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x14, 1 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6bf040e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x15, 1048574 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x450dc67b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x16, 31 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcc58d292 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 1048547 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0ae72bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x18, 1048551 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfa397ed6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 1048573 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x517837e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x20, 1048554 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x8d6fe6e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 15 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x87c85e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x22, 1048569 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x6d58e5a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x23, 12 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xbe03a1e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x24, 26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x5d935b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x25, 22 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x6dd3b751 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x26, 1048568 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xab53ee4b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x27, 1048557 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x1eec2e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 1048573 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x14733181 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x29, 12 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xbd392add # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x30, 1048566 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x58321923 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x31, 1048569 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0xc18539a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x14, 0x7b4c7d62 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x14, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x19, 0x996885d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x20)
li x19, 0x4c9e1798 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x19, 1048544 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x21)
li x17, 0x77acc680 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x17, 1048545 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1f)
li x9, 0x0be676d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1e)
li x21, 0x649e9b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x21, 30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3f)
li x28, 0x1f7df973 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x28, 1048575 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3e)
li x13, 0xf2be1ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x13, 1048574 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2a)
li x9, 0x393594a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x9, 1048554 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x15)
li x31, 0x5c2e8c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x31, 21 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x16)
li x12, 0x621c2597 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.lui x12, 22 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
