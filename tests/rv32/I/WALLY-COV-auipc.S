///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-auipc.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.933739
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x045d6a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x0, 782092 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x918066d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x1, 639030 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x9047d254 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x2, 127230 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xb30049e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x3, 284978 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x4e2dd1d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x4, 628065 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xd8946afe # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x5, 265349 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x89e70bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x6, 134654 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc1abdb85 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x7, 339270 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x6bdb46b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x8, 448289 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x82611870 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x9, 740565 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x94db2613 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x10, 19756 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xa8c90d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x11, 864913 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x2a94a70c # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x12, 409078 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x008cd7aa # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x13, 1044035 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x1fa977e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x14, 976826 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd097e0fb # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x15, 424119 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x90775355 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x16, 402624 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x30a728e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x17, 587157 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x06885f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x18, 906256 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xe19fc948 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x19, 815133 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xeabb7e02 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x20, 336655 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x2f60c8dc # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x21, 974403 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x4574414d # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x22, 299615 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xf9969610 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x23, 626470 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x76e7fda1 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x24, 41659 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xcf6f643a # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x25, 979151 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x98dbc547 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x26, 311267 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x0491a812 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x27, 668929 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x4daa7fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x28, 817086 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x53d4c155 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x29, 552672 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x103dc1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x30, 411415 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x00e1fe1e # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x31, 882826 # perform operation

# Testcase cp_imm_zero
li x3, 0xf8b8fe14 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x3, 0 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
