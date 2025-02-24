///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaF//WALLY-COV-fli.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.866342
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cmp_gpr_hazard raw test

# Testcase cmp_gpr_hazard raw test

# Testcase cmp_gpr_hazard waw test

# Testcase cmp_gpr_hazard waw test

# Testcase cmp_gpr_hazard war test

# Testcase cmp_gpr_hazard war test

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xbb474f141e984325 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x7eb9fe59cbc72ee3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xee22f987e0870338 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x0aa2a4d5628f3028 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x17f05743f532c73a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xf015d99c53d91c91 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x1c0a2e19bf05d4fa # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x41eef4a8bbb501a7 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x65c540a6d586e368 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xf03dedb74f8ff700 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x65b32de31060b931 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x79acf6d7c03e47e9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x4cd4682982a2164c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xa0e0118e44acb578 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x16e0e31e7d175084 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x3214dfc4b230113b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x16)
li x16, 0xb6d88146c1167012 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xb646f8b498448ed0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x0c3c3e2224e7fd33 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xed0ffd13df22f516 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x2ee2a0022e1270fc # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x29ec9a063892bd40 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xc6f672b87a415b78 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x06c54ee35bd5f05b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xf6d950053d8caeae # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x3849d1131f5f5540 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x6e281e7f96b09ae3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x53c660b28c08a86c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x7f077a15749cac6d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x0aa5a3eef29f43d6 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe8993423c58eb82c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x3c39146494f5300f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f0)
li x10, 0xf892df1c082ccad9 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f1)
li x17, 0xde16cc230fa33d4a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f2)
li x11, 0x9b714c91ac3c0633 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f3)
li x11, 0xe0c9eb65c09dd899 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f4)
li x7, 0x8c167f694beea51b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f5)
li x31, 0x5444185df1fa0db8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f6)
li x8, 0x0a1e7d77ea807609 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f7)
li x27, 0x42e45844b3de5694 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f8)
li x14, 0xa962e6d6f9f029ea # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f9)
li x7, 0x3b19fd27382c34dd # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f10)
li x18, 0x050a6fe78896c943 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f11)
li x20, 0x8f1b0b39fa53fb43 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f12)
li x15, 0xd9f08c54f08f7332 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f13)
li x17, 0xe2b076de14ee6c76 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f14)
li x17, 0x0a1f7828e1aede07 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f15)
li x20, 0xa2906658e8f6520e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f16)
li x23, 0x9760302ac71e621c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f17)
li x16, 0x7f6ca0c78370784f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f18)
li x20, 0xd711636083b71a2d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f19)
li x14, 0x33d61713c8018ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f20)
li x25, 0xcaccca4e5e4f8287 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f21)
li x7, 0x11398e5959d9076c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f22)
li x7, 0x012220fad17b8480 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f23)
li x5, 0x379018f271a2f817 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0x2f04f529c8f18992 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f25)
li x18, 0xa90fd7c41d265e68 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f26)
li x31, 0x1bdb971ea1215fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f27)
li x13, 0x89f1d6e3d19904e2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f28)
li x18, 0x77452f30e2066bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f29)
li x9, 0xeec84348de9da094 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0xce7ce0e22b086c67 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f31)
li x18, 0x68e321bebaa7480b # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
