///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaZfh//WALLY-COV-fli.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:24.063906
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
li x0, 0xba4e31e6d87abaff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x836f025ebbc80e49 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x7f6bc994fd1f8d6e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x1cf8c1ee89bbe3ab # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xcb35f9d6fea090e1 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x3c55be287cb977e5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x6376ab7c1e523b80 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x01bb73fcc979c07c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xfc599f68669edb94 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x206e47934cbe9e07 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xbae0589c945f241f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x824a219162652286 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x01c39ab2d7a0f91d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xfa2b2ececd4a3513 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xbfbfe9eaa7123b8b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2ef2711cddbf0394 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x5284b89f0da69d8c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x1d8d76bbdd9bb661 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x05c0532f5b5e80ac # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xb8b6c39d8d469ef2 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x82c7c62ef130de4e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xa48672eab31a6962 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xec1074dcd90d8fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x4c8cd257b249df06 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xabe871a06c990998 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xb02538b924852442 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xe4cce9c506a5b39e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xfb79e6dbd72c6565 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xcf9b955351a6d881 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x0062d69fa04b1f88 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x0d17fc7cfab3e6ce # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xbf912b74b7881c09 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f0)
li x18, 0xe85b76473165ce5d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f1)
li x3, 0x4aa8c4e05bac6c0e # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f2)
li x12, 0x87df487ffe6c07e0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f3)
li x12, 0x7f7e1380c73204a4 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f4)
li x6, 0xb2bf647b29029d61 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0x32821911fa445d87 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f6)
li x16, 0x1981e8f5a41f048f # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0x2a65049ba81291c8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f8)
li x24, 0x5a119b65513a2cc8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f9)
li x1, 0x882cde2cd1239913 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f10)
li x8, 0xbfe60e664fd86116 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f11)
li x6, 0x725931f45a25415c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f12)
li x6, 0x030ca2c3b23f9a7d # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f13)
li x26, 0x8de18e04b67756f8 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f14)
li x7, 0x2294dda0cf15894c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f15)
li x7, 0x6962d0ef66928eff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f16)
li x1, 0xd10bdc12939f8a5c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f17)
li x17, 0x474682cae0c8e4f0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f18)
li x23, 0xef081005d6c7a607 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f19)
li x14, 0xcd936f2fda7b083a # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f20)
li x17, 0x2daa3b3e12505b1c # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f21)
li x26, 0xdfa7b8f8b69d33c0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f22)
li x16, 0xfc5e4f81805b4e26 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f23)
li x31, 0x4b31bfe2bb11cc68 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f24)
li x9, 0xfa7178173b4aca03 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f25)
li x22, 0xbb0ba007a324934b # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f26)
li x23, 0xca62245a786cc385 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f27)
li x23, 0xfaf5ab07331a28b0 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0xcd3f8dd61fc0a8ff # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f29)
li x6, 0xb51577e76517c408 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f30)
li x14, 0xcaf5078a12695d73 # initialize rd to a random value that should get changed; helps covering rd_toggle

# Testcase cp_fs1 (Test source fs1 = f31)
li x6, 0x5e49dd9612f0be8d # initialize rd to a random value that should get changed; helps covering rd_toggle

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
