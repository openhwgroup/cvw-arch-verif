///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zcb//WALLY-COV-c.zext.b.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.347151
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rs1_sign (Test source rs1 value = 0x275d5094dd7fe2d6)
li x1, 0x4fc657653758ea3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x275d5094dd7fe2d6 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x548b1ecec07e468d)
li x6, 0x317a4202e92f99e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xab74e1313f81b973 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x1bdb706674298eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x51a6698ca53a9459 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x203781d448b23230 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe3dd1c14a4170761 # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xbd86be6375f9ec99 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc2ecda44d309e5c0 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x50ae386977e69257 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2a917eae13b8fdcb # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe761abfa91137e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x54ea17a040cfcd88 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb0e92afdd10247cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xeb3282a9a8ee9c08 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xcc3a3b379256fd37 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xd72d8f4533fc7c6b # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf4c6719b6533c7a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2b182065c06c3941 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x15, 0x86f4f1d8fb34d595 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x3, 0x43b9cb743c1eb0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x21, 0x9ab1c7af29f51408 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x28, 0x60b4a6dc7c0713f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0xedca3a828e700a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x30, 0xffc4b145b256b907 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x11, 0x9f53e92e804fec6f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x4, 0x09beeceb36526554 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x13, 0x8670c01ab35515e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x4, 0x1898f3f10e56363c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x20, 0x5ae5385c889e402e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000080 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80)
li x8, 0x929a193604a0b083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x28, 0x584ca23af747e5a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x20, 0xe74e72ef376c7bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000081 # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x81)
li x30, 0x65e4c9f44bdd11f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x30, 0xcc9f0b0b354b6082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x15, 0x3aec6c70189a49a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x000000000000007f # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7f)
li x19, 0x1542b64701ce11eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x22, 0x3a0b5c3f2ea558f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x000000000000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x10, 0x8c7d45446269288d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000007e # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7e)
li x7, 0x23ff70380a760fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x8, 0x714350aca24de65f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x28, 0x0f0775510ef885ee # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000000000ff # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xff)
li x17, 0xcc899cf62fb78a12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x7, 0xac128b3e4fc19332 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x15, 0x1a45df06d1ab4227 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000fe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfe)
li x13, 0x1d5b0bb64f46537d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x21, 0x534e516813189fc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x29, 0x6f870a6d63aa470a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000055 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55)
li x3, 0x45894ff33ecd12c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x2, 0x327bedd3fb8fe1df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x21, 0xc22ab855621aa73a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000000000aa # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaa)
li x23, 0x24932d82993aaef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x12, 0x8323497344c5a576 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x000000000000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x2, 0x885ea6aaa57e61d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000000000005b # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5b)
li x16, 0x4e2c9479be2e1cdf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x7, 0xa1f2f2d5dbb08ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x14, 0x0600fc26bebbfaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x00000000000000db # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xdb)
li x6, 0x82cdb7854a7336d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x16, 0xdf8dd1a2326b449b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xd519121112628fd3 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x5, 0xb35992aa05d76585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x12e3c48d75f74eb5 # initialize leagalized rd to a random value that should get changed
c.zext.b x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x1, 0xa590292ee9365fab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x62bfd8d58332b42a # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x15, 0xb966a6e43542b8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x074e9391566e5fe9 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x22, 0x208d10cf4971b6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x92751886c49726d1 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x7, 0x51de91b3f3829946 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x29d546a65f789b73 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x3, 0xa37c8b8d026a3a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xb01901a5d57e1695 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x27, 0x59004e71254d4531 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x154c612c6a41e40b # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0xdf2141a7125ef67b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0xd7ce8c3b699e78bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0xdc6cfd3135e602b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0xa3bad465064f9dfe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0xde553345fd01b6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x4, 0xd0fab3ecd109cf09 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7fffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x23, 0x1a7d92d575a52a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x7ffffffffffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0x8f653776f6fd5dea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xffffffffffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x31, 0x90e137766a0e1a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfffffffffffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x6, 0x40b408b99fe856d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize leagalized rd to a random value that should get changed
c.zext.b x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xb3c5bd8da09f1129 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x24, 0x4b3bf9d6707fcb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5555555555555555 # initialize leagalized rd to a random value that should get changed
c.zext.b x8 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xe6313b21072c359f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize leagalized rd to a random value that should get changed
c.zext.b x15 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x219eacb0d4556e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000fffffffe # initialize leagalized rd to a random value that should get changed
c.zext.b x9 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x87f90768843d9893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000000 # initialize leagalized rd to a random value that should get changed
c.zext.b x11 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0xf6980e5c4401fae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize leagalized rd to a random value that should get changed
c.zext.b x10 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
