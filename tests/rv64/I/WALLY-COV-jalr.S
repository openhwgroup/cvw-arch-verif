///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/I//WALLY-COV-jalr.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.479836
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x637dc243533a11f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
addi x28, x28, -81 # add immediate to lower part of rs1
jalr x0, x28, 81 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x2976a76d1b029003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
addi x13, x13, -659 # add immediate to lower part of rs1
jalr x1, x13, 659 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x22453d39b935ebc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
addi x1, x1, 281 # add immediate to lower part of rs1
jalr x2, x1, -281 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x60bdd992d10103a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
addi x10, x10, 1132 # add immediate to lower part of rs1
jalr x3, x10, -1132 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x91b0d7d1b0853fe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
addi x16, x16, 831 # add immediate to lower part of rs1
jalr x4, x16, -831 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x28d08f51312026a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
addi x9, x9, -1936 # add immediate to lower part of rs1
jalr x5, x9, 1936 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xdbacf1dae10ea491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
addi x21, x21, 607 # add immediate to lower part of rs1
jalr x6, x21, -607 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x850c8d2a0927a6fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
addi x9, x9, 1384 # add immediate to lower part of rs1
jalr x7, x9, -1384 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x2906029404d6bf33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
addi x5, x5, -439 # add immediate to lower part of rs1
jalr x8, x5, 439 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x50bc6e04ee37c2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
addi x21, x21, 1645 # add immediate to lower part of rs1
jalr x9, x21, -1645 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x3ec5ff40cb72f9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
addi x6, x6, 170 # add immediate to lower part of rs1
jalr x10, x6, -170 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xec51ee35e35e81df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
addi x23, x23, -507 # add immediate to lower part of rs1
jalr x11, x23, 507 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x83d2dd00a2c584fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
addi x7, x7, -686 # add immediate to lower part of rs1
jalr x12, x7, 686 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x05390193d6b458e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
addi x23, x23, 571 # add immediate to lower part of rs1
jalr x13, x23, -571 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x9e0f18ef22e6806e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
addi x30, x30, -1096 # add immediate to lower part of rs1
jalr x14, x30, 1096 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x8641de5a06cfb702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
addi x7, x7, 434 # add immediate to lower part of rs1
jalr x15, x7, -434 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x3c31886037d70dea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
addi x31, x31, -1977 # add immediate to lower part of rs1
jalr x16, x31, 1977 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xcdee502cb0cc3cfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
addi x26, x26, -1549 # add immediate to lower part of rs1
jalr x17, x26, 1549 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9338819f92274be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
addi x6, x6, -2022 # add immediate to lower part of rs1
jalr x18, x6, 2022 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xc2cfb1d33dcc999d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
addi x8, x8, 814 # add immediate to lower part of rs1
jalr x19, x8, -814 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd40931009133e6b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
addi x25, x25, -1035 # add immediate to lower part of rs1
jalr x20, x25, 1035 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x90710785055af5fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
addi x28, x28, -782 # add immediate to lower part of rs1
jalr x21, x28, 782 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x6f06596b0b3b7d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
addi x10, x10, -906 # add immediate to lower part of rs1
jalr x22, x10, 906 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x30d7cad39f7f2c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
addi x19, x19, -553 # add immediate to lower part of rs1
jalr x23, x19, 553 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xd773b28635a8c7a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
addi x24, x24, 1738 # add immediate to lower part of rs1
jalr x24, x24, -1738 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x9682f9faa2dfa01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
addi x30, x30, -1495 # add immediate to lower part of rs1
jalr x25, x30, 1495 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x93c900998f150ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
addi x27, x27, -603 # add immediate to lower part of rs1
jalr x26, x27, 603 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x6f67a772a8168983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
addi x4, x4, 598 # add immediate to lower part of rs1
jalr x27, x4, -598 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xa7f55bb0b971b2ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
addi x27, x27, 1777 # add immediate to lower part of rs1
jalr x28, x27, -1777 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xe30129b3e41cba00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
addi x12, x12, -164 # add immediate to lower part of rs1
jalr x29, x12, 164 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xb2e9c25433eb6289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
addi x29, x29, 1091 # add immediate to lower part of rs1
jalr x30, x29, -1091 # perform operation
nop
1:

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x53b3b61866b0d675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
addi x12, x12, 846 # add immediate to lower part of rs1
jalr x31, x12, -846 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x1)
li x25, 0x1e21c6e12c531a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, 1f
addi x1, x1, -939 # add immediate to lower part of rs1
jalr x25, x1, 939 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x2)
li x18, 0x2bc9b65677542346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, 1f
addi x2, x2, -1598 # add immediate to lower part of rs1
jalr x18, x2, 1598 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x3)
li x25, 0x515a70ea6bab7afb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, 1f
addi x3, x3, -705 # add immediate to lower part of rs1
jalr x25, x3, 705 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x4)
li x1, 0xf3ae6b2261101964 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, 1f
addi x4, x4, -417 # add immediate to lower part of rs1
jalr x1, x4, 417 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0xa706eb6092c35be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, 1f
addi x5, x5, 439 # add immediate to lower part of rs1
jalr x9, x5, -439 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x6)
li x29, 0x93e32cc6b3a97de1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, 1f
addi x6, x6, 645 # add immediate to lower part of rs1
jalr x29, x6, -645 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x7)
li x16, 0xeec3ad07b11ddee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, 1f
addi x7, x7, 105 # add immediate to lower part of rs1
jalr x16, x7, -105 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x8)
li x4, 0x4f869c470afaed4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, 1f
addi x8, x8, -500 # add immediate to lower part of rs1
jalr x4, x8, 500 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x9)
li x4, 0x60b6c89cbc7c6f02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, 1f
addi x9, x9, 643 # add immediate to lower part of rs1
jalr x4, x9, -643 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x10)
li x18, 0x16e3be52706cbe83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, 1f
addi x10, x10, 1659 # add immediate to lower part of rs1
jalr x18, x10, -1659 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x11)
li x22, 0x1b954e3bc01b2427 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, 1f
addi x11, x11, -1119 # add immediate to lower part of rs1
jalr x22, x11, 1119 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x12)
li x25, 0xa7a334d5f6d08584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, 1f
addi x12, x12, -777 # add immediate to lower part of rs1
jalr x25, x12, 777 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x13)
li x10, 0x281fb42b6409cffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, 1f
addi x13, x13, -637 # add immediate to lower part of rs1
jalr x10, x13, 637 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x14)
li x10, 0xf5cbe62ff3acb04f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, 1f
addi x14, x14, 58 # add immediate to lower part of rs1
jalr x10, x14, -58 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x806a67813cef635f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, 1f
addi x15, x15, -1603 # add immediate to lower part of rs1
jalr x2, x15, 1603 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x16)
li x30, 0x549603065abbb5c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, 1f
addi x16, x16, 1025 # add immediate to lower part of rs1
jalr x30, x16, -1025 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x17)
li x4, 0x219936f3640a51e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, 1f
addi x17, x17, -689 # add immediate to lower part of rs1
jalr x4, x17, 689 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x18)
li x4, 0x542adcf94639004a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, 1f
addi x18, x18, 262 # add immediate to lower part of rs1
jalr x4, x18, -262 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x19)
li x18, 0xb636c292288e6ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, 1f
addi x19, x19, -154 # add immediate to lower part of rs1
jalr x18, x19, 154 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x20)
li x9, 0x72696c29695eb57f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, 1f
addi x20, x20, 1492 # add immediate to lower part of rs1
jalr x9, x20, -1492 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x21)
li x29, 0x1a1f256147d50b6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, 1f
addi x21, x21, -495 # add immediate to lower part of rs1
jalr x29, x21, 495 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x22)
li x18, 0x8bccead5bad3e8ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, 1f
addi x22, x22, -1214 # add immediate to lower part of rs1
jalr x18, x22, 1214 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0x701a1bf0aa0a162a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, 1f
addi x23, x23, -1017 # add immediate to lower part of rs1
jalr x7, x23, 1017 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x24)
li x11, 0x05786ed810cddea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, 1f
addi x24, x24, -1020 # add immediate to lower part of rs1
jalr x11, x24, 1020 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x25)
li x9, 0xff92f53517f06589 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, 1f
addi x25, x25, 794 # add immediate to lower part of rs1
jalr x9, x25, -794 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x26)
li x10, 0xd5372222b91cf4a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, 1f
addi x26, x26, -1805 # add immediate to lower part of rs1
jalr x10, x26, 1805 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x27)
li x15, 0x5e118ac03c9b91e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, 1f
addi x27, x27, 1109 # add immediate to lower part of rs1
jalr x15, x27, -1109 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x28)
li x17, 0xfa4be2adbf004f9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, 1f
addi x28, x28, 422 # add immediate to lower part of rs1
jalr x17, x28, -422 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x29)
li x26, 0x5f141ae3b9b7d50b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, 1f
addi x29, x29, -1585 # add immediate to lower part of rs1
jalr x26, x29, 1585 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x30)
li x11, 0x9cacdd086c6cac0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, 1f
addi x30, x30, 1094 # add immediate to lower part of rs1
jalr x11, x30, -1094 # perform operation
nop
1:

# Testcase cp_rs1 (Test source rs1 = x31)
li x20, 0xe9f0e60c527122df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, 1f
addi x31, x31, -1091 # add immediate to lower part of rs1
jalr x20, x31, 1091 # perform operation
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
