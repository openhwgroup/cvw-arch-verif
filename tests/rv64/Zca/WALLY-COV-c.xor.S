///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.xor.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.998923
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x8)
li x8, 0xb823c4a093d62eeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8590f33046694a29 # initialize leagalized rd to a random value that should get changed
li x11, 0x604a303d5e40e67a # initialize rs2
c.xor x8, x11 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe0da25d8d9c33a50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa7b446fd94bbbdda # initialize leagalized rd to a random value that should get changed
li x10, 0x9419515f9c40aac7 # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xb27e90555b61830f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x57dbdd39c4433066 # initialize leagalized rd to a random value that should get changed
li x9, 0x5d65748697731143 # initialize rs2
c.xor x10, x9 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd8c19a517ce0b7ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1f955436180a347f # initialize leagalized rd to a random value that should get changed
li x11, 0xa7ec028942b3218f # initialize rs2
c.xor x11, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x960b80af0ac3383e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xa84c7c461de5ef2d # initialize leagalized rd to a random value that should get changed
li x15, 0x4db11947d86aac53 # initialize rs2
c.xor x12, x15 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x00e736d8404c91b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x05e9646498b245c8 # initialize leagalized rd to a random value that should get changed
li x10, 0xbe0cd4bee278b16f # initialize rs2
c.xor x13, x10 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x743e386f67b3e692 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x08317998d49c15d8 # initialize leagalized rd to a random value that should get changed
li x14, 0x8186a85631cfcdef # initialize rs2
c.xor x14, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xd937dcdc89329e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x126cc9ecc0d42da4 # initialize leagalized rd to a random value that should get changed
li x14, 0x2f84e80dfee31d49 # initialize rs2
c.xor x15, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x35846653656c5a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5eb49706a7f7e7a5 # initialize leagalized rd to a random value that should get changed
li x8, 0xc3b93be11fdb95b4 # initialize rs2
c.xor x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0xbd0a4ece91ce0d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x86adeb7b10a7bece # initialize leagalized rd to a random value that should get changed
li x9, 0x2288b40acd451308 # initialize rs2
c.xor x11, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x5527fda4b11bc57a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa5fbb3330f599c04 # initialize leagalized rd to a random value that should get changed
li x10, 0x74da81502532fafe # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x03a8d80fe021d4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xaf23b61f317cea34 # initialize leagalized rd to a random value that should get changed
li x11, 0x90fe922daf36cd7e # initialize rs2
c.xor x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0x726e5946c34a1a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xcfd4afe550370a85 # initialize leagalized rd to a random value that should get changed
li x12, 0x8fe0658512b20006 # initialize rs2
c.xor x8, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x2, 0xd837682465476d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6773ebf1aed75c5f # initialize leagalized rd to a random value that should get changed
li x13, 0x015c58fef8f52423 # initialize rs2
c.xor x10, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x19, 0x8f9d62704ba4d93e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x37803a2077e6eccb # initialize leagalized rd to a random value that should get changed
li x14, 0x337b2d361ec4524d # initialize rs2
c.xor x11, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x3b2bbbd553cef009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5b9398fe6a575a90 # initialize leagalized rd to a random value that should get changed
li x15, 0xaf71029f89270438 # initialize rs2
c.xor x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x9, 0x89e3cbc1cd3d2913 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000000 # initialize rs2
c.xor x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x148affcc41c45c74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000000000001 # initialize rs2
c.xor x15, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x29, 0x809eefd7a84ae82b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.xor x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x21, 0x844b4510925387a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x8000000000000000 # initialize rs2
c.xor x13, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x9, 0xcadb2afe1ee1af06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x8000000000000001 # initialize rs2
c.xor x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x21, 0x7b8cc03bbce9fe59 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffffffffffff # initialize rs2
c.xor x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x26, 0xe585b0c5378dbcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x7ffffffffffffffe # initialize rs2
c.xor x10, x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x22, 0xacae4dad5df4be74 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.xor x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x29, 0xa641cf50b08234f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0xfffffffffffffffe # initialize rs2
c.xor x13, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x12, 0x5494983d991ac67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x5bbc887763ae86f7 # initialize rs2
c.xor x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x29, 0x6a347d2c627e4b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.xor x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x28, 0x89c73cfe8a7e4bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x5555555555555555 # initialize rs2
c.xor x12, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x7, 0x22708bcbeb839d69 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000ffffffff # initialize rs2
c.xor x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x1, 0xad3130477d84c34c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x00000000fffffffe # initialize rs2
c.xor x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x9, 0x155b967ed028718b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000100000000 # initialize rs2
c.xor x9, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x18, 0xe82415cf660a1b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000100000001 # initialize rs2
c.xor x10, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0x08a740de7105278c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x66c753a01240cdb7 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000000 # initialize rs2
c.xor x9, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x16, 0xf468ab44470b1978 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8a43c34be2530b21 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000001 # initialize rs2
c.xor x8, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x29e0285dde879448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x05b6456a341ae50a # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000002 # initialize rs2
c.xor x10, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0xd32061592d6c2dd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x06910f3506852fe4 # initialize leagalized rd to a random value that should get changed
li x9, 0x8000000000000000 # initialize rs2
c.xor x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x27, 0x39fc5f31b77b8981 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x611bbc58c392197a # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000001 # initialize rs2
c.xor x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x30, 0x6324d97207ce04ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x6bbf110182862ed2 # initialize leagalized rd to a random value that should get changed
li x9, 0x7fffffffffffffff # initialize rs2
c.xor x14, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x0de0257cbdd40002 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x78a57ad6c4a0f342 # initialize leagalized rd to a random value that should get changed
li x9, 0x7ffffffffffffffe # initialize rs2
c.xor x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x3a9f70d5c22c0383 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8845fe942d11e022 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.xor x8, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x22, 0x91fcfa4a2faa5470 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x81dab9730a5818bc # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.xor x14, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x6, 0x5796581dac35a0c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x440d5ff20206b2d9 # initialize leagalized rd to a random value that should get changed
li x13, 0x5bbc887763ae86f7 # initialize rs2
c.xor x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x9e4a08cbcc3efe05 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4cf99aa076bd1933 # initialize leagalized rd to a random value that should get changed
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.xor x8, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xc6adf8b2805992da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8bf1d36904e15c4a # initialize leagalized rd to a random value that should get changed
li x15, 0x5555555555555555 # initialize rs2
c.xor x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0x537eb649a2881a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x543685d3264833d3 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000ffffffff # initialize rs2
c.xor x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x634452ec999cc5be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x545d6ac97e2986b3 # initialize leagalized rd to a random value that should get changed
li x12, 0x00000000fffffffe # initialize rs2
c.xor x13, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0xa458623a446960c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0f01e5dea5467e3f # initialize leagalized rd to a random value that should get changed
li x13, 0x0000000100000000 # initialize rs2
c.xor x14, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x23, 0xe813e105eeb1c1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9bdfe2c1260b74e1 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.xor x15, x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
