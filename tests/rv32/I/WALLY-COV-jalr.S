///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/I//WALLY-COV-jalr.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:20.963506
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x4f922e34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
addi x10, x10, -1673 # add immediate to lower part of rs1
jalr x0, x10, 1673 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x5f4c12fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
addi x15, x15, -673 # add immediate to lower part of rs1
jalr x1, x15, 673 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x3339b98f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
addi x8, x8, 939 # add immediate to lower part of rs1
jalr x2, x8, -939 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x60e94e09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
addi x28, x28, 1265 # add immediate to lower part of rs1
jalr x3, x28, -1265 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x011ac0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
addi x26, x26, -19 # add immediate to lower part of rs1
jalr x4, x26, 19 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xe0d661df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
addi x20, x20, -1799 # add immediate to lower part of rs1
jalr x5, x20, 1799 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x417e051a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
addi x25, x25, 871 # add immediate to lower part of rs1
jalr x6, x25, -871 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xdcf5223d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
addi x22, x22, -1532 # add immediate to lower part of rs1
jalr x7, x22, 1532 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x7b040ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
addi x12, x12, 5 # add immediate to lower part of rs1
jalr x8, x12, -5 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x9eb5e690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
addi x24, x24, -859 # add immediate to lower part of rs1
jalr x9, x24, 859 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x4b5c3b34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
addi x31, x31, 1361 # add immediate to lower part of rs1
jalr x10, x31, -1361 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x871be7b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
addi x4, x4, -1865 # add immediate to lower part of rs1
jalr x11, x4, 1865 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe240a07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
addi x16, x16, 1264 # add immediate to lower part of rs1
jalr x12, x16, -1264 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x0c53f388 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
addi x5, x5, 1054 # add immediate to lower part of rs1
jalr x13, x5, -1054 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x98d60528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
addi x4, x4, 1161 # add immediate to lower part of rs1
jalr x14, x4, -1161 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x1c9007c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
addi x17, x17, 131 # add immediate to lower part of rs1
jalr x15, x17, -131 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x70e43c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
addi x9, x9, 1733 # add immediate to lower part of rs1
jalr x16, x9, -1733 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xe0978a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
addi x2, x2, 1230 # add immediate to lower part of rs1
jalr x17, x2, -1230 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x8420a1b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
addi x13, x13, -468 # add immediate to lower part of rs1
jalr x18, x13, 468 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x5c0aab1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
addi x28, x28, 532 # add immediate to lower part of rs1
jalr x19, x28, -532 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xc5bb921b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
addi x18, x18, -550 # add immediate to lower part of rs1
jalr x20, x18, 550 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x55156ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
addi x31, x31, 1691 # add immediate to lower part of rs1
jalr x21, x31, -1691 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xafd125c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
addi x20, x20, 1044 # add immediate to lower part of rs1
jalr x22, x20, -1044 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xcf6f2825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
addi x25, x25, -839 # add immediate to lower part of rs1
jalr x23, x25, 839 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x511505aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
addi x30, x30, 782 # add immediate to lower part of rs1
jalr x24, x30, -782 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x7a2877be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
addi x21, x21, -578 # add immediate to lower part of rs1
jalr x25, x21, 578 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x602a2fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
addi x30, x30, 1158 # add immediate to lower part of rs1
jalr x26, x30, -1158 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe9a079bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
addi x26, x26, 833 # add immediate to lower part of rs1
jalr x27, x26, -833 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x877e260f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
addi x26, x26, -1179 # add immediate to lower part of rs1
jalr x28, x26, 1179 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x6c9962f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
addi x7, x7, 150 # add immediate to lower part of rs1
jalr x29, x7, -150 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5a39f0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
addi x14, x14, -1070 # add immediate to lower part of rs1
jalr x30, x14, 1070 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xd65ee011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
addi x3, x3, -1686 # add immediate to lower part of rs1
jalr x31, x3, 1686 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x27, 0x16201eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
addi x1, x1, 867 # add immediate to lower part of rs1
jalr x27, x1, -867 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x28, 0xb94330dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
addi x2, x2, 590 # add immediate to lower part of rs1
jalr x28, x2, -590 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x7, 0x40e744eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
addi x3, x3, 1873 # add immediate to lower part of rs1
jalr x7, x3, -1873 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x16, 0x55c9c5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
addi x4, x4, 645 # add immediate to lower part of rs1
jalr x16, x4, -645 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x10, 0x5c301c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
addi x5, x5, 1701 # add immediate to lower part of rs1
jalr x10, x5, -1701 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x19, 0xe4e7984d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
addi x6, x6, -1700 # add immediate to lower part of rs1
jalr x19, x6, 1700 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x15, 0x4b4e999c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
addi x7, x7, 1249 # add immediate to lower part of rs1
jalr x15, x7, -1249 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x25, 0xefe03036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
addi x8, x8, -2035 # add immediate to lower part of rs1
jalr x25, x8, 2035 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x13, 0xe1026c4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
addi x9, x9, -434 # add immediate to lower part of rs1
jalr x13, x9, 434 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x26, 0x97ea5df3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
addi x10, x10, 1454 # add immediate to lower part of rs1
jalr x26, x10, -1454 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x5, 0x776646bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, 1f
addi x11, x11, 1 # add immediate to lower part of rs1
jalr x5, x11, -1 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x16, 0x7ec5702b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
addi x12, x12, 1414 # add immediate to lower part of rs1
jalr x16, x12, -1414 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x29, 0xd188fb1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
addi x13, x13, -1565 # add immediate to lower part of rs1
jalr x29, x13, 1565 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x12, 0x9fca39c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
addi x14, x14, -452 # add immediate to lower part of rs1
jalr x12, x14, 452 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x20, 0xa168d962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
addi x15, x15, -1570 # add immediate to lower part of rs1
jalr x20, x15, 1570 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x15, 0x5a1f54fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
addi x16, x16, -1898 # add immediate to lower part of rs1
jalr x15, x16, 1898 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x30, 0x189ad39a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
addi x17, x17, -1769 # add immediate to lower part of rs1
jalr x30, x17, 1769 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x16, 0x9e48c425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
addi x18, x18, 1742 # add immediate to lower part of rs1
jalr x16, x18, -1742 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x17, 0x4ae43ce2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
addi x19, x19, 1973 # add immediate to lower part of rs1
jalr x17, x19, -1973 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x30, 0x9d0f49b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
addi x20, x20, -1098 # add immediate to lower part of rs1
jalr x30, x20, 1098 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x31, 0xfe069165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
addi x21, x21, -1724 # add immediate to lower part of rs1
jalr x31, x21, 1724 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x11, 0x924f8919 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
addi x22, x22, -423 # add immediate to lower part of rs1
jalr x11, x22, 423 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x8, 0x6244dee3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
addi x23, x23, -205 # add immediate to lower part of rs1
jalr x8, x23, 205 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0xb6dbf431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
addi x24, x24, 239 # add immediate to lower part of rs1
jalr x11, x24, -239 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x6, 0xec2fe0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
addi x25, x25, 1051 # add immediate to lower part of rs1
jalr x6, x25, -1051 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0xf51fdd65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
addi x26, x26, -355 # add immediate to lower part of rs1
jalr x21, x26, 355 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x11, 0x5d9fba5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
addi x27, x27, 1714 # add immediate to lower part of rs1
jalr x11, x27, -1714 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0xb0a62edf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
addi x28, x28, 1717 # add immediate to lower part of rs1
jalr x17, x28, -1717 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x4, 0x22edb218 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
addi x29, x29, 1092 # add immediate to lower part of rs1
jalr x4, x29, -1092 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x18, 0x381fdd6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
addi x30, x30, -1017 # add immediate to lower part of rs1
jalr x18, x30, 1017 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x3, 0x9cbac931 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
addi x31, x31, 311 # add immediate to lower part of rs1
jalr x3, x31, -311 # perform operation
nop
1:

