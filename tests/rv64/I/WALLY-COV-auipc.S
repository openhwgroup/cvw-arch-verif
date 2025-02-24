///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-auipc.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.460564
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xbbbea003f2a7c0e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x0, 686202 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x4b7cff42acb35e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x1, 838158 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x14a3e6562227324c # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x2, 609695 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x544245f37af5f93f # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x3, 621602 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x02f987635550ad75 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x4, 524753 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x4cf2f1bacc2637be # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x5, 598577 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x272e166a7a20e2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x6, 590257 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x06bed9ffb21ddc03 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x7, 652130 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xfa746f43a3e01a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x8, 417136 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xc7922ffe8c5a2db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x9, 369091 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x2f191f2f47851ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x10, 208729 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xe414212bfec75081 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x11, 1046021 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x3e215ce8db6b6744 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x12, 964158 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x44be7db4dfe07255 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x13, 302946 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xc216606637382521 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x14, 553436 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x7c7dde3791a43d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x15, 155053 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x7700f9d10603d284 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x16, 586169 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe4aedf49bb404f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x17, 68610 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xdf4a34107c1e0885 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x18, 430570 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xf44b2b9dc8815d68 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x19, 51351 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xf76ad60d0db2b43e # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x20, 736574 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x716825894b441efe # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x21, 721256 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf4758ce9c2154039 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x22, 467807 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x2cbba4732e8fd31d # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x23, 969565 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x59c4b4cebed4159d # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x24, 936610 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0xf26bad6c8decff40 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x25, 886590 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x45d318618936b999 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x26, 774817 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x61d9055c133056a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x27, 726032 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x200438454de8cbef # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x28, 793534 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x291d968ff9e03733 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x29, 11583 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xa1af9a3b5f34fc53 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x30, 758878 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x020928f326b11a5b # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x31, 703415 # perform operation

# Testcase cp_imm_zero
li x29, 0x34dfe37424d6bad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
auipc x29, 0 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
