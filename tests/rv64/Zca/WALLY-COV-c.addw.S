///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.addw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.979105
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x7ed3494a25471c2a)
li x9, 0x7ed3494a25471c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x7ed3494a25471c2a # initialize leagalized rd to a random value that should get changed
li x8, 0x7ed3494a25471c2a # initialize rs2
c.addw x9, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0xad54e0e5eca96a35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x1fb4e829a1a399f5 # initialize leagalized rd to a random value that should get changed
li x8, 0xcae40408aaa0a952 # initialize rs2
c.addw x8, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0x94fa0905985078fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x882f829bc51709aa # initialize leagalized rd to a random value that should get changed
li x9, 0xdc607c09dbadb77f # initialize rs2
c.addw x9, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0xb9ed700123d19e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xbddac27d9766c083 # initialize leagalized rd to a random value that should get changed
li x10, 0xb9236f2e7bc7fbeb # initialize rs2
c.addw x10, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x9b5ab6c394c670b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd1775c8e5959eda # initialize leagalized rd to a random value that should get changed
li x11, 0xe18301f3a4a4e71f # initialize rs2
c.addw x11, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0xa605c531e605a592 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xd0feb6bae10fd60f # initialize leagalized rd to a random value that should get changed
li x12, 0x7abb29908640398b # initialize rs2
c.addw x12, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0x406fef779ef187d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x650cb685895a2aad # initialize leagalized rd to a random value that should get changed
li x13, 0xfcb35790fe88e20f # initialize rs2
c.addw x13, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x64c4f857d2975040 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xf7dc07750d773ebb # initialize leagalized rd to a random value that should get changed
li x14, 0x554d93546dc462b8 # initialize rs2
c.addw x14, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0xa8cdcf71f0d46314 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc29d897955fa2abf # initialize leagalized rd to a random value that should get changed
li x15, 0x95b498aae199ede3 # initialize rs2
c.addw x15, x15 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x5dd9af3cdc5ed953)
li x15, 0x5dbf81be58d730c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x016ab1ea25234c4f # initialize leagalized rd to a random value that should get changed
li x9, 0x5dd9af3cdc5ed953 # initialize rs2
c.addw x15, x9 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x327f1b237c80be2b)
li x4, 0xb88e4b5c57d5a6dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xe3971037775d512a # initialize leagalized rd to a random value that should get changed
li x11, 0xcd80e4dc837f41d5 # initialize rs2
c.addw x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf98b6c054cf6c34d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0e69618f3a7ec3d9 # initialize leagalized rd to a random value that should get changed
li x10, 0x363cdb9af5eb3a78 # initialize rs2
c.addw x8, x10 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdf981ad9cab55890 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x933573be874aa4b5 # initialize leagalized rd to a random value that should get changed
li x9, 0xc8a1d379055e0d49 # initialize rs2
c.addw x9, x9 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x625eb2f142115c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xf809f20289f522e0 # initialize leagalized rd to a random value that should get changed
li x11, 0x3ac94fe9ad200123 # initialize rs2
c.addw x10, x11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x678fbeae5ffd64b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfd17b8be4c4485a1 # initialize leagalized rd to a random value that should get changed
li x14, 0x44a864ea94e4ba10 # initialize rs2
c.addw x11, x14 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb286ab697867892a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x48b9406a2163affb # initialize leagalized rd to a random value that should get changed
li x11, 0x5a0e7f4696ae9e93 # initialize rs2
c.addw x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x307489786e038e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xe9dcf4a94a65b032 # initialize leagalized rd to a random value that should get changed
li x13, 0x47543c26d58c07e8 # initialize rs2
c.addw x13, x13 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x6b9f985fead76a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8d1f601d5ac9ad25 # initialize leagalized rd to a random value that should get changed
li x13, 0xd755365c4dda4821 # initialize rs2
c.addw x14, x13 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xf611f48f4668dfaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x92658881f7141e56 # initialize leagalized rd to a random value that should get changed
li x8, 0x66f94bccdaa36aee # initialize rs2
c.addw x15, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x30, 0xd1d1ec953df652ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7998ad664076fc0b # initialize leagalized rd to a random value that should get changed
li x8, 0xf14b64efa622dbb0 # initialize rs2
c.addw x14, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0xf2d8e02618af3458 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x19fd91cdfef2616d # initialize leagalized rd to a random value that should get changed
li x9, 0xc07ebfa799b95457 # initialize rs2
c.addw x14, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x7c9a45c73c33892c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xa82dc717816e7c7a # initialize leagalized rd to a random value that should get changed
li x10, 0xb590de3d8395afd2 # initialize rs2
c.addw x9, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x16, 0xd36371125cd91266 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x80a9fe68f4fdda78 # initialize leagalized rd to a random value that should get changed
li x11, 0x28e871de4ff9c6ee # initialize rs2
c.addw x8, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0xb9b7f8e962a4a361 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x3cdf606dc9ab6b5b # initialize leagalized rd to a random value that should get changed
li x12, 0x9bbb8ed0f4017014 # initialize rs2
c.addw x15, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0x7c172d3676800158 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x8465da43b4f6aa13 # initialize leagalized rd to a random value that should get changed
li x13, 0xafc517f8a771205d # initialize rs2
c.addw x12, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0x13449303f898c620 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x2b63c3ac2fbb84d7 # initialize leagalized rd to a random value that should get changed
li x14, 0x18fef93e48c5ceed # initialize rs2
c.addw x12, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x31dbb7b85b6a6319 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfb8e8a09a7ea98f2 # initialize leagalized rd to a random value that should get changed
li x15, 0x1cb5fd9dd0749452 # initialize rs2
c.addw x8, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x12, 0xe6b8e873498ff663 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000000000000 # initialize rs2
c.addw x12, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x12, 0xbc48421d78be4b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x0000000000000001 # initialize rs2
c.addw x12, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x10, 0xbb835c5ab73413a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.addw x10, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x17, 0xbf880aef01f93975 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x10, 0x0000000080000000 # initialize rs2
c.addw x9, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x30, 0x86d9eb1830110c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000080000001 # initialize rs2
c.addw x14, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x17, 0x22884df422a8a7ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x15, 0x000000007fffffff # initialize rs2
c.addw x9, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x8, 0xb0a08b104a8f3fd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x000000007ffffffe # initialize rs2
c.addw x8, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x24, 0xafddf9169a817370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000ffffffff # initialize rs2
c.addw x8, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x2, 0x7712671a1020a3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x14, 0x00000000fffffffe # initialize rs2
c.addw x10, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x29, 0x1cf85ab368fccd49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000aaaaaaaa # initialize rs2
c.addw x13, x9 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x7, 0x46d33be407aa5cf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000055555555 # initialize rs2
c.addw x15, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x31, 0x0dd8afd94e22be48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000063ae86f7 # initialize rs2
c.addw x15, x12 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x1, 0x1fac6f2a026661ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000e3ae86f7 # initialize rs2
c.addw x9, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x20, 0xfb763f35807b709a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x08186734701722a5 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000000 # initialize rs2
c.addw x12, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x10, 0x3b6995041a63202f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3d27408763eec9d3 # initialize leagalized rd to a random value that should get changed
li x8, 0x0000000000000001 # initialize rs2
c.addw x10, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x6bd8efb5008913f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfc06c92e2ceee90a # initialize leagalized rd to a random value that should get changed
li x15, 0x0000000000000002 # initialize rs2
c.addw x15, x15 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x25, 0xb29864ca4ff72cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xfd1900ac17a82366 # initialize leagalized rd to a random value that should get changed
li x8, 0x8000000000000000 # initialize rs2
c.addw x9, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x4, 0xc8d72e32c939cf2a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x474d1f6b078502f1 # initialize leagalized rd to a random value that should get changed
li x14, 0x8000000000000001 # initialize rs2
c.addw x12, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x26, 0x5869bc5c15284279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xc76f582c2eaf19d1 # initialize leagalized rd to a random value that should get changed
li x11, 0x7fffffffffffffff # initialize rs2
c.addw x10, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x3, 0x450be31cec48207b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x41b483695db6de68 # initialize leagalized rd to a random value that should get changed
li x8, 0x7ffffffffffffffe # initialize rs2
c.addw x11, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x539a59a04b652e78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x30b73cdaabd8f3f2 # initialize leagalized rd to a random value that should get changed
li x8, 0xffffffffffffffff # initialize rs2
c.addw x15, x8 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x20, 0x5c406c055a9dc19f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xc135a773a7efe811 # initialize leagalized rd to a random value that should get changed
li x10, 0xfffffffffffffffe # initialize rs2
c.addw x12, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x24, 0xdedfeb522a9e0ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xc6f4593fe7a21397 # initialize leagalized rd to a random value that should get changed
li x12, 0x5bbc887763ae86f7 # initialize rs2
c.addw x8, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x1, 0x80120615a465fac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x9b2bd8478576f073 # initialize leagalized rd to a random value that should get changed
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
c.addw x9, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0xd93480008300a854 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf292c29e0f437fc7 # initialize leagalized rd to a random value that should get changed
li x10, 0x5555555555555555 # initialize rs2
c.addw x13, x10 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x1d3d11da9bc82279 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb59c053a8281feaf # initialize leagalized rd to a random value that should get changed
li x11, 0x00000000ffffffff # initialize rs2
c.addw x8, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0xef4a30fe7fe0e74c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x71f68ca64c778a00 # initialize leagalized rd to a random value that should get changed
li x9, 0x00000000fffffffe # initialize rs2
c.addw x15, x9 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x27, 0x01c8a1ce500bdcbc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd5455f59f53fc743 # initialize leagalized rd to a random value that should get changed
li x12, 0x0000000100000000 # initialize rs2
c.addw x11, x12 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0xf01164740b92a544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x9a44136be62cf067 # initialize leagalized rd to a random value that should get changed
li x9, 0x0000000100000001 # initialize rs2
c.addw x15, x9 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