# Testcase cp_imm_ones_zeros bin 0_1 
la x21, 1f
addi x21, x21, -1
jalr x20, x21, 1 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 1_1 
la x21, 1f
addi x21, x21, -2
jalr x20, x21, 2 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 2_1 
la x21, 1f
addi x21, x21, -4
jalr x20, x21, 4 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 3_1 
la x21, 1f
addi x21, x21, -8
jalr x20, x21, 8 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 4_1 
la x21, 1f
addi x21, x21, -16
jalr x20, x21, 16 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 5_1 
la x21, 1f
addi x21, x21, -32
jalr x20, x21, 32 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 6_1 
la x21, 1f
addi x21, x21, -64
jalr x20, x21, 64 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 7_1 
la x21, 1f
addi x21, x21, -128
jalr x20, x21, 128 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 8_1 
la x21, 1f
addi x21, x21, -256
jalr x20, x21, 256 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 9_1 
la x21, 1f
addi x21, x21, -512
jalr x20, x21, 512 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 10_1 
la x21, 1f
addi x21, x21, -1024
jalr x20, x21, 1024 # jump to assigned address to stress immediate
1:

# Testcase cp_imm_ones_zeros bin 11_1 
la x21, 1f
addi x21, x21, -2047
jalr x20, x21, 2047 # jump to assigned address to stress immediate
1:

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
