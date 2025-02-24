///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.addi16sp.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.975144
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_imm_zero
li x30, 0x77fe37586db5c23b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x13, 0xa23aa3d01ff9d4f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -512 # perform operation

# Testcase cp_imm_mul
li x30, 0x96e30ceeb9785436 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -496 # perform operation

# Testcase cp_imm_mul
li x31, 0x1462365b45066f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -480 # perform operation

# Testcase cp_imm_mul
li x15, 0x1cf4b41f082ccd01 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -464 # perform operation

# Testcase cp_imm_mul
li x23, 0xb1ad46983284f406 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -448 # perform operation

# Testcase cp_imm_mul
li x18, 0xc3290c7d3b8ed754 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -432 # perform operation

# Testcase cp_imm_mul
li x10, 0x64d1ea6094d6b13a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -416 # perform operation

# Testcase cp_imm_mul
li x4, 0x1967552a70c999b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -400 # perform operation

# Testcase cp_imm_mul
li x4, 0x13e74becef7648e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -384 # perform operation

# Testcase cp_imm_mul
li x24, 0x3159711c3759024d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -368 # perform operation

# Testcase cp_imm_mul
li x23, 0x0469c4ba1cae9230 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -352 # perform operation

# Testcase cp_imm_mul
li x24, 0xe04f52d6ffaec8f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -336 # perform operation

# Testcase cp_imm_mul
li x4, 0x997940996755b39a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -320 # perform operation

# Testcase cp_imm_mul
li x18, 0xeee9275c4de13941 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -304 # perform operation

# Testcase cp_imm_mul
li x29, 0xee74d83b755552fd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -288 # perform operation

# Testcase cp_imm_mul
li x20, 0x50fe7aa29e2ec88e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -272 # perform operation

# Testcase cp_imm_mul
li x17, 0xd78de4e966f767e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -256 # perform operation

# Testcase cp_imm_mul
li x16, 0x7448070093c36938 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -240 # perform operation

# Testcase cp_imm_mul
li x30, 0xb73ce9381698fa8f # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -224 # perform operation

# Testcase cp_imm_mul
li x11, 0xb1f1918581f0d8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -208 # perform operation

# Testcase cp_imm_mul
li x31, 0x1964ba173acf179b # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -192 # perform operation

# Testcase cp_imm_mul
li x18, 0x749b4396fbe530b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -176 # perform operation

# Testcase cp_imm_mul
li x17, 0xa115eabbe46bc4c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -160 # perform operation

# Testcase cp_imm_mul
li x9, 0x8cb9f8624ab51fee # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -144 # perform operation

# Testcase cp_imm_mul
li x4, 0x79c3285f3fd10d8d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -128 # perform operation

# Testcase cp_imm_mul
li x8, 0xbf4963d14d843496 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -112 # perform operation

# Testcase cp_imm_mul
li x29, 0x2b1fe898f81f24ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -96 # perform operation

# Testcase cp_imm_mul
li x26, 0xebed13db23012c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -80 # perform operation

# Testcase cp_imm_mul
li x12, 0x18bbc0baa01d3231 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -64 # perform operation

# Testcase cp_imm_mul
li x30, 0xa8611c0ea3a3f045 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -48 # perform operation

# Testcase cp_imm_mul
li x8, 0xecaf276d6cf92e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -32 # perform operation

# Testcase cp_imm_mul
li x11, 0x82d7c56bf8ec290a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, -16 # perform operation

# Testcase cp_imm_mul
li x31, 0x8dac0131897d0bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x27, 0xf61c7b1ec441a677 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 16 # perform operation

# Testcase cp_imm_mul
li x23, 0xfb4d587b3245156d # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 32 # perform operation

# Testcase cp_imm_mul
li x6, 0x23ecd44cca1de024 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 48 # perform operation

# Testcase cp_imm_mul
li x24, 0x535201260fff6d64 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 64 # perform operation

# Testcase cp_imm_mul
li x18, 0x89131b45ca961f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 80 # perform operation

# Testcase cp_imm_mul
li x1, 0xbf0e7bf546db6027 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 96 # perform operation

# Testcase cp_imm_mul
li x16, 0x57d5098bb95f3f7c # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 112 # perform operation

# Testcase cp_imm_mul
li x8, 0x52f9292df7cd6579 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 128 # perform operation

# Testcase cp_imm_mul
li x18, 0x39bbd80a2c38a8f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 144 # perform operation

# Testcase cp_imm_mul
li x4, 0xe646d5f227df36dd # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 160 # perform operation

# Testcase cp_imm_mul
li x18, 0xfcc0a1999f80198a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 176 # perform operation

# Testcase cp_imm_mul
li x17, 0xaff101806c72eda6 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 192 # perform operation

# Testcase cp_imm_mul
li x5, 0x4865fd947cd5dd38 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 208 # perform operation

# Testcase cp_imm_mul
li x15, 0x1e1db8d92c0847ba # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 224 # perform operation

# Testcase cp_imm_mul
li x16, 0xf220b4b080935720 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 240 # perform operation

# Testcase cp_imm_mul
li x22, 0x62cdf4773448b7ef # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 256 # perform operation

# Testcase cp_imm_mul
li x20, 0x098e4e615446aa03 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 272 # perform operation

# Testcase cp_imm_mul
li x17, 0xdab9005012271992 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 288 # perform operation

# Testcase cp_imm_mul
li x20, 0xf71de85fb4de07a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 304 # perform operation

# Testcase cp_imm_mul
li x7, 0x8dbed394cecc39da # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 320 # perform operation

# Testcase cp_imm_mul
li x28, 0xefc27d47a0235343 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 336 # perform operation

# Testcase cp_imm_mul
li x6, 0xf55cc206f2bc1bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 352 # perform operation

# Testcase cp_imm_mul
li x2, 0x451776ed5c80bec9 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 368 # perform operation

# Testcase cp_imm_mul
li x30, 0x442cd3a3871488a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 384 # perform operation

# Testcase cp_imm_mul
li x31, 0xef00da66ae14a56a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 400 # perform operation

# Testcase cp_imm_mul
li x20, 0xd4c20eb4f9a3944e # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 416 # perform operation

# Testcase cp_imm_mul
li x2, 0x65b15de7ebb99ea0 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 432 # perform operation

# Testcase cp_imm_mul
li x31, 0x757754529f4dcb3a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 448 # perform operation

# Testcase cp_imm_mul
li x8, 0xa5c9cb7b3515333a # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 464 # perform operation

# Testcase cp_imm_mul
li x17, 0xc06a060c465b0411 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 480 # perform operation

# Testcase cp_imm_mul
li x14, 0x6285d71f709ad791 # initialize rd to a random value that should get changed; helps covering rd_toggle
c.addi16sp sp, 496 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
