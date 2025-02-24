///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.or.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.990604
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0xe4d3efb997dab5f)
li x18, 0x0e4d3efb997dab5f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0e4d3efb997dab5f # initialize leagalized rd to a random value that should get changed
li x9, 0x0e4d3efb997dab5f # initialize rs2
c.or x10, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x6bcd4c45995015c2)
li x4, 0x9017a91608042904 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x3b78024b1de78d88 # initialize leagalized rd to a random value that should get changed
li x14, 0x6bcd4c45995015c2 # initialize rs2
c.or x12, x14 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x4e75ba80c5fc56de)
li x1, 0x2500f07b560065c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb0306132af5ae1e5 # initialize leagalized rd to a random value that should get changed
li x9, 0xb18a457f3a03a922 # initialize rs2
c.or x9, x9 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8d5c8b8e3bc06a41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4f574e20961c4367 # initialize leagalized rd to a random value that should get changed
li x13, 0x4e6afae5f3cd9fe8 # initialize rs2
c.or x8, x13 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x7a119e635d99f604 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x6edbcfee8743c36e # initialize leagalized rd to a random value that should get changed
li x11, 0x15a71d926be32597 # initialize rs2
c.or x9, x11 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x8787d841a2155c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xd7fcf359b315bf01 # initialize leagalized rd to a random value that should get changed
li x15, 0x56d9b658bd5d5bdc # initialize rs2
c.or x10, x15 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x70230c419afc1c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0461b388a6871a21 # initialize leagalized rd to a random value that should get changed
li x11, 0x36d2f45005932c92 # initialize rs2
c.or x11, x11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xd1bcd01a5ea42424 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x324165890a1f2354 # initialize leagalized rd to a random value that should get changed
li x10, 0xf6a1150fcba7d6a1 # initialize rs2
c.or x12, x10 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x576a009d1269df83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x45c5fb199be916d9 # initialize leagalized rd to a random value that should get changed
li x12, 0x34691938a06692e3 # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xfefae2ee8d2f3fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x51a8ae623f398d7b # initialize leagalized rd to a random value that should get changed
li x14, 0xe381908a443aedb2 # initialize rs2
c.or x14, x14 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x3488bd90637f8551 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xa850545fc60fc818 # initialize leagalized rd to a random value that should get changed
li x15, 0xed15b6f2771bc9c4 # initialize rs2
c.or x15, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x9, 0xcf99c2afed120429 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfc29301935b7b0a9 # initialize leagalized rd to a random value that should get changed
li x8, 0x185f64c5d9dc4abb # initialize rs2
c.or x9, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x6a199a1ff0953cc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xa53b5dda8f45b68b # initialize leagalized rd to a random value that should get changed
li x9, 0x2cca4355a08162ca # initialize rs2
c.or x11, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x6ee7052c1e76f1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xbc122b7966f283d6 # initialize leagalized rd to a random value that should get changed
li x10, 0x6a9896c919581b5f # initialize rs2
c.or x12, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0x115b48c673561abf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3a8404506612164c # initialize leagalized rd to a random value that should get changed
li x11, 0xa7c97aee83307c68 # initialize rs2
c.or x15, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x17, 0xd0126347a86ca48b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xbd06807b9eab663a # initialize leagalized rd to a random value that should get changed
li x12, 0xaeea9d3b0b411f66 # initialize rs2
c.or x9, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x15, 0xf71d6f10c59c29f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xcf9273dac9802027 # initialize leagalized rd to a random value that should get changed
li x13, 0xcda6ba42175d0f54 # initialize rs2
c.or x15, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x05fdf274f9a62bf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8c90ed0c78277608 # initialize leagalized rd to a random value that should get changed
li x14, 0xee50b6be39b5beb5 # initialize rs2
c.or x14, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0x771fea59c2982db6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2f1d9252584040ab # initialize leagalized rd to a random value that should get changed
li x15, 0xa04c89dbc0292779 # initialize rs2
c.or x11, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x16, 0x4fd30f5bbb4e7a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000000 # initialize rs2
c.or x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x5, 0x026b4d2daa362c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000000000001 # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x21, 0x3672b0e413ef611c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000002 # initialize rs2
c.or x13, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000000)
li x30, 0xdce14f40f5f6c37d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x8000000000000000 # initialize rs2
c.or x14, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x8000000000000001)
li x12, 0x94137f28d00e26e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000001 # initialize rs2
c.or x12, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff)
li x22, 0xbf25065163318cb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x7fffffffffffffff # initialize rs2
c.or x14, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffffffffffe)
li x5, 0x2c5e038ee21408eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x7ffffffffffffffe # initialize rs2
c.or x13, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffffffffffff)
li x6, 0xaa828102504a7a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.or x14, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffffffffffe)
li x11, 0xc8a0b3c176ec09fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0xfffffffffffffffe # initialize rs2
c.or x11, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5bbc887763ae86f7)
li x31, 0x70bde6eabb2d5f4e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x5bbc887763ae86f7 # initialize rs2
c.or x15, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaaaaaaaaaa)
li x22, 0x91a0a83a4997f9a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.or x14, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555)
li x25, 0x7bd256354eda6206 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x5555555555555555 # initialize rs2
c.or x9, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x2, 0xecddbbf9bfa88e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000ffffffff # initialize rs2
c.or x10, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x19, 0x7de7e6f26b9d6510 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x13, 0x00000000fffffffe # initialize rs2
c.or x11, x13 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000000)
li x25, 0xfe6a163abbe9b676 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000100000000 # initialize rs2
c.or x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x100000001)
li x29, 0x9879980a83c6cfbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x0000000100000001 # initialize rs2
c.or x13, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0xe5ebbac3697c9040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc489548944dd0c65 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000000000000 # initialize rs2
c.or x12, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x3d03ea56a0efcf7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x38a334a8c8ddaf6f # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000001 # initialize rs2
c.or x8, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x53ac28fb98b342b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5db88e808ebe69b8 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000002 # initialize rs2
c.or x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x47643aa3164276ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x3a919a7579017046 # initialize leagalized rd to a random value that should get changed
li x15, 0x8000000000000000 # initialize rs2
c.or x11, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x23, 0xfb4b7a198e3ae1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2b4a123c9a74fc69 # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000001 # initialize rs2
c.or x15, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0x9d1ca143af00f651 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0439ad5bad747c80 # initialize leagalized rd to a random value that should get changed
li x14, 0x7fffffffffffffff # initialize rs2
c.or x10, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0x9a346bc10a307782 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xb2f86f346ef6ed01 # initialize leagalized rd to a random value that should get changed
li x12, 0x7ffffffffffffffe # initialize rs2
c.or x15, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x31, 0xcad272d47231c1d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x083c34834d72a65f # initialize leagalized rd to a random value that should get changed
li x11, 0xffffffffffffffff # initialize rs2
c.or x15, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x12, 0x1abadcadce1086a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x18c23220e9ea43b9 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.or x12, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x31, 0xc28f814af6015cae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdde53992dc7fef82 # initialize leagalized rd to a random value that should get changed
li x14, 0x5bbc887763ae86f7 # initialize rs2
c.or x15, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xa7da32e4ff875c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xd5a120b63b3b2671 # initialize leagalized rd to a random value that should get changed
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.or x15, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0xfbcd4d3caedf64d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x6f4b8aa8b8e81a22 # initialize leagalized rd to a random value that should get changed
li x14, 0x5555555555555555 # initialize rs2
c.or x11, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0xb82e35ea82310cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe6e4f1a2d1289aa4 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000ffffffff # initialize rs2
c.or x11, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0xea336a18f85188c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7332b36af3868d41 # initialize leagalized rd to a random value that should get changed
li x10, 0x00000000fffffffe # initialize rs2
c.or x10, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x2, 0x53fa40c67d3455e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3a867b00c05d6614 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000000 # initialize rs2
c.or x10, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x6, 0xfcd00d964aeb863e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xe9b8dbe3bf0c2419 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.or x14, x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
