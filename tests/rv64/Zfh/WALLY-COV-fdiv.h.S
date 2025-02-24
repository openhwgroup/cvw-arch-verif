///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fdiv.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.049599
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase cmp_gpr_hazard raw test
fdiv.h f5, f20, f8 # perform first operation
fdiv.h f7, f5, f26 # perform second operation

# Testcase cmp_gpr_hazard raw test
fdiv.h f28, f7, f20 # perform first operation
fdiv.h f1, f25, f28 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.h f15, f14, f12 # perform first operation
fdiv.h f15, f25, f16 # perform second operation

# Testcase cmp_gpr_hazard waw test
fdiv.h f4, f12, f28 # perform first operation
fdiv.h f4, f1, f24 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.h f1, f30, f14 # perform first operation
fdiv.h f30, f26, f15 # perform second operation

# Testcase cmp_gpr_hazard war test
fdiv.h f10, f8, f31 # perform first operation
fdiv.h f31, f27, f31 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x8ed764a1caf098cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf54595347f563887 # load x3 with value 0xf54595347f563887
sw x3, 0(x2) # store 0xf54595347f563887 in memory
flh f0, 0(x2) # load 0xf54595347f563887 from memory into f0
li x3, 0xe38278d2431d0ef # load x3 with value 0xe38278d2431d0ef
sw x3, 0(x2) # store 0xe38278d2431d0ef in memory
flh f15, 0(x2) # load 0xe38278d2431d0ef from memory into f15
fdiv.h f0, f0, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x7cf51ed498325c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf545d8329980b84 # load x3 with value 0xcf545d8329980b84
sw x3, 0(x2) # store 0xcf545d8329980b84 in memory
flh f1, 0(x2) # load 0xcf545d8329980b84 from memory into f1
li x3, 0xcf7cbc4eba2bb0ea # load x3 with value 0xcf7cbc4eba2bb0ea
sw x3, 0(x2) # store 0xcf7cbc4eba2bb0ea in memory
flh f21, 0(x2) # load 0xcf7cbc4eba2bb0ea from memory into f21
fdiv.h f1, f1, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x6f9b8c586b701ef8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b932d0d656a870 # load x3 with value 0x5b932d0d656a870
sw x3, 0(x2) # store 0x5b932d0d656a870 in memory
flh f2, 0(x2) # load 0x5b932d0d656a870 from memory into f2
li x3, 0xe71bcc08f7840eb9 # load x3 with value 0xe71bcc08f7840eb9
sw x3, 0(x2) # store 0xe71bcc08f7840eb9 in memory
flh f16, 0(x2) # load 0xe71bcc08f7840eb9 from memory into f16
fdiv.h f2, f2, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x041605a8ae1625d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfccb4c183c4b4816 # load x3 with value 0xfccb4c183c4b4816
sw x3, 0(x2) # store 0xfccb4c183c4b4816 in memory
flh f3, 0(x2) # load 0xfccb4c183c4b4816 from memory into f3
li x3, 0x38305269228fd413 # load x3 with value 0x38305269228fd413
sw x3, 0(x2) # store 0x38305269228fd413 in memory
flh f14, 0(x2) # load 0x38305269228fd413 from memory into f14
fdiv.h f3, f3, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x326298b3559b4961 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa377bcefe2689d93 # load x3 with value 0xa377bcefe2689d93
sw x3, 0(x2) # store 0xa377bcefe2689d93 in memory
flh f4, 0(x2) # load 0xa377bcefe2689d93 from memory into f4
li x3, 0x9fb8f63862f7dfb9 # load x3 with value 0x9fb8f63862f7dfb9
sw x3, 0(x2) # store 0x9fb8f63862f7dfb9 in memory
flh f20, 0(x2) # load 0x9fb8f63862f7dfb9 from memory into f20
fdiv.h f4, f4, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x0afcc4ded34f0ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa90721fcfdabbcf5 # load x3 with value 0xa90721fcfdabbcf5
sw x3, 0(x2) # store 0xa90721fcfdabbcf5 in memory
flh f5, 0(x2) # load 0xa90721fcfdabbcf5 from memory into f5
li x3, 0x8b02fc4d27e445f4 # load x3 with value 0x8b02fc4d27e445f4
sw x3, 0(x2) # store 0x8b02fc4d27e445f4 in memory
flh f28, 0(x2) # load 0x8b02fc4d27e445f4 from memory into f28
fdiv.h f5, f5, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x35d3e90af1c95e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99b74d6b6971e1d3 # load x3 with value 0x99b74d6b6971e1d3
sw x3, 0(x2) # store 0x99b74d6b6971e1d3 in memory
flh f6, 0(x2) # load 0x99b74d6b6971e1d3 from memory into f6
li x3, 0x9c6cfaf2ade83942 # load x3 with value 0x9c6cfaf2ade83942
sw x3, 0(x2) # store 0x9c6cfaf2ade83942 in memory
flh f30, 0(x2) # load 0x9c6cfaf2ade83942 from memory into f30
fdiv.h f6, f6, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x3c4dccd7390e8c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff311abc8742e38c # load x3 with value 0xff311abc8742e38c
sw x3, 0(x2) # store 0xff311abc8742e38c in memory
flh f7, 0(x2) # load 0xff311abc8742e38c from memory into f7
li x3, 0xe8ab8a5391f80853 # load x3 with value 0xe8ab8a5391f80853
sw x3, 0(x2) # store 0xe8ab8a5391f80853 in memory
flh f24, 0(x2) # load 0xe8ab8a5391f80853 from memory into f24
fdiv.h f7, f7, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x6854a361cac45d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23771b9b4473e816 # load x3 with value 0x23771b9b4473e816
sw x3, 0(x2) # store 0x23771b9b4473e816 in memory
flh f8, 0(x2) # load 0x23771b9b4473e816 from memory into f8
li x3, 0x5105a63a60daaf55 # load x3 with value 0x5105a63a60daaf55
sw x3, 0(x2) # store 0x5105a63a60daaf55 in memory
flh f20, 0(x2) # load 0x5105a63a60daaf55 from memory into f20
fdiv.h f8, f8, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xbb2d08490cbb9361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20e62a0b0e530ab9 # load x3 with value 0x20e62a0b0e530ab9
sw x3, 0(x2) # store 0x20e62a0b0e530ab9 in memory
flh f9, 0(x2) # load 0x20e62a0b0e530ab9 from memory into f9
li x3, 0x9816e7636c90fed6 # load x3 with value 0x9816e7636c90fed6
sw x3, 0(x2) # store 0x9816e7636c90fed6 in memory
flh f14, 0(x2) # load 0x9816e7636c90fed6 from memory into f14
fdiv.h f9, f9, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x27d5e5dd17f4b7fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb998562f30de378 # load x3 with value 0xbb998562f30de378
sw x3, 0(x2) # store 0xbb998562f30de378 in memory
flh f10, 0(x2) # load 0xbb998562f30de378 from memory into f10
li x3, 0x1f9091ae9d1bcca5 # load x3 with value 0x1f9091ae9d1bcca5
sw x3, 0(x2) # store 0x1f9091ae9d1bcca5 in memory
flh f19, 0(x2) # load 0x1f9091ae9d1bcca5 from memory into f19
fdiv.h f10, f10, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xaba657ae67ea4403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fdf2471f0fb9008 # load x3 with value 0x7fdf2471f0fb9008
sw x3, 0(x2) # store 0x7fdf2471f0fb9008 in memory
flh f11, 0(x2) # load 0x7fdf2471f0fb9008 from memory into f11
li x3, 0x7c968f1802bb93eb # load x3 with value 0x7c968f1802bb93eb
sw x3, 0(x2) # store 0x7c968f1802bb93eb in memory
flh f19, 0(x2) # load 0x7c968f1802bb93eb from memory into f19
fdiv.h f11, f11, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x68f3e4a91ce9d491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x188c0c3f098e430e # load x3 with value 0x188c0c3f098e430e
sw x3, 0(x2) # store 0x188c0c3f098e430e in memory
flh f12, 0(x2) # load 0x188c0c3f098e430e from memory into f12
li x3, 0x37d9615226c8bd5b # load x3 with value 0x37d9615226c8bd5b
sw x3, 0(x2) # store 0x37d9615226c8bd5b in memory
flh f11, 0(x2) # load 0x37d9615226c8bd5b from memory into f11
fdiv.h f12, f12, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x04428320039e07a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6fda180b93ba22eb # load x3 with value 0x6fda180b93ba22eb
sw x3, 0(x2) # store 0x6fda180b93ba22eb in memory
flh f13, 0(x2) # load 0x6fda180b93ba22eb from memory into f13
li x3, 0x1e78aea70bff75b2 # load x3 with value 0x1e78aea70bff75b2
sw x3, 0(x2) # store 0x1e78aea70bff75b2 in memory
flh f6, 0(x2) # load 0x1e78aea70bff75b2 from memory into f6
fdiv.h f13, f13, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xa3acd143d40b0356 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfc08b39f62fb0b3 # load x3 with value 0xdfc08b39f62fb0b3
sw x3, 0(x2) # store 0xdfc08b39f62fb0b3 in memory
flh f14, 0(x2) # load 0xdfc08b39f62fb0b3 from memory into f14
li x3, 0xba6053ed57bb8339 # load x3 with value 0xba6053ed57bb8339
sw x3, 0(x2) # store 0xba6053ed57bb8339 in memory
flh f27, 0(x2) # load 0xba6053ed57bb8339 from memory into f27
fdiv.h f14, f14, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x01551a847baa57d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5168174c7d9a8c7a # load x3 with value 0x5168174c7d9a8c7a
sw x3, 0(x2) # store 0x5168174c7d9a8c7a in memory
flh f15, 0(x2) # load 0x5168174c7d9a8c7a from memory into f15
li x3, 0x47d105b9f7bd9282 # load x3 with value 0x47d105b9f7bd9282
sw x3, 0(x2) # store 0x47d105b9f7bd9282 in memory
flh f22, 0(x2) # load 0x47d105b9f7bd9282 from memory into f22
fdiv.h f15, f15, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x1ec66c2e5657f064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8af12293af27290 # load x3 with value 0xe8af12293af27290
sw x3, 0(x2) # store 0xe8af12293af27290 in memory
flh f16, 0(x2) # load 0xe8af12293af27290 from memory into f16
li x3, 0x336abe6a53448d5d # load x3 with value 0x336abe6a53448d5d
sw x3, 0(x2) # store 0x336abe6a53448d5d in memory
flh f4, 0(x2) # load 0x336abe6a53448d5d from memory into f4
fdiv.h f16, f16, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x3b0ceffb4397fda1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cbb18e730002611 # load x3 with value 0x2cbb18e730002611
sw x3, 0(x2) # store 0x2cbb18e730002611 in memory
flh f17, 0(x2) # load 0x2cbb18e730002611 from memory into f17
li x3, 0xbd2383f64a303b9 # load x3 with value 0xbd2383f64a303b9
sw x3, 0(x2) # store 0xbd2383f64a303b9 in memory
flh f28, 0(x2) # load 0xbd2383f64a303b9 from memory into f28
fdiv.h f17, f17, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x7bd2954a6081c6c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9819cd945b4f7a53 # load x3 with value 0x9819cd945b4f7a53
sw x3, 0(x2) # store 0x9819cd945b4f7a53 in memory
flh f18, 0(x2) # load 0x9819cd945b4f7a53 from memory into f18
li x3, 0xdc69fabe44d360bc # load x3 with value 0xdc69fabe44d360bc
sw x3, 0(x2) # store 0xdc69fabe44d360bc in memory
flh f29, 0(x2) # load 0xdc69fabe44d360bc from memory into f29
fdiv.h f18, f18, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xa7470b9f541bada6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f75e269139daf34 # load x3 with value 0x9f75e269139daf34
sw x3, 0(x2) # store 0x9f75e269139daf34 in memory
flh f19, 0(x2) # load 0x9f75e269139daf34 from memory into f19
li x3, 0xf0b9d05503f22f2c # load x3 with value 0xf0b9d05503f22f2c
sw x3, 0(x2) # store 0xf0b9d05503f22f2c in memory
flh f25, 0(x2) # load 0xf0b9d05503f22f2c from memory into f25
fdiv.h f19, f19, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x70e629a37f25750b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e73c39d8b6543e4 # load x3 with value 0x5e73c39d8b6543e4
sw x3, 0(x2) # store 0x5e73c39d8b6543e4 in memory
flh f20, 0(x2) # load 0x5e73c39d8b6543e4 from memory into f20
li x3, 0x1ec02abad8a58c6b # load x3 with value 0x1ec02abad8a58c6b
sw x3, 0(x2) # store 0x1ec02abad8a58c6b in memory
flh f10, 0(x2) # load 0x1ec02abad8a58c6b from memory into f10
fdiv.h f20, f20, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x93fa962d9938a279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9a3d66fce8f23d46 # load x3 with value 0x9a3d66fce8f23d46
sw x3, 0(x2) # store 0x9a3d66fce8f23d46 in memory
flh f21, 0(x2) # load 0x9a3d66fce8f23d46 from memory into f21
li x3, 0x300d7acc24fca4f8 # load x3 with value 0x300d7acc24fca4f8
sw x3, 0(x2) # store 0x300d7acc24fca4f8 in memory
flh f5, 0(x2) # load 0x300d7acc24fca4f8 from memory into f5
fdiv.h f21, f21, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x0bac0a0e46c197e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3334e9839cac9c7b # load x3 with value 0x3334e9839cac9c7b
sw x3, 0(x2) # store 0x3334e9839cac9c7b in memory
flh f22, 0(x2) # load 0x3334e9839cac9c7b from memory into f22
li x3, 0x5af4fbcd6e49258a # load x3 with value 0x5af4fbcd6e49258a
sw x3, 0(x2) # store 0x5af4fbcd6e49258a in memory
flh f28, 0(x2) # load 0x5af4fbcd6e49258a from memory into f28
fdiv.h f22, f22, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xdd9bff3604e7a371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x168bdade2e614e91 # load x3 with value 0x168bdade2e614e91
sw x3, 0(x2) # store 0x168bdade2e614e91 in memory
flh f23, 0(x2) # load 0x168bdade2e614e91 from memory into f23
li x3, 0xbc5f28f58652bdef # load x3 with value 0xbc5f28f58652bdef
sw x3, 0(x2) # store 0xbc5f28f58652bdef in memory
flh f27, 0(x2) # load 0xbc5f28f58652bdef from memory into f27
fdiv.h f23, f23, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xa3003b735aceef25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee94c10a44089670 # load x3 with value 0xee94c10a44089670
sw x3, 0(x2) # store 0xee94c10a44089670 in memory
flh f24, 0(x2) # load 0xee94c10a44089670 from memory into f24
li x3, 0x9329e7f2daec0792 # load x3 with value 0x9329e7f2daec0792
sw x3, 0(x2) # store 0x9329e7f2daec0792 in memory
flh f12, 0(x2) # load 0x9329e7f2daec0792 from memory into f12
fdiv.h f24, f24, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x42741f09688082e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69cb977b41a3a4c5 # load x3 with value 0x69cb977b41a3a4c5
sw x3, 0(x2) # store 0x69cb977b41a3a4c5 in memory
flh f25, 0(x2) # load 0x69cb977b41a3a4c5 from memory into f25
li x3, 0x9649ef4e80aebed6 # load x3 with value 0x9649ef4e80aebed6
sw x3, 0(x2) # store 0x9649ef4e80aebed6 in memory
flh f6, 0(x2) # load 0x9649ef4e80aebed6 from memory into f6
fdiv.h f25, f25, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x4acf585bc638f17f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad194768a0963930 # load x3 with value 0xad194768a0963930
sw x3, 0(x2) # store 0xad194768a0963930 in memory
flh f26, 0(x2) # load 0xad194768a0963930 from memory into f26
li x3, 0x551f4bd9d1022e0b # load x3 with value 0x551f4bd9d1022e0b
sw x3, 0(x2) # store 0x551f4bd9d1022e0b in memory
flh f13, 0(x2) # load 0x551f4bd9d1022e0b from memory into f13
fdiv.h f26, f26, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xa4508416a85c5965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xceeb43654ce2283a # load x3 with value 0xceeb43654ce2283a
sw x3, 0(x2) # store 0xceeb43654ce2283a in memory
flh f27, 0(x2) # load 0xceeb43654ce2283a from memory into f27
li x3, 0x7aefb4fb0dd962e # load x3 with value 0x7aefb4fb0dd962e
sw x3, 0(x2) # store 0x7aefb4fb0dd962e in memory
flh f26, 0(x2) # load 0x7aefb4fb0dd962e from memory into f26
fdiv.h f27, f27, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x08a4b34ad2a0d4df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc1ad755e1716c91 # load x3 with value 0xdc1ad755e1716c91
sw x3, 0(x2) # store 0xdc1ad755e1716c91 in memory
flh f28, 0(x2) # load 0xdc1ad755e1716c91 from memory into f28
li x3, 0x44e627c60941168f # load x3 with value 0x44e627c60941168f
sw x3, 0(x2) # store 0x44e627c60941168f in memory
flh f26, 0(x2) # load 0x44e627c60941168f from memory into f26
fdiv.h f28, f28, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x63f204171ad9ae4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbafe57833102939 # load x3 with value 0xdbafe57833102939
sw x3, 0(x2) # store 0xdbafe57833102939 in memory
flh f29, 0(x2) # load 0xdbafe57833102939 from memory into f29
li x3, 0xbe1f430285c32021 # load x3 with value 0xbe1f430285c32021
sw x3, 0(x2) # store 0xbe1f430285c32021 in memory
flh f29, 0(x2) # load 0xbe1f430285c32021 from memory into f29
fdiv.h f29, f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x0909e7033a64a90e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc834f2d3a75bcef3 # load x3 with value 0xc834f2d3a75bcef3
sw x3, 0(x2) # store 0xc834f2d3a75bcef3 in memory
flh f30, 0(x2) # load 0xc834f2d3a75bcef3 from memory into f30
li x3, 0x5339fd8fc15e0d0d # load x3 with value 0x5339fd8fc15e0d0d
sw x3, 0(x2) # store 0x5339fd8fc15e0d0d in memory
flh f19, 0(x2) # load 0x5339fd8fc15e0d0d from memory into f19
fdiv.h f30, f30, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x7b01b99e907c653a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x877646d17c84031f # load x3 with value 0x877646d17c84031f
sw x3, 0(x2) # store 0x877646d17c84031f in memory
flh f31, 0(x2) # load 0x877646d17c84031f from memory into f31
li x3, 0x7a905d6b83b05fc9 # load x3 with value 0x7a905d6b83b05fc9
sw x3, 0(x2) # store 0x7a905d6b83b05fc9 in memory
flh f8, 0(x2) # load 0x7a905d6b83b05fc9 from memory into f8
fdiv.h f31, f31, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xa1ca087bcdf2fa8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb81fc4aba994aab6 # load x3 with value 0xb81fc4aba994aab6
sw x3, 0(x2) # store 0xb81fc4aba994aab6 in memory
flh f11, 0(x2) # load 0xb81fc4aba994aab6 from memory into f11
li x3, 0xa80170bae58317bd # load x3 with value 0xa80170bae58317bd
sw x3, 0(x2) # store 0xa80170bae58317bd in memory
flh f0, 0(x2) # load 0xa80170bae58317bd from memory into f0
fdiv.h f0, f11, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x7631d077f9e66db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x396595598782bc6d # load x3 with value 0x396595598782bc6d
sw x3, 0(x2) # store 0x396595598782bc6d in memory
flh f6, 0(x2) # load 0x396595598782bc6d from memory into f6
li x3, 0x240c91346d8caf02 # load x3 with value 0x240c91346d8caf02
sw x3, 0(x2) # store 0x240c91346d8caf02 in memory
flh f1, 0(x2) # load 0x240c91346d8caf02 from memory into f1
fdiv.h f1, f6, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x818ca097b7b467d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7e3821b32fd409a # load x3 with value 0xb7e3821b32fd409a
sw x3, 0(x2) # store 0xb7e3821b32fd409a in memory
flh f24, 0(x2) # load 0xb7e3821b32fd409a from memory into f24
li x3, 0xfee886050db9fe2d # load x3 with value 0xfee886050db9fe2d
sw x3, 0(x2) # store 0xfee886050db9fe2d in memory
flh f2, 0(x2) # load 0xfee886050db9fe2d from memory into f2
fdiv.h f2, f24, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x494849576ec24fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4adcae520ff1ed5 # load x3 with value 0xa4adcae520ff1ed5
sw x3, 0(x2) # store 0xa4adcae520ff1ed5 in memory
flh f6, 0(x2) # load 0xa4adcae520ff1ed5 from memory into f6
li x3, 0x9c4132e6b1689248 # load x3 with value 0x9c4132e6b1689248
sw x3, 0(x2) # store 0x9c4132e6b1689248 in memory
flh f3, 0(x2) # load 0x9c4132e6b1689248 from memory into f3
fdiv.h f3, f6, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x373f95a3c34ab3e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ec5ef28b1962a6d # load x3 with value 0x2ec5ef28b1962a6d
sw x3, 0(x2) # store 0x2ec5ef28b1962a6d in memory
flh f18, 0(x2) # load 0x2ec5ef28b1962a6d from memory into f18
li x3, 0x91b0b5568bbe6051 # load x3 with value 0x91b0b5568bbe6051
sw x3, 0(x2) # store 0x91b0b5568bbe6051 in memory
flh f4, 0(x2) # load 0x91b0b5568bbe6051 from memory into f4
fdiv.h f4, f18, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xad1f31b5d4b63eb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x905dfa0ef3f71c93 # load x3 with value 0x905dfa0ef3f71c93
sw x3, 0(x2) # store 0x905dfa0ef3f71c93 in memory
flh f8, 0(x2) # load 0x905dfa0ef3f71c93 from memory into f8
li x3, 0xd8cc5c926b428ec4 # load x3 with value 0xd8cc5c926b428ec4
sw x3, 0(x2) # store 0xd8cc5c926b428ec4 in memory
flh f5, 0(x2) # load 0xd8cc5c926b428ec4 from memory into f5
fdiv.h f5, f8, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x7574ce3993accf5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba4618818417b57a # load x3 with value 0xba4618818417b57a
sw x3, 0(x2) # store 0xba4618818417b57a in memory
flh f13, 0(x2) # load 0xba4618818417b57a from memory into f13
li x3, 0xf8d7c4454c0c714b # load x3 with value 0xf8d7c4454c0c714b
sw x3, 0(x2) # store 0xf8d7c4454c0c714b in memory
flh f6, 0(x2) # load 0xf8d7c4454c0c714b from memory into f6
fdiv.h f6, f13, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xff7487225310077e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe899fc73804c765f # load x3 with value 0xe899fc73804c765f
sw x3, 0(x2) # store 0xe899fc73804c765f in memory
flh f23, 0(x2) # load 0xe899fc73804c765f from memory into f23
li x3, 0xe1058df15877f635 # load x3 with value 0xe1058df15877f635
sw x3, 0(x2) # store 0xe1058df15877f635 in memory
flh f7, 0(x2) # load 0xe1058df15877f635 from memory into f7
fdiv.h f7, f23, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x0287b1838fec20b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78ea5b686632e343 # load x3 with value 0x78ea5b686632e343
sw x3, 0(x2) # store 0x78ea5b686632e343 in memory
flh f21, 0(x2) # load 0x78ea5b686632e343 from memory into f21
li x3, 0x720425077c9c7311 # load x3 with value 0x720425077c9c7311
sw x3, 0(x2) # store 0x720425077c9c7311 in memory
flh f8, 0(x2) # load 0x720425077c9c7311 from memory into f8
fdiv.h f8, f21, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xe0a1b0ddd940c717 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1947332bab362551 # load x3 with value 0x1947332bab362551
sw x3, 0(x2) # store 0x1947332bab362551 in memory
flh f25, 0(x2) # load 0x1947332bab362551 from memory into f25
li x3, 0x53c22c0073d7d593 # load x3 with value 0x53c22c0073d7d593
sw x3, 0(x2) # store 0x53c22c0073d7d593 in memory
flh f9, 0(x2) # load 0x53c22c0073d7d593 from memory into f9
fdiv.h f9, f25, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xb11373ce1410f94f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x738f9973576407c9 # load x3 with value 0x738f9973576407c9
sw x3, 0(x2) # store 0x738f9973576407c9 in memory
flh f28, 0(x2) # load 0x738f9973576407c9 from memory into f28
li x3, 0x228f9459ad491a82 # load x3 with value 0x228f9459ad491a82
sw x3, 0(x2) # store 0x228f9459ad491a82 in memory
flh f10, 0(x2) # load 0x228f9459ad491a82 from memory into f10
fdiv.h f10, f28, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x94e894486655c937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79faba08c0cc8824 # load x3 with value 0x79faba08c0cc8824
sw x3, 0(x2) # store 0x79faba08c0cc8824 in memory
flh f26, 0(x2) # load 0x79faba08c0cc8824 from memory into f26
li x3, 0x4dd08279f4eac24d # load x3 with value 0x4dd08279f4eac24d
sw x3, 0(x2) # store 0x4dd08279f4eac24d in memory
flh f11, 0(x2) # load 0x4dd08279f4eac24d from memory into f11
fdiv.h f11, f26, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xaf2761c3d962b90a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9b93acd528c4bd0 # load x3 with value 0xa9b93acd528c4bd0
sw x3, 0(x2) # store 0xa9b93acd528c4bd0 in memory
flh f2, 0(x2) # load 0xa9b93acd528c4bd0 from memory into f2
li x3, 0x55623c2880953e3d # load x3 with value 0x55623c2880953e3d
sw x3, 0(x2) # store 0x55623c2880953e3d in memory
flh f12, 0(x2) # load 0x55623c2880953e3d from memory into f12
fdiv.h f12, f2, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xa25d44483cbcf877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbee0db6eb6b140bd # load x3 with value 0xbee0db6eb6b140bd
sw x3, 0(x2) # store 0xbee0db6eb6b140bd in memory
flh f30, 0(x2) # load 0xbee0db6eb6b140bd from memory into f30
li x3, 0x14cc9fac6c02e2da # load x3 with value 0x14cc9fac6c02e2da
sw x3, 0(x2) # store 0x14cc9fac6c02e2da in memory
flh f13, 0(x2) # load 0x14cc9fac6c02e2da from memory into f13
fdiv.h f13, f30, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x401c2da18f7f7117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ea6027644c5fd51 # load x3 with value 0x6ea6027644c5fd51
sw x3, 0(x2) # store 0x6ea6027644c5fd51 in memory
flh f22, 0(x2) # load 0x6ea6027644c5fd51 from memory into f22
li x3, 0x97eb2cb7c800236c # load x3 with value 0x97eb2cb7c800236c
sw x3, 0(x2) # store 0x97eb2cb7c800236c in memory
flh f14, 0(x2) # load 0x97eb2cb7c800236c from memory into f14
fdiv.h f14, f22, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x52e7768313b6cff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ddb503eac85efd7 # load x3 with value 0x8ddb503eac85efd7
sw x3, 0(x2) # store 0x8ddb503eac85efd7 in memory
flh f16, 0(x2) # load 0x8ddb503eac85efd7 from memory into f16
li x3, 0x517b85e8f512d7ec # load x3 with value 0x517b85e8f512d7ec
sw x3, 0(x2) # store 0x517b85e8f512d7ec in memory
flh f15, 0(x2) # load 0x517b85e8f512d7ec from memory into f15
fdiv.h f15, f16, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xa1f6d2040d0a58fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf903e62740aecc9a # load x3 with value 0xf903e62740aecc9a
sw x3, 0(x2) # store 0xf903e62740aecc9a in memory
flh f10, 0(x2) # load 0xf903e62740aecc9a from memory into f10
li x3, 0xb5c096a73f93ee66 # load x3 with value 0xb5c096a73f93ee66
sw x3, 0(x2) # store 0xb5c096a73f93ee66 in memory
flh f16, 0(x2) # load 0xb5c096a73f93ee66 from memory into f16
fdiv.h f16, f10, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xeb5d9a8f60706659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb741106f8239c452 # load x3 with value 0xb741106f8239c452
sw x3, 0(x2) # store 0xb741106f8239c452 in memory
flh f5, 0(x2) # load 0xb741106f8239c452 from memory into f5
li x3, 0x98eb70a8b67a5747 # load x3 with value 0x98eb70a8b67a5747
sw x3, 0(x2) # store 0x98eb70a8b67a5747 in memory
flh f17, 0(x2) # load 0x98eb70a8b67a5747 from memory into f17
fdiv.h f17, f5, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x4d36a0c367b7091f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb06abc69cff30e9 # load x3 with value 0xcb06abc69cff30e9
sw x3, 0(x2) # store 0xcb06abc69cff30e9 in memory
flh f27, 0(x2) # load 0xcb06abc69cff30e9 from memory into f27
li x3, 0x5ab3c8f03e1454b7 # load x3 with value 0x5ab3c8f03e1454b7
sw x3, 0(x2) # store 0x5ab3c8f03e1454b7 in memory
flh f18, 0(x2) # load 0x5ab3c8f03e1454b7 from memory into f18
fdiv.h f18, f27, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xb4bece87c2c89206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92b714944e81e0db # load x3 with value 0x92b714944e81e0db
sw x3, 0(x2) # store 0x92b714944e81e0db in memory
flh f2, 0(x2) # load 0x92b714944e81e0db from memory into f2
li x3, 0x2eaaf8324424db75 # load x3 with value 0x2eaaf8324424db75
sw x3, 0(x2) # store 0x2eaaf8324424db75 in memory
flh f19, 0(x2) # load 0x2eaaf8324424db75 from memory into f19
fdiv.h f19, f2, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x91cab61deaea21a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d4a5b95e11e2704 # load x3 with value 0x7d4a5b95e11e2704
sw x3, 0(x2) # store 0x7d4a5b95e11e2704 in memory
flh f2, 0(x2) # load 0x7d4a5b95e11e2704 from memory into f2
li x3, 0x5ddb70ca77f38b32 # load x3 with value 0x5ddb70ca77f38b32
sw x3, 0(x2) # store 0x5ddb70ca77f38b32 in memory
flh f20, 0(x2) # load 0x5ddb70ca77f38b32 from memory into f20
fdiv.h f20, f2, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x8c025b13e6c86886 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7265078e629e47b # load x3 with value 0xf7265078e629e47b
sw x3, 0(x2) # store 0xf7265078e629e47b in memory
flh f17, 0(x2) # load 0xf7265078e629e47b from memory into f17
li x3, 0xa5f43654e4908401 # load x3 with value 0xa5f43654e4908401
sw x3, 0(x2) # store 0xa5f43654e4908401 in memory
flh f21, 0(x2) # load 0xa5f43654e4908401 from memory into f21
fdiv.h f21, f17, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xcda1159756631259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76fac58c489434ef # load x3 with value 0x76fac58c489434ef
sw x3, 0(x2) # store 0x76fac58c489434ef in memory
flh f20, 0(x2) # load 0x76fac58c489434ef from memory into f20
li x3, 0x5f63dbad192b92e6 # load x3 with value 0x5f63dbad192b92e6
sw x3, 0(x2) # store 0x5f63dbad192b92e6 in memory
flh f22, 0(x2) # load 0x5f63dbad192b92e6 from memory into f22
fdiv.h f22, f20, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x64064410884d1ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff37e3d7d884840 # load x3 with value 0xbff37e3d7d884840
sw x3, 0(x2) # store 0xbff37e3d7d884840 in memory
flh f13, 0(x2) # load 0xbff37e3d7d884840 from memory into f13
li x3, 0xe97a7d708dc781a5 # load x3 with value 0xe97a7d708dc781a5
sw x3, 0(x2) # store 0xe97a7d708dc781a5 in memory
flh f23, 0(x2) # load 0xe97a7d708dc781a5 from memory into f23
fdiv.h f23, f13, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x53eddb5b7711cbd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaf15c46b911e6a0 # load x3 with value 0xeaf15c46b911e6a0
sw x3, 0(x2) # store 0xeaf15c46b911e6a0 in memory
flh f23, 0(x2) # load 0xeaf15c46b911e6a0 from memory into f23
li x3, 0x499a3588661cf471 # load x3 with value 0x499a3588661cf471
sw x3, 0(x2) # store 0x499a3588661cf471 in memory
flh f24, 0(x2) # load 0x499a3588661cf471 from memory into f24
fdiv.h f24, f23, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x939c2d4eebcd1344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38cb1efc8064cf28 # load x3 with value 0x38cb1efc8064cf28
sw x3, 0(x2) # store 0x38cb1efc8064cf28 in memory
flh f31, 0(x2) # load 0x38cb1efc8064cf28 from memory into f31
li x3, 0xcde0dd7985b067c2 # load x3 with value 0xcde0dd7985b067c2
sw x3, 0(x2) # store 0xcde0dd7985b067c2 in memory
flh f25, 0(x2) # load 0xcde0dd7985b067c2 from memory into f25
fdiv.h f25, f31, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x730eea46cc8dd48a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0ceb594929e93c7 # load x3 with value 0xe0ceb594929e93c7
sw x3, 0(x2) # store 0xe0ceb594929e93c7 in memory
flh f27, 0(x2) # load 0xe0ceb594929e93c7 from memory into f27
li x3, 0x7c4a83e8edf8607 # load x3 with value 0x7c4a83e8edf8607
sw x3, 0(x2) # store 0x7c4a83e8edf8607 in memory
flh f26, 0(x2) # load 0x7c4a83e8edf8607 from memory into f26
fdiv.h f26, f27, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xb4972fd7fabd3aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe8be13fa068e179 # load x3 with value 0xfe8be13fa068e179
sw x3, 0(x2) # store 0xfe8be13fa068e179 in memory
flh f20, 0(x2) # load 0xfe8be13fa068e179 from memory into f20
li x3, 0xa8eade052f88dabe # load x3 with value 0xa8eade052f88dabe
sw x3, 0(x2) # store 0xa8eade052f88dabe in memory
flh f27, 0(x2) # load 0xa8eade052f88dabe from memory into f27
fdiv.h f27, f20, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x7f827c35f08b6351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89545c313d12f588 # load x3 with value 0x89545c313d12f588
sw x3, 0(x2) # store 0x89545c313d12f588 in memory
flh f4, 0(x2) # load 0x89545c313d12f588 from memory into f4
li x3, 0xc67a41150eeb4976 # load x3 with value 0xc67a41150eeb4976
sw x3, 0(x2) # store 0xc67a41150eeb4976 in memory
flh f28, 0(x2) # load 0xc67a41150eeb4976 from memory into f28
fdiv.h f28, f4, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xb66c51d450718d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf053cb035825b3db # load x3 with value 0xf053cb035825b3db
sw x3, 0(x2) # store 0xf053cb035825b3db in memory
flh f16, 0(x2) # load 0xf053cb035825b3db from memory into f16
li x3, 0x204fbe4b5a5f631e # load x3 with value 0x204fbe4b5a5f631e
sw x3, 0(x2) # store 0x204fbe4b5a5f631e in memory
flh f29, 0(x2) # load 0x204fbe4b5a5f631e from memory into f29
fdiv.h f29, f16, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x8c83b3ed0d186f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71dfdb1e237e401d # load x3 with value 0x71dfdb1e237e401d
sw x3, 0(x2) # store 0x71dfdb1e237e401d in memory
flh f17, 0(x2) # load 0x71dfdb1e237e401d from memory into f17
li x3, 0xef0eea8590c8b7ce # load x3 with value 0xef0eea8590c8b7ce
sw x3, 0(x2) # store 0xef0eea8590c8b7ce in memory
flh f30, 0(x2) # load 0xef0eea8590c8b7ce from memory into f30
fdiv.h f30, f17, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xcae7ae6d4d3be486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68e425a010c5d4c2 # load x3 with value 0x68e425a010c5d4c2
sw x3, 0(x2) # store 0x68e425a010c5d4c2 in memory
flh f9, 0(x2) # load 0x68e425a010c5d4c2 from memory into f9
li x3, 0x93b6cb01c2de53de # load x3 with value 0x93b6cb01c2de53de
sw x3, 0(x2) # store 0x93b6cb01c2de53de in memory
flh f31, 0(x2) # load 0x93b6cb01c2de53de from memory into f31
fdiv.h f31, f9, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x26, 0x886ca2b2e32ae9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x77a9689990729a2d # load x3 with value 0x77a9689990729a2d
sw x3, 0(x2) # store 0x77a9689990729a2d in memory
flh f17, 0(x2) # load 0x77a9689990729a2d from memory into f17
fdiv.h f26, f20, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x7, 0xf4c6bc3339035a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x740f5c6aec811b69 # load x3 with value 0x740f5c6aec811b69
sw x3, 0(x2) # store 0x740f5c6aec811b69 in memory
flh f3, 0(x2) # load 0x740f5c6aec811b69 from memory into f3
fdiv.h f7, f2, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x3, 0x8a9640b1530056f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x3927a063ddfe677a # load x3 with value 0x3927a063ddfe677a
sw x3, 0(x2) # store 0x3927a063ddfe677a in memory
flh f16, 0(x2) # load 0x3927a063ddfe677a from memory into f16
fdiv.h f3, f26, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x14, 0xdaadca3c466e31ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0xbfd273cb86bff0c2 # load x3 with value 0xbfd273cb86bff0c2
sw x3, 0(x2) # store 0xbfd273cb86bff0c2 in memory
flh f5, 0(x2) # load 0xbfd273cb86bff0c2 from memory into f5
fdiv.h f14, f12, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x23, 0xa155743f9c5f8688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x3fb68264c4494582 # load x3 with value 0x3fb68264c4494582
sw x3, 0(x2) # store 0x3fb68264c4494582 in memory
flh f4, 0(x2) # load 0x3fb68264c4494582 from memory into f4
fdiv.h f23, f12, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x7, 0xb1c118ed3b6ed01d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x583b4b4766e38ab6 # load x3 with value 0x583b4b4766e38ab6
sw x3, 0(x2) # store 0x583b4b4766e38ab6 in memory
flh f5, 0(x2) # load 0x583b4b4766e38ab6 from memory into f5
fdiv.h f7, f17, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x16, 0xcb465ddc6e121776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0xd56b0bc497347086 # load x3 with value 0xd56b0bc497347086
sw x3, 0(x2) # store 0xd56b0bc497347086 in memory
flh f24, 0(x2) # load 0xd56b0bc497347086 from memory into f24
fdiv.h f16, f8, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x28, 0x54aacf081de85615 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x945886242216c683 # load x3 with value 0x945886242216c683
sw x3, 0(x2) # store 0x945886242216c683 in memory
flh f26, 0(x2) # load 0x945886242216c683 from memory into f26
fdiv.h f28, f9, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x2, 0x3101130fe4eb456a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x57869f37de3ff64c # load x3 with value 0x57869f37de3ff64c
sw x3, 0(x2) # store 0x57869f37de3ff64c in memory
flh f19, 0(x2) # load 0x57869f37de3ff64c from memory into f19
fdiv.h f2, f17, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x29, 0x538b89c55a69d9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x60419e4d2fd438a0 # load x3 with value 0x60419e4d2fd438a0
sw x3, 0(x2) # store 0x60419e4d2fd438a0 in memory
flh f15, 0(x2) # load 0x60419e4d2fd438a0 from memory into f15
fdiv.h f29, f28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x9, 0x392a36fdca3d975b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0xd4669984037ea41d # load x3 with value 0xd4669984037ea41d
sw x3, 0(x2) # store 0xd4669984037ea41d in memory
flh f11, 0(x2) # load 0xd4669984037ea41d from memory into f11
fdiv.h f9, f12, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x26, 0x82f12390fe2979c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x9dee89bdb50ee521 # load x3 with value 0x9dee89bdb50ee521
sw x3, 0(x2) # store 0x9dee89bdb50ee521 in memory
flh f20, 0(x2) # load 0x9dee89bdb50ee521 from memory into f20
fdiv.h f26, f29, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x4, 0xb0f66b5c14092b0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
li x3, 0xa33e76d584c44cbe # load x3 with value 0xa33e76d584c44cbe
sw x3, 0(x2) # store 0xa33e76d584c44cbe in memory
flh f27, 0(x2) # load 0xa33e76d584c44cbe from memory into f27
fdiv.h f4, f22, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x25, 0x43f6a5890cd8042b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x163deee7316c3395 # load x3 with value 0x163deee7316c3395
sw x3, 0(x2) # store 0x163deee7316c3395 in memory
flh f1, 0(x2) # load 0x163deee7316c3395 from memory into f1
fdiv.h f25, f27, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x14, 0x9ccddacb1430add3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x40dbe04e728871af # load x3 with value 0x40dbe04e728871af
sw x3, 0(x2) # store 0x40dbe04e728871af in memory
flh f8, 0(x2) # load 0x40dbe04e728871af from memory into f8
fdiv.h f14, f31, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x23, 0x374babaac543579c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0xd95022263721d469 # load x3 with value 0xd95022263721d469
sw x3, 0(x2) # store 0xd95022263721d469 in memory
flh f15, 0(x2) # load 0xd95022263721d469 from memory into f15
fdiv.h f23, f17, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x18, 0xb408564430284118 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0xea344a6cd533d44c # load x3 with value 0xea344a6cd533d44c
sw x3, 0(x2) # store 0xea344a6cd533d44c in memory
flh f27, 0(x2) # load 0xea344a6cd533d44c from memory into f27
fdiv.h f18, f21, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x6, 0x89ba400650ad2754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0xca8ade59de30447c # load x3 with value 0xca8ade59de30447c
sw x3, 0(x2) # store 0xca8ade59de30447c in memory
flh f27, 0(x2) # load 0xca8ade59de30447c from memory into f27
fdiv.h f6, f29, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x13, 0xe864e2e2a28f8b6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x74357cf6c6e21f46 # load x3 with value 0x74357cf6c6e21f46
sw x3, 0(x2) # store 0x74357cf6c6e21f46 in memory
flh f16, 0(x2) # load 0x74357cf6c6e21f46 from memory into f16
fdiv.h f13, f26, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x12, 0x0269cc5da8fb1b7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0xce42df67a39d385d # load x3 with value 0xce42df67a39d385d
sw x3, 0(x2) # store 0xce42df67a39d385d in memory
flh f20, 0(x2) # load 0xce42df67a39d385d from memory into f20
fdiv.h f12, f1, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x9, 0x3f45991a5f7d2434 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0xe0720d09ee6b7cee # load x3 with value 0xe0720d09ee6b7cee
sw x3, 0(x2) # store 0xe0720d09ee6b7cee in memory
flh f22, 0(x2) # load 0xe0720d09ee6b7cee from memory into f22
fdiv.h f9, f1, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x3, 0x49994e9193677d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0xc9cc6a73da2e6210 # load x3 with value 0xc9cc6a73da2e6210
sw x3, 0(x2) # store 0xc9cc6a73da2e6210 in memory
flh f15, 0(x2) # load 0xc9cc6a73da2e6210 from memory into f15
fdiv.h f3, f17, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x3, 0x472ae1f5dd4b5a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
li x3, 0xdef0280c37685ca # load x3 with value 0xdef0280c37685ca
sw x3, 0(x2) # store 0xdef0280c37685ca in memory
flh f16, 0(x2) # load 0xdef0280c37685ca from memory into f16
fdiv.h f3, f14, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x18, 0xa999a3e28e2b2763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x99aa82a1fcd153f7 # load x3 with value 0x99aa82a1fcd153f7
sw x3, 0(x2) # store 0x99aa82a1fcd153f7 in memory
flh f11, 0(x2) # load 0x99aa82a1fcd153f7 from memory into f11
fdiv.h f18, f20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x29, 0x60a5fdfbe69021a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0xb051dce037fa33f3 # load x3 with value 0xb051dce037fa33f3
sw x3, 0(x2) # store 0xb051dce037fa33f3 in memory
flh f18, 0(x2) # load 0xb051dce037fa33f3 from memory into f18
fdiv.h f29, f15, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x22, 0x32e9a90cc9d89221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x7bd85559fb86a1c6 # load x3 with value 0x7bd85559fb86a1c6
sw x3, 0(x2) # store 0x7bd85559fb86a1c6 in memory
flh f7, 0(x2) # load 0x7bd85559fb86a1c6 from memory into f7
fdiv.h f22, f12, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x3, 0x11396afc8324f349 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f4be621d13b3636 # load x3 with value 0x3f4be621d13b3636
sw x3, 0(x2) # store 0x3f4be621d13b3636 in memory
flh f21, 0(x2) # load 0x3f4be621d13b3636 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f3, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x5, 0x041254427e63889e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c508fa424e7406a # load x3 with value 0x4c508fa424e7406a
sw x3, 0(x2) # store 0x4c508fa424e7406a in memory
flh f4, 0(x2) # load 0x4c508fa424e7406a from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fdiv.h f5, f4, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x27, 0x47d5c0cd466a57a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x487de05ae9e2f769 # load x3 with value 0x487de05ae9e2f769
sw x3, 0(x2) # store 0x487de05ae9e2f769 in memory
flh f2, 0(x2) # load 0x487de05ae9e2f769 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fdiv.h f27, f2, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x7, 0x183cb529e18ba283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4d6f8452e9aa3c2 # load x3 with value 0xa4d6f8452e9aa3c2
sw x3, 0(x2) # store 0xa4d6f8452e9aa3c2 in memory
flh f5, 0(x2) # load 0xa4d6f8452e9aa3c2 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fdiv.h f7, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x12, 0xadd1ea0e71ad9da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44972052ce68faf9 # load x3 with value 0x44972052ce68faf9
sw x3, 0(x2) # store 0x44972052ce68faf9 in memory
flh f21, 0(x2) # load 0x44972052ce68faf9 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fdiv.h f12, f21, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x5, 0x2fb713f2afb9ad5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dc85a7b266538f0 # load x3 with value 0x9dc85a7b266538f0
sw x3, 0(x2) # store 0x9dc85a7b266538f0 in memory
flh f16, 0(x2) # load 0x9dc85a7b266538f0 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fdiv.h f5, f16, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x8, 0x14529cb0fc54bd02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6865b0b56797e6b8 # load x3 with value 0x6865b0b56797e6b8
sw x3, 0(x2) # store 0x6865b0b56797e6b8 in memory
flh f12, 0(x2) # load 0x6865b0b56797e6b8 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fdiv.h f8, f12, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x8, 0x6f6663fa687c0858 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e7c92ea713b3680 # load x3 with value 0x1e7c92ea713b3680
sw x3, 0(x2) # store 0x1e7c92ea713b3680 in memory
flh f1, 0(x2) # load 0x1e7c92ea713b3680 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fdiv.h f8, f1, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x24, 0x065c731dca39b114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2e8e40ad0575470 # load x3 with value 0xc2e8e40ad0575470
sw x3, 0(x2) # store 0xc2e8e40ad0575470 in memory
flh f13, 0(x2) # load 0xc2e8e40ad0575470 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fdiv.h f24, f13, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x13, 0x1fbc056caeca5b01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf34c79fe94e203a5 # load x3 with value 0xf34c79fe94e203a5
sw x3, 0(x2) # store 0xf34c79fe94e203a5 in memory
flh f28, 0(x2) # load 0xf34c79fe94e203a5 from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fdiv.h f13, f28, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x11, 0xf60c04ac0435e23f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x140f2a1c7682ff11 # load x3 with value 0x140f2a1c7682ff11
sw x3, 0(x2) # store 0x140f2a1c7682ff11 in memory
flh f18, 0(x2) # load 0x140f2a1c7682ff11 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f11, f18, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x31, 0xd40ff79cd5f325b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4952b65bb9d69317 # load x3 with value 0x4952b65bb9d69317
sw x3, 0(x2) # store 0x4952b65bb9d69317 in memory
flh f13, 0(x2) # load 0x4952b65bb9d69317 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fdiv.h f31, f13, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x4, 0xc461cf5e45551a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaef56a2da392e74a # load x3 with value 0xaef56a2da392e74a
sw x3, 0(x2) # store 0xaef56a2da392e74a in memory
flh f29, 0(x2) # load 0xaef56a2da392e74a from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fdiv.h f4, f29, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x7, 0x86838c318924d0d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb845f29dfa855359 # load x3 with value 0xb845f29dfa855359
sw x3, 0(x2) # store 0xb845f29dfa855359 in memory
flh f18, 0(x2) # load 0xb845f29dfa855359 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fdiv.h f7, f18, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x13, 0x2376fb5da529361e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bbab5b1618e35db # load x3 with value 0x7bbab5b1618e35db
sw x3, 0(x2) # store 0x7bbab5b1618e35db in memory
flh f3, 0(x2) # load 0x7bbab5b1618e35db from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fdiv.h f13, f3, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x22, 0x88b84c1f8792831a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa389db011d2d9a98 # load x3 with value 0xa389db011d2d9a98
sw x3, 0(x2) # store 0xa389db011d2d9a98 in memory
flh f11, 0(x2) # load 0xa389db011d2d9a98 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fdiv.h f22, f11, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0x995f390db5e659c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca54b54835bcc43a # load x3 with value 0xca54b54835bcc43a
sw x3, 0(x2) # store 0xca54b54835bcc43a in memory
flh f13, 0(x2) # load 0xca54b54835bcc43a from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fdiv.h f10, f13, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x14, 0x917bbe3848950af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62628a1785555ebf # load x3 with value 0x62628a1785555ebf
sw x3, 0(x2) # store 0x62628a1785555ebf in memory
flh f21, 0(x2) # load 0x62628a1785555ebf from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fdiv.h f14, f21, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x4, 0xb939b685cf1fb1f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9df70cf4c46e3b8e # load x3 with value 0x9df70cf4c46e3b8e
sw x3, 0(x2) # store 0x9df70cf4c46e3b8e in memory
flh f24, 0(x2) # load 0x9df70cf4c46e3b8e from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fdiv.h f4, f24, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x18, 0xa52cf3a272184593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc662cee8d954132a # load x3 with value 0xc662cee8d954132a
sw x3, 0(x2) # store 0xc662cee8d954132a in memory
flh f8, 0(x2) # load 0xc662cee8d954132a from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fdiv.h f18, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x10, 0x60545e5bac0b4168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x896e84b801e6546c # load x3 with value 0x896e84b801e6546c
sw x3, 0(x2) # store 0x896e84b801e6546c in memory
flh f17, 0(x2) # load 0x896e84b801e6546c from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fdiv.h f10, f17, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x16, 0x3177067f197a3781 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc1dac11eaf79a29 # load x3 with value 0xdc1dac11eaf79a29
sw x3, 0(x2) # store 0xdc1dac11eaf79a29 in memory
flh f2, 0(x2) # load 0xdc1dac11eaf79a29 from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fdiv.h f16, f2, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x9, 0x93c65fc934910354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f31416061076218 # load x3 with value 0x1f31416061076218
sw x3, 0(x2) # store 0x1f31416061076218 in memory
flh f1, 0(x2) # load 0x1f31416061076218 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fdiv.h f9, f1, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x29, 0x5056dd201b822403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8dbd305d0bcd057 # load x3 with value 0xc8dbd305d0bcd057
sw x3, 0(x2) # store 0xc8dbd305d0bcd057 in memory
flh f9, 0(x2) # load 0xc8dbd305d0bcd057 from memory into f9
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
fdiv.h f29, f9, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x15, 0x31d79ca58c9a2da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd9e194c1f49d3eb # load x3 with value 0xdd9e194c1f49d3eb
sw x3, 0(x2) # store 0xdd9e194c1f49d3eb in memory
flh f1, 0(x2) # load 0xdd9e194c1f49d3eb from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fdiv.h f15, f1, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x6, 0x817b11592792c09c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e6c3a5b0e751716 # load x3 with value 0x1e6c3a5b0e751716
sw x3, 0(x2) # store 0x1e6c3a5b0e751716 in memory
flh f16, 0(x2) # load 0x1e6c3a5b0e751716 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fdiv.h f6, f16, f9 # perform operation

# Testcase cp_frm
li x8, 0x9e4d6e2dbf6b3b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f2fef209fa36c6d # load x3 with value 0x5f2fef209fa36c6d
sw x3, 0(x2) # store 0x5f2fef209fa36c6d in memory
flh f24, 0(x2) # load 0x5f2fef209fa36c6d from memory into f24
li x3, 0xc2779765c3ee658c # load x3 with value 0xc2779765c3ee658c
sw x3, 0(x2) # store 0xc2779765c3ee658c in memory
flh f18, 0(x2) # load 0xc2779765c3ee658c from memory into f18
fdiv.h f8, f24, f18, dyn # perform operation
fdiv.h f8, f24, f18, rdn # perform operation
fdiv.h f8, f24, f18, rmm # perform operation
fdiv.h f8, f24, f18, rne # perform operation
fdiv.h f8, f24, f18, rtz # perform operation
fdiv.h f8, f24, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f24, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x15, 0xc6742e53ffdebfa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
fdiv.h f15, f1, f9, dyn # perform operation
fdiv.h f15, f1, f9, rdn # perform operation
fdiv.h f15, f1, f9, rmm # perform operation
fdiv.h f15, f1, f9, rne # perform operation
fdiv.h f15, f1, f9, rtz # perform operation
fdiv.h f15, f1, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f1, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f1, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f1, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f1, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f1, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x9, 0xa5f067f6947defe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fdiv.h f9, f13, f8, dyn # perform operation
fdiv.h f9, f13, f8, rdn # perform operation
fdiv.h f9, f13, f8, rmm # perform operation
fdiv.h f9, f13, f8, rne # perform operation
fdiv.h f9, f13, f8, rtz # perform operation
fdiv.h f9, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x4, 0xd75b37cc262ad584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fdiv.h f4, f29, f20, dyn # perform operation
fdiv.h f4, f29, f20, rdn # perform operation
fdiv.h f4, f29, f20, rmm # perform operation
fdiv.h f4, f29, f20, rne # perform operation
fdiv.h f4, f29, f20, rtz # perform operation
fdiv.h f4, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x19, 0x74be74e5ee089d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fdiv.h f19, f10, f5, dyn # perform operation
fdiv.h f19, f10, f5, rdn # perform operation
fdiv.h f19, f10, f5, rmm # perform operation
fdiv.h f19, f10, f5, rne # perform operation
fdiv.h f19, f10, f5, rtz # perform operation
fdiv.h f19, f10, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f10, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f10, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f10, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f10, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x18, 0x1a61e838b3531146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fdiv.h f18, f14, f21, dyn # perform operation
fdiv.h f18, f14, f21, rdn # perform operation
fdiv.h f18, f14, f21, rmm # perform operation
fdiv.h f18, f14, f21, rne # perform operation
fdiv.h f18, f14, f21, rtz # perform operation
fdiv.h f18, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x15, 0xfa5bcd8a04ee4a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fdiv.h f15, f22, f1, dyn # perform operation
fdiv.h f15, f22, f1, rdn # perform operation
fdiv.h f15, f22, f1, rmm # perform operation
fdiv.h f15, f22, f1, rne # perform operation
fdiv.h f15, f22, f1, rtz # perform operation
fdiv.h f15, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x22, 0x0eae0c5e07699d45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fdiv.h f22, f12, f7, dyn # perform operation
fdiv.h f22, f12, f7, rdn # perform operation
fdiv.h f22, f12, f7, rmm # perform operation
fdiv.h f22, f12, f7, rne # perform operation
fdiv.h f22, f12, f7, rtz # perform operation
fdiv.h f22, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x24, 0x5757413c5bb0008b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fdiv.h f24, f6, f13, dyn # perform operation
fdiv.h f24, f6, f13, rdn # perform operation
fdiv.h f24, f6, f13, rmm # perform operation
fdiv.h f24, f6, f13, rne # perform operation
fdiv.h f24, f6, f13, rtz # perform operation
fdiv.h f24, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x28, 0x6a5f5d98e5c7b14d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fdiv.h f28, f8, f11, dyn # perform operation
fdiv.h f28, f8, f11, rdn # perform operation
fdiv.h f28, f8, f11, rmm # perform operation
fdiv.h f28, f8, f11, rne # perform operation
fdiv.h f28, f8, f11, rtz # perform operation
fdiv.h f28, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x4, 0x35c3fc20ab37f3a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fdiv.h f4, f15, f5, dyn # perform operation
fdiv.h f4, f15, f5, rdn # perform operation
fdiv.h f4, f15, f5, rmm # perform operation
fdiv.h f4, f15, f5, rne # perform operation
fdiv.h f4, f15, f5, rtz # perform operation
fdiv.h f4, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x1, 0x4e90da5bbc1cfc36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fdiv.h f1, f29, f17, dyn # perform operation
fdiv.h f1, f29, f17, rdn # perform operation
fdiv.h f1, f29, f17, rmm # perform operation
fdiv.h f1, f29, f17, rne # perform operation
fdiv.h f1, f29, f17, rtz # perform operation
fdiv.h f1, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x8, 0xfa75013cb6f0d988 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fdiv.h f8, f12, f13, dyn # perform operation
fdiv.h f8, f12, f13, rdn # perform operation
fdiv.h f8, f12, f13, rmm # perform operation
fdiv.h f8, f12, f13, rne # perform operation
fdiv.h f8, f12, f13, rtz # perform operation
fdiv.h f8, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x29, 0x9550bbc1554694f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fdiv.h f29, f12, f15, dyn # perform operation
fdiv.h f29, f12, f15, rdn # perform operation
fdiv.h f29, f12, f15, rmm # perform operation
fdiv.h f29, f12, f15, rne # perform operation
fdiv.h f29, f12, f15, rtz # perform operation
fdiv.h f29, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x18, 0x2c89c29853ee4a7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fdiv.h f18, f11, f5, dyn # perform operation
fdiv.h f18, f11, f5, rdn # perform operation
fdiv.h f18, f11, f5, rmm # perform operation
fdiv.h f18, f11, f5, rne # perform operation
fdiv.h f18, f11, f5, rtz # perform operation
fdiv.h f18, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x23, 0x2710a9db5246d982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fdiv.h f23, f29, f7, dyn # perform operation
fdiv.h f23, f29, f7, rdn # perform operation
fdiv.h f23, f29, f7, rmm # perform operation
fdiv.h f23, f29, f7, rne # perform operation
fdiv.h f23, f29, f7, rtz # perform operation
fdiv.h f23, f29, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f29, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x23, 0xf4b154fc1d6553dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fdiv.h f23, f31, f17, dyn # perform operation
fdiv.h f23, f31, f17, rdn # perform operation
fdiv.h f23, f31, f17, rmm # perform operation
fdiv.h f23, f31, f17, rne # perform operation
fdiv.h f23, f31, f17, rtz # perform operation
fdiv.h f23, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x25, 0xf145b98fdd3d7830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fdiv.h f25, f28, f26, dyn # perform operation
fdiv.h f25, f28, f26, rdn # perform operation
fdiv.h f25, f28, f26, rmm # perform operation
fdiv.h f25, f28, f26, rne # perform operation
fdiv.h f25, f28, f26, rtz # perform operation
fdiv.h f25, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x18, 0xd00d555e3bccd4d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fdiv.h f18, f17, f5, dyn # perform operation
fdiv.h f18, f17, f5, rdn # perform operation
fdiv.h f18, f17, f5, rmm # perform operation
fdiv.h f18, f17, f5, rne # perform operation
fdiv.h f18, f17, f5, rtz # perform operation
fdiv.h f18, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x1, 0x068462a9293ed3cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fdiv.h f1, f16, f17, dyn # perform operation
fdiv.h f1, f16, f17, rdn # perform operation
fdiv.h f1, f16, f17, rmm # perform operation
fdiv.h f1, f16, f17, rne # perform operation
fdiv.h f1, f16, f17, rtz # perform operation
fdiv.h f1, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x17, 0x60a3cc4e6eb4eea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fdiv.h f17, f8, f13, dyn # perform operation
fdiv.h f17, f8, f13, rdn # perform operation
fdiv.h f17, f8, f13, rmm # perform operation
fdiv.h f17, f8, f13, rne # perform operation
fdiv.h f17, f8, f13, rtz # perform operation
fdiv.h f17, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x8, 0x4e1b50e32d714458 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fdiv.h f8, f13, f31, dyn # perform operation
fdiv.h f8, f13, f31, rdn # perform operation
fdiv.h f8, f13, f31, rmm # perform operation
fdiv.h f8, f13, f31, rne # perform operation
fdiv.h f8, f13, f31, rtz # perform operation
fdiv.h f8, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x9, 0xbbd7e3470ccc544e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f9, f24, f8, dyn # perform operation
fdiv.h f9, f24, f8, rdn # perform operation
fdiv.h f9, f24, f8, rmm # perform operation
fdiv.h f9, f24, f8, rne # perform operation
fdiv.h f9, f24, f8, rtz # perform operation
fdiv.h f9, f24, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f24, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f24, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f24, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f24, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x13, 0x9c6877c4347b46f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fdiv.h f13, f19, f2, dyn # perform operation
fdiv.h f13, f19, f2, rdn # perform operation
fdiv.h f13, f19, f2, rmm # perform operation
fdiv.h f13, f19, f2, rne # perform operation
fdiv.h f13, f19, f2, rtz # perform operation
fdiv.h f13, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x25, 0x22f73402ae26932d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fdiv.h f25, f20, f21, dyn # perform operation
fdiv.h f25, f20, f21, rdn # perform operation
fdiv.h f25, f20, f21, rmm # perform operation
fdiv.h f25, f20, f21, rne # perform operation
fdiv.h f25, f20, f21, rtz # perform operation
fdiv.h f25, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x10, 0xaa888c36da1cc29f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fdiv.h f10, f18, f28, dyn # perform operation
fdiv.h f10, f18, f28, rdn # perform operation
fdiv.h f10, f18, f28, rmm # perform operation
fdiv.h f10, f18, f28, rne # perform operation
fdiv.h f10, f18, f28, rtz # perform operation
fdiv.h f10, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x1, 0x623bec06a32bfe5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fdiv.h f1, f15, f17, dyn # perform operation
fdiv.h f1, f15, f17, rdn # perform operation
fdiv.h f1, f15, f17, rmm # perform operation
fdiv.h f1, f15, f17, rne # perform operation
fdiv.h f1, f15, f17, rtz # perform operation
fdiv.h f1, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x7, 0xf95508fc5f8f761b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fdiv.h f7, f31, f14, dyn # perform operation
fdiv.h f7, f31, f14, rdn # perform operation
fdiv.h f7, f31, f14, rmm # perform operation
fdiv.h f7, f31, f14, rne # perform operation
fdiv.h f7, f31, f14, rtz # perform operation
fdiv.h f7, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x16, 0xad252784fc126f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fdiv.h f16, f20, f9, dyn # perform operation
fdiv.h f16, f20, f9, rdn # perform operation
fdiv.h f16, f20, f9, rmm # perform operation
fdiv.h f16, f20, f9, rne # perform operation
fdiv.h f16, f20, f9, rtz # perform operation
fdiv.h f16, f20, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f20, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f20, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f20, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f20, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f20, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x15, 0x281c54c8ef870536 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fdiv.h f15, f10, f18, dyn # perform operation
fdiv.h f15, f10, f18, rdn # perform operation
fdiv.h f15, f10, f18, rmm # perform operation
fdiv.h f15, f10, f18, rne # perform operation
fdiv.h f15, f10, f18, rtz # perform operation
fdiv.h f15, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x12, 0xb3b9b19edbe2ee5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fdiv.h f12, f4, f27, dyn # perform operation
fdiv.h f12, f4, f27, rdn # perform operation
fdiv.h f12, f4, f27, rmm # perform operation
fdiv.h f12, f4, f27, rne # perform operation
fdiv.h f12, f4, f27, rtz # perform operation
fdiv.h f12, f4, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f4, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f4, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f4, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f4, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x14, 0x9f2ab6b4096d4215 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fdiv.h f14, f6, f19, dyn # perform operation
fdiv.h f14, f6, f19, rdn # perform operation
fdiv.h f14, f6, f19, rmm # perform operation
fdiv.h f14, f6, f19, rne # perform operation
fdiv.h f14, f6, f19, rtz # perform operation
fdiv.h f14, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x24, 0x5dd6abf70a3f1bcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fdiv.h f24, f21, f28, dyn # perform operation
fdiv.h f24, f21, f28, rdn # perform operation
fdiv.h f24, f21, f28, rmm # perform operation
fdiv.h f24, f21, f28, rne # perform operation
fdiv.h f24, f21, f28, rtz # perform operation
fdiv.h f24, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x21, 0x4416dca0c1b8fa9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fdiv.h f21, f10, f13, dyn # perform operation
fdiv.h f21, f10, f13, rdn # perform operation
fdiv.h f21, f10, f13, rmm # perform operation
fdiv.h f21, f10, f13, rne # perform operation
fdiv.h f21, f10, f13, rtz # perform operation
fdiv.h f21, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x1, 0x25c76dd23c271c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fdiv.h f1, f26, f4, dyn # perform operation
fdiv.h f1, f26, f4, rdn # perform operation
fdiv.h f1, f26, f4, rmm # perform operation
fdiv.h f1, f26, f4, rne # perform operation
fdiv.h f1, f26, f4, rtz # perform operation
fdiv.h f1, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x23, 0xd7b226d41e687576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fdiv.h f23, f9, f17, dyn # perform operation
fdiv.h f23, f9, f17, rdn # perform operation
fdiv.h f23, f9, f17, rmm # perform operation
fdiv.h f23, f9, f17, rne # perform operation
fdiv.h f23, f9, f17, rtz # perform operation
fdiv.h f23, f9, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f9, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f9, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f9, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f9, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x6, 0x16acf4d7e6568cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f6, f7, f9, dyn # perform operation
fdiv.h f6, f7, f9, rdn # perform operation
fdiv.h f6, f7, f9, rmm # perform operation
fdiv.h f6, f7, f9, rne # perform operation
fdiv.h f6, f7, f9, rtz # perform operation
fdiv.h f6, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x10, 0xb848e019630c8cf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fdiv.h f10, f13, f20, dyn # perform operation
fdiv.h f10, f13, f20, rdn # perform operation
fdiv.h f10, f13, f20, rmm # perform operation
fdiv.h f10, f13, f20, rne # perform operation
fdiv.h f10, f13, f20, rtz # perform operation
fdiv.h f10, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x6, 0x397ac87dfc93ced3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f6, f21, f16, dyn # perform operation
fdiv.h f6, f21, f16, rdn # perform operation
fdiv.h f6, f21, f16, rmm # perform operation
fdiv.h f6, f21, f16, rne # perform operation
fdiv.h f6, f21, f16, rtz # perform operation
fdiv.h f6, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x27, 0x7cd1b51f1b3afa44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fdiv.h f27, f10, f24, dyn # perform operation
fdiv.h f27, f10, f24, rdn # perform operation
fdiv.h f27, f10, f24, rmm # perform operation
fdiv.h f27, f10, f24, rne # perform operation
fdiv.h f27, f10, f24, rtz # perform operation
fdiv.h f27, f10, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f10, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x31, 0x57c101e799fa326d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
fdiv.h f31, f11, f27, dyn # perform operation
fdiv.h f31, f11, f27, rdn # perform operation
fdiv.h f31, f11, f27, rmm # perform operation
fdiv.h f31, f11, f27, rne # perform operation
fdiv.h f31, f11, f27, rtz # perform operation
fdiv.h f31, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x31, 0xd6d0e017405abff7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f31, f15, f13, dyn # perform operation
fdiv.h f31, f15, f13, rdn # perform operation
fdiv.h f31, f15, f13, rmm # perform operation
fdiv.h f31, f15, f13, rne # perform operation
fdiv.h f31, f15, f13, rtz # perform operation
fdiv.h f31, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x17, 0xf8a2c3045f6a5712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f17, f26, f25, dyn # perform operation
fdiv.h f17, f26, f25, rdn # perform operation
fdiv.h f17, f26, f25, rmm # perform operation
fdiv.h f17, f26, f25, rne # perform operation
fdiv.h f17, f26, f25, rtz # perform operation
fdiv.h f17, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x3, 0xcbe599185304a29a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fdiv.h f3, f17, f24, dyn # perform operation
fdiv.h f3, f17, f24, rdn # perform operation
fdiv.h f3, f17, f24, rmm # perform operation
fdiv.h f3, f17, f24, rne # perform operation
fdiv.h f3, f17, f24, rtz # perform operation
fdiv.h f3, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x30, 0xe397f1b9a13e7593 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fdiv.h f30, f16, f14, dyn # perform operation
fdiv.h f30, f16, f14, rdn # perform operation
fdiv.h f30, f16, f14, rmm # perform operation
fdiv.h f30, f16, f14, rne # perform operation
fdiv.h f30, f16, f14, rtz # perform operation
fdiv.h f30, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x25, 0xc4d80919e129799b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fdiv.h f25, f13, f9, dyn # perform operation
fdiv.h f25, f13, f9, rdn # perform operation
fdiv.h f25, f13, f9, rmm # perform operation
fdiv.h f25, f13, f9, rne # perform operation
fdiv.h f25, f13, f9, rtz # perform operation
fdiv.h f25, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x27, 0x3920d191f0dd6f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fdiv.h f27, f31, f26, dyn # perform operation
fdiv.h f27, f31, f26, rdn # perform operation
fdiv.h f27, f31, f26, rmm # perform operation
fdiv.h f27, f31, f26, rne # perform operation
fdiv.h f27, f31, f26, rtz # perform operation
fdiv.h f27, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x16, 0x0f3748576144c9eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fdiv.h f16, f27, f25, dyn # perform operation
fdiv.h f16, f27, f25, rdn # perform operation
fdiv.h f16, f27, f25, rmm # perform operation
fdiv.h f16, f27, f25, rne # perform operation
fdiv.h f16, f27, f25, rtz # perform operation
fdiv.h f16, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x16, 0xf08de245c06662f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fdiv.h f16, f6, f13, dyn # perform operation
fdiv.h f16, f6, f13, rdn # perform operation
fdiv.h f16, f6, f13, rmm # perform operation
fdiv.h f16, f6, f13, rne # perform operation
fdiv.h f16, f6, f13, rtz # perform operation
fdiv.h f16, f6, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f6, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f6, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f6, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f6, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x25, 0xef766097c4d964c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fdiv.h f25, f23, f9, dyn # perform operation
fdiv.h f25, f23, f9, rdn # perform operation
fdiv.h f25, f23, f9, rmm # perform operation
fdiv.h f25, f23, f9, rne # perform operation
fdiv.h f25, f23, f9, rtz # perform operation
fdiv.h f25, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x19, 0xd6138dff7d43b13c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fdiv.h f19, f1, f7, dyn # perform operation
fdiv.h f19, f1, f7, rdn # perform operation
fdiv.h f19, f1, f7, rmm # perform operation
fdiv.h f19, f1, f7, rne # perform operation
fdiv.h f19, f1, f7, rtz # perform operation
fdiv.h f19, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x23, 0x780f53a4825cadd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fdiv.h f23, f18, f12, dyn # perform operation
fdiv.h f23, f18, f12, rdn # perform operation
fdiv.h f23, f18, f12, rmm # perform operation
fdiv.h f23, f18, f12, rne # perform operation
fdiv.h f23, f18, f12, rtz # perform operation
fdiv.h f23, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x20, 0xe91b8e4f0381e3ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fdiv.h f20, f25, f26, dyn # perform operation
fdiv.h f20, f25, f26, rdn # perform operation
fdiv.h f20, f25, f26, rmm # perform operation
fdiv.h f20, f25, f26, rne # perform operation
fdiv.h f20, f25, f26, rtz # perform operation
fdiv.h f20, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x5, 0x3fe528f9897949cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fdiv.h f5, f8, f26, dyn # perform operation
fdiv.h f5, f8, f26, rdn # perform operation
fdiv.h f5, f8, f26, rmm # perform operation
fdiv.h f5, f8, f26, rne # perform operation
fdiv.h f5, f8, f26, rtz # perform operation
fdiv.h f5, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x19, 0xf5e33bfa08707650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fdiv.h f19, f15, f16, dyn # perform operation
fdiv.h f19, f15, f16, rdn # perform operation
fdiv.h f19, f15, f16, rmm # perform operation
fdiv.h f19, f15, f16, rne # perform operation
fdiv.h f19, f15, f16, rtz # perform operation
fdiv.h f19, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x5, 0x932e7272c9c58c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fdiv.h f5, f20, f2, dyn # perform operation
fdiv.h f5, f20, f2, rdn # perform operation
fdiv.h f5, f20, f2, rmm # perform operation
fdiv.h f5, f20, f2, rne # perform operation
fdiv.h f5, f20, f2, rtz # perform operation
fdiv.h f5, f20, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f20, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f20, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f20, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f20, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x17, 0xba621499937ac7e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fdiv.h f17, f30, f8, dyn # perform operation
fdiv.h f17, f30, f8, rdn # perform operation
fdiv.h f17, f30, f8, rmm # perform operation
fdiv.h f17, f30, f8, rne # perform operation
fdiv.h f17, f30, f8, rtz # perform operation
fdiv.h f17, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x3, 0x180fbd8db7e2d389 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fdiv.h f3, f4, f24, dyn # perform operation
fdiv.h f3, f4, f24, rdn # perform operation
fdiv.h f3, f4, f24, rmm # perform operation
fdiv.h f3, f4, f24, rne # perform operation
fdiv.h f3, f4, f24, rtz # perform operation
fdiv.h f3, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x2, 0x14e273aa1748c52e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fdiv.h f2, f1, f3, dyn # perform operation
fdiv.h f2, f1, f3, rdn # perform operation
fdiv.h f2, f1, f3, rmm # perform operation
fdiv.h f2, f1, f3, rne # perform operation
fdiv.h f2, f1, f3, rtz # perform operation
fdiv.h f2, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x9, 0x9a65551d096fb1d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fdiv.h f9, f18, f7, dyn # perform operation
fdiv.h f9, f18, f7, rdn # perform operation
fdiv.h f9, f18, f7, rmm # perform operation
fdiv.h f9, f18, f7, rne # perform operation
fdiv.h f9, f18, f7, rtz # perform operation
fdiv.h f9, f18, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f18, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f18, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f18, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f18, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x31, 0x95ca9bdc35e0defc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fdiv.h f31, f16, f4, dyn # perform operation
fdiv.h f31, f16, f4, rdn # perform operation
fdiv.h f31, f16, f4, rmm # perform operation
fdiv.h f31, f16, f4, rne # perform operation
fdiv.h f31, f16, f4, rtz # perform operation
fdiv.h f31, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x21, 0x8c075efca04d4cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fdiv.h f21, f3, f18, dyn # perform operation
fdiv.h f21, f3, f18, rdn # perform operation
fdiv.h f21, f3, f18, rmm # perform operation
fdiv.h f21, f3, f18, rne # perform operation
fdiv.h f21, f3, f18, rtz # perform operation
fdiv.h f21, f3, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f3, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f3, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f3, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f3, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f3, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x18, 0x1027f963551177fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fdiv.h f18, f29, f31, dyn # perform operation
fdiv.h f18, f29, f31, rdn # perform operation
fdiv.h f18, f29, f31, rmm # perform operation
fdiv.h f18, f29, f31, rne # perform operation
fdiv.h f18, f29, f31, rtz # perform operation
fdiv.h f18, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x6, 0x2b34c98bdefbd8da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fdiv.h f6, f22, f14, dyn # perform operation
fdiv.h f6, f22, f14, rdn # perform operation
fdiv.h f6, f22, f14, rmm # perform operation
fdiv.h f6, f22, f14, rne # perform operation
fdiv.h f6, f22, f14, rtz # perform operation
fdiv.h f6, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x24, 0x71150dd963a05d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fdiv.h f24, f1, f7, dyn # perform operation
fdiv.h f24, f1, f7, rdn # perform operation
fdiv.h f24, f1, f7, rmm # perform operation
fdiv.h f24, f1, f7, rne # perform operation
fdiv.h f24, f1, f7, rtz # perform operation
fdiv.h f24, f1, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f1, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f1, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f1, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f1, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x21, 0xed59af6091a95b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fdiv.h f21, f19, f14, dyn # perform operation
fdiv.h f21, f19, f14, rdn # perform operation
fdiv.h f21, f19, f14, rmm # perform operation
fdiv.h f21, f19, f14, rne # perform operation
fdiv.h f21, f19, f14, rtz # perform operation
fdiv.h f21, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x20, 0x3f7f1e63e3a2851c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fdiv.h f20, f11, f29, dyn # perform operation
fdiv.h f20, f11, f29, rdn # perform operation
fdiv.h f20, f11, f29, rmm # perform operation
fdiv.h f20, f11, f29, rne # perform operation
fdiv.h f20, f11, f29, rtz # perform operation
fdiv.h f20, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x1, 0x8518e4047f9498c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fdiv.h f1, f17, f28, dyn # perform operation
fdiv.h f1, f17, f28, rdn # perform operation
fdiv.h f1, f17, f28, rmm # perform operation
fdiv.h f1, f17, f28, rne # perform operation
fdiv.h f1, f17, f28, rtz # perform operation
fdiv.h f1, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x23, 0xd51350e784845493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fdiv.h f23, f25, f16, dyn # perform operation
fdiv.h f23, f25, f16, rdn # perform operation
fdiv.h f23, f25, f16, rmm # perform operation
fdiv.h f23, f25, f16, rne # perform operation
fdiv.h f23, f25, f16, rtz # perform operation
fdiv.h f23, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x15, 0x2ab37ad7485b7407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fdiv.h f15, f27, f28, dyn # perform operation
fdiv.h f15, f27, f28, rdn # perform operation
fdiv.h f15, f27, f28, rmm # perform operation
fdiv.h f15, f27, f28, rne # perform operation
fdiv.h f15, f27, f28, rtz # perform operation
fdiv.h f15, f27, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x29, 0x34ddc9461eaba08d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fdiv.h f29, f4, f26, dyn # perform operation
fdiv.h f29, f4, f26, rdn # perform operation
fdiv.h f29, f4, f26, rmm # perform operation
fdiv.h f29, f4, f26, rne # perform operation
fdiv.h f29, f4, f26, rtz # perform operation
fdiv.h f29, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x17, 0xaf8f5e01cdac5fe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fdiv.h f17, f31, f14, dyn # perform operation
fdiv.h f17, f31, f14, rdn # perform operation
fdiv.h f17, f31, f14, rmm # perform operation
fdiv.h f17, f31, f14, rne # perform operation
fdiv.h f17, f31, f14, rtz # perform operation
fdiv.h f17, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x17, 0xf52dd7c0c1ebe7f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fdiv.h f17, f7, f29, dyn # perform operation
fdiv.h f17, f7, f29, rdn # perform operation
fdiv.h f17, f7, f29, rmm # perform operation
fdiv.h f17, f7, f29, rne # perform operation
fdiv.h f17, f7, f29, rtz # perform operation
fdiv.h f17, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x29, 0x8fe0d1ab8abf94ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fdiv.h f29, f20, f5, dyn # perform operation
fdiv.h f29, f20, f5, rdn # perform operation
fdiv.h f29, f20, f5, rmm # perform operation
fdiv.h f29, f20, f5, rne # perform operation
fdiv.h f29, f20, f5, rtz # perform operation
fdiv.h f29, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x8, 0x22ecbe4c255e3342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f8, f20, f24, dyn # perform operation
fdiv.h f8, f20, f24, rdn # perform operation
fdiv.h f8, f20, f24, rmm # perform operation
fdiv.h f8, f20, f24, rne # perform operation
fdiv.h f8, f20, f24, rtz # perform operation
fdiv.h f8, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x8, 0x4a84c4e6a373acc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fdiv.h f8, f7, f16, dyn # perform operation
fdiv.h f8, f7, f16, rdn # perform operation
fdiv.h f8, f7, f16, rmm # perform operation
fdiv.h f8, f7, f16, rne # perform operation
fdiv.h f8, f7, f16, rtz # perform operation
fdiv.h f8, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x26, 0x2433d7edf86ea0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fdiv.h f26, f22, f16, dyn # perform operation
fdiv.h f26, f22, f16, rdn # perform operation
fdiv.h f26, f22, f16, rmm # perform operation
fdiv.h f26, f22, f16, rne # perform operation
fdiv.h f26, f22, f16, rtz # perform operation
fdiv.h f26, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x20, 0xc2ebc2ce9c383d7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fdiv.h f20, f16, f3, dyn # perform operation
fdiv.h f20, f16, f3, rdn # perform operation
fdiv.h f20, f16, f3, rmm # perform operation
fdiv.h f20, f16, f3, rne # perform operation
fdiv.h f20, f16, f3, rtz # perform operation
fdiv.h f20, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x23, 0x813b3099a5be2144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fdiv.h f23, f5, f6, dyn # perform operation
fdiv.h f23, f5, f6, rdn # perform operation
fdiv.h f23, f5, f6, rmm # perform operation
fdiv.h f23, f5, f6, rne # perform operation
fdiv.h f23, f5, f6, rtz # perform operation
fdiv.h f23, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x31, 0x8bb46cec389d92eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fdiv.h f31, f21, f4, dyn # perform operation
fdiv.h f31, f21, f4, rdn # perform operation
fdiv.h f31, f21, f4, rmm # perform operation
fdiv.h f31, f21, f4, rne # perform operation
fdiv.h f31, f21, f4, rtz # perform operation
fdiv.h f31, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x27, 0x06dd78d842ef139c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fdiv.h f27, f23, f1, dyn # perform operation
fdiv.h f27, f23, f1, rdn # perform operation
fdiv.h f27, f23, f1, rmm # perform operation
fdiv.h f27, f23, f1, rne # perform operation
fdiv.h f27, f23, f1, rtz # perform operation
fdiv.h f27, f23, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f23, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f23, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f23, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f23, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x4, 0x9e202be45787b1e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f4, f8, f15, dyn # perform operation
fdiv.h f4, f8, f15, rdn # perform operation
fdiv.h f4, f8, f15, rmm # perform operation
fdiv.h f4, f8, f15, rne # perform operation
fdiv.h f4, f8, f15, rtz # perform operation
fdiv.h f4, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x31, 0x9ce1a6446e4b12af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fdiv.h f31, f22, f30, dyn # perform operation
fdiv.h f31, f22, f30, rdn # perform operation
fdiv.h f31, f22, f30, rmm # perform operation
fdiv.h f31, f22, f30, rne # perform operation
fdiv.h f31, f22, f30, rtz # perform operation
fdiv.h f31, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x22, 0x7d240b0c5493bb4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fdiv.h f22, f20, f25, dyn # perform operation
fdiv.h f22, f20, f25, rdn # perform operation
fdiv.h f22, f20, f25, rmm # perform operation
fdiv.h f22, f20, f25, rne # perform operation
fdiv.h f22, f20, f25, rtz # perform operation
fdiv.h f22, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x1, 0xe803e16ea7bb8d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f1, f3, f15, dyn # perform operation
fdiv.h f1, f3, f15, rdn # perform operation
fdiv.h f1, f3, f15, rmm # perform operation
fdiv.h f1, f3, f15, rne # perform operation
fdiv.h f1, f3, f15, rtz # perform operation
fdiv.h f1, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x19, 0xc091a674b002a52e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fdiv.h f19, f15, f26, dyn # perform operation
fdiv.h f19, f15, f26, rdn # perform operation
fdiv.h f19, f15, f26, rmm # perform operation
fdiv.h f19, f15, f26, rne # perform operation
fdiv.h f19, f15, f26, rtz # perform operation
fdiv.h f19, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x28, 0xcc32ade521512013 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fdiv.h f28, f18, f10, dyn # perform operation
fdiv.h f28, f18, f10, rdn # perform operation
fdiv.h f28, f18, f10, rmm # perform operation
fdiv.h f28, f18, f10, rne # perform operation
fdiv.h f28, f18, f10, rtz # perform operation
fdiv.h f28, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x26, 0xb20819b2bbf5a91a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fdiv.h f26, f25, f7, dyn # perform operation
fdiv.h f26, f25, f7, rdn # perform operation
fdiv.h f26, f25, f7, rmm # perform operation
fdiv.h f26, f25, f7, rne # perform operation
fdiv.h f26, f25, f7, rtz # perform operation
fdiv.h f26, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x11, 0xe8f0b651e941dae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fdiv.h f11, f14, f25, dyn # perform operation
fdiv.h f11, f14, f25, rdn # perform operation
fdiv.h f11, f14, f25, rmm # perform operation
fdiv.h f11, f14, f25, rne # perform operation
fdiv.h f11, f14, f25, rtz # perform operation
fdiv.h f11, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x31, 0xa8c9b2bb862dfa18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fdiv.h f31, f29, f19, dyn # perform operation
fdiv.h f31, f29, f19, rdn # perform operation
fdiv.h f31, f29, f19, rmm # perform operation
fdiv.h f31, f29, f19, rne # perform operation
fdiv.h f31, f29, f19, rtz # perform operation
fdiv.h f31, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x22, 0x028d9995c5e95e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fdiv.h f22, f27, f2, dyn # perform operation
fdiv.h f22, f27, f2, rdn # perform operation
fdiv.h f22, f27, f2, rmm # perform operation
fdiv.h f22, f27, f2, rne # perform operation
fdiv.h f22, f27, f2, rtz # perform operation
fdiv.h f22, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x20, 0x21795c11b7033f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f20, f6, f12, dyn # perform operation
fdiv.h f20, f6, f12, rdn # perform operation
fdiv.h f20, f6, f12, rmm # perform operation
fdiv.h f20, f6, f12, rne # perform operation
fdiv.h f20, f6, f12, rtz # perform operation
fdiv.h f20, f6, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f6, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f6, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f6, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f6, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x8, 0x63732a7bbb5f79e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fdiv.h f8, f27, f11, dyn # perform operation
fdiv.h f8, f27, f11, rdn # perform operation
fdiv.h f8, f27, f11, rmm # perform operation
fdiv.h f8, f27, f11, rne # perform operation
fdiv.h f8, f27, f11, rtz # perform operation
fdiv.h f8, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x2, 0xae5f7af718a789f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fdiv.h f2, f3, f27, dyn # perform operation
fdiv.h f2, f3, f27, rdn # perform operation
fdiv.h f2, f3, f27, rmm # perform operation
fdiv.h f2, f3, f27, rne # perform operation
fdiv.h f2, f3, f27, rtz # perform operation
fdiv.h f2, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x13, 0xc6eee1672dd13cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fdiv.h f13, f17, f9, dyn # perform operation
fdiv.h f13, f17, f9, rdn # perform operation
fdiv.h f13, f17, f9, rmm # perform operation
fdiv.h f13, f17, f9, rne # perform operation
fdiv.h f13, f17, f9, rtz # perform operation
fdiv.h f13, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x27, 0x5b5b7c1468849ad3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fdiv.h f27, f13, f17, dyn # perform operation
fdiv.h f27, f13, f17, rdn # perform operation
fdiv.h f27, f13, f17, rmm # perform operation
fdiv.h f27, f13, f17, rne # perform operation
fdiv.h f27, f13, f17, rtz # perform operation
fdiv.h f27, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x27, 0x0936d2589dee80b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fdiv.h f27, f9, f15, dyn # perform operation
fdiv.h f27, f9, f15, rdn # perform operation
fdiv.h f27, f9, f15, rmm # perform operation
fdiv.h f27, f9, f15, rne # perform operation
fdiv.h f27, f9, f15, rtz # perform operation
fdiv.h f27, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x20, 0xf8eef75cd7ac0ba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fdiv.h f20, f19, f17, dyn # perform operation
fdiv.h f20, f19, f17, rdn # perform operation
fdiv.h f20, f19, f17, rmm # perform operation
fdiv.h f20, f19, f17, rne # perform operation
fdiv.h f20, f19, f17, rtz # perform operation
fdiv.h f20, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x24, 0xff3be7bb95332789 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fdiv.h f24, f1, f25, dyn # perform operation
fdiv.h f24, f1, f25, rdn # perform operation
fdiv.h f24, f1, f25, rmm # perform operation
fdiv.h f24, f1, f25, rne # perform operation
fdiv.h f24, f1, f25, rtz # perform operation
fdiv.h f24, f1, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f1, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f1, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f1, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f1, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x23, 0xa33720ae30487d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fdiv.h f23, f7, f28, dyn # perform operation
fdiv.h f23, f7, f28, rdn # perform operation
fdiv.h f23, f7, f28, rmm # perform operation
fdiv.h f23, f7, f28, rne # perform operation
fdiv.h f23, f7, f28, rtz # perform operation
fdiv.h f23, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x7, 0x2ead541f9c7e12ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fdiv.h f7, f4, f23, dyn # perform operation
fdiv.h f7, f4, f23, rdn # perform operation
fdiv.h f7, f4, f23, rmm # perform operation
fdiv.h f7, f4, f23, rne # perform operation
fdiv.h f7, f4, f23, rtz # perform operation
fdiv.h f7, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x22, 0x9468ca993949e9bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fdiv.h f22, f17, f13, dyn # perform operation
fdiv.h f22, f17, f13, rdn # perform operation
fdiv.h f22, f17, f13, rmm # perform operation
fdiv.h f22, f17, f13, rne # perform operation
fdiv.h f22, f17, f13, rtz # perform operation
fdiv.h f22, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x17, 0x39530fb8d30e1b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fdiv.h f17, f6, f29, dyn # perform operation
fdiv.h f17, f6, f29, rdn # perform operation
fdiv.h f17, f6, f29, rmm # perform operation
fdiv.h f17, f6, f29, rne # perform operation
fdiv.h f17, f6, f29, rtz # perform operation
fdiv.h f17, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x8, 0x53d4967cac7fcac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fdiv.h f8, f3, f30, dyn # perform operation
fdiv.h f8, f3, f30, rdn # perform operation
fdiv.h f8, f3, f30, rmm # perform operation
fdiv.h f8, f3, f30, rne # perform operation
fdiv.h f8, f3, f30, rtz # perform operation
fdiv.h f8, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x20, 0x8e3e4dd182fb81e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fdiv.h f20, f8, f23, dyn # perform operation
fdiv.h f20, f8, f23, rdn # perform operation
fdiv.h f20, f8, f23, rmm # perform operation
fdiv.h f20, f8, f23, rne # perform operation
fdiv.h f20, f8, f23, rtz # perform operation
fdiv.h f20, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x14, 0xdad4296b82cf9a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fdiv.h f14, f21, f26, dyn # perform operation
fdiv.h f14, f21, f26, rdn # perform operation
fdiv.h f14, f21, f26, rmm # perform operation
fdiv.h f14, f21, f26, rne # perform operation
fdiv.h f14, f21, f26, rtz # perform operation
fdiv.h f14, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x30, 0xa9c49aedea330dfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fdiv.h f30, f19, f27, dyn # perform operation
fdiv.h f30, f19, f27, rdn # perform operation
fdiv.h f30, f19, f27, rmm # perform operation
fdiv.h f30, f19, f27, rne # perform operation
fdiv.h f30, f19, f27, rtz # perform operation
fdiv.h f30, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x6, 0xe21f0035901ce926 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fdiv.h f6, f30, f1, dyn # perform operation
fdiv.h f6, f30, f1, rdn # perform operation
fdiv.h f6, f30, f1, rmm # perform operation
fdiv.h f6, f30, f1, rne # perform operation
fdiv.h f6, f30, f1, rtz # perform operation
fdiv.h f6, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x29, 0xc3b5216c67627c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fdiv.h f29, f26, f15, dyn # perform operation
fdiv.h f29, f26, f15, rdn # perform operation
fdiv.h f29, f26, f15, rmm # perform operation
fdiv.h f29, f26, f15, rne # perform operation
fdiv.h f29, f26, f15, rtz # perform operation
fdiv.h f29, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x20, 0x2756330d7a539fdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fdiv.h f20, f13, f28, dyn # perform operation
fdiv.h f20, f13, f28, rdn # perform operation
fdiv.h f20, f13, f28, rmm # perform operation
fdiv.h f20, f13, f28, rne # perform operation
fdiv.h f20, f13, f28, rtz # perform operation
fdiv.h f20, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x31, 0xaad159f4c8b65860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fdiv.h f31, f25, f5, dyn # perform operation
fdiv.h f31, f25, f5, rdn # perform operation
fdiv.h f31, f25, f5, rmm # perform operation
fdiv.h f31, f25, f5, rne # perform operation
fdiv.h f31, f25, f5, rtz # perform operation
fdiv.h f31, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x22, 0x1837280ac8e1bfd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fdiv.h f22, f2, f27, dyn # perform operation
fdiv.h f22, f2, f27, rdn # perform operation
fdiv.h f22, f2, f27, rmm # perform operation
fdiv.h f22, f2, f27, rne # perform operation
fdiv.h f22, f2, f27, rtz # perform operation
fdiv.h f22, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x24, 0x5d367a0e80f2535a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fdiv.h f24, f12, f4, dyn # perform operation
fdiv.h f24, f12, f4, rdn # perform operation
fdiv.h f24, f12, f4, rmm # perform operation
fdiv.h f24, f12, f4, rne # perform operation
fdiv.h f24, f12, f4, rtz # perform operation
fdiv.h f24, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x20, 0xc1f397b00f9ce4ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fdiv.h f20, f18, f1, dyn # perform operation
fdiv.h f20, f18, f1, rdn # perform operation
fdiv.h f20, f18, f1, rmm # perform operation
fdiv.h f20, f18, f1, rne # perform operation
fdiv.h f20, f18, f1, rtz # perform operation
fdiv.h f20, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x2, 0xa0dad3f2fe4dfe39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fdiv.h f2, f27, f4, dyn # perform operation
fdiv.h f2, f27, f4, rdn # perform operation
fdiv.h f2, f27, f4, rmm # perform operation
fdiv.h f2, f27, f4, rne # perform operation
fdiv.h f2, f27, f4, rtz # perform operation
fdiv.h f2, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x1, 0x9cac5f9519f6383b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fdiv.h f1, f31, f11, dyn # perform operation
fdiv.h f1, f31, f11, rdn # perform operation
fdiv.h f1, f31, f11, rmm # perform operation
fdiv.h f1, f31, f11, rne # perform operation
fdiv.h f1, f31, f11, rtz # perform operation
fdiv.h f1, f31, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f31, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f31, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f31, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f31, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x14, 0x9dafaada2431bee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fdiv.h f14, f16, f1, dyn # perform operation
fdiv.h f14, f16, f1, rdn # perform operation
fdiv.h f14, f16, f1, rmm # perform operation
fdiv.h f14, f16, f1, rne # perform operation
fdiv.h f14, f16, f1, rtz # perform operation
fdiv.h f14, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x24, 0x41657f7e89d8d0fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f24, f20, f12, dyn # perform operation
fdiv.h f24, f20, f12, rdn # perform operation
fdiv.h f24, f20, f12, rmm # perform operation
fdiv.h f24, f20, f12, rne # perform operation
fdiv.h f24, f20, f12, rtz # perform operation
fdiv.h f24, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x5, 0x8251275792a9ccfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fdiv.h f5, f23, f4, dyn # perform operation
fdiv.h f5, f23, f4, rdn # perform operation
fdiv.h f5, f23, f4, rmm # perform operation
fdiv.h f5, f23, f4, rne # perform operation
fdiv.h f5, f23, f4, rtz # perform operation
fdiv.h f5, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x25, 0x17901482764adc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fdiv.h f25, f8, f14, dyn # perform operation
fdiv.h f25, f8, f14, rdn # perform operation
fdiv.h f25, f8, f14, rmm # perform operation
fdiv.h f25, f8, f14, rne # perform operation
fdiv.h f25, f8, f14, rtz # perform operation
fdiv.h f25, f8, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f8, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x13, 0xf2cc32573f3b6fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fdiv.h f13, f4, f30, dyn # perform operation
fdiv.h f13, f4, f30, rdn # perform operation
fdiv.h f13, f4, f30, rmm # perform operation
fdiv.h f13, f4, f30, rne # perform operation
fdiv.h f13, f4, f30, rtz # perform operation
fdiv.h f13, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x6, 0x05605beef345d659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fdiv.h f6, f24, f4, dyn # perform operation
fdiv.h f6, f24, f4, rdn # perform operation
fdiv.h f6, f24, f4, rmm # perform operation
fdiv.h f6, f24, f4, rne # perform operation
fdiv.h f6, f24, f4, rtz # perform operation
fdiv.h f6, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x20, 0x8a1a61edbfe7c810 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fdiv.h f20, f24, f5, dyn # perform operation
fdiv.h f20, f24, f5, rdn # perform operation
fdiv.h f20, f24, f5, rmm # perform operation
fdiv.h f20, f24, f5, rne # perform operation
fdiv.h f20, f24, f5, rtz # perform operation
fdiv.h f20, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x19, 0x6ada0385b9d26e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fdiv.h f19, f21, f27, dyn # perform operation
fdiv.h f19, f21, f27, rdn # perform operation
fdiv.h f19, f21, f27, rmm # perform operation
fdiv.h f19, f21, f27, rne # perform operation
fdiv.h f19, f21, f27, rtz # perform operation
fdiv.h f19, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x1, 0x18f22eea7c45d20b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f1, f12, f31, dyn # perform operation
fdiv.h f1, f12, f31, rdn # perform operation
fdiv.h f1, f12, f31, rmm # perform operation
fdiv.h f1, f12, f31, rne # perform operation
fdiv.h f1, f12, f31, rtz # perform operation
fdiv.h f1, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x27, 0x13dbfcfe07f713ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fdiv.h f27, f5, f3, dyn # perform operation
fdiv.h f27, f5, f3, rdn # perform operation
fdiv.h f27, f5, f3, rmm # perform operation
fdiv.h f27, f5, f3, rne # perform operation
fdiv.h f27, f5, f3, rtz # perform operation
fdiv.h f27, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x27, 0xbd5d8608f49d7292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fdiv.h f27, f22, f10, dyn # perform operation
fdiv.h f27, f22, f10, rdn # perform operation
fdiv.h f27, f22, f10, rmm # perform operation
fdiv.h f27, f22, f10, rne # perform operation
fdiv.h f27, f22, f10, rtz # perform operation
fdiv.h f27, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x13, 0x9882fb66f4f50f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fdiv.h f13, f7, f28, dyn # perform operation
fdiv.h f13, f7, f28, rdn # perform operation
fdiv.h f13, f7, f28, rmm # perform operation
fdiv.h f13, f7, f28, rne # perform operation
fdiv.h f13, f7, f28, rtz # perform operation
fdiv.h f13, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x28, 0x7e25f59cd85dd946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fdiv.h f28, f4, f15, dyn # perform operation
fdiv.h f28, f4, f15, rdn # perform operation
fdiv.h f28, f4, f15, rmm # perform operation
fdiv.h f28, f4, f15, rne # perform operation
fdiv.h f28, f4, f15, rtz # perform operation
fdiv.h f28, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x6, 0x7203d5f05fc86de6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fdiv.h f6, f31, f19, dyn # perform operation
fdiv.h f6, f31, f19, rdn # perform operation
fdiv.h f6, f31, f19, rmm # perform operation
fdiv.h f6, f31, f19, rne # perform operation
fdiv.h f6, f31, f19, rtz # perform operation
fdiv.h f6, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x26, 0xfeec0f0adef5b0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fdiv.h f26, f31, f29, dyn # perform operation
fdiv.h f26, f31, f29, rdn # perform operation
fdiv.h f26, f31, f29, rmm # perform operation
fdiv.h f26, f31, f29, rne # perform operation
fdiv.h f26, f31, f29, rtz # perform operation
fdiv.h f26, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x21, 0x8349869e1780d6f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fdiv.h f21, f9, f8, dyn # perform operation
fdiv.h f21, f9, f8, rdn # perform operation
fdiv.h f21, f9, f8, rmm # perform operation
fdiv.h f21, f9, f8, rne # perform operation
fdiv.h f21, f9, f8, rtz # perform operation
fdiv.h f21, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x12, 0x513e93ea0e7c4161 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fdiv.h f12, f20, f31, dyn # perform operation
fdiv.h f12, f20, f31, rdn # perform operation
fdiv.h f12, f20, f31, rmm # perform operation
fdiv.h f12, f20, f31, rne # perform operation
fdiv.h f12, f20, f31, rtz # perform operation
fdiv.h f12, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x13, 0x819be28ae8d9256f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fdiv.h f13, f26, f20, dyn # perform operation
fdiv.h f13, f26, f20, rdn # perform operation
fdiv.h f13, f26, f20, rmm # perform operation
fdiv.h f13, f26, f20, rne # perform operation
fdiv.h f13, f26, f20, rtz # perform operation
fdiv.h f13, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x12, 0x3d328738abe5c972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fdiv.h f12, f28, f21, dyn # perform operation
fdiv.h f12, f28, f21, rdn # perform operation
fdiv.h f12, f28, f21, rmm # perform operation
fdiv.h f12, f28, f21, rne # perform operation
fdiv.h f12, f28, f21, rtz # perform operation
fdiv.h f12, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x19, 0x184646de761eff3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
fdiv.h f19, f27, f18, dyn # perform operation
fdiv.h f19, f27, f18, rdn # perform operation
fdiv.h f19, f27, f18, rmm # perform operation
fdiv.h f19, f27, f18, rne # perform operation
fdiv.h f19, f27, f18, rtz # perform operation
fdiv.h f19, f27, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f27, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x31, 0x44920a25cf968166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fdiv.h f31, f21, f15, dyn # perform operation
fdiv.h f31, f21, f15, rdn # perform operation
fdiv.h f31, f21, f15, rmm # perform operation
fdiv.h f31, f21, f15, rne # perform operation
fdiv.h f31, f21, f15, rtz # perform operation
fdiv.h f31, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x16, 0xca78f3ad456b48c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fdiv.h f16, f23, f9, dyn # perform operation
fdiv.h f16, f23, f9, rdn # perform operation
fdiv.h f16, f23, f9, rmm # perform operation
fdiv.h f16, f23, f9, rne # perform operation
fdiv.h f16, f23, f9, rtz # perform operation
fdiv.h f16, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x28, 0xfb5ac7cef4875732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fdiv.h f28, f18, f23, dyn # perform operation
fdiv.h f28, f18, f23, rdn # perform operation
fdiv.h f28, f18, f23, rmm # perform operation
fdiv.h f28, f18, f23, rne # perform operation
fdiv.h f28, f18, f23, rtz # perform operation
fdiv.h f28, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x1, 0x5dc10a907f7d21f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fdiv.h f1, f10, f9, dyn # perform operation
fdiv.h f1, f10, f9, rdn # perform operation
fdiv.h f1, f10, f9, rmm # perform operation
fdiv.h f1, f10, f9, rne # perform operation
fdiv.h f1, f10, f9, rtz # perform operation
fdiv.h f1, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x25, 0xbf95ef4548d66ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fdiv.h f25, f27, f22, dyn # perform operation
fdiv.h f25, f27, f22, rdn # perform operation
fdiv.h f25, f27, f22, rmm # perform operation
fdiv.h f25, f27, f22, rne # perform operation
fdiv.h f25, f27, f22, rtz # perform operation
fdiv.h f25, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x16, 0xf42418fa7033afa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fdiv.h f16, f11, f19, dyn # perform operation
fdiv.h f16, f11, f19, rdn # perform operation
fdiv.h f16, f11, f19, rmm # perform operation
fdiv.h f16, f11, f19, rne # perform operation
fdiv.h f16, f11, f19, rtz # perform operation
fdiv.h f16, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x1, 0xb4d0299a61291571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f1, f3, f16, dyn # perform operation
fdiv.h f1, f3, f16, rdn # perform operation
fdiv.h f1, f3, f16, rmm # perform operation
fdiv.h f1, f3, f16, rne # perform operation
fdiv.h f1, f3, f16, rtz # perform operation
fdiv.h f1, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x15, 0xa0535bbf440ae576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fdiv.h f15, f27, f13, dyn # perform operation
fdiv.h f15, f27, f13, rdn # perform operation
fdiv.h f15, f27, f13, rmm # perform operation
fdiv.h f15, f27, f13, rne # perform operation
fdiv.h f15, f27, f13, rtz # perform operation
fdiv.h f15, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x13, 0x1ab19ddf9530a3df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fdiv.h f13, f4, f2, dyn # perform operation
fdiv.h f13, f4, f2, rdn # perform operation
fdiv.h f13, f4, f2, rmm # perform operation
fdiv.h f13, f4, f2, rne # perform operation
fdiv.h f13, f4, f2, rtz # perform operation
fdiv.h f13, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x25, 0x407acc9e6d402cbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fdiv.h f25, f14, f21, dyn # perform operation
fdiv.h f25, f14, f21, rdn # perform operation
fdiv.h f25, f14, f21, rmm # perform operation
fdiv.h f25, f14, f21, rne # perform operation
fdiv.h f25, f14, f21, rtz # perform operation
fdiv.h f25, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x8, 0xb33d41894cb6db7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fdiv.h f8, f23, f24, dyn # perform operation
fdiv.h f8, f23, f24, rdn # perform operation
fdiv.h f8, f23, f24, rmm # perform operation
fdiv.h f8, f23, f24, rne # perform operation
fdiv.h f8, f23, f24, rtz # perform operation
fdiv.h f8, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x7, 0x385441fb4f7a0f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fdiv.h f7, f2, f27, dyn # perform operation
fdiv.h f7, f2, f27, rdn # perform operation
fdiv.h f7, f2, f27, rmm # perform operation
fdiv.h f7, f2, f27, rne # perform operation
fdiv.h f7, f2, f27, rtz # perform operation
fdiv.h f7, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x9, 0x2c71de7a0b01e1c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fdiv.h f9, f6, f30, dyn # perform operation
fdiv.h f9, f6, f30, rdn # perform operation
fdiv.h f9, f6, f30, rmm # perform operation
fdiv.h f9, f6, f30, rne # perform operation
fdiv.h f9, f6, f30, rtz # perform operation
fdiv.h f9, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x21, 0xccc7d32c793c4d86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fdiv.h f21, f10, f7, dyn # perform operation
fdiv.h f21, f10, f7, rdn # perform operation
fdiv.h f21, f10, f7, rmm # perform operation
fdiv.h f21, f10, f7, rne # perform operation
fdiv.h f21, f10, f7, rtz # perform operation
fdiv.h f21, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x16, 0xcfe7df5d07288b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fdiv.h f16, f21, f9, dyn # perform operation
fdiv.h f16, f21, f9, rdn # perform operation
fdiv.h f16, f21, f9, rmm # perform operation
fdiv.h f16, f21, f9, rne # perform operation
fdiv.h f16, f21, f9, rtz # perform operation
fdiv.h f16, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x14, 0x88fd9b0755fe9da5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fdiv.h f14, f13, f8, dyn # perform operation
fdiv.h f14, f13, f8, rdn # perform operation
fdiv.h f14, f13, f8, rmm # perform operation
fdiv.h f14, f13, f8, rne # perform operation
fdiv.h f14, f13, f8, rtz # perform operation
fdiv.h f14, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x9, 0xd16a5814d1b2a49c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fdiv.h f9, f1, f22, dyn # perform operation
fdiv.h f9, f1, f22, rdn # perform operation
fdiv.h f9, f1, f22, rmm # perform operation
fdiv.h f9, f1, f22, rne # perform operation
fdiv.h f9, f1, f22, rtz # perform operation
fdiv.h f9, f1, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f1, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f1, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f1, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f1, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x15, 0xfee2e7aa26985949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fdiv.h f15, f1, f30, dyn # perform operation
fdiv.h f15, f1, f30, rdn # perform operation
fdiv.h f15, f1, f30, rmm # perform operation
fdiv.h f15, f1, f30, rne # perform operation
fdiv.h f15, f1, f30, rtz # perform operation
fdiv.h f15, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x2, 0x26c13de87f98fe62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fdiv.h f2, f29, f24, dyn # perform operation
fdiv.h f2, f29, f24, rdn # perform operation
fdiv.h f2, f29, f24, rmm # perform operation
fdiv.h f2, f29, f24, rne # perform operation
fdiv.h f2, f29, f24, rtz # perform operation
fdiv.h f2, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x5, 0xb84f5e0f22951cd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f5, f19, f22, dyn # perform operation
fdiv.h f5, f19, f22, rdn # perform operation
fdiv.h f5, f19, f22, rmm # perform operation
fdiv.h f5, f19, f22, rne # perform operation
fdiv.h f5, f19, f22, rtz # perform operation
fdiv.h f5, f19, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f19, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f19, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x26, 0x5b07c6a8ef22f5e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fdiv.h f26, f25, f6, dyn # perform operation
fdiv.h f26, f25, f6, rdn # perform operation
fdiv.h f26, f25, f6, rmm # perform operation
fdiv.h f26, f25, f6, rne # perform operation
fdiv.h f26, f25, f6, rtz # perform operation
fdiv.h f26, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x25, 0x38d783fea221e198 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.h f25, f3, f20, dyn # perform operation
fdiv.h f25, f3, f20, rdn # perform operation
fdiv.h f25, f3, f20, rmm # perform operation
fdiv.h f25, f3, f20, rne # perform operation
fdiv.h f25, f3, f20, rtz # perform operation
fdiv.h f25, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x22, 0x10593f2c8a134445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fdiv.h f22, f24, f4, dyn # perform operation
fdiv.h f22, f24, f4, rdn # perform operation
fdiv.h f22, f24, f4, rmm # perform operation
fdiv.h f22, f24, f4, rne # perform operation
fdiv.h f22, f24, f4, rtz # perform operation
fdiv.h f22, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x14, 0x62b18d38646dd207 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fdiv.h f14, f2, f18, dyn # perform operation
fdiv.h f14, f2, f18, rdn # perform operation
fdiv.h f14, f2, f18, rmm # perform operation
fdiv.h f14, f2, f18, rne # perform operation
fdiv.h f14, f2, f18, rtz # perform operation
fdiv.h f14, f2, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f2, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x10, 0x616869576817fa44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fdiv.h f10, f8, f22, dyn # perform operation
fdiv.h f10, f8, f22, rdn # perform operation
fdiv.h f10, f8, f22, rmm # perform operation
fdiv.h f10, f8, f22, rne # perform operation
fdiv.h f10, f8, f22, rtz # perform operation
fdiv.h f10, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x4, 0x1b2d699bca6500fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fdiv.h f4, f12, f2, dyn # perform operation
fdiv.h f4, f12, f2, rdn # perform operation
fdiv.h f4, f12, f2, rmm # perform operation
fdiv.h f4, f12, f2, rne # perform operation
fdiv.h f4, f12, f2, rtz # perform operation
fdiv.h f4, f12, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f12, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f12, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f12, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f12, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x31, 0xd3df3242a5e72fba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fdiv.h f31, f8, f4, dyn # perform operation
fdiv.h f31, f8, f4, rdn # perform operation
fdiv.h f31, f8, f4, rmm # perform operation
fdiv.h f31, f8, f4, rne # perform operation
fdiv.h f31, f8, f4, rtz # perform operation
fdiv.h f31, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x30, 0x0ed2bbb1e2d76972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fdiv.h f30, f10, f27, dyn # perform operation
fdiv.h f30, f10, f27, rdn # perform operation
fdiv.h f30, f10, f27, rmm # perform operation
fdiv.h f30, f10, f27, rne # perform operation
fdiv.h f30, f10, f27, rtz # perform operation
fdiv.h f30, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x7, 0x67af35a63349241e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f7, f8, f26, dyn # perform operation
fdiv.h f7, f8, f26, rdn # perform operation
fdiv.h f7, f8, f26, rmm # perform operation
fdiv.h f7, f8, f26, rne # perform operation
fdiv.h f7, f8, f26, rtz # perform operation
fdiv.h f7, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x24, 0x4277b449da31f9a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fdiv.h f24, f23, f10, dyn # perform operation
fdiv.h f24, f23, f10, rdn # perform operation
fdiv.h f24, f23, f10, rmm # perform operation
fdiv.h f24, f23, f10, rne # perform operation
fdiv.h f24, f23, f10, rtz # perform operation
fdiv.h f24, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x7, 0xe11cfdce464cb5e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fdiv.h f7, f18, f1, dyn # perform operation
fdiv.h f7, f18, f1, rdn # perform operation
fdiv.h f7, f18, f1, rmm # perform operation
fdiv.h f7, f18, f1, rne # perform operation
fdiv.h f7, f18, f1, rtz # perform operation
fdiv.h f7, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x22, 0x9230c9b9fb692c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fdiv.h f22, f14, f1, dyn # perform operation
fdiv.h f22, f14, f1, rdn # perform operation
fdiv.h f22, f14, f1, rmm # perform operation
fdiv.h f22, f14, f1, rne # perform operation
fdiv.h f22, f14, f1, rtz # perform operation
fdiv.h f22, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x11, 0xc4ca3dfdd2ba3d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fdiv.h f11, f5, f20, dyn # perform operation
fdiv.h f11, f5, f20, rdn # perform operation
fdiv.h f11, f5, f20, rmm # perform operation
fdiv.h f11, f5, f20, rne # perform operation
fdiv.h f11, f5, f20, rtz # perform operation
fdiv.h f11, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x14, 0x0bdc5a546652cdbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fdiv.h f14, f17, f27, dyn # perform operation
fdiv.h f14, f17, f27, rdn # perform operation
fdiv.h f14, f17, f27, rmm # perform operation
fdiv.h f14, f17, f27, rne # perform operation
fdiv.h f14, f17, f27, rtz # perform operation
fdiv.h f14, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x30, 0x1aa85343b92a4157 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fdiv.h f30, f28, f11, dyn # perform operation
fdiv.h f30, f28, f11, rdn # perform operation
fdiv.h f30, f28, f11, rmm # perform operation
fdiv.h f30, f28, f11, rne # perform operation
fdiv.h f30, f28, f11, rtz # perform operation
fdiv.h f30, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x5, 0xdf840fe7932b57fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f5, f7, f13, dyn # perform operation
fdiv.h f5, f7, f13, rdn # perform operation
fdiv.h f5, f7, f13, rmm # perform operation
fdiv.h f5, f7, f13, rne # perform operation
fdiv.h f5, f7, f13, rtz # perform operation
fdiv.h f5, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x12, 0x2452e9e109f9501c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fdiv.h f12, f17, f23, dyn # perform operation
fdiv.h f12, f17, f23, rdn # perform operation
fdiv.h f12, f17, f23, rmm # perform operation
fdiv.h f12, f17, f23, rne # perform operation
fdiv.h f12, f17, f23, rtz # perform operation
fdiv.h f12, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x20, 0x53446e2d3cf46e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f20, f25, f16, dyn # perform operation
fdiv.h f20, f25, f16, rdn # perform operation
fdiv.h f20, f25, f16, rmm # perform operation
fdiv.h f20, f25, f16, rne # perform operation
fdiv.h f20, f25, f16, rtz # perform operation
fdiv.h f20, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x24, 0x1a4c953f4f4ca5a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fdiv.h f24, f10, f29, dyn # perform operation
fdiv.h f24, f10, f29, rdn # perform operation
fdiv.h f24, f10, f29, rmm # perform operation
fdiv.h f24, f10, f29, rne # perform operation
fdiv.h f24, f10, f29, rtz # perform operation
fdiv.h f24, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x10, 0x917396df3ce2266c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fdiv.h f10, f15, f29, dyn # perform operation
fdiv.h f10, f15, f29, rdn # perform operation
fdiv.h f10, f15, f29, rmm # perform operation
fdiv.h f10, f15, f29, rne # perform operation
fdiv.h f10, f15, f29, rtz # perform operation
fdiv.h f10, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x23, 0x52a67444d84ced7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fdiv.h f23, f30, f18, dyn # perform operation
fdiv.h f23, f30, f18, rdn # perform operation
fdiv.h f23, f30, f18, rmm # perform operation
fdiv.h f23, f30, f18, rne # perform operation
fdiv.h f23, f30, f18, rtz # perform operation
fdiv.h f23, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x5, 0xcf59d1af9ce45df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fdiv.h f5, f25, f3, dyn # perform operation
fdiv.h f5, f25, f3, rdn # perform operation
fdiv.h f5, f25, f3, rmm # perform operation
fdiv.h f5, f25, f3, rne # perform operation
fdiv.h f5, f25, f3, rtz # perform operation
fdiv.h f5, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x18, 0xfbb7ce8f3c72d70f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fdiv.h f18, f6, f28, dyn # perform operation
fdiv.h f18, f6, f28, rdn # perform operation
fdiv.h f18, f6, f28, rmm # perform operation
fdiv.h f18, f6, f28, rne # perform operation
fdiv.h f18, f6, f28, rtz # perform operation
fdiv.h f18, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x4, 0x9b614b7e19df140a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fdiv.h f4, f28, f9, dyn # perform operation
fdiv.h f4, f28, f9, rdn # perform operation
fdiv.h f4, f28, f9, rmm # perform operation
fdiv.h f4, f28, f9, rne # perform operation
fdiv.h f4, f28, f9, rtz # perform operation
fdiv.h f4, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x7, 0x1e13c932f50e3b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f7, f16, f3, dyn # perform operation
fdiv.h f7, f16, f3, rdn # perform operation
fdiv.h f7, f16, f3, rmm # perform operation
fdiv.h f7, f16, f3, rne # perform operation
fdiv.h f7, f16, f3, rtz # perform operation
fdiv.h f7, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x8, 0x92f2febeecc52412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fdiv.h f8, f1, f20, dyn # perform operation
fdiv.h f8, f1, f20, rdn # perform operation
fdiv.h f8, f1, f20, rmm # perform operation
fdiv.h f8, f1, f20, rne # perform operation
fdiv.h f8, f1, f20, rtz # perform operation
fdiv.h f8, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x26, 0xcf829ab58626ed41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fdiv.h f26, f22, f28, dyn # perform operation
fdiv.h f26, f22, f28, rdn # perform operation
fdiv.h f26, f22, f28, rmm # perform operation
fdiv.h f26, f22, f28, rne # perform operation
fdiv.h f26, f22, f28, rtz # perform operation
fdiv.h f26, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x11, 0x8ac68c39d7bffc20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fdiv.h f11, f25, f26, dyn # perform operation
fdiv.h f11, f25, f26, rdn # perform operation
fdiv.h f11, f25, f26, rmm # perform operation
fdiv.h f11, f25, f26, rne # perform operation
fdiv.h f11, f25, f26, rtz # perform operation
fdiv.h f11, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x7, 0x11080ee4be037325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f7, f20, f10, dyn # perform operation
fdiv.h f7, f20, f10, rdn # perform operation
fdiv.h f7, f20, f10, rmm # perform operation
fdiv.h f7, f20, f10, rne # perform operation
fdiv.h f7, f20, f10, rtz # perform operation
fdiv.h f7, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x21, 0x91fc5d202f016cee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fdiv.h f21, f4, f8, dyn # perform operation
fdiv.h f21, f4, f8, rdn # perform operation
fdiv.h f21, f4, f8, rmm # perform operation
fdiv.h f21, f4, f8, rne # perform operation
fdiv.h f21, f4, f8, rtz # perform operation
fdiv.h f21, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x5, 0xa32f27c5da714d89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fdiv.h f5, f23, f6, dyn # perform operation
fdiv.h f5, f23, f6, rdn # perform operation
fdiv.h f5, f23, f6, rmm # perform operation
fdiv.h f5, f23, f6, rne # perform operation
fdiv.h f5, f23, f6, rtz # perform operation
fdiv.h f5, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x11, 0x066eb4589e94feaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fdiv.h f11, f1, f6, dyn # perform operation
fdiv.h f11, f1, f6, rdn # perform operation
fdiv.h f11, f1, f6, rmm # perform operation
fdiv.h f11, f1, f6, rne # perform operation
fdiv.h f11, f1, f6, rtz # perform operation
fdiv.h f11, f1, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f1, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f1, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f1, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f1, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f1, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x12, 0x8aa94f3de3978969 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fdiv.h f12, f8, f28, dyn # perform operation
fdiv.h f12, f8, f28, rdn # perform operation
fdiv.h f12, f8, f28, rmm # perform operation
fdiv.h f12, f8, f28, rne # perform operation
fdiv.h f12, f8, f28, rtz # perform operation
fdiv.h f12, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x4, 0x5a662f4001298a75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fdiv.h f4, f22, f16, dyn # perform operation
fdiv.h f4, f22, f16, rdn # perform operation
fdiv.h f4, f22, f16, rmm # perform operation
fdiv.h f4, f22, f16, rne # perform operation
fdiv.h f4, f22, f16, rtz # perform operation
fdiv.h f4, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x29, 0x120cdf54d3807d7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f29, f6, f17, dyn # perform operation
fdiv.h f29, f6, f17, rdn # perform operation
fdiv.h f29, f6, f17, rmm # perform operation
fdiv.h f29, f6, f17, rne # perform operation
fdiv.h f29, f6, f17, rtz # perform operation
fdiv.h f29, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x17, 0x424a493c4e2e695b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fdiv.h f17, f19, f28, dyn # perform operation
fdiv.h f17, f19, f28, rdn # perform operation
fdiv.h f17, f19, f28, rmm # perform operation
fdiv.h f17, f19, f28, rne # perform operation
fdiv.h f17, f19, f28, rtz # perform operation
fdiv.h f17, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x15, 0x2cf358aa44a52a0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f15, f2, f9, dyn # perform operation
fdiv.h f15, f2, f9, rdn # perform operation
fdiv.h f15, f2, f9, rmm # perform operation
fdiv.h f15, f2, f9, rne # perform operation
fdiv.h f15, f2, f9, rtz # perform operation
fdiv.h f15, f2, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f2, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f2, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f2, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f2, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x31, 0x95a4311d45880322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f31, f16, f22, dyn # perform operation
fdiv.h f31, f16, f22, rdn # perform operation
fdiv.h f31, f16, f22, rmm # perform operation
fdiv.h f31, f16, f22, rne # perform operation
fdiv.h f31, f16, f22, rtz # perform operation
fdiv.h f31, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x12, 0x0b538a5c78f64854 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fdiv.h f12, f20, f8, dyn # perform operation
fdiv.h f12, f20, f8, rdn # perform operation
fdiv.h f12, f20, f8, rmm # perform operation
fdiv.h f12, f20, f8, rne # perform operation
fdiv.h f12, f20, f8, rtz # perform operation
fdiv.h f12, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x17, 0xa0c331b55b3aa7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fdiv.h f17, f13, f27, dyn # perform operation
fdiv.h f17, f13, f27, rdn # perform operation
fdiv.h f17, f13, f27, rmm # perform operation
fdiv.h f17, f13, f27, rne # perform operation
fdiv.h f17, f13, f27, rtz # perform operation
fdiv.h f17, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x24, 0xa3a0d8327934074e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fdiv.h f24, f9, f6, dyn # perform operation
fdiv.h f24, f9, f6, rdn # perform operation
fdiv.h f24, f9, f6, rmm # perform operation
fdiv.h f24, f9, f6, rne # perform operation
fdiv.h f24, f9, f6, rtz # perform operation
fdiv.h f24, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x23, 0xb5873a6e05944b9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fdiv.h f23, f21, f6, dyn # perform operation
fdiv.h f23, f21, f6, rdn # perform operation
fdiv.h f23, f21, f6, rmm # perform operation
fdiv.h f23, f21, f6, rne # perform operation
fdiv.h f23, f21, f6, rtz # perform operation
fdiv.h f23, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x20, 0x70875165bcc283b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fdiv.h f20, f5, f26, dyn # perform operation
fdiv.h f20, f5, f26, rdn # perform operation
fdiv.h f20, f5, f26, rmm # perform operation
fdiv.h f20, f5, f26, rne # perform operation
fdiv.h f20, f5, f26, rtz # perform operation
fdiv.h f20, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x7, 0x8faeee538e219f3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f7, f30, f21, dyn # perform operation
fdiv.h f7, f30, f21, rdn # perform operation
fdiv.h f7, f30, f21, rmm # perform operation
fdiv.h f7, f30, f21, rne # perform operation
fdiv.h f7, f30, f21, rtz # perform operation
fdiv.h f7, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x18, 0xffbdb836a47d1efc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fdiv.h f18, f26, f31, dyn # perform operation
fdiv.h f18, f26, f31, rdn # perform operation
fdiv.h f18, f26, f31, rmm # perform operation
fdiv.h f18, f26, f31, rne # perform operation
fdiv.h f18, f26, f31, rtz # perform operation
fdiv.h f18, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x9, 0xc84d0177414b8072 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fdiv.h f9, f6, f15, dyn # perform operation
fdiv.h f9, f6, f15, rdn # perform operation
fdiv.h f9, f6, f15, rmm # perform operation
fdiv.h f9, f6, f15, rne # perform operation
fdiv.h f9, f6, f15, rtz # perform operation
fdiv.h f9, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x3, 0xa693635f3b9c5059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fdiv.h f3, f11, f27, dyn # perform operation
fdiv.h f3, f11, f27, rdn # perform operation
fdiv.h f3, f11, f27, rmm # perform operation
fdiv.h f3, f11, f27, rne # perform operation
fdiv.h f3, f11, f27, rtz # perform operation
fdiv.h f3, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x29, 0x6dbe6f1b538545ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fdiv.h f29, f6, f23, dyn # perform operation
fdiv.h f29, f6, f23, rdn # perform operation
fdiv.h f29, f6, f23, rmm # perform operation
fdiv.h f29, f6, f23, rne # perform operation
fdiv.h f29, f6, f23, rtz # perform operation
fdiv.h f29, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x6, 0x7fe1b3e0b1b18cff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fdiv.h f6, f31, f24, dyn # perform operation
fdiv.h f6, f31, f24, rdn # perform operation
fdiv.h f6, f31, f24, rmm # perform operation
fdiv.h f6, f31, f24, rne # perform operation
fdiv.h f6, f31, f24, rtz # perform operation
fdiv.h f6, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x27, 0x686dd85e6d592867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fdiv.h f27, f29, f8, dyn # perform operation
fdiv.h f27, f29, f8, rdn # perform operation
fdiv.h f27, f29, f8, rmm # perform operation
fdiv.h f27, f29, f8, rne # perform operation
fdiv.h f27, f29, f8, rtz # perform operation
fdiv.h f27, f29, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f29, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f29, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f29, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f29, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x16, 0xbe6502e612f647ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fdiv.h f16, f13, f27, dyn # perform operation
fdiv.h f16, f13, f27, rdn # perform operation
fdiv.h f16, f13, f27, rmm # perform operation
fdiv.h f16, f13, f27, rne # perform operation
fdiv.h f16, f13, f27, rtz # perform operation
fdiv.h f16, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x4, 0xcd1713afff675dc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f4, f14, f10, dyn # perform operation
fdiv.h f4, f14, f10, rdn # perform operation
fdiv.h f4, f14, f10, rmm # perform operation
fdiv.h f4, f14, f10, rne # perform operation
fdiv.h f4, f14, f10, rtz # perform operation
fdiv.h f4, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x23, 0x457673b99ea07537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fdiv.h f23, f6, f17, dyn # perform operation
fdiv.h f23, f6, f17, rdn # perform operation
fdiv.h f23, f6, f17, rmm # perform operation
fdiv.h f23, f6, f17, rne # perform operation
fdiv.h f23, f6, f17, rtz # perform operation
fdiv.h f23, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x28, 0x4d7f717f731c2520 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f28, f19, f7, dyn # perform operation
fdiv.h f28, f19, f7, rdn # perform operation
fdiv.h f28, f19, f7, rmm # perform operation
fdiv.h f28, f19, f7, rne # perform operation
fdiv.h f28, f19, f7, rtz # perform operation
fdiv.h f28, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x20, 0x817381c175afac03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fdiv.h f20, f9, f24, dyn # perform operation
fdiv.h f20, f9, f24, rdn # perform operation
fdiv.h f20, f9, f24, rmm # perform operation
fdiv.h f20, f9, f24, rne # perform operation
fdiv.h f20, f9, f24, rtz # perform operation
fdiv.h f20, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x7, 0xa361de02a352366d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fdiv.h f7, f22, f21, dyn # perform operation
fdiv.h f7, f22, f21, rdn # perform operation
fdiv.h f7, f22, f21, rmm # perform operation
fdiv.h f7, f22, f21, rne # perform operation
fdiv.h f7, f22, f21, rtz # perform operation
fdiv.h f7, f22, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f22, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f22, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f22, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f22, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x28, 0x20db4757ec2c3bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fdiv.h f28, f18, f16, dyn # perform operation
fdiv.h f28, f18, f16, rdn # perform operation
fdiv.h f28, f18, f16, rmm # perform operation
fdiv.h f28, f18, f16, rne # perform operation
fdiv.h f28, f18, f16, rtz # perform operation
fdiv.h f28, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x13, 0x3d69b5c55c4b0b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fdiv.h f13, f14, f12, dyn # perform operation
fdiv.h f13, f14, f12, rdn # perform operation
fdiv.h f13, f14, f12, rmm # perform operation
fdiv.h f13, f14, f12, rne # perform operation
fdiv.h f13, f14, f12, rtz # perform operation
fdiv.h f13, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x8, 0x837aa0b60a894a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fdiv.h f8, f29, f17, dyn # perform operation
fdiv.h f8, f29, f17, rdn # perform operation
fdiv.h f8, f29, f17, rmm # perform operation
fdiv.h f8, f29, f17, rne # perform operation
fdiv.h f8, f29, f17, rtz # perform operation
fdiv.h f8, f29, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f29, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f29, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f29, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f29, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f29, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x19, 0x77821f1abf21366c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fdiv.h f19, f30, f11, dyn # perform operation
fdiv.h f19, f30, f11, rdn # perform operation
fdiv.h f19, f30, f11, rmm # perform operation
fdiv.h f19, f30, f11, rne # perform operation
fdiv.h f19, f30, f11, rtz # perform operation
fdiv.h f19, f30, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f30, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f30, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f30, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f30, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x20, 0x073bdedb3c968cad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fdiv.h f20, f25, f26, dyn # perform operation
fdiv.h f20, f25, f26, rdn # perform operation
fdiv.h f20, f25, f26, rmm # perform operation
fdiv.h f20, f25, f26, rne # perform operation
fdiv.h f20, f25, f26, rtz # perform operation
fdiv.h f20, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x5, 0xd7f3bf83150d474a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fdiv.h f5, f11, f27, dyn # perform operation
fdiv.h f5, f11, f27, rdn # perform operation
fdiv.h f5, f11, f27, rmm # perform operation
fdiv.h f5, f11, f27, rne # perform operation
fdiv.h f5, f11, f27, rtz # perform operation
fdiv.h f5, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x13, 0x0890cbf155c231e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fdiv.h f13, f26, f8, dyn # perform operation
fdiv.h f13, f26, f8, rdn # perform operation
fdiv.h f13, f26, f8, rmm # perform operation
fdiv.h f13, f26, f8, rne # perform operation
fdiv.h f13, f26, f8, rtz # perform operation
fdiv.h f13, f26, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f26, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f26, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f26, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f26, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f26, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x3, 0x8526065a5752f55e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fdiv.h f3, f26, f14, dyn # perform operation
fdiv.h f3, f26, f14, rdn # perform operation
fdiv.h f3, f26, f14, rmm # perform operation
fdiv.h f3, f26, f14, rne # perform operation
fdiv.h f3, f26, f14, rtz # perform operation
fdiv.h f3, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x9, 0xc75d76e8631ed173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fdiv.h f9, f6, f21, dyn # perform operation
fdiv.h f9, f6, f21, rdn # perform operation
fdiv.h f9, f6, f21, rmm # perform operation
fdiv.h f9, f6, f21, rne # perform operation
fdiv.h f9, f6, f21, rtz # perform operation
fdiv.h f9, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x22, 0x1ec78fa37aeace62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fdiv.h f22, f25, f20, dyn # perform operation
fdiv.h f22, f25, f20, rdn # perform operation
fdiv.h f22, f25, f20, rmm # perform operation
fdiv.h f22, f25, f20, rne # perform operation
fdiv.h f22, f25, f20, rtz # perform operation
fdiv.h f22, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x28, 0xd33f4259a5b7aa36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fdiv.h f28, f30, f5, dyn # perform operation
fdiv.h f28, f30, f5, rdn # perform operation
fdiv.h f28, f30, f5, rmm # perform operation
fdiv.h f28, f30, f5, rne # perform operation
fdiv.h f28, f30, f5, rtz # perform operation
fdiv.h f28, f30, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f30, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x14, 0x35305b533f90dcac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fdiv.h f14, f24, f1, dyn # perform operation
fdiv.h f14, f24, f1, rdn # perform operation
fdiv.h f14, f24, f1, rmm # perform operation
fdiv.h f14, f24, f1, rne # perform operation
fdiv.h f14, f24, f1, rtz # perform operation
fdiv.h f14, f24, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f24, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x23, 0x06d065d334d676e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fdiv.h f23, f10, f18, dyn # perform operation
fdiv.h f23, f10, f18, rdn # perform operation
fdiv.h f23, f10, f18, rmm # perform operation
fdiv.h f23, f10, f18, rne # perform operation
fdiv.h f23, f10, f18, rtz # perform operation
fdiv.h f23, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x5, 0x1d8b167428a30a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f5, f23, f16, dyn # perform operation
fdiv.h f5, f23, f16, rdn # perform operation
fdiv.h f5, f23, f16, rmm # perform operation
fdiv.h f5, f23, f16, rne # perform operation
fdiv.h f5, f23, f16, rtz # perform operation
fdiv.h f5, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x25, 0x5db024bbf558c03b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fdiv.h f25, f7, f4, dyn # perform operation
fdiv.h f25, f7, f4, rdn # perform operation
fdiv.h f25, f7, f4, rmm # perform operation
fdiv.h f25, f7, f4, rne # perform operation
fdiv.h f25, f7, f4, rtz # perform operation
fdiv.h f25, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x10, 0xcf3895717cf3f4e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fdiv.h f10, f28, f14, dyn # perform operation
fdiv.h f10, f28, f14, rdn # perform operation
fdiv.h f10, f28, f14, rmm # perform operation
fdiv.h f10, f28, f14, rne # perform operation
fdiv.h f10, f28, f14, rtz # perform operation
fdiv.h f10, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x29, 0xb7219d4f7f8376fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fdiv.h f29, f9, f14, dyn # perform operation
fdiv.h f29, f9, f14, rdn # perform operation
fdiv.h f29, f9, f14, rmm # perform operation
fdiv.h f29, f9, f14, rne # perform operation
fdiv.h f29, f9, f14, rtz # perform operation
fdiv.h f29, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x26, 0xb1306e7ee5d760a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fdiv.h f26, f3, f28, dyn # perform operation
fdiv.h f26, f3, f28, rdn # perform operation
fdiv.h f26, f3, f28, rmm # perform operation
fdiv.h f26, f3, f28, rne # perform operation
fdiv.h f26, f3, f28, rtz # perform operation
fdiv.h f26, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x14, 0x54260edf75229894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fdiv.h f14, f18, f26, dyn # perform operation
fdiv.h f14, f18, f26, rdn # perform operation
fdiv.h f14, f18, f26, rmm # perform operation
fdiv.h f14, f18, f26, rne # perform operation
fdiv.h f14, f18, f26, rtz # perform operation
fdiv.h f14, f18, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f18, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f18, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f18, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f18, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x21, 0xd38819b08fd5a9d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fdiv.h f21, f12, f27, dyn # perform operation
fdiv.h f21, f12, f27, rdn # perform operation
fdiv.h f21, f12, f27, rmm # perform operation
fdiv.h f21, f12, f27, rne # perform operation
fdiv.h f21, f12, f27, rtz # perform operation
fdiv.h f21, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x20, 0xe8d82504d0e6f425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fdiv.h f20, f5, f14, dyn # perform operation
fdiv.h f20, f5, f14, rdn # perform operation
fdiv.h f20, f5, f14, rmm # perform operation
fdiv.h f20, f5, f14, rne # perform operation
fdiv.h f20, f5, f14, rtz # perform operation
fdiv.h f20, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x10, 0xb0f221c8cb72454d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fdiv.h f10, f28, f8, dyn # perform operation
fdiv.h f10, f28, f8, rdn # perform operation
fdiv.h f10, f28, f8, rmm # perform operation
fdiv.h f10, f28, f8, rne # perform operation
fdiv.h f10, f28, f8, rtz # perform operation
fdiv.h f10, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x19, 0x332e7f7a1e3a207c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fdiv.h f19, f26, f30, dyn # perform operation
fdiv.h f19, f26, f30, rdn # perform operation
fdiv.h f19, f26, f30, rmm # perform operation
fdiv.h f19, f26, f30, rne # perform operation
fdiv.h f19, f26, f30, rtz # perform operation
fdiv.h f19, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x6, 0x7ac11ed8db8c18a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fdiv.h f6, f26, f7, dyn # perform operation
fdiv.h f6, f26, f7, rdn # perform operation
fdiv.h f6, f26, f7, rmm # perform operation
fdiv.h f6, f26, f7, rne # perform operation
fdiv.h f6, f26, f7, rtz # perform operation
fdiv.h f6, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x12, 0x629bf70d35feaed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fdiv.h f12, f25, f27, dyn # perform operation
fdiv.h f12, f25, f27, rdn # perform operation
fdiv.h f12, f25, f27, rmm # perform operation
fdiv.h f12, f25, f27, rne # perform operation
fdiv.h f12, f25, f27, rtz # perform operation
fdiv.h f12, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x6, 0x97114c34986fb364 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fdiv.h f6, f16, f12, dyn # perform operation
fdiv.h f6, f16, f12, rdn # perform operation
fdiv.h f6, f16, f12, rmm # perform operation
fdiv.h f6, f16, f12, rne # perform operation
fdiv.h f6, f16, f12, rtz # perform operation
fdiv.h f6, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x28, 0xe6aef0d8036f304d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fdiv.h f28, f18, f2, dyn # perform operation
fdiv.h f28, f18, f2, rdn # perform operation
fdiv.h f28, f18, f2, rmm # perform operation
fdiv.h f28, f18, f2, rne # perform operation
fdiv.h f28, f18, f2, rtz # perform operation
fdiv.h f28, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x26, 0x039966cfa9c5e526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fdiv.h f26, f31, f12, dyn # perform operation
fdiv.h f26, f31, f12, rdn # perform operation
fdiv.h f26, f31, f12, rmm # perform operation
fdiv.h f26, f31, f12, rne # perform operation
fdiv.h f26, f31, f12, rtz # perform operation
fdiv.h f26, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x11, 0xfbd41882cce5fe4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f11, f27, f2, dyn # perform operation
fdiv.h f11, f27, f2, rdn # perform operation
fdiv.h f11, f27, f2, rmm # perform operation
fdiv.h f11, f27, f2, rne # perform operation
fdiv.h f11, f27, f2, rtz # perform operation
fdiv.h f11, f27, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f27, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f27, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f27, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f27, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f27, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x14, 0xed394e52fd043f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fdiv.h f14, f23, f24, dyn # perform operation
fdiv.h f14, f23, f24, rdn # perform operation
fdiv.h f14, f23, f24, rmm # perform operation
fdiv.h f14, f23, f24, rne # perform operation
fdiv.h f14, f23, f24, rtz # perform operation
fdiv.h f14, f23, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f23, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f23, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f23, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f23, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x10, 0x54ee0072ef43b60e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fdiv.h f10, f21, f1, dyn # perform operation
fdiv.h f10, f21, f1, rdn # perform operation
fdiv.h f10, f21, f1, rmm # perform operation
fdiv.h f10, f21, f1, rne # perform operation
fdiv.h f10, f21, f1, rtz # perform operation
fdiv.h f10, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x10, 0xc5e61c56e3da2a44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fdiv.h f10, f26, f1, dyn # perform operation
fdiv.h f10, f26, f1, rdn # perform operation
fdiv.h f10, f26, f1, rmm # perform operation
fdiv.h f10, f26, f1, rne # perform operation
fdiv.h f10, f26, f1, rtz # perform operation
fdiv.h f10, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x11, 0x72a4588cc1a19bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fdiv.h f11, f26, f24, dyn # perform operation
fdiv.h f11, f26, f24, rdn # perform operation
fdiv.h f11, f26, f24, rmm # perform operation
fdiv.h f11, f26, f24, rne # perform operation
fdiv.h f11, f26, f24, rtz # perform operation
fdiv.h f11, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x11, 0x240ba15297d51a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fdiv.h f11, f21, f6, dyn # perform operation
fdiv.h f11, f21, f6, rdn # perform operation
fdiv.h f11, f21, f6, rmm # perform operation
fdiv.h f11, f21, f6, rne # perform operation
fdiv.h f11, f21, f6, rtz # perform operation
fdiv.h f11, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x29, 0x62e7dadebfbfd48d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fdiv.h f29, f19, f6, dyn # perform operation
fdiv.h f29, f19, f6, rdn # perform operation
fdiv.h f29, f19, f6, rmm # perform operation
fdiv.h f29, f19, f6, rne # perform operation
fdiv.h f29, f19, f6, rtz # perform operation
fdiv.h f29, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x29, 0xaa815418be2182a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f29, f31, f23, dyn # perform operation
fdiv.h f29, f31, f23, rdn # perform operation
fdiv.h f29, f31, f23, rmm # perform operation
fdiv.h f29, f31, f23, rne # perform operation
fdiv.h f29, f31, f23, rtz # perform operation
fdiv.h f29, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x17, 0x76eba967e141ae83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fdiv.h f17, f3, f29, dyn # perform operation
fdiv.h f17, f3, f29, rdn # perform operation
fdiv.h f17, f3, f29, rmm # perform operation
fdiv.h f17, f3, f29, rne # perform operation
fdiv.h f17, f3, f29, rtz # perform operation
fdiv.h f17, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x14, 0x6e8c6457b1532e65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
fdiv.h f14, f7, f27, dyn # perform operation
fdiv.h f14, f7, f27, rdn # perform operation
fdiv.h f14, f7, f27, rmm # perform operation
fdiv.h f14, f7, f27, rne # perform operation
fdiv.h f14, f7, f27, rtz # perform operation
fdiv.h f14, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x1, 0x955055b1f55e458d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f1, f29, f25, dyn # perform operation
fdiv.h f1, f29, f25, rdn # perform operation
fdiv.h f1, f29, f25, rmm # perform operation
fdiv.h f1, f29, f25, rne # perform operation
fdiv.h f1, f29, f25, rtz # perform operation
fdiv.h f1, f29, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x23, 0xaa1808359eb6f9db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f23, f6, f16, dyn # perform operation
fdiv.h f23, f6, f16, rdn # perform operation
fdiv.h f23, f6, f16, rmm # perform operation
fdiv.h f23, f6, f16, rne # perform operation
fdiv.h f23, f6, f16, rtz # perform operation
fdiv.h f23, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x27, 0x9551aa7efcce0491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fdiv.h f27, f25, f15, dyn # perform operation
fdiv.h f27, f25, f15, rdn # perform operation
fdiv.h f27, f25, f15, rmm # perform operation
fdiv.h f27, f25, f15, rne # perform operation
fdiv.h f27, f25, f15, rtz # perform operation
fdiv.h f27, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x1, 0x107361fea0817156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fdiv.h f1, f11, f2, dyn # perform operation
fdiv.h f1, f11, f2, rdn # perform operation
fdiv.h f1, f11, f2, rmm # perform operation
fdiv.h f1, f11, f2, rne # perform operation
fdiv.h f1, f11, f2, rtz # perform operation
fdiv.h f1, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x4, 0xf596ab380426930d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fdiv.h f4, f18, f29, dyn # perform operation
fdiv.h f4, f18, f29, rdn # perform operation
fdiv.h f4, f18, f29, rmm # perform operation
fdiv.h f4, f18, f29, rne # perform operation
fdiv.h f4, f18, f29, rtz # perform operation
fdiv.h f4, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x27, 0x21ebc07d12960cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fdiv.h f27, f28, f7, dyn # perform operation
fdiv.h f27, f28, f7, rdn # perform operation
fdiv.h f27, f28, f7, rmm # perform operation
fdiv.h f27, f28, f7, rne # perform operation
fdiv.h f27, f28, f7, rtz # perform operation
fdiv.h f27, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x5, 0xd41e15ee56c08673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fdiv.h f5, f12, f8, dyn # perform operation
fdiv.h f5, f12, f8, rdn # perform operation
fdiv.h f5, f12, f8, rmm # perform operation
fdiv.h f5, f12, f8, rne # perform operation
fdiv.h f5, f12, f8, rtz # perform operation
fdiv.h f5, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x17, 0x60ca051e152d467d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fdiv.h f17, f31, f3, dyn # perform operation
fdiv.h f17, f31, f3, rdn # perform operation
fdiv.h f17, f31, f3, rmm # perform operation
fdiv.h f17, f31, f3, rne # perform operation
fdiv.h f17, f31, f3, rtz # perform operation
fdiv.h f17, f31, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f31, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f31, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x12, 0x3b0a5ea1624bf47f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fdiv.h f12, f8, f10, dyn # perform operation
fdiv.h f12, f8, f10, rdn # perform operation
fdiv.h f12, f8, f10, rmm # perform operation
fdiv.h f12, f8, f10, rne # perform operation
fdiv.h f12, f8, f10, rtz # perform operation
fdiv.h f12, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x5, 0xb25d79e8565a99a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fdiv.h f5, f16, f25, dyn # perform operation
fdiv.h f5, f16, f25, rdn # perform operation
fdiv.h f5, f16, f25, rmm # perform operation
fdiv.h f5, f16, f25, rne # perform operation
fdiv.h f5, f16, f25, rtz # perform operation
fdiv.h f5, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x14, 0x1647ad6787af455a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fdiv.h f14, f4, f12, dyn # perform operation
fdiv.h f14, f4, f12, rdn # perform operation
fdiv.h f14, f4, f12, rmm # perform operation
fdiv.h f14, f4, f12, rne # perform operation
fdiv.h f14, f4, f12, rtz # perform operation
fdiv.h f14, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x3, 0x69ca3c0b5d250c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f3, f23, f6, dyn # perform operation
fdiv.h f3, f23, f6, rdn # perform operation
fdiv.h f3, f23, f6, rmm # perform operation
fdiv.h f3, f23, f6, rne # perform operation
fdiv.h f3, f23, f6, rtz # perform operation
fdiv.h f3, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x11, 0xe8be5752d6f3263d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fdiv.h f11, f28, f7, dyn # perform operation
fdiv.h f11, f28, f7, rdn # perform operation
fdiv.h f11, f28, f7, rmm # perform operation
fdiv.h f11, f28, f7, rne # perform operation
fdiv.h f11, f28, f7, rtz # perform operation
fdiv.h f11, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x3, 0x472a8cd4d3d50840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fdiv.h f3, f12, f30, dyn # perform operation
fdiv.h f3, f12, f30, rdn # perform operation
fdiv.h f3, f12, f30, rmm # perform operation
fdiv.h f3, f12, f30, rne # perform operation
fdiv.h f3, f12, f30, rtz # perform operation
fdiv.h f3, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x3, 0x00ce486d975b08a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fdiv.h f3, f17, f16, dyn # perform operation
fdiv.h f3, f17, f16, rdn # perform operation
fdiv.h f3, f17, f16, rmm # perform operation
fdiv.h f3, f17, f16, rne # perform operation
fdiv.h f3, f17, f16, rtz # perform operation
fdiv.h f3, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x28, 0x4d7437799d4602f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fdiv.h f28, f11, f30, dyn # perform operation
fdiv.h f28, f11, f30, rdn # perform operation
fdiv.h f28, f11, f30, rmm # perform operation
fdiv.h f28, f11, f30, rne # perform operation
fdiv.h f28, f11, f30, rtz # perform operation
fdiv.h f28, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x11, 0xb7bff624ab291164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
fdiv.h f11, f8, f4, dyn # perform operation
fdiv.h f11, f8, f4, rdn # perform operation
fdiv.h f11, f8, f4, rmm # perform operation
fdiv.h f11, f8, f4, rne # perform operation
fdiv.h f11, f8, f4, rtz # perform operation
fdiv.h f11, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x8, 0x06c4430c7bd9e839 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fdiv.h f8, f1, f20, dyn # perform operation
fdiv.h f8, f1, f20, rdn # perform operation
fdiv.h f8, f1, f20, rmm # perform operation
fdiv.h f8, f1, f20, rne # perform operation
fdiv.h f8, f1, f20, rtz # perform operation
fdiv.h f8, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x8, 0x57ae343ee876ac70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fdiv.h f8, f2, f15, dyn # perform operation
fdiv.h f8, f2, f15, rdn # perform operation
fdiv.h f8, f2, f15, rmm # perform operation
fdiv.h f8, f2, f15, rne # perform operation
fdiv.h f8, f2, f15, rtz # perform operation
fdiv.h f8, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x13, 0x59820d002f4117d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fdiv.h f13, f29, f16, dyn # perform operation
fdiv.h f13, f29, f16, rdn # perform operation
fdiv.h f13, f29, f16, rmm # perform operation
fdiv.h f13, f29, f16, rne # perform operation
fdiv.h f13, f29, f16, rtz # perform operation
fdiv.h f13, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x25, 0xeac4fa270e3dfd8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fdiv.h f25, f7, f30, dyn # perform operation
fdiv.h f25, f7, f30, rdn # perform operation
fdiv.h f25, f7, f30, rmm # perform operation
fdiv.h f25, f7, f30, rne # perform operation
fdiv.h f25, f7, f30, rtz # perform operation
fdiv.h f25, f7, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f7, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x7, 0x902af77ae4e2b595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fdiv.h f7, f22, f27, dyn # perform operation
fdiv.h f7, f22, f27, rdn # perform operation
fdiv.h f7, f22, f27, rmm # perform operation
fdiv.h f7, f22, f27, rne # perform operation
fdiv.h f7, f22, f27, rtz # perform operation
fdiv.h f7, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x28, 0x2f211c2a73ec39c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fdiv.h f28, f12, f21, dyn # perform operation
fdiv.h f28, f12, f21, rdn # perform operation
fdiv.h f28, f12, f21, rmm # perform operation
fdiv.h f28, f12, f21, rne # perform operation
fdiv.h f28, f12, f21, rtz # perform operation
fdiv.h f28, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x11, 0x997aa34c5dabd8ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fdiv.h f11, f3, f25, dyn # perform operation
fdiv.h f11, f3, f25, rdn # perform operation
fdiv.h f11, f3, f25, rmm # perform operation
fdiv.h f11, f3, f25, rne # perform operation
fdiv.h f11, f3, f25, rtz # perform operation
fdiv.h f11, f3, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f3, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x16, 0x925a3476ab1b42d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fdiv.h f16, f15, f19, dyn # perform operation
fdiv.h f16, f15, f19, rdn # perform operation
fdiv.h f16, f15, f19, rmm # perform operation
fdiv.h f16, f15, f19, rne # perform operation
fdiv.h f16, f15, f19, rtz # perform operation
fdiv.h f16, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x5, 0xf7c85c774e258aab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fdiv.h f5, f12, f30, dyn # perform operation
fdiv.h f5, f12, f30, rdn # perform operation
fdiv.h f5, f12, f30, rmm # perform operation
fdiv.h f5, f12, f30, rne # perform operation
fdiv.h f5, f12, f30, rtz # perform operation
fdiv.h f5, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x6, 0x4684af395e80cf05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fdiv.h f6, f21, f8, dyn # perform operation
fdiv.h f6, f21, f8, rdn # perform operation
fdiv.h f6, f21, f8, rmm # perform operation
fdiv.h f6, f21, f8, rne # perform operation
fdiv.h f6, f21, f8, rtz # perform operation
fdiv.h f6, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x14, 0x7956faab67141bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.h f14, f8, f9, dyn # perform operation
fdiv.h f14, f8, f9, rdn # perform operation
fdiv.h f14, f8, f9, rmm # perform operation
fdiv.h f14, f8, f9, rne # perform operation
fdiv.h f14, f8, f9, rtz # perform operation
fdiv.h f14, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x9, 0x586aea1211190a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fdiv.h f9, f3, f2, dyn # perform operation
fdiv.h f9, f3, f2, rdn # perform operation
fdiv.h f9, f3, f2, rmm # perform operation
fdiv.h f9, f3, f2, rne # perform operation
fdiv.h f9, f3, f2, rtz # perform operation
fdiv.h f9, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x27, 0x1ea2c944aeedf8f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fdiv.h f27, f3, f23, dyn # perform operation
fdiv.h f27, f3, f23, rdn # perform operation
fdiv.h f27, f3, f23, rmm # perform operation
fdiv.h f27, f3, f23, rne # perform operation
fdiv.h f27, f3, f23, rtz # perform operation
fdiv.h f27, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x25, 0xe83cd12b228485a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fdiv.h f25, f30, f3, dyn # perform operation
fdiv.h f25, f30, f3, rdn # perform operation
fdiv.h f25, f30, f3, rmm # perform operation
fdiv.h f25, f30, f3, rne # perform operation
fdiv.h f25, f30, f3, rtz # perform operation
fdiv.h f25, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x7, 0x34d7eff57f86bfb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fdiv.h f7, f16, f2, dyn # perform operation
fdiv.h f7, f16, f2, rdn # perform operation
fdiv.h f7, f16, f2, rmm # perform operation
fdiv.h f7, f16, f2, rne # perform operation
fdiv.h f7, f16, f2, rtz # perform operation
fdiv.h f7, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x23, 0x999df8d1606a3b9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fdiv.h f23, f24, f20, dyn # perform operation
fdiv.h f23, f24, f20, rdn # perform operation
fdiv.h f23, f24, f20, rmm # perform operation
fdiv.h f23, f24, f20, rne # perform operation
fdiv.h f23, f24, f20, rtz # perform operation
fdiv.h f23, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x3, 0x0b6dfc1e0594dec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fdiv.h f3, f16, f17, dyn # perform operation
fdiv.h f3, f16, f17, rdn # perform operation
fdiv.h f3, f16, f17, rmm # perform operation
fdiv.h f3, f16, f17, rne # perform operation
fdiv.h f3, f16, f17, rtz # perform operation
fdiv.h f3, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x4, 0x4d23baae1c850227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fdiv.h f4, f20, f15, dyn # perform operation
fdiv.h f4, f20, f15, rdn # perform operation
fdiv.h f4, f20, f15, rmm # perform operation
fdiv.h f4, f20, f15, rne # perform operation
fdiv.h f4, f20, f15, rtz # perform operation
fdiv.h f4, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x30, 0x4ac47ef95cc36bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fdiv.h f30, f1, f18, dyn # perform operation
fdiv.h f30, f1, f18, rdn # perform operation
fdiv.h f30, f1, f18, rmm # perform operation
fdiv.h f30, f1, f18, rne # perform operation
fdiv.h f30, f1, f18, rtz # perform operation
fdiv.h f30, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x20, 0x250a7904f06f13d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fdiv.h f20, f25, f2, dyn # perform operation
fdiv.h f20, f25, f2, rdn # perform operation
fdiv.h f20, f25, f2, rmm # perform operation
fdiv.h f20, f25, f2, rne # perform operation
fdiv.h f20, f25, f2, rtz # perform operation
fdiv.h f20, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x21, 0xf1bd1db41791c7de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fdiv.h f21, f9, f10, dyn # perform operation
fdiv.h f21, f9, f10, rdn # perform operation
fdiv.h f21, f9, f10, rmm # perform operation
fdiv.h f21, f9, f10, rne # perform operation
fdiv.h f21, f9, f10, rtz # perform operation
fdiv.h f21, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x18, 0x51179777053c8640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fdiv.h f18, f15, f8, dyn # perform operation
fdiv.h f18, f15, f8, rdn # perform operation
fdiv.h f18, f15, f8, rmm # perform operation
fdiv.h f18, f15, f8, rne # perform operation
fdiv.h f18, f15, f8, rtz # perform operation
fdiv.h f18, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x8, 0x8411d4593f838d7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fdiv.h f8, f31, f7, dyn # perform operation
fdiv.h f8, f31, f7, rdn # perform operation
fdiv.h f8, f31, f7, rmm # perform operation
fdiv.h f8, f31, f7, rne # perform operation
fdiv.h f8, f31, f7, rtz # perform operation
fdiv.h f8, f31, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f31, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f31, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f31, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f31, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x20, 0x62b0fcc63eb3a043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f20, f22, f11, dyn # perform operation
fdiv.h f20, f22, f11, rdn # perform operation
fdiv.h f20, f22, f11, rmm # perform operation
fdiv.h f20, f22, f11, rne # perform operation
fdiv.h f20, f22, f11, rtz # perform operation
fdiv.h f20, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x4, 0x71e464663a461719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fdiv.h f4, f18, f16, dyn # perform operation
fdiv.h f4, f18, f16, rdn # perform operation
fdiv.h f4, f18, f16, rmm # perform operation
fdiv.h f4, f18, f16, rne # perform operation
fdiv.h f4, f18, f16, rtz # perform operation
fdiv.h f4, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x13, 0xde04590505852ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fdiv.h f13, f27, f9, dyn # perform operation
fdiv.h f13, f27, f9, rdn # perform operation
fdiv.h f13, f27, f9, rmm # perform operation
fdiv.h f13, f27, f9, rne # perform operation
fdiv.h f13, f27, f9, rtz # perform operation
fdiv.h f13, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x2, 0x728be548d9e87cb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fdiv.h f2, f11, f18, dyn # perform operation
fdiv.h f2, f11, f18, rdn # perform operation
fdiv.h f2, f11, f18, rmm # perform operation
fdiv.h f2, f11, f18, rne # perform operation
fdiv.h f2, f11, f18, rtz # perform operation
fdiv.h f2, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x4, 0x800fc12248efb755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fdiv.h f4, f14, f27, dyn # perform operation
fdiv.h f4, f14, f27, rdn # perform operation
fdiv.h f4, f14, f27, rmm # perform operation
fdiv.h f4, f14, f27, rne # perform operation
fdiv.h f4, f14, f27, rtz # perform operation
fdiv.h f4, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x17, 0xb4841d9fa156c9bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fdiv.h f17, f4, f21, dyn # perform operation
fdiv.h f17, f4, f21, rdn # perform operation
fdiv.h f17, f4, f21, rmm # perform operation
fdiv.h f17, f4, f21, rne # perform operation
fdiv.h f17, f4, f21, rtz # perform operation
fdiv.h f17, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x19, 0xe258cf83e1b7c671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fdiv.h f19, f11, f25, dyn # perform operation
fdiv.h f19, f11, f25, rdn # perform operation
fdiv.h f19, f11, f25, rmm # perform operation
fdiv.h f19, f11, f25, rne # perform operation
fdiv.h f19, f11, f25, rtz # perform operation
fdiv.h f19, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x22, 0x8ad12bd33e1488af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fdiv.h f22, f27, f17, dyn # perform operation
fdiv.h f22, f27, f17, rdn # perform operation
fdiv.h f22, f27, f17, rmm # perform operation
fdiv.h f22, f27, f17, rne # perform operation
fdiv.h f22, f27, f17, rtz # perform operation
fdiv.h f22, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x12, 0x8c2a1c0f9d1ab03e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fdiv.h f12, f30, f21, dyn # perform operation
fdiv.h f12, f30, f21, rdn # perform operation
fdiv.h f12, f30, f21, rmm # perform operation
fdiv.h f12, f30, f21, rne # perform operation
fdiv.h f12, f30, f21, rtz # perform operation
fdiv.h f12, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x6, 0x20b66d4d5d35c2c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fdiv.h f6, f12, f8, dyn # perform operation
fdiv.h f6, f12, f8, rdn # perform operation
fdiv.h f6, f12, f8, rmm # perform operation
fdiv.h f6, f12, f8, rne # perform operation
fdiv.h f6, f12, f8, rtz # perform operation
fdiv.h f6, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x1, 0x39f8d02aa1727530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fdiv.h f1, f10, f23, dyn # perform operation
fdiv.h f1, f10, f23, rdn # perform operation
fdiv.h f1, f10, f23, rmm # perform operation
fdiv.h f1, f10, f23, rne # perform operation
fdiv.h f1, f10, f23, rtz # perform operation
fdiv.h f1, f10, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f10, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f10, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f10, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f10, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x14, 0x2fa49f1dedd10df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fdiv.h f14, f15, f16, dyn # perform operation
fdiv.h f14, f15, f16, rdn # perform operation
fdiv.h f14, f15, f16, rmm # perform operation
fdiv.h f14, f15, f16, rne # perform operation
fdiv.h f14, f15, f16, rtz # perform operation
fdiv.h f14, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x10, 0xf72d1adbdf930fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f10, f11, f25, dyn # perform operation
fdiv.h f10, f11, f25, rdn # perform operation
fdiv.h f10, f11, f25, rmm # perform operation
fdiv.h f10, f11, f25, rne # perform operation
fdiv.h f10, f11, f25, rtz # perform operation
fdiv.h f10, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x2, 0x86b18488b0e6ed91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fdiv.h f2, f5, f25, dyn # perform operation
fdiv.h f2, f5, f25, rdn # perform operation
fdiv.h f2, f5, f25, rmm # perform operation
fdiv.h f2, f5, f25, rne # perform operation
fdiv.h f2, f5, f25, rtz # perform operation
fdiv.h f2, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x27, 0xb6908d3d37bf52d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fdiv.h f27, f13, f16, dyn # perform operation
fdiv.h f27, f13, f16, rdn # perform operation
fdiv.h f27, f13, f16, rmm # perform operation
fdiv.h f27, f13, f16, rne # perform operation
fdiv.h f27, f13, f16, rtz # perform operation
fdiv.h f27, f13, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f13, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f13, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f13, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f13, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x21, 0x95fe57af6e5212d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fdiv.h f21, f26, f28, dyn # perform operation
fdiv.h f21, f26, f28, rdn # perform operation
fdiv.h f21, f26, f28, rmm # perform operation
fdiv.h f21, f26, f28, rne # perform operation
fdiv.h f21, f26, f28, rtz # perform operation
fdiv.h f21, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x18, 0x33d14aebd0baaae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fdiv.h f18, f6, f3, dyn # perform operation
fdiv.h f18, f6, f3, rdn # perform operation
fdiv.h f18, f6, f3, rmm # perform operation
fdiv.h f18, f6, f3, rne # perform operation
fdiv.h f18, f6, f3, rtz # perform operation
fdiv.h f18, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x27, 0x7d057b2d77ebc3eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fdiv.h f27, f11, f12, dyn # perform operation
fdiv.h f27, f11, f12, rdn # perform operation
fdiv.h f27, f11, f12, rmm # perform operation
fdiv.h f27, f11, f12, rne # perform operation
fdiv.h f27, f11, f12, rtz # perform operation
fdiv.h f27, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x14, 0xea25f39a0be695b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fdiv.h f14, f8, f11, dyn # perform operation
fdiv.h f14, f8, f11, rdn # perform operation
fdiv.h f14, f8, f11, rmm # perform operation
fdiv.h f14, f8, f11, rne # perform operation
fdiv.h f14, f8, f11, rtz # perform operation
fdiv.h f14, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x7, 0x69950d73d5b6f555 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fdiv.h f7, f13, f10, dyn # perform operation
fdiv.h f7, f13, f10, rdn # perform operation
fdiv.h f7, f13, f10, rmm # perform operation
fdiv.h f7, f13, f10, rne # perform operation
fdiv.h f7, f13, f10, rtz # perform operation
fdiv.h f7, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x4, 0xd8a0267efaa5e97f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fdiv.h f4, f11, f2, dyn # perform operation
fdiv.h f4, f11, f2, rdn # perform operation
fdiv.h f4, f11, f2, rmm # perform operation
fdiv.h f4, f11, f2, rne # perform operation
fdiv.h f4, f11, f2, rtz # perform operation
fdiv.h f4, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x3, 0x041159a9fc15ff99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fdiv.h f3, f4, f16, dyn # perform operation
fdiv.h f3, f4, f16, rdn # perform operation
fdiv.h f3, f4, f16, rmm # perform operation
fdiv.h f3, f4, f16, rne # perform operation
fdiv.h f3, f4, f16, rtz # perform operation
fdiv.h f3, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x25, 0xdf635cf326adfd98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fdiv.h f25, f29, f18, dyn # perform operation
fdiv.h f25, f29, f18, rdn # perform operation
fdiv.h f25, f29, f18, rmm # perform operation
fdiv.h f25, f29, f18, rne # perform operation
fdiv.h f25, f29, f18, rtz # perform operation
fdiv.h f25, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x26, 0x6c8ccbff7359aab4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.h f26, f2, f12, dyn # perform operation
fdiv.h f26, f2, f12, rdn # perform operation
fdiv.h f26, f2, f12, rmm # perform operation
fdiv.h f26, f2, f12, rne # perform operation
fdiv.h f26, f2, f12, rtz # perform operation
fdiv.h f26, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x11, 0xfeb305fa6b30d93d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fdiv.h f11, f15, f27, dyn # perform operation
fdiv.h f11, f15, f27, rdn # perform operation
fdiv.h f11, f15, f27, rmm # perform operation
fdiv.h f11, f15, f27, rne # perform operation
fdiv.h f11, f15, f27, rtz # perform operation
fdiv.h f11, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x24, 0x36b391fc127dbc24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fdiv.h f24, f29, f16, dyn # perform operation
fdiv.h f24, f29, f16, rdn # perform operation
fdiv.h f24, f29, f16, rmm # perform operation
fdiv.h f24, f29, f16, rne # perform operation
fdiv.h f24, f29, f16, rtz # perform operation
fdiv.h f24, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x9, 0xf201c43650062338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fdiv.h f9, f12, f7, dyn # perform operation
fdiv.h f9, f12, f7, rdn # perform operation
fdiv.h f9, f12, f7, rmm # perform operation
fdiv.h f9, f12, f7, rne # perform operation
fdiv.h f9, f12, f7, rtz # perform operation
fdiv.h f9, f12, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f12, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x5, 0xf13f557340c9b12c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
fdiv.h f5, f17, f30, dyn # perform operation
fdiv.h f5, f17, f30, rdn # perform operation
fdiv.h f5, f17, f30, rmm # perform operation
fdiv.h f5, f17, f30, rne # perform operation
fdiv.h f5, f17, f30, rtz # perform operation
fdiv.h f5, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x28, 0xa915bf9a02bbec2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fdiv.h f28, f13, f25, dyn # perform operation
fdiv.h f28, f13, f25, rdn # perform operation
fdiv.h f28, f13, f25, rmm # perform operation
fdiv.h f28, f13, f25, rne # perform operation
fdiv.h f28, f13, f25, rtz # perform operation
fdiv.h f28, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x13, 0x6760a6de90022d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fdiv.h f13, f9, f16, dyn # perform operation
fdiv.h f13, f9, f16, rdn # perform operation
fdiv.h f13, f9, f16, rmm # perform operation
fdiv.h f13, f9, f16, rne # perform operation
fdiv.h f13, f9, f16, rtz # perform operation
fdiv.h f13, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x6, 0x35b7d6214f3668ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fdiv.h f6, f13, f25, dyn # perform operation
fdiv.h f6, f13, f25, rdn # perform operation
fdiv.h f6, f13, f25, rmm # perform operation
fdiv.h f6, f13, f25, rne # perform operation
fdiv.h f6, f13, f25, rtz # perform operation
fdiv.h f6, f13, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f13, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f13, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f13, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f13, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f13, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x20, 0xd92800723929ff80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fdiv.h f20, f7, f22, dyn # perform operation
fdiv.h f20, f7, f22, rdn # perform operation
fdiv.h f20, f7, f22, rmm # perform operation
fdiv.h f20, f7, f22, rne # perform operation
fdiv.h f20, f7, f22, rtz # perform operation
fdiv.h f20, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x7, 0xa1a0fd76c51e66af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fdiv.h f7, f16, f1, dyn # perform operation
fdiv.h f7, f16, f1, rdn # perform operation
fdiv.h f7, f16, f1, rmm # perform operation
fdiv.h f7, f16, f1, rne # perform operation
fdiv.h f7, f16, f1, rtz # perform operation
fdiv.h f7, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x27, 0x1e49ab8a67d7672a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fdiv.h f27, f26, f5, dyn # perform operation
fdiv.h f27, f26, f5, rdn # perform operation
fdiv.h f27, f26, f5, rmm # perform operation
fdiv.h f27, f26, f5, rne # perform operation
fdiv.h f27, f26, f5, rtz # perform operation
fdiv.h f27, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x8, 0xdfbf17c801240cbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fdiv.h f8, f31, f30, dyn # perform operation
fdiv.h f8, f31, f30, rdn # perform operation
fdiv.h f8, f31, f30, rmm # perform operation
fdiv.h f8, f31, f30, rne # perform operation
fdiv.h f8, f31, f30, rtz # perform operation
fdiv.h f8, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x15, 0xa947a71588d32f73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fdiv.h f15, f27, f9, dyn # perform operation
fdiv.h f15, f27, f9, rdn # perform operation
fdiv.h f15, f27, f9, rmm # perform operation
fdiv.h f15, f27, f9, rne # perform operation
fdiv.h f15, f27, f9, rtz # perform operation
fdiv.h f15, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x1, 0x379d65042d1bb4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fdiv.h f1, f8, f21, dyn # perform operation
fdiv.h f1, f8, f21, rdn # perform operation
fdiv.h f1, f8, f21, rmm # perform operation
fdiv.h f1, f8, f21, rne # perform operation
fdiv.h f1, f8, f21, rtz # perform operation
fdiv.h f1, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x13, 0xd8ec4fe87a045afc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fdiv.h f13, f7, f16, dyn # perform operation
fdiv.h f13, f7, f16, rdn # perform operation
fdiv.h f13, f7, f16, rmm # perform operation
fdiv.h f13, f7, f16, rne # perform operation
fdiv.h f13, f7, f16, rtz # perform operation
fdiv.h f13, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x5, 0xf44fb6cda93f164a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fdiv.h f5, f10, f18, dyn # perform operation
fdiv.h f5, f10, f18, rdn # perform operation
fdiv.h f5, f10, f18, rmm # perform operation
fdiv.h f5, f10, f18, rne # perform operation
fdiv.h f5, f10, f18, rtz # perform operation
fdiv.h f5, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x8, 0x402e483444d892f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fdiv.h f8, f4, f17, dyn # perform operation
fdiv.h f8, f4, f17, rdn # perform operation
fdiv.h f8, f4, f17, rmm # perform operation
fdiv.h f8, f4, f17, rne # perform operation
fdiv.h f8, f4, f17, rtz # perform operation
fdiv.h f8, f4, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f4, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f4, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f4, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f4, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f4, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x31, 0xa767b15cc866133e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fdiv.h f31, f15, f8, dyn # perform operation
fdiv.h f31, f15, f8, rdn # perform operation
fdiv.h f31, f15, f8, rmm # perform operation
fdiv.h f31, f15, f8, rne # perform operation
fdiv.h f31, f15, f8, rtz # perform operation
fdiv.h f31, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x3, 0x5992f726f5a10f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fdiv.h f3, f5, f16, dyn # perform operation
fdiv.h f3, f5, f16, rdn # perform operation
fdiv.h f3, f5, f16, rmm # perform operation
fdiv.h f3, f5, f16, rne # perform operation
fdiv.h f3, f5, f16, rtz # perform operation
fdiv.h f3, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x2, 0xa480f3c06977f50f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fdiv.h f2, f21, f30, dyn # perform operation
fdiv.h f2, f21, f30, rdn # perform operation
fdiv.h f2, f21, f30, rmm # perform operation
fdiv.h f2, f21, f30, rne # perform operation
fdiv.h f2, f21, f30, rtz # perform operation
fdiv.h f2, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x9, 0x4b42448e682c9530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fdiv.h f9, f31, f24, dyn # perform operation
fdiv.h f9, f31, f24, rdn # perform operation
fdiv.h f9, f31, f24, rmm # perform operation
fdiv.h f9, f31, f24, rne # perform operation
fdiv.h f9, f31, f24, rtz # perform operation
fdiv.h f9, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x9, 0x39a17cb187c6285e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fdiv.h f9, f17, f13, dyn # perform operation
fdiv.h f9, f17, f13, rdn # perform operation
fdiv.h f9, f17, f13, rmm # perform operation
fdiv.h f9, f17, f13, rne # perform operation
fdiv.h f9, f17, f13, rtz # perform operation
fdiv.h f9, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x25, 0x04058b82ae445813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fdiv.h f25, f11, f18, dyn # perform operation
fdiv.h f25, f11, f18, rdn # perform operation
fdiv.h f25, f11, f18, rmm # perform operation
fdiv.h f25, f11, f18, rne # perform operation
fdiv.h f25, f11, f18, rtz # perform operation
fdiv.h f25, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x2, 0x494c16db76ebd670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fdiv.h f2, f5, f1, dyn # perform operation
fdiv.h f2, f5, f1, rdn # perform operation
fdiv.h f2, f5, f1, rmm # perform operation
fdiv.h f2, f5, f1, rne # perform operation
fdiv.h f2, f5, f1, rtz # perform operation
fdiv.h f2, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x29, 0x1e77554d37751a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
fdiv.h f29, f24, f22, dyn # perform operation
fdiv.h f29, f24, f22, rdn # perform operation
fdiv.h f29, f24, f22, rmm # perform operation
fdiv.h f29, f24, f22, rne # perform operation
fdiv.h f29, f24, f22, rtz # perform operation
fdiv.h f29, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x1, 0x7afa9a32f872449d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f1, f16, f14, dyn # perform operation
fdiv.h f1, f16, f14, rdn # perform operation
fdiv.h f1, f16, f14, rmm # perform operation
fdiv.h f1, f16, f14, rne # perform operation
fdiv.h f1, f16, f14, rtz # perform operation
fdiv.h f1, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x28, 0x3d016a461d6ac70d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fdiv.h f28, f13, f3, dyn # perform operation
fdiv.h f28, f13, f3, rdn # perform operation
fdiv.h f28, f13, f3, rmm # perform operation
fdiv.h f28, f13, f3, rne # perform operation
fdiv.h f28, f13, f3, rtz # perform operation
fdiv.h f28, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x14, 0x60a5266841103334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fdiv.h f14, f25, f12, dyn # perform operation
fdiv.h f14, f25, f12, rdn # perform operation
fdiv.h f14, f25, f12, rmm # perform operation
fdiv.h f14, f25, f12, rne # perform operation
fdiv.h f14, f25, f12, rtz # perform operation
fdiv.h f14, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x26, 0x544b983258832c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fdiv.h f26, f5, f14, dyn # perform operation
fdiv.h f26, f5, f14, rdn # perform operation
fdiv.h f26, f5, f14, rmm # perform operation
fdiv.h f26, f5, f14, rne # perform operation
fdiv.h f26, f5, f14, rtz # perform operation
fdiv.h f26, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x2, 0x22e77d81ecd9cf32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fdiv.h f2, f26, f9, dyn # perform operation
fdiv.h f2, f26, f9, rdn # perform operation
fdiv.h f2, f26, f9, rmm # perform operation
fdiv.h f2, f26, f9, rne # perform operation
fdiv.h f2, f26, f9, rtz # perform operation
fdiv.h f2, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x21, 0x04572a912e1f54d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fdiv.h f21, f22, f16, dyn # perform operation
fdiv.h f21, f22, f16, rdn # perform operation
fdiv.h f21, f22, f16, rmm # perform operation
fdiv.h f21, f22, f16, rne # perform operation
fdiv.h f21, f22, f16, rtz # perform operation
fdiv.h f21, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x23, 0x369802cf53e0611f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fdiv.h f23, f11, f27, dyn # perform operation
fdiv.h f23, f11, f27, rdn # perform operation
fdiv.h f23, f11, f27, rmm # perform operation
fdiv.h f23, f11, f27, rne # perform operation
fdiv.h f23, f11, f27, rtz # perform operation
fdiv.h f23, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x20, 0x41322aa0a5880ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fdiv.h f20, f15, f31, dyn # perform operation
fdiv.h f20, f15, f31, rdn # perform operation
fdiv.h f20, f15, f31, rmm # perform operation
fdiv.h f20, f15, f31, rne # perform operation
fdiv.h f20, f15, f31, rtz # perform operation
fdiv.h f20, f15, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f15, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f15, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x19, 0xea35db9ee305026f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fdiv.h f19, f25, f15, dyn # perform operation
fdiv.h f19, f25, f15, rdn # perform operation
fdiv.h f19, f25, f15, rmm # perform operation
fdiv.h f19, f25, f15, rne # perform operation
fdiv.h f19, f25, f15, rtz # perform operation
fdiv.h f19, f25, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f25, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x26, 0xe79e4befcd24fc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fdiv.h f26, f1, f28, dyn # perform operation
fdiv.h f26, f1, f28, rdn # perform operation
fdiv.h f26, f1, f28, rmm # perform operation
fdiv.h f26, f1, f28, rne # perform operation
fdiv.h f26, f1, f28, rtz # perform operation
fdiv.h f26, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x7, 0xfafcef724406ba8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fdiv.h f7, f21, f16, dyn # perform operation
fdiv.h f7, f21, f16, rdn # perform operation
fdiv.h f7, f21, f16, rmm # perform operation
fdiv.h f7, f21, f16, rne # perform operation
fdiv.h f7, f21, f16, rtz # perform operation
fdiv.h f7, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x28, 0x2cf2a4f80a93aa56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fdiv.h f28, f2, f19, dyn # perform operation
fdiv.h f28, f2, f19, rdn # perform operation
fdiv.h f28, f2, f19, rmm # perform operation
fdiv.h f28, f2, f19, rne # perform operation
fdiv.h f28, f2, f19, rtz # perform operation
fdiv.h f28, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x26, 0x7b7188b363548078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fdiv.h f26, f29, f16, dyn # perform operation
fdiv.h f26, f29, f16, rdn # perform operation
fdiv.h f26, f29, f16, rmm # perform operation
fdiv.h f26, f29, f16, rne # perform operation
fdiv.h f26, f29, f16, rtz # perform operation
fdiv.h f26, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x12, 0x97100c857322f08a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fdiv.h f12, f22, f25, dyn # perform operation
fdiv.h f12, f22, f25, rdn # perform operation
fdiv.h f12, f22, f25, rmm # perform operation
fdiv.h f12, f22, f25, rne # perform operation
fdiv.h f12, f22, f25, rtz # perform operation
fdiv.h f12, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x20, 0x680e2e5c8a22f5f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fdiv.h f20, f14, f3, dyn # perform operation
fdiv.h f20, f14, f3, rdn # perform operation
fdiv.h f20, f14, f3, rmm # perform operation
fdiv.h f20, f14, f3, rne # perform operation
fdiv.h f20, f14, f3, rtz # perform operation
fdiv.h f20, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x25, 0x17522878d7db185d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
fdiv.h f25, f9, f1, dyn # perform operation
fdiv.h f25, f9, f1, rdn # perform operation
fdiv.h f25, f9, f1, rmm # perform operation
fdiv.h f25, f9, f1, rne # perform operation
fdiv.h f25, f9, f1, rtz # perform operation
fdiv.h f25, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x7, 0x11097b062f3333b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fdiv.h f7, f3, f1, dyn # perform operation
fdiv.h f7, f3, f1, rdn # perform operation
fdiv.h f7, f3, f1, rmm # perform operation
fdiv.h f7, f3, f1, rne # perform operation
fdiv.h f7, f3, f1, rtz # perform operation
fdiv.h f7, f3, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f3, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f3, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f3, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f3, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x29, 0x34dd86a806ca289e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f29, f12, f16, dyn # perform operation
fdiv.h f29, f12, f16, rdn # perform operation
fdiv.h f29, f12, f16, rmm # perform operation
fdiv.h f29, f12, f16, rne # perform operation
fdiv.h f29, f12, f16, rtz # perform operation
fdiv.h f29, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x20, 0x33055bb5e920eba5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
fdiv.h f20, f29, f31, dyn # perform operation
fdiv.h f20, f29, f31, rdn # perform operation
fdiv.h f20, f29, f31, rmm # perform operation
fdiv.h f20, f29, f31, rne # perform operation
fdiv.h f20, f29, f31, rtz # perform operation
fdiv.h f20, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x6, 0xeca7b6e149c05bdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fdiv.h f6, f17, f24, dyn # perform operation
fdiv.h f6, f17, f24, rdn # perform operation
fdiv.h f6, f17, f24, rmm # perform operation
fdiv.h f6, f17, f24, rne # perform operation
fdiv.h f6, f17, f24, rtz # perform operation
fdiv.h f6, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x14, 0xe3cf7ced315f612d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fdiv.h f14, f22, f31, dyn # perform operation
fdiv.h f14, f22, f31, rdn # perform operation
fdiv.h f14, f22, f31, rmm # perform operation
fdiv.h f14, f22, f31, rne # perform operation
fdiv.h f14, f22, f31, rtz # perform operation
fdiv.h f14, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x21, 0x1a826eac48fb3e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fdiv.h f21, f18, f22, dyn # perform operation
fdiv.h f21, f18, f22, rdn # perform operation
fdiv.h f21, f18, f22, rmm # perform operation
fdiv.h f21, f18, f22, rne # perform operation
fdiv.h f21, f18, f22, rtz # perform operation
fdiv.h f21, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x31, 0xb8a8abfb7f9952e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fdiv.h f31, f2, f23, dyn # perform operation
fdiv.h f31, f2, f23, rdn # perform operation
fdiv.h f31, f2, f23, rmm # perform operation
fdiv.h f31, f2, f23, rne # perform operation
fdiv.h f31, f2, f23, rtz # perform operation
fdiv.h f31, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x23, 0xf00cbf8230f4f41b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fdiv.h f23, f26, f9, dyn # perform operation
fdiv.h f23, f26, f9, rdn # perform operation
fdiv.h f23, f26, f9, rmm # perform operation
fdiv.h f23, f26, f9, rne # perform operation
fdiv.h f23, f26, f9, rtz # perform operation
fdiv.h f23, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x29, 0x667cc75077fa99b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fdiv.h f29, f20, f10, dyn # perform operation
fdiv.h f29, f20, f10, rdn # perform operation
fdiv.h f29, f20, f10, rmm # perform operation
fdiv.h f29, f20, f10, rne # perform operation
fdiv.h f29, f20, f10, rtz # perform operation
fdiv.h f29, f20, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f20, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f20, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f20, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f20, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x17, 0x75fba33125590191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fdiv.h f17, f10, f14, dyn # perform operation
fdiv.h f17, f10, f14, rdn # perform operation
fdiv.h f17, f10, f14, rmm # perform operation
fdiv.h f17, f10, f14, rne # perform operation
fdiv.h f17, f10, f14, rtz # perform operation
fdiv.h f17, f10, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f10, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f10, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f10, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f10, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x6, 0xd0e018e03a685535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fdiv.h f6, f2, f5, dyn # perform operation
fdiv.h f6, f2, f5, rdn # perform operation
fdiv.h f6, f2, f5, rmm # perform operation
fdiv.h f6, f2, f5, rne # perform operation
fdiv.h f6, f2, f5, rtz # perform operation
fdiv.h f6, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x16, 0x21930d00c0b74b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fdiv.h f16, f10, f6, dyn # perform operation
fdiv.h f16, f10, f6, rdn # perform operation
fdiv.h f16, f10, f6, rmm # perform operation
fdiv.h f16, f10, f6, rne # perform operation
fdiv.h f16, f10, f6, rtz # perform operation
fdiv.h f16, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x4, 0x6d3450dce2e9e37a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fdiv.h f4, f3, f22, dyn # perform operation
fdiv.h f4, f3, f22, rdn # perform operation
fdiv.h f4, f3, f22, rmm # perform operation
fdiv.h f4, f3, f22, rne # perform operation
fdiv.h f4, f3, f22, rtz # perform operation
fdiv.h f4, f3, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f3, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x17, 0x5fc7d9505c4a2463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
fdiv.h f17, f7, f15, dyn # perform operation
fdiv.h f17, f7, f15, rdn # perform operation
fdiv.h f17, f7, f15, rmm # perform operation
fdiv.h f17, f7, f15, rne # perform operation
fdiv.h f17, f7, f15, rtz # perform operation
fdiv.h f17, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x1, 0x1170805d21dec707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fdiv.h f1, f13, f26, dyn # perform operation
fdiv.h f1, f13, f26, rdn # perform operation
fdiv.h f1, f13, f26, rmm # perform operation
fdiv.h f1, f13, f26, rne # perform operation
fdiv.h f1, f13, f26, rtz # perform operation
fdiv.h f1, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x12, 0x38f7698979a8ca5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fdiv.h f12, f3, f8, dyn # perform operation
fdiv.h f12, f3, f8, rdn # perform operation
fdiv.h f12, f3, f8, rmm # perform operation
fdiv.h f12, f3, f8, rne # perform operation
fdiv.h f12, f3, f8, rtz # perform operation
fdiv.h f12, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x1, 0x654f28e6d8f0ef80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fdiv.h f1, f2, f30, dyn # perform operation
fdiv.h f1, f2, f30, rdn # perform operation
fdiv.h f1, f2, f30, rmm # perform operation
fdiv.h f1, f2, f30, rne # perform operation
fdiv.h f1, f2, f30, rtz # perform operation
fdiv.h f1, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x26, 0x62ecc0dc71d244f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fdiv.h f26, f27, f4, dyn # perform operation
fdiv.h f26, f27, f4, rdn # perform operation
fdiv.h f26, f27, f4, rmm # perform operation
fdiv.h f26, f27, f4, rne # perform operation
fdiv.h f26, f27, f4, rtz # perform operation
fdiv.h f26, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x7, 0x13f4d2215f41b95c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fdiv.h f7, f19, f17, dyn # perform operation
fdiv.h f7, f19, f17, rdn # perform operation
fdiv.h f7, f19, f17, rmm # perform operation
fdiv.h f7, f19, f17, rne # perform operation
fdiv.h f7, f19, f17, rtz # perform operation
fdiv.h f7, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x22, 0xd3edb16f9a9085fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fdiv.h f22, f28, f3, dyn # perform operation
fdiv.h f22, f28, f3, rdn # perform operation
fdiv.h f22, f28, f3, rmm # perform operation
fdiv.h f22, f28, f3, rne # perform operation
fdiv.h f22, f28, f3, rtz # perform operation
fdiv.h f22, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x12, 0x301f4a82f649576f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f12, f13, f27, dyn # perform operation
fdiv.h f12, f13, f27, rdn # perform operation
fdiv.h f12, f13, f27, rmm # perform operation
fdiv.h f12, f13, f27, rne # perform operation
fdiv.h f12, f13, f27, rtz # perform operation
fdiv.h f12, f13, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f13, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f13, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f13, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f13, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x1, 0xeb5fdc4fae99c561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fdiv.h f1, f21, f17, dyn # perform operation
fdiv.h f1, f21, f17, rdn # perform operation
fdiv.h f1, f21, f17, rmm # perform operation
fdiv.h f1, f21, f17, rne # perform operation
fdiv.h f1, f21, f17, rtz # perform operation
fdiv.h f1, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x11, 0x95e324ebbbc472b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fdiv.h f11, f20, f6, dyn # perform operation
fdiv.h f11, f20, f6, rdn # perform operation
fdiv.h f11, f20, f6, rmm # perform operation
fdiv.h f11, f20, f6, rne # perform operation
fdiv.h f11, f20, f6, rtz # perform operation
fdiv.h f11, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x27, 0x497ce4ddd95df6e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
fdiv.h f27, f8, f18, dyn # perform operation
fdiv.h f27, f8, f18, rdn # perform operation
fdiv.h f27, f8, f18, rmm # perform operation
fdiv.h f27, f8, f18, rne # perform operation
fdiv.h f27, f8, f18, rtz # perform operation
fdiv.h f27, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x22, 0x614b45ca274e05c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fdiv.h f22, f17, f1, dyn # perform operation
fdiv.h f22, f17, f1, rdn # perform operation
fdiv.h f22, f17, f1, rmm # perform operation
fdiv.h f22, f17, f1, rne # perform operation
fdiv.h f22, f17, f1, rtz # perform operation
fdiv.h f22, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x21, 0x5c0f4f4d70eacd3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
fdiv.h f21, f8, f29, dyn # perform operation
fdiv.h f21, f8, f29, rdn # perform operation
fdiv.h f21, f8, f29, rmm # perform operation
fdiv.h f21, f8, f29, rne # perform operation
fdiv.h f21, f8, f29, rtz # perform operation
fdiv.h f21, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x18, 0x1f4dfd2b5312e963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fdiv.h f18, f5, f26, dyn # perform operation
fdiv.h f18, f5, f26, rdn # perform operation
fdiv.h f18, f5, f26, rmm # perform operation
fdiv.h f18, f5, f26, rne # perform operation
fdiv.h f18, f5, f26, rtz # perform operation
fdiv.h f18, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x26, 0x6e09cfcde934d6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f26, f9, f12, dyn # perform operation
fdiv.h f26, f9, f12, rdn # perform operation
fdiv.h f26, f9, f12, rmm # perform operation
fdiv.h f26, f9, f12, rne # perform operation
fdiv.h f26, f9, f12, rtz # perform operation
fdiv.h f26, f9, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f9, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f9, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f9, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f9, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x14, 0x0044b027cf5a8ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fdiv.h f14, f15, f29, dyn # perform operation
fdiv.h f14, f15, f29, rdn # perform operation
fdiv.h f14, f15, f29, rmm # perform operation
fdiv.h f14, f15, f29, rne # perform operation
fdiv.h f14, f15, f29, rtz # perform operation
fdiv.h f14, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x26, 0xae366235ea59dd16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fdiv.h f26, f27, f24, dyn # perform operation
fdiv.h f26, f27, f24, rdn # perform operation
fdiv.h f26, f27, f24, rmm # perform operation
fdiv.h f26, f27, f24, rne # perform operation
fdiv.h f26, f27, f24, rtz # perform operation
fdiv.h f26, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x3, 0x76c6f5e5dc506051 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fdiv.h f3, f9, f11, dyn # perform operation
fdiv.h f3, f9, f11, rdn # perform operation
fdiv.h f3, f9, f11, rmm # perform operation
fdiv.h f3, f9, f11, rne # perform operation
fdiv.h f3, f9, f11, rtz # perform operation
fdiv.h f3, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x21, 0x095ae57815444cd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fdiv.h f21, f22, f24, dyn # perform operation
fdiv.h f21, f22, f24, rdn # perform operation
fdiv.h f21, f22, f24, rmm # perform operation
fdiv.h f21, f22, f24, rne # perform operation
fdiv.h f21, f22, f24, rtz # perform operation
fdiv.h f21, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x28, 0x304b9be0e69ff33b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fdiv.h f28, f8, f22, dyn # perform operation
fdiv.h f28, f8, f22, rdn # perform operation
fdiv.h f28, f8, f22, rmm # perform operation
fdiv.h f28, f8, f22, rne # perform operation
fdiv.h f28, f8, f22, rtz # perform operation
fdiv.h f28, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x16, 0xf388160234c76394 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
fdiv.h f16, f21, f23, dyn # perform operation
fdiv.h f16, f21, f23, rdn # perform operation
fdiv.h f16, f21, f23, rmm # perform operation
fdiv.h f16, f21, f23, rne # perform operation
fdiv.h f16, f21, f23, rtz # perform operation
fdiv.h f16, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x24, 0x1030fa0839869da4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fdiv.h f24, f13, f22, dyn # perform operation
fdiv.h f24, f13, f22, rdn # perform operation
fdiv.h f24, f13, f22, rmm # perform operation
fdiv.h f24, f13, f22, rne # perform operation
fdiv.h f24, f13, f22, rtz # perform operation
fdiv.h f24, f13, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f13, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f13, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f13, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f13, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x7, 0xa5ef2cf7cbf8935d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fdiv.h f7, f18, f23, dyn # perform operation
fdiv.h f7, f18, f23, rdn # perform operation
fdiv.h f7, f18, f23, rmm # perform operation
fdiv.h f7, f18, f23, rne # perform operation
fdiv.h f7, f18, f23, rtz # perform operation
fdiv.h f7, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x3, 0x341ccf92865cf0bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fdiv.h f3, f7, f18, dyn # perform operation
fdiv.h f3, f7, f18, rdn # perform operation
fdiv.h f3, f7, f18, rmm # perform operation
fdiv.h f3, f7, f18, rne # perform operation
fdiv.h f3, f7, f18, rtz # perform operation
fdiv.h f3, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x26, 0xb5bede54cf07c0b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fdiv.h f26, f2, f1, dyn # perform operation
fdiv.h f26, f2, f1, rdn # perform operation
fdiv.h f26, f2, f1, rmm # perform operation
fdiv.h f26, f2, f1, rne # perform operation
fdiv.h f26, f2, f1, rtz # perform operation
fdiv.h f26, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x15, 0xadc638e676e7c296 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fdiv.h f15, f25, f24, dyn # perform operation
fdiv.h f15, f25, f24, rdn # perform operation
fdiv.h f15, f25, f24, rmm # perform operation
fdiv.h f15, f25, f24, rne # perform operation
fdiv.h f15, f25, f24, rtz # perform operation
fdiv.h f15, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x10, 0x814ad5ee153c1a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fdiv.h f10, f14, f6, dyn # perform operation
fdiv.h f10, f14, f6, rdn # perform operation
fdiv.h f10, f14, f6, rmm # perform operation
fdiv.h f10, f14, f6, rne # perform operation
fdiv.h f10, f14, f6, rtz # perform operation
fdiv.h f10, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x19, 0xd5fa25937f6d21c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fdiv.h f19, f7, f1, dyn # perform operation
fdiv.h f19, f7, f1, rdn # perform operation
fdiv.h f19, f7, f1, rmm # perform operation
fdiv.h f19, f7, f1, rne # perform operation
fdiv.h f19, f7, f1, rtz # perform operation
fdiv.h f19, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x17, 0xbd4a64ad028516bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fdiv.h f17, f14, f21, dyn # perform operation
fdiv.h f17, f14, f21, rdn # perform operation
fdiv.h f17, f14, f21, rmm # perform operation
fdiv.h f17, f14, f21, rne # perform operation
fdiv.h f17, f14, f21, rtz # perform operation
fdiv.h f17, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x15, 0x3b04a4e09ff2ce9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fdiv.h f15, f25, f23, dyn # perform operation
fdiv.h f15, f25, f23, rdn # perform operation
fdiv.h f15, f25, f23, rmm # perform operation
fdiv.h f15, f25, f23, rne # perform operation
fdiv.h f15, f25, f23, rtz # perform operation
fdiv.h f15, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x31, 0xc4e1c570baf9107c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fdiv.h f31, f24, f23, dyn # perform operation
fdiv.h f31, f24, f23, rdn # perform operation
fdiv.h f31, f24, f23, rmm # perform operation
fdiv.h f31, f24, f23, rne # perform operation
fdiv.h f31, f24, f23, rtz # perform operation
fdiv.h f31, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x31, 0x02de6624b379e25e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fdiv.h f31, f10, f19, dyn # perform operation
fdiv.h f31, f10, f19, rdn # perform operation
fdiv.h f31, f10, f19, rmm # perform operation
fdiv.h f31, f10, f19, rne # perform operation
fdiv.h f31, f10, f19, rtz # perform operation
fdiv.h f31, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x27, 0x48fd3af726b073d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fdiv.h f27, f9, f1, dyn # perform operation
fdiv.h f27, f9, f1, rdn # perform operation
fdiv.h f27, f9, f1, rmm # perform operation
fdiv.h f27, f9, f1, rne # perform operation
fdiv.h f27, f9, f1, rtz # perform operation
fdiv.h f27, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x12, 0x9fe82ac1cc9c18b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fdiv.h f12, f17, f25, dyn # perform operation
fdiv.h f12, f17, f25, rdn # perform operation
fdiv.h f12, f17, f25, rmm # perform operation
fdiv.h f12, f17, f25, rne # perform operation
fdiv.h f12, f17, f25, rtz # perform operation
fdiv.h f12, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x8, 0x0d551b7d3768da14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fdiv.h f8, f5, f16, dyn # perform operation
fdiv.h f8, f5, f16, rdn # perform operation
fdiv.h f8, f5, f16, rmm # perform operation
fdiv.h f8, f5, f16, rne # perform operation
fdiv.h f8, f5, f16, rtz # perform operation
fdiv.h f8, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x27, 0xac4954b303a24c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fdiv.h f27, f15, f19, dyn # perform operation
fdiv.h f27, f15, f19, rdn # perform operation
fdiv.h f27, f15, f19, rmm # perform operation
fdiv.h f27, f15, f19, rne # perform operation
fdiv.h f27, f15, f19, rtz # perform operation
fdiv.h f27, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x29, 0xaba2af7280f9981e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fdiv.h f29, f5, f12, dyn # perform operation
fdiv.h f29, f5, f12, rdn # perform operation
fdiv.h f29, f5, f12, rmm # perform operation
fdiv.h f29, f5, f12, rne # perform operation
fdiv.h f29, f5, f12, rtz # perform operation
fdiv.h f29, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x28, 0x19a84aaa32c51098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fdiv.h f28, f11, f18, dyn # perform operation
fdiv.h f28, f11, f18, rdn # perform operation
fdiv.h f28, f11, f18, rmm # perform operation
fdiv.h f28, f11, f18, rne # perform operation
fdiv.h f28, f11, f18, rtz # perform operation
fdiv.h f28, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x31, 0x390e83d1d5baa223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fdiv.h f31, f14, f25, dyn # perform operation
fdiv.h f31, f14, f25, rdn # perform operation
fdiv.h f31, f14, f25, rmm # perform operation
fdiv.h f31, f14, f25, rne # perform operation
fdiv.h f31, f14, f25, rtz # perform operation
fdiv.h f31, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x7, 0x12349efcfe81a59e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fdiv.h f7, f14, f21, dyn # perform operation
fdiv.h f7, f14, f21, rdn # perform operation
fdiv.h f7, f14, f21, rmm # perform operation
fdiv.h f7, f14, f21, rne # perform operation
fdiv.h f7, f14, f21, rtz # perform operation
fdiv.h f7, f14, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f14, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x1, 0x579e1d57c27abfa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fdiv.h f1, f25, f30, dyn # perform operation
fdiv.h f1, f25, f30, rdn # perform operation
fdiv.h f1, f25, f30, rmm # perform operation
fdiv.h f1, f25, f30, rne # perform operation
fdiv.h f1, f25, f30, rtz # perform operation
fdiv.h f1, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x25, 0x69ed19d39ac09436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fdiv.h f25, f8, f17, dyn # perform operation
fdiv.h f25, f8, f17, rdn # perform operation
fdiv.h f25, f8, f17, rmm # perform operation
fdiv.h f25, f8, f17, rne # perform operation
fdiv.h f25, f8, f17, rtz # perform operation
fdiv.h f25, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x10, 0xbd604dc676af7418 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fdiv.h f10, f8, f16, dyn # perform operation
fdiv.h f10, f8, f16, rdn # perform operation
fdiv.h f10, f8, f16, rmm # perform operation
fdiv.h f10, f8, f16, rne # perform operation
fdiv.h f10, f8, f16, rtz # perform operation
fdiv.h f10, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x7, 0x03f284999ea30a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fdiv.h f7, f19, f17, dyn # perform operation
fdiv.h f7, f19, f17, rdn # perform operation
fdiv.h f7, f19, f17, rmm # perform operation
fdiv.h f7, f19, f17, rne # perform operation
fdiv.h f7, f19, f17, rtz # perform operation
fdiv.h f7, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x13, 0x191ee9ee334fe875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fdiv.h f13, f1, f10, dyn # perform operation
fdiv.h f13, f1, f10, rdn # perform operation
fdiv.h f13, f1, f10, rmm # perform operation
fdiv.h f13, f1, f10, rne # perform operation
fdiv.h f13, f1, f10, rtz # perform operation
fdiv.h f13, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x21, 0x2adcaf44e4cc845c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fdiv.h f21, f12, f6, dyn # perform operation
fdiv.h f21, f12, f6, rdn # perform operation
fdiv.h f21, f12, f6, rmm # perform operation
fdiv.h f21, f12, f6, rne # perform operation
fdiv.h f21, f12, f6, rtz # perform operation
fdiv.h f21, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x9, 0xa1239856a4c1d039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fdiv.h f9, f15, f10, dyn # perform operation
fdiv.h f9, f15, f10, rdn # perform operation
fdiv.h f9, f15, f10, rmm # perform operation
fdiv.h f9, f15, f10, rne # perform operation
fdiv.h f9, f15, f10, rtz # perform operation
fdiv.h f9, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x17, 0x368ef3dafad6d2be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fdiv.h f17, f16, f22, dyn # perform operation
fdiv.h f17, f16, f22, rdn # perform operation
fdiv.h f17, f16, f22, rmm # perform operation
fdiv.h f17, f16, f22, rne # perform operation
fdiv.h f17, f16, f22, rtz # perform operation
fdiv.h f17, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x29, 0x3812fd93ca9a7e16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fdiv.h f29, f1, f18, dyn # perform operation
fdiv.h f29, f1, f18, rdn # perform operation
fdiv.h f29, f1, f18, rmm # perform operation
fdiv.h f29, f1, f18, rne # perform operation
fdiv.h f29, f1, f18, rtz # perform operation
fdiv.h f29, f1, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f1, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f1, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f1, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f1, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f1, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x21, 0xa3325c02695a5c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
fdiv.h f21, f1, f14, dyn # perform operation
fdiv.h f21, f1, f14, rdn # perform operation
fdiv.h f21, f1, f14, rmm # perform operation
fdiv.h f21, f1, f14, rne # perform operation
fdiv.h f21, f1, f14, rtz # perform operation
fdiv.h f21, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x17, 0x0f4f259d8877c1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fdiv.h f17, f31, f4, dyn # perform operation
fdiv.h f17, f31, f4, rdn # perform operation
fdiv.h f17, f31, f4, rmm # perform operation
fdiv.h f17, f31, f4, rne # perform operation
fdiv.h f17, f31, f4, rtz # perform operation
fdiv.h f17, f31, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f31, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f31, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f31, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f31, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f31, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x10, 0xe1b9f52a8e4c9df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fdiv.h f10, f15, f4, dyn # perform operation
fdiv.h f10, f15, f4, rdn # perform operation
fdiv.h f10, f15, f4, rmm # perform operation
fdiv.h f10, f15, f4, rne # perform operation
fdiv.h f10, f15, f4, rtz # perform operation
fdiv.h f10, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x3, 0x0291c728bfabf859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fdiv.h f3, f7, f20, dyn # perform operation
fdiv.h f3, f7, f20, rdn # perform operation
fdiv.h f3, f7, f20, rmm # perform operation
fdiv.h f3, f7, f20, rne # perform operation
fdiv.h f3, f7, f20, rtz # perform operation
fdiv.h f3, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x28, 0x22f4108c0d18e785 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fdiv.h f28, f9, f16, dyn # perform operation
fdiv.h f28, f9, f16, rdn # perform operation
fdiv.h f28, f9, f16, rmm # perform operation
fdiv.h f28, f9, f16, rne # perform operation
fdiv.h f28, f9, f16, rtz # perform operation
fdiv.h f28, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x4, 0xed4d0f7df745a8ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fdiv.h f4, f14, f10, dyn # perform operation
fdiv.h f4, f14, f10, rdn # perform operation
fdiv.h f4, f14, f10, rmm # perform operation
fdiv.h f4, f14, f10, rne # perform operation
fdiv.h f4, f14, f10, rtz # perform operation
fdiv.h f4, f14, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f14, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f14, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x21, 0xb03dfc60d4d86e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
fdiv.h f21, f25, f24, dyn # perform operation
fdiv.h f21, f25, f24, rdn # perform operation
fdiv.h f21, f25, f24, rmm # perform operation
fdiv.h f21, f25, f24, rne # perform operation
fdiv.h f21, f25, f24, rtz # perform operation
fdiv.h f21, f25, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f25, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f25, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f25, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f25, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x7, 0x8e483e5fd264962d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fdiv.h f7, f10, f6, dyn # perform operation
fdiv.h f7, f10, f6, rdn # perform operation
fdiv.h f7, f10, f6, rmm # perform operation
fdiv.h f7, f10, f6, rne # perform operation
fdiv.h f7, f10, f6, rtz # perform operation
fdiv.h f7, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x16, 0x16378c0c1615f6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fdiv.h f16, f7, f13, dyn # perform operation
fdiv.h f16, f7, f13, rdn # perform operation
fdiv.h f16, f7, f13, rmm # perform operation
fdiv.h f16, f7, f13, rne # perform operation
fdiv.h f16, f7, f13, rtz # perform operation
fdiv.h f16, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x19, 0x2b1543d805b564e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fdiv.h f19, f9, f29, dyn # perform operation
fdiv.h f19, f9, f29, rdn # perform operation
fdiv.h f19, f9, f29, rmm # perform operation
fdiv.h f19, f9, f29, rne # perform operation
fdiv.h f19, f9, f29, rtz # perform operation
fdiv.h f19, f9, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f9, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x30, 0xd91acfb2037a4f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fdiv.h f30, f5, f27, dyn # perform operation
fdiv.h f30, f5, f27, rdn # perform operation
fdiv.h f30, f5, f27, rmm # perform operation
fdiv.h f30, f5, f27, rne # perform operation
fdiv.h f30, f5, f27, rtz # perform operation
fdiv.h f30, f5, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f5, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f5, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x29, 0xf4afff65a28bb562 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fdiv.h f29, f4, f31, dyn # perform operation
fdiv.h f29, f4, f31, rdn # perform operation
fdiv.h f29, f4, f31, rmm # perform operation
fdiv.h f29, f4, f31, rne # perform operation
fdiv.h f29, f4, f31, rtz # perform operation
fdiv.h f29, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x27, 0xdfcc239bb931c0af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fdiv.h f27, f24, f20, dyn # perform operation
fdiv.h f27, f24, f20, rdn # perform operation
fdiv.h f27, f24, f20, rmm # perform operation
fdiv.h f27, f24, f20, rne # perform operation
fdiv.h f27, f24, f20, rtz # perform operation
fdiv.h f27, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x17, 0x4e7997b6523668fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fdiv.h f17, f21, f5, dyn # perform operation
fdiv.h f17, f21, f5, rdn # perform operation
fdiv.h f17, f21, f5, rmm # perform operation
fdiv.h f17, f21, f5, rne # perform operation
fdiv.h f17, f21, f5, rtz # perform operation
fdiv.h f17, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x24, 0x1430feb0520b2962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
fdiv.h f24, f25, f6, dyn # perform operation
fdiv.h f24, f25, f6, rdn # perform operation
fdiv.h f24, f25, f6, rmm # perform operation
fdiv.h f24, f25, f6, rne # perform operation
fdiv.h f24, f25, f6, rtz # perform operation
fdiv.h f24, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x3, 0xf34e7ba7b766c867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fdiv.h f3, f26, f18, dyn # perform operation
fdiv.h f3, f26, f18, rdn # perform operation
fdiv.h f3, f26, f18, rmm # perform operation
fdiv.h f3, f26, f18, rne # perform operation
fdiv.h f3, f26, f18, rtz # perform operation
fdiv.h f3, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x1, 0x449dc1b3529de09f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
fdiv.h f1, f15, f18, dyn # perform operation
fdiv.h f1, f15, f18, rdn # perform operation
fdiv.h f1, f15, f18, rmm # perform operation
fdiv.h f1, f15, f18, rne # perform operation
fdiv.h f1, f15, f18, rtz # perform operation
fdiv.h f1, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x11, 0x83ace22f44d92a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
fdiv.h f11, f7, f22, dyn # perform operation
fdiv.h f11, f7, f22, rdn # perform operation
fdiv.h f11, f7, f22, rmm # perform operation
fdiv.h f11, f7, f22, rne # perform operation
fdiv.h f11, f7, f22, rtz # perform operation
fdiv.h f11, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x30, 0x48ff195618f325c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fdiv.h f30, f16, f8, dyn # perform operation
fdiv.h f30, f16, f8, rdn # perform operation
fdiv.h f30, f16, f8, rmm # perform operation
fdiv.h f30, f16, f8, rne # perform operation
fdiv.h f30, f16, f8, rtz # perform operation
fdiv.h f30, f16, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f16, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f16, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f16, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f16, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f16, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x12, 0xe6e11e6529722690 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fdiv.h f12, f21, f4, dyn # perform operation
fdiv.h f12, f21, f4, rdn # perform operation
fdiv.h f12, f21, f4, rmm # perform operation
fdiv.h f12, f21, f4, rne # perform operation
fdiv.h f12, f21, f4, rtz # perform operation
fdiv.h f12, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x10, 0xa74fa9a5e3fe0e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fdiv.h f10, f7, f14, dyn # perform operation
fdiv.h f10, f7, f14, rdn # perform operation
fdiv.h f10, f7, f14, rmm # perform operation
fdiv.h f10, f7, f14, rne # perform operation
fdiv.h f10, f7, f14, rtz # perform operation
fdiv.h f10, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x2, 0xab77d4f2e98eb5a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fdiv.h f2, f8, f25, dyn # perform operation
fdiv.h f2, f8, f25, rdn # perform operation
fdiv.h f2, f8, f25, rmm # perform operation
fdiv.h f2, f8, f25, rne # perform operation
fdiv.h f2, f8, f25, rtz # perform operation
fdiv.h f2, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x19, 0xa5c641eb73b24a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fdiv.h f19, f9, f27, dyn # perform operation
fdiv.h f19, f9, f27, rdn # perform operation
fdiv.h f19, f9, f27, rmm # perform operation
fdiv.h f19, f9, f27, rne # perform operation
fdiv.h f19, f9, f27, rtz # perform operation
fdiv.h f19, f9, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f9, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x18, 0x58500ca27cdbec63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f22, 0(x2) # load 0x00000001 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fdiv.h f18, f22, f27, dyn # perform operation
fdiv.h f18, f22, f27, rdn # perform operation
fdiv.h f18, f22, f27, rmm # perform operation
fdiv.h f18, f22, f27, rne # perform operation
fdiv.h f18, f22, f27, rtz # perform operation
fdiv.h f18, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x31, 0x5d0f688ad8531560 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fdiv.h f31, f16, f2, dyn # perform operation
fdiv.h f31, f16, f2, rdn # perform operation
fdiv.h f31, f16, f2, rmm # perform operation
fdiv.h f31, f16, f2, rne # perform operation
fdiv.h f31, f16, f2, rtz # perform operation
fdiv.h f31, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x21, 0x216b89df3f528ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fdiv.h f21, f18, f1, dyn # perform operation
fdiv.h f21, f18, f1, rdn # perform operation
fdiv.h f21, f18, f1, rmm # perform operation
fdiv.h f21, f18, f1, rne # perform operation
fdiv.h f21, f18, f1, rtz # perform operation
fdiv.h f21, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x21, 0x8bb9a3f7262d5910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fdiv.h f21, f27, f7, dyn # perform operation
fdiv.h f21, f27, f7, rdn # perform operation
fdiv.h f21, f27, f7, rmm # perform operation
fdiv.h f21, f27, f7, rne # perform operation
fdiv.h f21, f27, f7, rtz # perform operation
fdiv.h f21, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x25, 0x03d75e054fa6292b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fdiv.h f25, f11, f27, dyn # perform operation
fdiv.h f25, f11, f27, rdn # perform operation
fdiv.h f25, f11, f27, rmm # perform operation
fdiv.h f25, f11, f27, rne # perform operation
fdiv.h f25, f11, f27, rtz # perform operation
fdiv.h f25, f11, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f11, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f11, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f11, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f11, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x8, 0x01d0c6c863854995 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fdiv.h f8, f2, f5, dyn # perform operation
fdiv.h f8, f2, f5, rdn # perform operation
fdiv.h f8, f2, f5, rmm # perform operation
fdiv.h f8, f2, f5, rne # perform operation
fdiv.h f8, f2, f5, rtz # perform operation
fdiv.h f8, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x31, 0x2805492acf043500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fdiv.h f31, f24, f11, dyn # perform operation
fdiv.h f31, f24, f11, rdn # perform operation
fdiv.h f31, f24, f11, rmm # perform operation
fdiv.h f31, f24, f11, rne # perform operation
fdiv.h f31, f24, f11, rtz # perform operation
fdiv.h f31, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x4, 0x8a09ba752c1336af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fdiv.h f4, f20, f23, dyn # perform operation
fdiv.h f4, f20, f23, rdn # perform operation
fdiv.h f4, f20, f23, rmm # perform operation
fdiv.h f4, f20, f23, rne # perform operation
fdiv.h f4, f20, f23, rtz # perform operation
fdiv.h f4, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x24, 0xe599a462b6302e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fdiv.h f24, f21, f2, dyn # perform operation
fdiv.h f24, f21, f2, rdn # perform operation
fdiv.h f24, f21, f2, rmm # perform operation
fdiv.h f24, f21, f2, rne # perform operation
fdiv.h f24, f21, f2, rtz # perform operation
fdiv.h f24, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x11, 0xe7c84f643dd1f9ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fdiv.h f11, f31, f2, dyn # perform operation
fdiv.h f11, f31, f2, rdn # perform operation
fdiv.h f11, f31, f2, rmm # perform operation
fdiv.h f11, f31, f2, rne # perform operation
fdiv.h f11, f31, f2, rtz # perform operation
fdiv.h f11, f31, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f31, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f31, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f31, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f31, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f31, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x5, 0x1eeeab2fc5af88cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fdiv.h f5, f18, f22, dyn # perform operation
fdiv.h f5, f18, f22, rdn # perform operation
fdiv.h f5, f18, f22, rmm # perform operation
fdiv.h f5, f18, f22, rne # perform operation
fdiv.h f5, f18, f22, rtz # perform operation
fdiv.h f5, f18, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f18, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x6, 0x3d33aa9c25d1a492 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fdiv.h f6, f22, f7, dyn # perform operation
fdiv.h f6, f22, f7, rdn # perform operation
fdiv.h f6, f22, f7, rmm # perform operation
fdiv.h f6, f22, f7, rne # perform operation
fdiv.h f6, f22, f7, rtz # perform operation
fdiv.h f6, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x14, 0x930173d9f68dfd0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fdiv.h f14, f15, f4, dyn # perform operation
fdiv.h f14, f15, f4, rdn # perform operation
fdiv.h f14, f15, f4, rmm # perform operation
fdiv.h f14, f15, f4, rne # perform operation
fdiv.h f14, f15, f4, rtz # perform operation
fdiv.h f14, f15, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x15, 0x70d1f36dcfe0e291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fdiv.h f15, f6, f19, dyn # perform operation
fdiv.h f15, f6, f19, rdn # perform operation
fdiv.h f15, f6, f19, rmm # perform operation
fdiv.h f15, f6, f19, rne # perform operation
fdiv.h f15, f6, f19, rtz # perform operation
fdiv.h f15, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x20, 0x72caedb1dadc86ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fdiv.h f20, f13, f14, dyn # perform operation
fdiv.h f20, f13, f14, rdn # perform operation
fdiv.h f20, f13, f14, rmm # perform operation
fdiv.h f20, f13, f14, rne # perform operation
fdiv.h f20, f13, f14, rtz # perform operation
fdiv.h f20, f13, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f13, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f13, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f13, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f13, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x11, 0x9cfc6b5901755fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fdiv.h f11, f20, f18, dyn # perform operation
fdiv.h f11, f20, f18, rdn # perform operation
fdiv.h f11, f20, f18, rmm # perform operation
fdiv.h f11, f20, f18, rne # perform operation
fdiv.h f11, f20, f18, rtz # perform operation
fdiv.h f11, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x30, 0x4747b0a61d0f599e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fdiv.h f30, f14, f26, dyn # perform operation
fdiv.h f30, f14, f26, rdn # perform operation
fdiv.h f30, f14, f26, rmm # perform operation
fdiv.h f30, f14, f26, rne # perform operation
fdiv.h f30, f14, f26, rtz # perform operation
fdiv.h f30, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x27, 0x8dc74c47d47d6205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fdiv.h f27, f26, f2, dyn # perform operation
fdiv.h f27, f26, f2, rdn # perform operation
fdiv.h f27, f26, f2, rmm # perform operation
fdiv.h f27, f26, f2, rne # perform operation
fdiv.h f27, f26, f2, rtz # perform operation
fdiv.h f27, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x14, 0xf1dd408e206b6053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fdiv.h f14, f15, f25, dyn # perform operation
fdiv.h f14, f15, f25, rdn # perform operation
fdiv.h f14, f15, f25, rmm # perform operation
fdiv.h f14, f15, f25, rne # perform operation
fdiv.h f14, f15, f25, rtz # perform operation
fdiv.h f14, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x24, 0x843afec929469c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fdiv.h f24, f11, f4, dyn # perform operation
fdiv.h f24, f11, f4, rdn # perform operation
fdiv.h f24, f11, f4, rmm # perform operation
fdiv.h f24, f11, f4, rne # perform operation
fdiv.h f24, f11, f4, rtz # perform operation
fdiv.h f24, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x9, 0xfddb9c86aec22ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fdiv.h f9, f25, f18, dyn # perform operation
fdiv.h f9, f25, f18, rdn # perform operation
fdiv.h f9, f25, f18, rmm # perform operation
fdiv.h f9, f25, f18, rne # perform operation
fdiv.h f9, f25, f18, rtz # perform operation
fdiv.h f9, f25, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f25, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f25, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f25, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f25, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x9, 0x84ce3694d5e463f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fdiv.h f9, f14, f4, dyn # perform operation
fdiv.h f9, f14, f4, rdn # perform operation
fdiv.h f9, f14, f4, rmm # perform operation
fdiv.h f9, f14, f4, rne # perform operation
fdiv.h f9, f14, f4, rtz # perform operation
fdiv.h f9, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x1, 0x1f53055d3251b906 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fdiv.h f1, f30, f6, dyn # perform operation
fdiv.h f1, f30, f6, rdn # perform operation
fdiv.h f1, f30, f6, rmm # perform operation
fdiv.h f1, f30, f6, rne # perform operation
fdiv.h f1, f30, f6, rtz # perform operation
fdiv.h f1, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x15, 0x1bb723241dea3614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
fdiv.h f15, f3, f24, dyn # perform operation
fdiv.h f15, f3, f24, rdn # perform operation
fdiv.h f15, f3, f24, rmm # perform operation
fdiv.h f15, f3, f24, rne # perform operation
fdiv.h f15, f3, f24, rtz # perform operation
fdiv.h f15, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x1, 0x2be8fdfce643286d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fdiv.h f1, f5, f22, dyn # perform operation
fdiv.h f1, f5, f22, rdn # perform operation
fdiv.h f1, f5, f22, rmm # perform operation
fdiv.h f1, f5, f22, rne # perform operation
fdiv.h f1, f5, f22, rtz # perform operation
fdiv.h f1, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x17, 0xcc78269530f976a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
fdiv.h f17, f24, f11, dyn # perform operation
fdiv.h f17, f24, f11, rdn # perform operation
fdiv.h f17, f24, f11, rmm # perform operation
fdiv.h f17, f24, f11, rne # perform operation
fdiv.h f17, f24, f11, rtz # perform operation
fdiv.h f17, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x5, 0xfb18615a9b5ac98f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fdiv.h f5, f17, f28, dyn # perform operation
fdiv.h f5, f17, f28, rdn # perform operation
fdiv.h f5, f17, f28, rmm # perform operation
fdiv.h f5, f17, f28, rne # perform operation
fdiv.h f5, f17, f28, rtz # perform operation
fdiv.h f5, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x31, 0x29f38a2b07f14981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fdiv.h f31, f13, f3, dyn # perform operation
fdiv.h f31, f13, f3, rdn # perform operation
fdiv.h f31, f13, f3, rmm # perform operation
fdiv.h f31, f13, f3, rne # perform operation
fdiv.h f31, f13, f3, rtz # perform operation
fdiv.h f31, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x7, 0xcaec60b1bce7dacc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fdiv.h f7, f20, f25, dyn # perform operation
fdiv.h f7, f20, f25, rdn # perform operation
fdiv.h f7, f20, f25, rmm # perform operation
fdiv.h f7, f20, f25, rne # perform operation
fdiv.h f7, f20, f25, rtz # perform operation
fdiv.h f7, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x25, 0x35d74e64aa12e252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fdiv.h f25, f1, f30, dyn # perform operation
fdiv.h f25, f1, f30, rdn # perform operation
fdiv.h f25, f1, f30, rmm # perform operation
fdiv.h f25, f1, f30, rne # perform operation
fdiv.h f25, f1, f30, rtz # perform operation
fdiv.h f25, f1, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f1, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x22, 0xfaafb99f1d960ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fdiv.h f22, f24, f20, dyn # perform operation
fdiv.h f22, f24, f20, rdn # perform operation
fdiv.h f22, f24, f20, rmm # perform operation
fdiv.h f22, f24, f20, rne # perform operation
fdiv.h f22, f24, f20, rtz # perform operation
fdiv.h f22, f24, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f24, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f24, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f24, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f24, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x30, 0x0fb2ab6562209a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
fdiv.h f30, f25, f17, dyn # perform operation
fdiv.h f30, f25, f17, rdn # perform operation
fdiv.h f30, f25, f17, rmm # perform operation
fdiv.h f30, f25, f17, rne # perform operation
fdiv.h f30, f25, f17, rtz # perform operation
fdiv.h f30, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x30, 0xa5096224e5573456 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fdiv.h f30, f5, f31, dyn # perform operation
fdiv.h f30, f5, f31, rdn # perform operation
fdiv.h f30, f5, f31, rmm # perform operation
fdiv.h f30, f5, f31, rne # perform operation
fdiv.h f30, f5, f31, rtz # perform operation
fdiv.h f30, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x24, 0x4da54daa9f2147df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
fdiv.h f24, f27, f6, dyn # perform operation
fdiv.h f24, f27, f6, rdn # perform operation
fdiv.h f24, f27, f6, rmm # perform operation
fdiv.h f24, f27, f6, rne # perform operation
fdiv.h f24, f27, f6, rtz # perform operation
fdiv.h f24, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x1, 0x8b528c8bf444b26d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fdiv.h f1, f18, f28, dyn # perform operation
fdiv.h f1, f18, f28, rdn # perform operation
fdiv.h f1, f18, f28, rmm # perform operation
fdiv.h f1, f18, f28, rne # perform operation
fdiv.h f1, f18, f28, rtz # perform operation
fdiv.h f1, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x11, 0xaabda4286ce8c457 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fdiv.h f11, f29, f21, dyn # perform operation
fdiv.h f11, f29, f21, rdn # perform operation
fdiv.h f11, f29, f21, rmm # perform operation
fdiv.h f11, f29, f21, rne # perform operation
fdiv.h f11, f29, f21, rtz # perform operation
fdiv.h f11, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x5, 0x2b81b5731c110c79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fdiv.h f5, f1, f16, dyn # perform operation
fdiv.h f5, f1, f16, rdn # perform operation
fdiv.h f5, f1, f16, rmm # perform operation
fdiv.h f5, f1, f16, rne # perform operation
fdiv.h f5, f1, f16, rtz # perform operation
fdiv.h f5, f1, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f1, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f1, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f1, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f1, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x31, 0x755a66ccbf2ed07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
fdiv.h f31, f24, f28, dyn # perform operation
fdiv.h f31, f24, f28, rdn # perform operation
fdiv.h f31, f24, f28, rmm # perform operation
fdiv.h f31, f24, f28, rne # perform operation
fdiv.h f31, f24, f28, rtz # perform operation
fdiv.h f31, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x16, 0x1333b08052d25812 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fdiv.h f16, f2, f12, dyn # perform operation
fdiv.h f16, f2, f12, rdn # perform operation
fdiv.h f16, f2, f12, rmm # perform operation
fdiv.h f16, f2, f12, rne # perform operation
fdiv.h f16, f2, f12, rtz # perform operation
fdiv.h f16, f2, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f2, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f2, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f2, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f2, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x21, 0xabc808cf53e20d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f21, f17, f9, dyn # perform operation
fdiv.h f21, f17, f9, rdn # perform operation
fdiv.h f21, f17, f9, rmm # perform operation
fdiv.h f21, f17, f9, rne # perform operation
fdiv.h f21, f17, f9, rtz # perform operation
fdiv.h f21, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x29, 0x51e68c25e88e89e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fdiv.h f29, f11, f16, dyn # perform operation
fdiv.h f29, f11, f16, rdn # perform operation
fdiv.h f29, f11, f16, rmm # perform operation
fdiv.h f29, f11, f16, rne # perform operation
fdiv.h f29, f11, f16, rtz # perform operation
fdiv.h f29, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x9, 0x4302661ddb2bf865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fdiv.h f9, f24, f27, dyn # perform operation
fdiv.h f9, f24, f27, rdn # perform operation
fdiv.h f9, f24, f27, rmm # perform operation
fdiv.h f9, f24, f27, rne # perform operation
fdiv.h f9, f24, f27, rtz # perform operation
fdiv.h f9, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x17, 0x2544bf2df516d315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f17, f21, f23, dyn # perform operation
fdiv.h f17, f21, f23, rdn # perform operation
fdiv.h f17, f21, f23, rmm # perform operation
fdiv.h f17, f21, f23, rne # perform operation
fdiv.h f17, f21, f23, rtz # perform operation
fdiv.h f17, f21, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f21, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f21, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f21, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f21, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f21, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x30, 0x75d179e81600ee01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fdiv.h f30, f14, f7, dyn # perform operation
fdiv.h f30, f14, f7, rdn # perform operation
fdiv.h f30, f14, f7, rmm # perform operation
fdiv.h f30, f14, f7, rne # perform operation
fdiv.h f30, f14, f7, rtz # perform operation
fdiv.h f30, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x16, 0x1eba42a4e9a255dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fdiv.h f16, f9, f6, dyn # perform operation
fdiv.h f16, f9, f6, rdn # perform operation
fdiv.h f16, f9, f6, rmm # perform operation
fdiv.h f16, f9, f6, rne # perform operation
fdiv.h f16, f9, f6, rtz # perform operation
fdiv.h f16, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x7, 0x6068ceb541059e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fdiv.h f7, f14, f25, dyn # perform operation
fdiv.h f7, f14, f25, rdn # perform operation
fdiv.h f7, f14, f25, rmm # perform operation
fdiv.h f7, f14, f25, rne # perform operation
fdiv.h f7, f14, f25, rtz # perform operation
fdiv.h f7, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x18, 0xeadadb5502238801 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fdiv.h f18, f6, f21, dyn # perform operation
fdiv.h f18, f6, f21, rdn # perform operation
fdiv.h f18, f6, f21, rmm # perform operation
fdiv.h f18, f6, f21, rne # perform operation
fdiv.h f18, f6, f21, rtz # perform operation
fdiv.h f18, f6, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f6, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x26, 0xb1990e152fe379e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fdiv.h f26, f25, f7, dyn # perform operation
fdiv.h f26, f25, f7, rdn # perform operation
fdiv.h f26, f25, f7, rmm # perform operation
fdiv.h f26, f25, f7, rne # perform operation
fdiv.h f26, f25, f7, rtz # perform operation
fdiv.h f26, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x27, 0x3d044da0b83b7f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fdiv.h f27, f30, f26, dyn # perform operation
fdiv.h f27, f30, f26, rdn # perform operation
fdiv.h f27, f30, f26, rmm # perform operation
fdiv.h f27, f30, f26, rne # perform operation
fdiv.h f27, f30, f26, rtz # perform operation
fdiv.h f27, f30, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f30, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x1, 0xc46267a1f8c88fd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fdiv.h f1, f24, f7, dyn # perform operation
fdiv.h f1, f24, f7, rdn # perform operation
fdiv.h f1, f24, f7, rmm # perform operation
fdiv.h f1, f24, f7, rne # perform operation
fdiv.h f1, f24, f7, rtz # perform operation
fdiv.h f1, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x23, 0xa5726c6046cdebe0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fdiv.h f23, f17, f5, dyn # perform operation
fdiv.h f23, f17, f5, rdn # perform operation
fdiv.h f23, f17, f5, rmm # perform operation
fdiv.h f23, f17, f5, rne # perform operation
fdiv.h f23, f17, f5, rtz # perform operation
fdiv.h f23, f17, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f17, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f17, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x30, 0x814bde1278f52fb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fdiv.h f30, f25, f28, dyn # perform operation
fdiv.h f30, f25, f28, rdn # perform operation
fdiv.h f30, f25, f28, rmm # perform operation
fdiv.h f30, f25, f28, rne # perform operation
fdiv.h f30, f25, f28, rtz # perform operation
fdiv.h f30, f25, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f25, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f25, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f25, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f25, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x6, 0x65f641c94f7ee1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fdiv.h f6, f28, f7, dyn # perform operation
fdiv.h f6, f28, f7, rdn # perform operation
fdiv.h f6, f28, f7, rmm # perform operation
fdiv.h f6, f28, f7, rne # perform operation
fdiv.h f6, f28, f7, rtz # perform operation
fdiv.h f6, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x21, 0xc11eebcbfaece3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fdiv.h f21, f20, f6, dyn # perform operation
fdiv.h f21, f20, f6, rdn # perform operation
fdiv.h f21, f20, f6, rmm # perform operation
fdiv.h f21, f20, f6, rne # perform operation
fdiv.h f21, f20, f6, rtz # perform operation
fdiv.h f21, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x4, 0x7c35a61e29dec8d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fdiv.h f4, f23, f5, dyn # perform operation
fdiv.h f4, f23, f5, rdn # perform operation
fdiv.h f4, f23, f5, rmm # perform operation
fdiv.h f4, f23, f5, rne # perform operation
fdiv.h f4, f23, f5, rtz # perform operation
fdiv.h f4, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x2, 0x9b0c621322a8aae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fdiv.h f2, f30, f25, dyn # perform operation
fdiv.h f2, f30, f25, rdn # perform operation
fdiv.h f2, f30, f25, rmm # perform operation
fdiv.h f2, f30, f25, rne # perform operation
fdiv.h f2, f30, f25, rtz # perform operation
fdiv.h f2, f30, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f30, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f30, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f30, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f30, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x6, 0xd80059560fc48f58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fdiv.h f6, f4, f12, dyn # perform operation
fdiv.h f6, f4, f12, rdn # perform operation
fdiv.h f6, f4, f12, rmm # perform operation
fdiv.h f6, f4, f12, rne # perform operation
fdiv.h f6, f4, f12, rtz # perform operation
fdiv.h f6, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x26, 0x9da113e94d5a57a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fdiv.h f26, f29, f23, dyn # perform operation
fdiv.h f26, f29, f23, rdn # perform operation
fdiv.h f26, f29, f23, rmm # perform operation
fdiv.h f26, f29, f23, rne # perform operation
fdiv.h f26, f29, f23, rtz # perform operation
fdiv.h f26, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x19, 0x8f88330bbbaa6530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f19, f24, f5, dyn # perform operation
fdiv.h f19, f24, f5, rdn # perform operation
fdiv.h f19, f24, f5, rmm # perform operation
fdiv.h f19, f24, f5, rne # perform operation
fdiv.h f19, f24, f5, rtz # perform operation
fdiv.h f19, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x27, 0xda3bf6070285d7c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fdiv.h f27, f1, f3, dyn # perform operation
fdiv.h f27, f1, f3, rdn # perform operation
fdiv.h f27, f1, f3, rmm # perform operation
fdiv.h f27, f1, f3, rne # perform operation
fdiv.h f27, f1, f3, rtz # perform operation
fdiv.h f27, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x23, 0x5c6eeee4fe24b324 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fdiv.h f23, f9, f22, dyn # perform operation
fdiv.h f23, f9, f22, rdn # perform operation
fdiv.h f23, f9, f22, rmm # perform operation
fdiv.h f23, f9, f22, rne # perform operation
fdiv.h f23, f9, f22, rtz # perform operation
fdiv.h f23, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x3, 0x451997e6dd3ebdc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fdiv.h f3, f28, f21, dyn # perform operation
fdiv.h f3, f28, f21, rdn # perform operation
fdiv.h f3, f28, f21, rmm # perform operation
fdiv.h f3, f28, f21, rne # perform operation
fdiv.h f3, f28, f21, rtz # perform operation
fdiv.h f3, f28, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f28, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f28, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f28, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f28, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x11, 0x4a17967577c45a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fdiv.h f11, f27, f3, dyn # perform operation
fdiv.h f11, f27, f3, rdn # perform operation
fdiv.h f11, f27, f3, rmm # perform operation
fdiv.h f11, f27, f3, rne # perform operation
fdiv.h f11, f27, f3, rtz # perform operation
fdiv.h f11, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x13, 0x8e2faf5cd85e0b98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fdiv.h f13, f30, f23, dyn # perform operation
fdiv.h f13, f30, f23, rdn # perform operation
fdiv.h f13, f30, f23, rmm # perform operation
fdiv.h f13, f30, f23, rne # perform operation
fdiv.h f13, f30, f23, rtz # perform operation
fdiv.h f13, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x28, 0x3e108c23375b7696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fdiv.h f28, f24, f29, dyn # perform operation
fdiv.h f28, f24, f29, rdn # perform operation
fdiv.h f28, f24, f29, rmm # perform operation
fdiv.h f28, f24, f29, rne # perform operation
fdiv.h f28, f24, f29, rtz # perform operation
fdiv.h f28, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x19, 0xe167972b3e3f5a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fdiv.h f19, f2, f29, dyn # perform operation
fdiv.h f19, f2, f29, rdn # perform operation
fdiv.h f19, f2, f29, rmm # perform operation
fdiv.h f19, f2, f29, rne # perform operation
fdiv.h f19, f2, f29, rtz # perform operation
fdiv.h f19, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x20, 0xf1fec77aff640ec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fdiv.h f20, f5, f9, dyn # perform operation
fdiv.h f20, f5, f9, rdn # perform operation
fdiv.h f20, f5, f9, rmm # perform operation
fdiv.h f20, f5, f9, rne # perform operation
fdiv.h f20, f5, f9, rtz # perform operation
fdiv.h f20, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x4, 0x0e35f7ce7304114a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fdiv.h f4, f18, f20, dyn # perform operation
fdiv.h f4, f18, f20, rdn # perform operation
fdiv.h f4, f18, f20, rmm # perform operation
fdiv.h f4, f18, f20, rne # perform operation
fdiv.h f4, f18, f20, rtz # perform operation
fdiv.h f4, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x17, 0x5c80eb6df5ef0224 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fdiv.h f17, f30, f23, dyn # perform operation
fdiv.h f17, f30, f23, rdn # perform operation
fdiv.h f17, f30, f23, rmm # perform operation
fdiv.h f17, f30, f23, rne # perform operation
fdiv.h f17, f30, f23, rtz # perform operation
fdiv.h f17, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x13, 0xe846965ae3ed3bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fdiv.h f13, f6, f7, dyn # perform operation
fdiv.h f13, f6, f7, rdn # perform operation
fdiv.h f13, f6, f7, rmm # perform operation
fdiv.h f13, f6, f7, rne # perform operation
fdiv.h f13, f6, f7, rtz # perform operation
fdiv.h f13, f6, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f6, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f6, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f6, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f6, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x14, 0xd01e00581563f338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fdiv.h f14, f1, f31, dyn # perform operation
fdiv.h f14, f1, f31, rdn # perform operation
fdiv.h f14, f1, f31, rmm # perform operation
fdiv.h f14, f1, f31, rne # perform operation
fdiv.h f14, f1, f31, rtz # perform operation
fdiv.h f14, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x17, 0x24104efcf0885e54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fdiv.h f17, f30, f31, dyn # perform operation
fdiv.h f17, f30, f31, rdn # perform operation
fdiv.h f17, f30, f31, rmm # perform operation
fdiv.h f17, f30, f31, rne # perform operation
fdiv.h f17, f30, f31, rtz # perform operation
fdiv.h f17, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x30, 0x6d0a95f7dd01de9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fdiv.h f30, f26, f24, dyn # perform operation
fdiv.h f30, f26, f24, rdn # perform operation
fdiv.h f30, f26, f24, rmm # perform operation
fdiv.h f30, f26, f24, rne # perform operation
fdiv.h f30, f26, f24, rtz # perform operation
fdiv.h f30, f26, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f26, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f26, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f26, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f26, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x24, 0x31f7ac33028ada20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fdiv.h f24, f11, f6, dyn # perform operation
fdiv.h f24, f11, f6, rdn # perform operation
fdiv.h f24, f11, f6, rmm # perform operation
fdiv.h f24, f11, f6, rne # perform operation
fdiv.h f24, f11, f6, rtz # perform operation
fdiv.h f24, f11, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f11, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x14, 0xeb36b64d96ea22f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fdiv.h f14, f4, f22, dyn # perform operation
fdiv.h f14, f4, f22, rdn # perform operation
fdiv.h f14, f4, f22, rmm # perform operation
fdiv.h f14, f4, f22, rne # perform operation
fdiv.h f14, f4, f22, rtz # perform operation
fdiv.h f14, f4, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f4, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f4, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f4, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f4, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f4, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x24, 0x0d4be0f93685af4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fdiv.h f24, f1, f26, dyn # perform operation
fdiv.h f24, f1, f26, rdn # perform operation
fdiv.h f24, f1, f26, rmm # perform operation
fdiv.h f24, f1, f26, rne # perform operation
fdiv.h f24, f1, f26, rtz # perform operation
fdiv.h f24, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x3, 0x93556461bcb3c125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fdiv.h f3, f22, f20, dyn # perform operation
fdiv.h f3, f22, f20, rdn # perform operation
fdiv.h f3, f22, f20, rmm # perform operation
fdiv.h f3, f22, f20, rne # perform operation
fdiv.h f3, f22, f20, rtz # perform operation
fdiv.h f3, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x28, 0xc7a5fd925508db59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fdiv.h f28, f29, f12, dyn # perform operation
fdiv.h f28, f29, f12, rdn # perform operation
fdiv.h f28, f29, f12, rmm # perform operation
fdiv.h f28, f29, f12, rne # perform operation
fdiv.h f28, f29, f12, rtz # perform operation
fdiv.h f28, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x13, 0x1505c674c4e0d02b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fdiv.h f13, f6, f26, dyn # perform operation
fdiv.h f13, f6, f26, rdn # perform operation
fdiv.h f13, f6, f26, rmm # perform operation
fdiv.h f13, f6, f26, rne # perform operation
fdiv.h f13, f6, f26, rtz # perform operation
fdiv.h f13, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x13, 0x87386e31e62f42a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fdiv.h f13, f2, f23, dyn # perform operation
fdiv.h f13, f2, f23, rdn # perform operation
fdiv.h f13, f2, f23, rmm # perform operation
fdiv.h f13, f2, f23, rne # perform operation
fdiv.h f13, f2, f23, rtz # perform operation
fdiv.h f13, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x29, 0x381084f7bf30ea0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fdiv.h f29, f30, f17, dyn # perform operation
fdiv.h f29, f30, f17, rdn # perform operation
fdiv.h f29, f30, f17, rmm # perform operation
fdiv.h f29, f30, f17, rne # perform operation
fdiv.h f29, f30, f17, rtz # perform operation
fdiv.h f29, f30, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f30, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x8, 0xdd02e3ffae33de65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
fdiv.h f8, f4, f10, dyn # perform operation
fdiv.h f8, f4, f10, rdn # perform operation
fdiv.h f8, f4, f10, rmm # perform operation
fdiv.h f8, f4, f10, rne # perform operation
fdiv.h f8, f4, f10, rtz # perform operation
fdiv.h f8, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x25, 0x3a4a68626d40ad1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fdiv.h f25, f31, f28, dyn # perform operation
fdiv.h f25, f31, f28, rdn # perform operation
fdiv.h f25, f31, f28, rmm # perform operation
fdiv.h f25, f31, f28, rne # perform operation
fdiv.h f25, f31, f28, rtz # perform operation
fdiv.h f25, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x6, 0x3ed5ed7d05bfe1a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fdiv.h f6, f8, f19, dyn # perform operation
fdiv.h f6, f8, f19, rdn # perform operation
fdiv.h f6, f8, f19, rmm # perform operation
fdiv.h f6, f8, f19, rne # perform operation
fdiv.h f6, f8, f19, rtz # perform operation
fdiv.h f6, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x6, 0x028465d74b1cb9d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fdiv.h f6, f23, f11, dyn # perform operation
fdiv.h f6, f23, f11, rdn # perform operation
fdiv.h f6, f23, f11, rmm # perform operation
fdiv.h f6, f23, f11, rne # perform operation
fdiv.h f6, f23, f11, rtz # perform operation
fdiv.h f6, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x28, 0x59e966b6a260351f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fdiv.h f28, f27, f22, dyn # perform operation
fdiv.h f28, f27, f22, rdn # perform operation
fdiv.h f28, f27, f22, rmm # perform operation
fdiv.h f28, f27, f22, rne # perform operation
fdiv.h f28, f27, f22, rtz # perform operation
fdiv.h f28, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x13, 0x40233ab934ad8e17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fdiv.h f13, f25, f8, dyn # perform operation
fdiv.h f13, f25, f8, rdn # perform operation
fdiv.h f13, f25, f8, rmm # perform operation
fdiv.h f13, f25, f8, rne # perform operation
fdiv.h f13, f25, f8, rtz # perform operation
fdiv.h f13, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x11, 0x3b9f0957091dc3c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fdiv.h f11, f28, f8, dyn # perform operation
fdiv.h f11, f28, f8, rdn # perform operation
fdiv.h f11, f28, f8, rmm # perform operation
fdiv.h f11, f28, f8, rne # perform operation
fdiv.h f11, f28, f8, rtz # perform operation
fdiv.h f11, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x8, 0x9221b3d6900a3028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fdiv.h f8, f30, f20, dyn # perform operation
fdiv.h f8, f30, f20, rdn # perform operation
fdiv.h f8, f30, f20, rmm # perform operation
fdiv.h f8, f30, f20, rne # perform operation
fdiv.h f8, f30, f20, rtz # perform operation
fdiv.h f8, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x9, 0xeef0a2fde7f9649c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fdiv.h f9, f15, f8, dyn # perform operation
fdiv.h f9, f15, f8, rdn # perform operation
fdiv.h f9, f15, f8, rmm # perform operation
fdiv.h f9, f15, f8, rne # perform operation
fdiv.h f9, f15, f8, rtz # perform operation
fdiv.h f9, f15, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f15, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f15, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f15, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f15, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f15, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x5, 0x0474971ab6bf4d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fdiv.h f5, f8, f10, dyn # perform operation
fdiv.h f5, f8, f10, rdn # perform operation
fdiv.h f5, f8, f10, rmm # perform operation
fdiv.h f5, f8, f10, rne # perform operation
fdiv.h f5, f8, f10, rtz # perform operation
fdiv.h f5, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x19, 0x700f95ecadc637ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fdiv.h f19, f8, f7, dyn # perform operation
fdiv.h f19, f8, f7, rdn # perform operation
fdiv.h f19, f8, f7, rmm # perform operation
fdiv.h f19, f8, f7, rne # perform operation
fdiv.h f19, f8, f7, rtz # perform operation
fdiv.h f19, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x2, 0x670e2a0001530eac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fdiv.h f2, f27, f22, dyn # perform operation
fdiv.h f2, f27, f22, rdn # perform operation
fdiv.h f2, f27, f22, rmm # perform operation
fdiv.h f2, f27, f22, rne # perform operation
fdiv.h f2, f27, f22, rtz # perform operation
fdiv.h f2, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x1, 0xc9df1c0411ef7d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fdiv.h f1, f20, f17, dyn # perform operation
fdiv.h f1, f20, f17, rdn # perform operation
fdiv.h f1, f20, f17, rmm # perform operation
fdiv.h f1, f20, f17, rne # perform operation
fdiv.h f1, f20, f17, rtz # perform operation
fdiv.h f1, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x26, 0x782a805813930270 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
fdiv.h f26, f19, f9, dyn # perform operation
fdiv.h f26, f19, f9, rdn # perform operation
fdiv.h f26, f19, f9, rmm # perform operation
fdiv.h f26, f19, f9, rne # perform operation
fdiv.h f26, f19, f9, rtz # perform operation
fdiv.h f26, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x24, 0xba9bc26274922973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fdiv.h f24, f15, f2, dyn # perform operation
fdiv.h f24, f15, f2, rdn # perform operation
fdiv.h f24, f15, f2, rmm # perform operation
fdiv.h f24, f15, f2, rne # perform operation
fdiv.h f24, f15, f2, rtz # perform operation
fdiv.h f24, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x2, 0xcace6866deabe09e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f5, 0(x2) # load 0x00000200 from memory into f5
fdiv.h f2, f26, f5, dyn # perform operation
fdiv.h f2, f26, f5, rdn # perform operation
fdiv.h f2, f26, f5, rmm # perform operation
fdiv.h f2, f26, f5, rne # perform operation
fdiv.h f2, f26, f5, rtz # perform operation
fdiv.h f2, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x18, 0x8122efd2e147c02d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fdiv.h f18, f14, f23, dyn # perform operation
fdiv.h f18, f14, f23, rdn # perform operation
fdiv.h f18, f14, f23, rmm # perform operation
fdiv.h f18, f14, f23, rne # perform operation
fdiv.h f18, f14, f23, rtz # perform operation
fdiv.h f18, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x12, 0xf52a175fc712a331 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fdiv.h f12, f25, f6, dyn # perform operation
fdiv.h f12, f25, f6, rdn # perform operation
fdiv.h f12, f25, f6, rmm # perform operation
fdiv.h f12, f25, f6, rne # perform operation
fdiv.h f12, f25, f6, rtz # perform operation
fdiv.h f12, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x4, 0x4760dddcf2ebfe60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fdiv.h f4, f8, f5, dyn # perform operation
fdiv.h f4, f8, f5, rdn # perform operation
fdiv.h f4, f8, f5, rmm # perform operation
fdiv.h f4, f8, f5, rne # perform operation
fdiv.h f4, f8, f5, rtz # perform operation
fdiv.h f4, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x7, 0x01118e41f8e19b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fdiv.h f7, f9, f22, dyn # perform operation
fdiv.h f7, f9, f22, rdn # perform operation
fdiv.h f7, f9, f22, rmm # perform operation
fdiv.h f7, f9, f22, rne # perform operation
fdiv.h f7, f9, f22, rtz # perform operation
fdiv.h f7, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x3, 0x06e4b40643ece493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fdiv.h f3, f20, f14, dyn # perform operation
fdiv.h f3, f20, f14, rdn # perform operation
fdiv.h f3, f20, f14, rmm # perform operation
fdiv.h f3, f20, f14, rne # perform operation
fdiv.h f3, f20, f14, rtz # perform operation
fdiv.h f3, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x26, 0x5f3f0929bbb3e8e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fdiv.h f26, f13, f9, dyn # perform operation
fdiv.h f26, f13, f9, rdn # perform operation
fdiv.h f26, f13, f9, rmm # perform operation
fdiv.h f26, f13, f9, rne # perform operation
fdiv.h f26, f13, f9, rtz # perform operation
fdiv.h f26, f13, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f13, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x28, 0x9b9153e97f8bb9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fdiv.h f28, f8, f12, dyn # perform operation
fdiv.h f28, f8, f12, rdn # perform operation
fdiv.h f28, f8, f12, rmm # perform operation
fdiv.h f28, f8, f12, rne # perform operation
fdiv.h f28, f8, f12, rtz # perform operation
fdiv.h f28, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x1, 0xf73cae5984be7056 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fdiv.h f1, f8, f26, dyn # perform operation
fdiv.h f1, f8, f26, rdn # perform operation
fdiv.h f1, f8, f26, rmm # perform operation
fdiv.h f1, f8, f26, rne # perform operation
fdiv.h f1, f8, f26, rtz # perform operation
fdiv.h f1, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x15, 0x1f5e689059ad7968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fdiv.h f15, f8, f24, dyn # perform operation
fdiv.h f15, f8, f24, rdn # perform operation
fdiv.h f15, f8, f24, rmm # perform operation
fdiv.h f15, f8, f24, rne # perform operation
fdiv.h f15, f8, f24, rtz # perform operation
fdiv.h f15, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x23, 0xe6b54900824fbd04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f23, f16, f10, dyn # perform operation
fdiv.h f23, f16, f10, rdn # perform operation
fdiv.h f23, f16, f10, rmm # perform operation
fdiv.h f23, f16, f10, rne # perform operation
fdiv.h f23, f16, f10, rtz # perform operation
fdiv.h f23, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x18, 0xd882333753436350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fdiv.h f18, f22, f6, dyn # perform operation
fdiv.h f18, f22, f6, rdn # perform operation
fdiv.h f18, f22, f6, rmm # perform operation
fdiv.h f18, f22, f6, rne # perform operation
fdiv.h f18, f22, f6, rtz # perform operation
fdiv.h f18, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x18, 0xf3cb1e8183cc6473 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fdiv.h f18, f9, f16, dyn # perform operation
fdiv.h f18, f9, f16, rdn # perform operation
fdiv.h f18, f9, f16, rmm # perform operation
fdiv.h f18, f9, f16, rne # perform operation
fdiv.h f18, f9, f16, rtz # perform operation
fdiv.h f18, f9, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f9, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f9, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f9, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f9, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x3, 0x5d408529781ccf2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fdiv.h f3, f29, f31, dyn # perform operation
fdiv.h f3, f29, f31, rdn # perform operation
fdiv.h f3, f29, f31, rmm # perform operation
fdiv.h f3, f29, f31, rne # perform operation
fdiv.h f3, f29, f31, rtz # perform operation
fdiv.h f3, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x3, 0x074e0e6adcda3262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fdiv.h f3, f10, f28, dyn # perform operation
fdiv.h f3, f10, f28, rdn # perform operation
fdiv.h f3, f10, f28, rmm # perform operation
fdiv.h f3, f10, f28, rne # perform operation
fdiv.h f3, f10, f28, rtz # perform operation
fdiv.h f3, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x3, 0x45ba5a4c0d998021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fdiv.h f3, f27, f11, dyn # perform operation
fdiv.h f3, f27, f11, rdn # perform operation
fdiv.h f3, f27, f11, rmm # perform operation
fdiv.h f3, f27, f11, rne # perform operation
fdiv.h f3, f27, f11, rtz # perform operation
fdiv.h f3, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x12, 0x369ddbfb13854412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fdiv.h f12, f14, f23, dyn # perform operation
fdiv.h f12, f14, f23, rdn # perform operation
fdiv.h f12, f14, f23, rmm # perform operation
fdiv.h f12, f14, f23, rne # perform operation
fdiv.h f12, f14, f23, rtz # perform operation
fdiv.h f12, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x9, 0x1aeb27cc0e79d93c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fdiv.h f9, f12, f18, dyn # perform operation
fdiv.h f9, f12, f18, rdn # perform operation
fdiv.h f9, f12, f18, rmm # perform operation
fdiv.h f9, f12, f18, rne # perform operation
fdiv.h f9, f12, f18, rtz # perform operation
fdiv.h f9, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f9, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f9, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f9, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f9, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f9, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x25, 0x3cd9981a9f1f9dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
fdiv.h f25, f30, f1, dyn # perform operation
fdiv.h f25, f30, f1, rdn # perform operation
fdiv.h f25, f30, f1, rmm # perform operation
fdiv.h f25, f30, f1, rne # perform operation
fdiv.h f25, f30, f1, rtz # perform operation
fdiv.h f25, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x7, 0x72007c6ebc991f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fdiv.h f7, f29, f22, dyn # perform operation
fdiv.h f7, f29, f22, rdn # perform operation
fdiv.h f7, f29, f22, rmm # perform operation
fdiv.h f7, f29, f22, rne # perform operation
fdiv.h f7, f29, f22, rtz # perform operation
fdiv.h f7, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x7, 0x64d84d8ddc78d54a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fdiv.h f7, f18, f23, dyn # perform operation
fdiv.h f7, f18, f23, rdn # perform operation
fdiv.h f7, f18, f23, rmm # perform operation
fdiv.h f7, f18, f23, rne # perform operation
fdiv.h f7, f18, f23, rtz # perform operation
fdiv.h f7, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x13, 0xbfe90273649c2dcc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fdiv.h f13, f25, f23, dyn # perform operation
fdiv.h f13, f25, f23, rdn # perform operation
fdiv.h f13, f25, f23, rmm # perform operation
fdiv.h f13, f25, f23, rne # perform operation
fdiv.h f13, f25, f23, rtz # perform operation
fdiv.h f13, f25, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f25, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f25, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f25, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f25, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f25, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x20, 0xd875a4f6276bc7a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fdiv.h f20, f25, f1, dyn # perform operation
fdiv.h f20, f25, f1, rdn # perform operation
fdiv.h f20, f25, f1, rmm # perform operation
fdiv.h f20, f25, f1, rne # perform operation
fdiv.h f20, f25, f1, rtz # perform operation
fdiv.h f20, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x15, 0x78212bf037ebce0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fdiv.h f15, f11, f25, dyn # perform operation
fdiv.h f15, f11, f25, rdn # perform operation
fdiv.h f15, f11, f25, rmm # perform operation
fdiv.h f15, f11, f25, rne # perform operation
fdiv.h f15, f11, f25, rtz # perform operation
fdiv.h f15, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x24, 0xad5184bac9953077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
fdiv.h f24, f5, f6, dyn # perform operation
fdiv.h f24, f5, f6, rdn # perform operation
fdiv.h f24, f5, f6, rmm # perform operation
fdiv.h f24, f5, f6, rne # perform operation
fdiv.h f24, f5, f6, rtz # perform operation
fdiv.h f24, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x17, 0xe0528807a0d6846f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fdiv.h f17, f25, f12, dyn # perform operation
fdiv.h f17, f25, f12, rdn # perform operation
fdiv.h f17, f25, f12, rmm # perform operation
fdiv.h f17, f25, f12, rne # perform operation
fdiv.h f17, f25, f12, rtz # perform operation
fdiv.h f17, f25, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f25, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f25, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f25, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f25, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f25, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x28, 0x5ba345e522c0de7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
fdiv.h f28, f10, f18, dyn # perform operation
fdiv.h f28, f10, f18, rdn # perform operation
fdiv.h f28, f10, f18, rmm # perform operation
fdiv.h f28, f10, f18, rne # perform operation
fdiv.h f28, f10, f18, rtz # perform operation
fdiv.h f28, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x2, 0xb5d8084ea768bcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fdiv.h f2, f17, f24, dyn # perform operation
fdiv.h f2, f17, f24, rdn # perform operation
fdiv.h f2, f17, f24, rmm # perform operation
fdiv.h f2, f17, f24, rne # perform operation
fdiv.h f2, f17, f24, rtz # perform operation
fdiv.h f2, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x13, 0x6a6d812ba0732f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fdiv.h f13, f3, f16, dyn # perform operation
fdiv.h f13, f3, f16, rdn # perform operation
fdiv.h f13, f3, f16, rmm # perform operation
fdiv.h f13, f3, f16, rne # perform operation
fdiv.h f13, f3, f16, rtz # perform operation
fdiv.h f13, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x11, 0x692c143c50381561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fdiv.h f11, f30, f12, dyn # perform operation
fdiv.h f11, f30, f12, rdn # perform operation
fdiv.h f11, f30, f12, rmm # perform operation
fdiv.h f11, f30, f12, rne # perform operation
fdiv.h f11, f30, f12, rtz # perform operation
fdiv.h f11, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f11, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f11, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x15, 0x779986813ea0a0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fdiv.h f15, f28, f14, dyn # perform operation
fdiv.h f15, f28, f14, rdn # perform operation
fdiv.h f15, f28, f14, rmm # perform operation
fdiv.h f15, f28, f14, rne # perform operation
fdiv.h f15, f28, f14, rtz # perform operation
fdiv.h f15, f28, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f28, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f28, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f28, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f28, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x19, 0xc6d4e6954602586c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fdiv.h f19, f15, f26, dyn # perform operation
fdiv.h f19, f15, f26, rdn # perform operation
fdiv.h f19, f15, f26, rmm # perform operation
fdiv.h f19, f15, f26, rne # perform operation
fdiv.h f19, f15, f26, rtz # perform operation
fdiv.h f19, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f19, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f19, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x30, 0xe2bc121d2df24b1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fdiv.h f30, f2, f10, dyn # perform operation
fdiv.h f30, f2, f10, rdn # perform operation
fdiv.h f30, f2, f10, rmm # perform operation
fdiv.h f30, f2, f10, rne # perform operation
fdiv.h f30, f2, f10, rtz # perform operation
fdiv.h f30, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x2, 0x54b97c4e3b77ddf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fdiv.h f2, f14, f30, dyn # perform operation
fdiv.h f2, f14, f30, rdn # perform operation
fdiv.h f2, f14, f30, rmm # perform operation
fdiv.h f2, f14, f30, rne # perform operation
fdiv.h f2, f14, f30, rtz # perform operation
fdiv.h f2, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x15, 0xa64fa48980b6e7f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fdiv.h f15, f8, f5, dyn # perform operation
fdiv.h f15, f8, f5, rdn # perform operation
fdiv.h f15, f8, f5, rmm # perform operation
fdiv.h f15, f8, f5, rne # perform operation
fdiv.h f15, f8, f5, rtz # perform operation
fdiv.h f15, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x22, 0x4f8e2f20202474e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fdiv.h f22, f27, f6, dyn # perform operation
fdiv.h f22, f27, f6, rdn # perform operation
fdiv.h f22, f27, f6, rmm # perform operation
fdiv.h f22, f27, f6, rne # perform operation
fdiv.h f22, f27, f6, rtz # perform operation
fdiv.h f22, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x24, 0x9628dd1fdacb363e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fdiv.h f24, f5, f8, dyn # perform operation
fdiv.h f24, f5, f8, rdn # perform operation
fdiv.h f24, f5, f8, rmm # perform operation
fdiv.h f24, f5, f8, rne # perform operation
fdiv.h f24, f5, f8, rtz # perform operation
fdiv.h f24, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x4, 0xa2b0653e2ace7993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fdiv.h f4, f9, f1, dyn # perform operation
fdiv.h f4, f9, f1, rdn # perform operation
fdiv.h f4, f9, f1, rmm # perform operation
fdiv.h f4, f9, f1, rne # perform operation
fdiv.h f4, f9, f1, rtz # perform operation
fdiv.h f4, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x30, 0x603761e4ae6768cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fdiv.h f30, f1, f19, dyn # perform operation
fdiv.h f30, f1, f19, rdn # perform operation
fdiv.h f30, f1, f19, rmm # perform operation
fdiv.h f30, f1, f19, rne # perform operation
fdiv.h f30, f1, f19, rtz # perform operation
fdiv.h f30, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x14, 0x16a5bd871e5d48bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fdiv.h f14, f17, f30, dyn # perform operation
fdiv.h f14, f17, f30, rdn # perform operation
fdiv.h f14, f17, f30, rmm # perform operation
fdiv.h f14, f17, f30, rne # perform operation
fdiv.h f14, f17, f30, rtz # perform operation
fdiv.h f14, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x1, 0xa1b4bc847a089928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fdiv.h f1, f29, f30, dyn # perform operation
fdiv.h f1, f29, f30, rdn # perform operation
fdiv.h f1, f29, f30, rmm # perform operation
fdiv.h f1, f29, f30, rne # perform operation
fdiv.h f1, f29, f30, rtz # perform operation
fdiv.h f1, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x20, 0xadd557388310c166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fdiv.h f20, f28, f4, dyn # perform operation
fdiv.h f20, f28, f4, rdn # perform operation
fdiv.h f20, f28, f4, rmm # perform operation
fdiv.h f20, f28, f4, rne # perform operation
fdiv.h f20, f28, f4, rtz # perform operation
fdiv.h f20, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x13, 0x66cc331fc12ecec0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fdiv.h f13, f21, f1, dyn # perform operation
fdiv.h f13, f21, f1, rdn # perform operation
fdiv.h f13, f21, f1, rmm # perform operation
fdiv.h f13, f21, f1, rne # perform operation
fdiv.h f13, f21, f1, rtz # perform operation
fdiv.h f13, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x12, 0x07e3a91a0b78c71f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fdiv.h f12, f6, f1, dyn # perform operation
fdiv.h f12, f6, f1, rdn # perform operation
fdiv.h f12, f6, f1, rmm # perform operation
fdiv.h f12, f6, f1, rne # perform operation
fdiv.h f12, f6, f1, rtz # perform operation
fdiv.h f12, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x28, 0x8883be6802b7d039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fdiv.h f28, f18, f31, dyn # perform operation
fdiv.h f28, f18, f31, rdn # perform operation
fdiv.h f28, f18, f31, rmm # perform operation
fdiv.h f28, f18, f31, rne # perform operation
fdiv.h f28, f18, f31, rtz # perform operation
fdiv.h f28, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x16, 0xc252cd7fe062ac0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fdiv.h f16, f12, f4, dyn # perform operation
fdiv.h f16, f12, f4, rdn # perform operation
fdiv.h f16, f12, f4, rmm # perform operation
fdiv.h f16, f12, f4, rne # perform operation
fdiv.h f16, f12, f4, rtz # perform operation
fdiv.h f16, f12, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f12, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f12, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f12, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f12, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x12, 0x759576b1a3ecb39f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fdiv.h f12, f19, f6, dyn # perform operation
fdiv.h f12, f19, f6, rdn # perform operation
fdiv.h f12, f19, f6, rmm # perform operation
fdiv.h f12, f19, f6, rne # perform operation
fdiv.h f12, f19, f6, rtz # perform operation
fdiv.h f12, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x25, 0x9481b7146ab04e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fdiv.h f25, f13, f2, dyn # perform operation
fdiv.h f25, f13, f2, rdn # perform operation
fdiv.h f25, f13, f2, rmm # perform operation
fdiv.h f25, f13, f2, rne # perform operation
fdiv.h f25, f13, f2, rtz # perform operation
fdiv.h f25, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x5, 0xed6232f47a31bcb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fdiv.h f5, f3, f16, dyn # perform operation
fdiv.h f5, f3, f16, rdn # perform operation
fdiv.h f5, f3, f16, rmm # perform operation
fdiv.h f5, f3, f16, rne # perform operation
fdiv.h f5, f3, f16, rtz # perform operation
fdiv.h f5, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x22, 0x847b60302e9bfc71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fdiv.h f22, f10, f19, dyn # perform operation
fdiv.h f22, f10, f19, rdn # perform operation
fdiv.h f22, f10, f19, rmm # perform operation
fdiv.h f22, f10, f19, rne # perform operation
fdiv.h f22, f10, f19, rtz # perform operation
fdiv.h f22, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x21, 0x647909a38e416e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fdiv.h f21, f13, f20, dyn # perform operation
fdiv.h f21, f13, f20, rdn # perform operation
fdiv.h f21, f13, f20, rmm # perform operation
fdiv.h f21, f13, f20, rne # perform operation
fdiv.h f21, f13, f20, rtz # perform operation
fdiv.h f21, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x7, 0xea7b6aa5939a61c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fdiv.h f7, f25, f1, dyn # perform operation
fdiv.h f7, f25, f1, rdn # perform operation
fdiv.h f7, f25, f1, rmm # perform operation
fdiv.h f7, f25, f1, rne # perform operation
fdiv.h f7, f25, f1, rtz # perform operation
fdiv.h f7, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x30, 0x958d7c0d2f69934b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fdiv.h f30, f20, f24, dyn # perform operation
fdiv.h f30, f20, f24, rdn # perform operation
fdiv.h f30, f20, f24, rmm # perform operation
fdiv.h f30, f20, f24, rne # perform operation
fdiv.h f30, f20, f24, rtz # perform operation
fdiv.h f30, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f30, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f30, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x10, 0xa63971fb0d70421d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fdiv.h f10, f16, f2, dyn # perform operation
fdiv.h f10, f16, f2, rdn # perform operation
fdiv.h f10, f16, f2, rmm # perform operation
fdiv.h f10, f16, f2, rne # perform operation
fdiv.h f10, f16, f2, rtz # perform operation
fdiv.h f10, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x10, 0xf55e77f291db0ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fdiv.h f10, f5, f23, dyn # perform operation
fdiv.h f10, f5, f23, rdn # perform operation
fdiv.h f10, f5, f23, rmm # perform operation
fdiv.h f10, f5, f23, rne # perform operation
fdiv.h f10, f5, f23, rtz # perform operation
fdiv.h f10, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x2, 0x39944a35724fde00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fdiv.h f2, f8, f1, dyn # perform operation
fdiv.h f2, f8, f1, rdn # perform operation
fdiv.h f2, f8, f1, rmm # perform operation
fdiv.h f2, f8, f1, rne # perform operation
fdiv.h f2, f8, f1, rtz # perform operation
fdiv.h f2, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x25, 0xa8f13d779f344c94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fdiv.h f25, f22, f14, dyn # perform operation
fdiv.h f25, f22, f14, rdn # perform operation
fdiv.h f25, f22, f14, rmm # perform operation
fdiv.h f25, f22, f14, rne # perform operation
fdiv.h f25, f22, f14, rtz # perform operation
fdiv.h f25, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x21, 0x178fa2c882d8bacf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fdiv.h f21, f19, f5, dyn # perform operation
fdiv.h f21, f19, f5, rdn # perform operation
fdiv.h f21, f19, f5, rmm # perform operation
fdiv.h f21, f19, f5, rne # perform operation
fdiv.h f21, f19, f5, rtz # perform operation
fdiv.h f21, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x14, 0xa31dc5d23b788a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fdiv.h f14, f20, f11, dyn # perform operation
fdiv.h f14, f20, f11, rdn # perform operation
fdiv.h f14, f20, f11, rmm # perform operation
fdiv.h f14, f20, f11, rne # perform operation
fdiv.h f14, f20, f11, rtz # perform operation
fdiv.h f14, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x4, 0xaf40c8d1ae999170 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fdiv.h f4, f31, f15, dyn # perform operation
fdiv.h f4, f31, f15, rdn # perform operation
fdiv.h f4, f31, f15, rmm # perform operation
fdiv.h f4, f31, f15, rne # perform operation
fdiv.h f4, f31, f15, rtz # perform operation
fdiv.h f4, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x14, 0x77c739ad375eabf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fdiv.h f14, f21, f29, dyn # perform operation
fdiv.h f14, f21, f29, rdn # perform operation
fdiv.h f14, f21, f29, rmm # perform operation
fdiv.h f14, f21, f29, rne # perform operation
fdiv.h f14, f21, f29, rtz # perform operation
fdiv.h f14, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x24, 0x33aa779a1c7f778d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fdiv.h f24, f4, f6, dyn # perform operation
fdiv.h f24, f4, f6, rdn # perform operation
fdiv.h f24, f4, f6, rmm # perform operation
fdiv.h f24, f4, f6, rne # perform operation
fdiv.h f24, f4, f6, rtz # perform operation
fdiv.h f24, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x3, 0xaf12e2c5fd9f1192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fdiv.h f3, f24, f2, dyn # perform operation
fdiv.h f3, f24, f2, rdn # perform operation
fdiv.h f3, f24, f2, rmm # perform operation
fdiv.h f3, f24, f2, rne # perform operation
fdiv.h f3, f24, f2, rtz # perform operation
fdiv.h f3, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x24, 0x50febbb0570226bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fdiv.h f24, f20, f6, dyn # perform operation
fdiv.h f24, f20, f6, rdn # perform operation
fdiv.h f24, f20, f6, rmm # perform operation
fdiv.h f24, f20, f6, rne # perform operation
fdiv.h f24, f20, f6, rtz # perform operation
fdiv.h f24, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x29, 0x8b8bf31a309d2107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fdiv.h f29, f3, f17, dyn # perform operation
fdiv.h f29, f3, f17, rdn # perform operation
fdiv.h f29, f3, f17, rmm # perform operation
fdiv.h f29, f3, f17, rne # perform operation
fdiv.h f29, f3, f17, rtz # perform operation
fdiv.h f29, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x22, 0xd31c2fac4772449c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fdiv.h f22, f13, f10, dyn # perform operation
fdiv.h f22, f13, f10, rdn # perform operation
fdiv.h f22, f13, f10, rmm # perform operation
fdiv.h f22, f13, f10, rne # perform operation
fdiv.h f22, f13, f10, rtz # perform operation
fdiv.h f22, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x17, 0xa113491192f8fe9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fdiv.h f17, f12, f30, dyn # perform operation
fdiv.h f17, f12, f30, rdn # perform operation
fdiv.h f17, f12, f30, rmm # perform operation
fdiv.h f17, f12, f30, rne # perform operation
fdiv.h f17, f12, f30, rtz # perform operation
fdiv.h f17, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x24, 0x5f3c58b6494dff37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fdiv.h f24, f25, f16, dyn # perform operation
fdiv.h f24, f25, f16, rdn # perform operation
fdiv.h f24, f25, f16, rmm # perform operation
fdiv.h f24, f25, f16, rne # perform operation
fdiv.h f24, f25, f16, rtz # perform operation
fdiv.h f24, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f24, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f24, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x20, 0x4e0babc8f816a039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fdiv.h f20, f12, f11, dyn # perform operation
fdiv.h f20, f12, f11, rdn # perform operation
fdiv.h f20, f12, f11, rmm # perform operation
fdiv.h f20, f12, f11, rne # perform operation
fdiv.h f20, f12, f11, rtz # perform operation
fdiv.h f20, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x2, 0xeacec06d858e4ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fdiv.h f2, f21, f10, dyn # perform operation
fdiv.h f2, f21, f10, rdn # perform operation
fdiv.h f2, f21, f10, rmm # perform operation
fdiv.h f2, f21, f10, rne # perform operation
fdiv.h f2, f21, f10, rtz # perform operation
fdiv.h f2, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f2, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f2, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f2, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f2, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f2, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x31, 0x57ffa6cbbe151474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fdiv.h f31, f13, f21, dyn # perform operation
fdiv.h f31, f13, f21, rdn # perform operation
fdiv.h f31, f13, f21, rmm # perform operation
fdiv.h f31, f13, f21, rne # perform operation
fdiv.h f31, f13, f21, rtz # perform operation
fdiv.h f31, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x23, 0x5ee585864e49e54f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fdiv.h f23, f6, f5, dyn # perform operation
fdiv.h f23, f6, f5, rdn # perform operation
fdiv.h f23, f6, f5, rmm # perform operation
fdiv.h f23, f6, f5, rne # perform operation
fdiv.h f23, f6, f5, rtz # perform operation
fdiv.h f23, f6, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f23, f6, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f23, f6, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f23, f6, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f23, f6, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f23, f6, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x27, 0x9fd7779234522cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fdiv.h f27, f18, f24, dyn # perform operation
fdiv.h f27, f18, f24, rdn # perform operation
fdiv.h f27, f18, f24, rmm # perform operation
fdiv.h f27, f18, f24, rne # perform operation
fdiv.h f27, f18, f24, rtz # perform operation
fdiv.h f27, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x13, 0x61b6f4c11bf586ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fdiv.h f13, f10, f16, dyn # perform operation
fdiv.h f13, f10, f16, rdn # perform operation
fdiv.h f13, f10, f16, rmm # perform operation
fdiv.h f13, f10, f16, rne # perform operation
fdiv.h f13, f10, f16, rtz # perform operation
fdiv.h f13, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x14, 0x96de37e7b6639661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fdiv.h f14, f7, f12, dyn # perform operation
fdiv.h f14, f7, f12, rdn # perform operation
fdiv.h f14, f7, f12, rmm # perform operation
fdiv.h f14, f7, f12, rne # perform operation
fdiv.h f14, f7, f12, rtz # perform operation
fdiv.h f14, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x13, 0x22f12542ff0250e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fdiv.h f13, f25, f8, dyn # perform operation
fdiv.h f13, f25, f8, rdn # perform operation
fdiv.h f13, f25, f8, rmm # perform operation
fdiv.h f13, f25, f8, rne # perform operation
fdiv.h f13, f25, f8, rtz # perform operation
fdiv.h f13, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f13, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f13, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x14, 0x111e7c0bbeabaaa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fdiv.h f14, f24, f21, dyn # perform operation
fdiv.h f14, f24, f21, rdn # perform operation
fdiv.h f14, f24, f21, rmm # perform operation
fdiv.h f14, f24, f21, rne # perform operation
fdiv.h f14, f24, f21, rtz # perform operation
fdiv.h f14, f24, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f24, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f24, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f24, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f24, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x10, 0xf51f9edf74110028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
fdiv.h f10, f8, f2, dyn # perform operation
fdiv.h f10, f8, f2, rdn # perform operation
fdiv.h f10, f8, f2, rmm # perform operation
fdiv.h f10, f8, f2, rne # perform operation
fdiv.h f10, f8, f2, rtz # perform operation
fdiv.h f10, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x26, 0xcdb5ca66a204de39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fdiv.h f26, f7, f16, dyn # perform operation
fdiv.h f26, f7, f16, rdn # perform operation
fdiv.h f26, f7, f16, rmm # perform operation
fdiv.h f26, f7, f16, rne # perform operation
fdiv.h f26, f7, f16, rtz # perform operation
fdiv.h f26, f7, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f7, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x28, 0xd2bb17fc45a8527f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fdiv.h f28, f27, f14, dyn # perform operation
fdiv.h f28, f27, f14, rdn # perform operation
fdiv.h f28, f27, f14, rmm # perform operation
fdiv.h f28, f27, f14, rne # perform operation
fdiv.h f28, f27, f14, rtz # perform operation
fdiv.h f28, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x28, 0x86d274f31c47096a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fdiv.h f28, f8, f25, dyn # perform operation
fdiv.h f28, f8, f25, rdn # perform operation
fdiv.h f28, f8, f25, rmm # perform operation
fdiv.h f28, f8, f25, rne # perform operation
fdiv.h f28, f8, f25, rtz # perform operation
fdiv.h f28, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x1, 0x0d61d1e72cd07f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fdiv.h f1, f4, f8, dyn # perform operation
fdiv.h f1, f4, f8, rdn # perform operation
fdiv.h f1, f4, f8, rmm # perform operation
fdiv.h f1, f4, f8, rne # perform operation
fdiv.h f1, f4, f8, rtz # perform operation
fdiv.h f1, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x4, 0xa84fab32098c975d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fdiv.h f4, f24, f31, dyn # perform operation
fdiv.h f4, f24, f31, rdn # perform operation
fdiv.h f4, f24, f31, rmm # perform operation
fdiv.h f4, f24, f31, rne # perform operation
fdiv.h f4, f24, f31, rtz # perform operation
fdiv.h f4, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f4, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f4, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f4, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f4, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f4, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x18, 0xd2ffcf2bdb20f1d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fdiv.h f18, f27, f4, dyn # perform operation
fdiv.h f18, f27, f4, rdn # perform operation
fdiv.h f18, f27, f4, rmm # perform operation
fdiv.h f18, f27, f4, rne # perform operation
fdiv.h f18, f27, f4, rtz # perform operation
fdiv.h f18, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x25, 0xb49aef65fa91aecc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fdiv.h f25, f6, f24, dyn # perform operation
fdiv.h f25, f6, f24, rdn # perform operation
fdiv.h f25, f6, f24, rmm # perform operation
fdiv.h f25, f6, f24, rne # perform operation
fdiv.h f25, f6, f24, rtz # perform operation
fdiv.h f25, f6, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f6, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x20, 0x93b362f23e1020ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fdiv.h f20, f21, f29, dyn # perform operation
fdiv.h f20, f21, f29, rdn # perform operation
fdiv.h f20, f21, f29, rmm # perform operation
fdiv.h f20, f21, f29, rne # perform operation
fdiv.h f20, f21, f29, rtz # perform operation
fdiv.h f20, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x16, 0x49446c11c46ec815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fdiv.h f16, f27, f11, dyn # perform operation
fdiv.h f16, f27, f11, rdn # perform operation
fdiv.h f16, f27, f11, rmm # perform operation
fdiv.h f16, f27, f11, rne # perform operation
fdiv.h f16, f27, f11, rtz # perform operation
fdiv.h f16, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x16, 0x741870cdd801aae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fdiv.h f16, f12, f30, dyn # perform operation
fdiv.h f16, f12, f30, rdn # perform operation
fdiv.h f16, f12, f30, rmm # perform operation
fdiv.h f16, f12, f30, rne # perform operation
fdiv.h f16, f12, f30, rtz # perform operation
fdiv.h f16, f12, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f16, f12, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f16, f12, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f16, f12, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f16, f12, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f16, f12, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x1, 0x2da880730a5f28fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fdiv.h f1, f2, f4, dyn # perform operation
fdiv.h f1, f2, f4, rdn # perform operation
fdiv.h f1, f2, f4, rmm # perform operation
fdiv.h f1, f2, f4, rne # perform operation
fdiv.h f1, f2, f4, rtz # perform operation
fdiv.h f1, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x17, 0xc22a18ce6e25c889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fdiv.h f17, f4, f7, dyn # perform operation
fdiv.h f17, f4, f7, rdn # perform operation
fdiv.h f17, f4, f7, rmm # perform operation
fdiv.h f17, f4, f7, rne # perform operation
fdiv.h f17, f4, f7, rtz # perform operation
fdiv.h f17, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f17, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f17, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f17, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f17, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f17, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x15, 0xe61b2f2451c20b38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fdiv.h f15, f23, f21, dyn # perform operation
fdiv.h f15, f23, f21, rdn # perform operation
fdiv.h f15, f23, f21, rmm # perform operation
fdiv.h f15, f23, f21, rne # perform operation
fdiv.h f15, f23, f21, rtz # perform operation
fdiv.h f15, f23, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f23, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x14, 0x5f826162a40f6652 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fdiv.h f14, f8, f9, dyn # perform operation
fdiv.h f14, f8, f9, rdn # perform operation
fdiv.h f14, f8, f9, rmm # perform operation
fdiv.h f14, f8, f9, rne # perform operation
fdiv.h f14, f8, f9, rtz # perform operation
fdiv.h f14, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x14, 0xfb74aae3dd61ee9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fdiv.h f14, f16, f5, dyn # perform operation
fdiv.h f14, f16, f5, rdn # perform operation
fdiv.h f14, f16, f5, rmm # perform operation
fdiv.h f14, f16, f5, rne # perform operation
fdiv.h f14, f16, f5, rtz # perform operation
fdiv.h f14, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x28, 0x7cd1f9f8810a2d26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fdiv.h f28, f17, f18, dyn # perform operation
fdiv.h f28, f17, f18, rdn # perform operation
fdiv.h f28, f17, f18, rmm # perform operation
fdiv.h f28, f17, f18, rne # perform operation
fdiv.h f28, f17, f18, rtz # perform operation
fdiv.h f28, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x31, 0x67dd4a260cf2bcde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fdiv.h f31, f10, f17, dyn # perform operation
fdiv.h f31, f10, f17, rdn # perform operation
fdiv.h f31, f10, f17, rmm # perform operation
fdiv.h f31, f10, f17, rne # perform operation
fdiv.h f31, f10, f17, rtz # perform operation
fdiv.h f31, f10, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f10, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f10, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f10, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f10, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x7, 0xe16b474de88fe74c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fdiv.h f7, f21, f13, dyn # perform operation
fdiv.h f7, f21, f13, rdn # perform operation
fdiv.h f7, f21, f13, rmm # perform operation
fdiv.h f7, f21, f13, rne # perform operation
fdiv.h f7, f21, f13, rtz # perform operation
fdiv.h f7, f21, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f7, f21, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f7, f21, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f7, f21, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f7, f21, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f7, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x21, 0x0ff85ef6b0f582c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fdiv.h f21, f22, f31, dyn # perform operation
fdiv.h f21, f22, f31, rdn # perform operation
fdiv.h f21, f22, f31, rmm # perform operation
fdiv.h f21, f22, f31, rne # perform operation
fdiv.h f21, f22, f31, rtz # perform operation
fdiv.h f21, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x1, 0xe58ca8af03e7427b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fdiv.h f1, f12, f8, dyn # perform operation
fdiv.h f1, f12, f8, rdn # perform operation
fdiv.h f1, f12, f8, rmm # perform operation
fdiv.h f1, f12, f8, rne # perform operation
fdiv.h f1, f12, f8, rtz # perform operation
fdiv.h f1, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x26, 0xfdc8e96e2baf5f15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fdiv.h f26, f13, f10, dyn # perform operation
fdiv.h f26, f13, f10, rdn # perform operation
fdiv.h f26, f13, f10, rmm # perform operation
fdiv.h f26, f13, f10, rne # perform operation
fdiv.h f26, f13, f10, rtz # perform operation
fdiv.h f26, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x10, 0xa8f0a5728fb7b977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fdiv.h f10, f19, f2, dyn # perform operation
fdiv.h f10, f19, f2, rdn # perform operation
fdiv.h f10, f19, f2, rmm # perform operation
fdiv.h f10, f19, f2, rne # perform operation
fdiv.h f10, f19, f2, rtz # perform operation
fdiv.h f10, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x25, 0x3e2cf8c1be865f3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fdiv.h f25, f17, f20, dyn # perform operation
fdiv.h f25, f17, f20, rdn # perform operation
fdiv.h f25, f17, f20, rmm # perform operation
fdiv.h f25, f17, f20, rne # perform operation
fdiv.h f25, f17, f20, rtz # perform operation
fdiv.h f25, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x25, 0x8c90a3701b7cbca6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fdiv.h f25, f4, f8, dyn # perform operation
fdiv.h f25, f4, f8, rdn # perform operation
fdiv.h f25, f4, f8, rmm # perform operation
fdiv.h f25, f4, f8, rne # perform operation
fdiv.h f25, f4, f8, rtz # perform operation
fdiv.h f25, f4, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f4, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f4, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f4, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f4, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x14, 0x6055a8972531ea8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fdiv.h f14, f16, f5, dyn # perform operation
fdiv.h f14, f16, f5, rdn # perform operation
fdiv.h f14, f16, f5, rmm # perform operation
fdiv.h f14, f16, f5, rne # perform operation
fdiv.h f14, f16, f5, rtz # perform operation
fdiv.h f14, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x26, 0x64ccc35c9a736d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fdiv.h f26, f5, f1, dyn # perform operation
fdiv.h f26, f5, f1, rdn # perform operation
fdiv.h f26, f5, f1, rmm # perform operation
fdiv.h f26, f5, f1, rne # perform operation
fdiv.h f26, f5, f1, rtz # perform operation
fdiv.h f26, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x26, 0xb1aca703f1b28c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fdiv.h f26, f27, f9, dyn # perform operation
fdiv.h f26, f27, f9, rdn # perform operation
fdiv.h f26, f27, f9, rmm # perform operation
fdiv.h f26, f27, f9, rne # perform operation
fdiv.h f26, f27, f9, rtz # perform operation
fdiv.h f26, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x22, 0x50be2ee27f1448c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fdiv.h f22, f20, f30, dyn # perform operation
fdiv.h f22, f20, f30, rdn # perform operation
fdiv.h f22, f20, f30, rmm # perform operation
fdiv.h f22, f20, f30, rne # perform operation
fdiv.h f22, f20, f30, rtz # perform operation
fdiv.h f22, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f22, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f22, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f22, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f22, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f22, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x3, 0x308becfd8c86f7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
fdiv.h f3, f29, f9, dyn # perform operation
fdiv.h f3, f29, f9, rdn # perform operation
fdiv.h f3, f29, f9, rmm # perform operation
fdiv.h f3, f29, f9, rne # perform operation
fdiv.h f3, f29, f9, rtz # perform operation
fdiv.h f3, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f3, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f3, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f3, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f3, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f3, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x6, 0x42cd4e1b5515ace2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fdiv.h f6, f18, f1, dyn # perform operation
fdiv.h f6, f18, f1, rdn # perform operation
fdiv.h f6, f18, f1, rmm # perform operation
fdiv.h f6, f18, f1, rne # perform operation
fdiv.h f6, f18, f1, rtz # perform operation
fdiv.h f6, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f6, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f6, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f6, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f6, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f6, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x21, 0xa10c279220c89f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fdiv.h f21, f17, f19, dyn # perform operation
fdiv.h f21, f17, f19, rdn # perform operation
fdiv.h f21, f17, f19, rmm # perform operation
fdiv.h f21, f17, f19, rne # perform operation
fdiv.h f21, f17, f19, rtz # perform operation
fdiv.h f21, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x15, 0x271b6ae4360b018c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fdiv.h f15, f25, f22, dyn # perform operation
fdiv.h f15, f25, f22, rdn # perform operation
fdiv.h f15, f25, f22, rmm # perform operation
fdiv.h f15, f25, f22, rne # perform operation
fdiv.h f15, f25, f22, rtz # perform operation
fdiv.h f15, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x14, 0xfc326cd282f35c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fdiv.h f14, f21, f2, dyn # perform operation
fdiv.h f14, f21, f2, rdn # perform operation
fdiv.h f14, f21, f2, rmm # perform operation
fdiv.h f14, f21, f2, rne # perform operation
fdiv.h f14, f21, f2, rtz # perform operation
fdiv.h f14, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f14, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f14, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f14, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f14, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f14, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x28, 0x681d732b1fd54d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fdiv.h f28, f25, f16, dyn # perform operation
fdiv.h f28, f25, f16, rdn # perform operation
fdiv.h f28, f25, f16, rmm # perform operation
fdiv.h f28, f25, f16, rne # perform operation
fdiv.h f28, f25, f16, rtz # perform operation
fdiv.h f28, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f28, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f28, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f28, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f28, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f28, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x12, 0x0b511c3ccfb5d273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fdiv.h f12, f31, f13, dyn # perform operation
fdiv.h f12, f31, f13, rdn # perform operation
fdiv.h f12, f31, f13, rmm # perform operation
fdiv.h f12, f31, f13, rne # perform operation
fdiv.h f12, f31, f13, rtz # perform operation
fdiv.h f12, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x10, 0x0029e0967887f13c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fdiv.h f10, f4, f30, dyn # perform operation
fdiv.h f10, f4, f30, rdn # perform operation
fdiv.h f10, f4, f30, rmm # perform operation
fdiv.h f10, f4, f30, rne # perform operation
fdiv.h f10, f4, f30, rtz # perform operation
fdiv.h f10, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x20, 0x68f5c9f5a9793f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fdiv.h f20, f23, f10, dyn # perform operation
fdiv.h f20, f23, f10, rdn # perform operation
fdiv.h f20, f23, f10, rmm # perform operation
fdiv.h f20, f23, f10, rne # perform operation
fdiv.h f20, f23, f10, rtz # perform operation
fdiv.h f20, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x20, 0xfda1e22232d60041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fdiv.h f20, f2, f16, dyn # perform operation
fdiv.h f20, f2, f16, rdn # perform operation
fdiv.h f20, f2, f16, rmm # perform operation
fdiv.h f20, f2, f16, rne # perform operation
fdiv.h f20, f2, f16, rtz # perform operation
fdiv.h f20, f2, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f20, f2, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f20, f2, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f20, f2, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f20, f2, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f20, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x26, 0xe64669a252df1d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fdiv.h f26, f20, f23, dyn # perform operation
fdiv.h f26, f20, f23, rdn # perform operation
fdiv.h f26, f20, f23, rmm # perform operation
fdiv.h f26, f20, f23, rne # perform operation
fdiv.h f26, f20, f23, rtz # perform operation
fdiv.h f26, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x15, 0xd4cab014d889c1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fdiv.h f15, f19, f21, dyn # perform operation
fdiv.h f15, f19, f21, rdn # perform operation
fdiv.h f15, f19, f21, rmm # perform operation
fdiv.h f15, f19, f21, rne # perform operation
fdiv.h f15, f19, f21, rtz # perform operation
fdiv.h f15, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x25, 0x9fdec3913f4aa374 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fdiv.h f25, f30, f8, dyn # perform operation
fdiv.h f25, f30, f8, rdn # perform operation
fdiv.h f25, f30, f8, rmm # perform operation
fdiv.h f25, f30, f8, rne # perform operation
fdiv.h f25, f30, f8, rtz # perform operation
fdiv.h f25, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f25, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f25, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f25, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f25, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f25, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x8, 0x72c21a6e8176533f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fdiv.h f8, f19, f1, dyn # perform operation
fdiv.h f8, f19, f1, rdn # perform operation
fdiv.h f8, f19, f1, rmm # perform operation
fdiv.h f8, f19, f1, rne # perform operation
fdiv.h f8, f19, f1, rtz # perform operation
fdiv.h f8, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f8, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x5, 0x8c85ba07d62e5927 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fdiv.h f5, f17, f1, dyn # perform operation
fdiv.h f5, f17, f1, rdn # perform operation
fdiv.h f5, f17, f1, rmm # perform operation
fdiv.h f5, f17, f1, rne # perform operation
fdiv.h f5, f17, f1, rtz # perform operation
fdiv.h f5, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x15, 0x3c7801a257eace24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fdiv.h f15, f3, f29, dyn # perform operation
fdiv.h f15, f3, f29, rdn # perform operation
fdiv.h f15, f3, f29, rmm # perform operation
fdiv.h f15, f3, f29, rne # perform operation
fdiv.h f15, f3, f29, rtz # perform operation
fdiv.h f15, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x27, 0x7152f5f066abe9c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fdiv.h f27, f18, f3, dyn # perform operation
fdiv.h f27, f18, f3, rdn # perform operation
fdiv.h f27, f18, f3, rmm # perform operation
fdiv.h f27, f18, f3, rne # perform operation
fdiv.h f27, f18, f3, rtz # perform operation
fdiv.h f27, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x12, 0xf137d890332c64c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
fdiv.h f12, f23, f31, dyn # perform operation
fdiv.h f12, f23, f31, rdn # perform operation
fdiv.h f12, f23, f31, rmm # perform operation
fdiv.h f12, f23, f31, rne # perform operation
fdiv.h f12, f23, f31, rtz # perform operation
fdiv.h f12, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x12, 0xc982fe42169b1309 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fdiv.h f12, f31, f5, dyn # perform operation
fdiv.h f12, f31, f5, rdn # perform operation
fdiv.h f12, f31, f5, rmm # perform operation
fdiv.h f12, f31, f5, rne # perform operation
fdiv.h f12, f31, f5, rtz # perform operation
fdiv.h f12, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f12, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f12, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x1, 0x01a64491052b4fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fdiv.h f1, f22, f9, dyn # perform operation
fdiv.h f1, f22, f9, rdn # perform operation
fdiv.h f1, f22, f9, rmm # perform operation
fdiv.h f1, f22, f9, rne # perform operation
fdiv.h f1, f22, f9, rtz # perform operation
fdiv.h f1, f22, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f22, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f22, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f22, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f22, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x26, 0xc3715e45b9c597d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fdiv.h f26, f8, f11, dyn # perform operation
fdiv.h f26, f8, f11, rdn # perform operation
fdiv.h f26, f8, f11, rmm # perform operation
fdiv.h f26, f8, f11, rne # perform operation
fdiv.h f26, f8, f11, rtz # perform operation
fdiv.h f26, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x26, 0xcd7aa5d21bb6a9ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fdiv.h f26, f2, f11, dyn # perform operation
fdiv.h f26, f2, f11, rdn # perform operation
fdiv.h f26, f2, f11, rmm # perform operation
fdiv.h f26, f2, f11, rne # perform operation
fdiv.h f26, f2, f11, rtz # perform operation
fdiv.h f26, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x1, 0xf0c44e7c33f0333a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fdiv.h f1, f11, f29, dyn # perform operation
fdiv.h f1, f11, f29, rdn # perform operation
fdiv.h f1, f11, f29, rmm # perform operation
fdiv.h f1, f11, f29, rne # perform operation
fdiv.h f1, f11, f29, rtz # perform operation
fdiv.h f1, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f1, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f1, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f1, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f1, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f1, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x5, 0xacb168f759e242ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fdiv.h f5, f10, f20, dyn # perform operation
fdiv.h f5, f10, f20, rdn # perform operation
fdiv.h f5, f10, f20, rmm # perform operation
fdiv.h f5, f10, f20, rne # perform operation
fdiv.h f5, f10, f20, rtz # perform operation
fdiv.h f5, f10, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f10, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x5, 0xecae7a9f93d5aba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fdiv.h f5, f4, f13, dyn # perform operation
fdiv.h f5, f4, f13, rdn # perform operation
fdiv.h f5, f4, f13, rmm # perform operation
fdiv.h f5, f4, f13, rne # perform operation
fdiv.h f5, f4, f13, rtz # perform operation
fdiv.h f5, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x26, 0xe3e91921db77105b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fdiv.h f26, f6, f22, dyn # perform operation
fdiv.h f26, f6, f22, rdn # perform operation
fdiv.h f26, f6, f22, rmm # perform operation
fdiv.h f26, f6, f22, rne # perform operation
fdiv.h f26, f6, f22, rtz # perform operation
fdiv.h f26, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x31, 0x29b0b29082456bff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fdiv.h f31, f13, f12, dyn # perform operation
fdiv.h f31, f13, f12, rdn # perform operation
fdiv.h f31, f13, f12, rmm # perform operation
fdiv.h f31, f13, f12, rne # perform operation
fdiv.h f31, f13, f12, rtz # perform operation
fdiv.h f31, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x27, 0x40abcb6fa4a393b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fdiv.h f27, f5, f28, dyn # perform operation
fdiv.h f27, f5, f28, rdn # perform operation
fdiv.h f27, f5, f28, rmm # perform operation
fdiv.h f27, f5, f28, rne # perform operation
fdiv.h f27, f5, f28, rtz # perform operation
fdiv.h f27, f5, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f27, f5, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f27, f5, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f27, f5, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f27, f5, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f27, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x5, 0x351ac0cbce927dec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
fdiv.h f5, f14, f22, dyn # perform operation
fdiv.h f5, f14, f22, rdn # perform operation
fdiv.h f5, f14, f22, rmm # perform operation
fdiv.h f5, f14, f22, rne # perform operation
fdiv.h f5, f14, f22, rtz # perform operation
fdiv.h f5, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f5, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f5, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f5, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f5, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f5, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x26, 0xac86f45a0cb61656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fdiv.h f26, f4, f1, dyn # perform operation
fdiv.h f26, f4, f1, rdn # perform operation
fdiv.h f26, f4, f1, rmm # perform operation
fdiv.h f26, f4, f1, rne # perform operation
fdiv.h f26, f4, f1, rtz # perform operation
fdiv.h f26, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f26, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f26, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f26, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f26, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f26, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x21, 0x62ed8d856b190335 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fdiv.h f21, f22, f16, dyn # perform operation
fdiv.h f21, f22, f16, rdn # perform operation
fdiv.h f21, f22, f16, rmm # perform operation
fdiv.h f21, f22, f16, rne # perform operation
fdiv.h f21, f22, f16, rtz # perform operation
fdiv.h f21, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f21, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f21, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x18, 0xe14265c5aff6c281 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fdiv.h f18, f31, f20, dyn # perform operation
fdiv.h f18, f31, f20, rdn # perform operation
fdiv.h f18, f31, f20, rmm # perform operation
fdiv.h f18, f31, f20, rne # perform operation
fdiv.h f18, f31, f20, rtz # perform operation
fdiv.h f18, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f18, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f18, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x31, 0x6fa3cbd391889da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fdiv.h f31, f17, f3, dyn # perform operation
fdiv.h f31, f17, f3, rdn # perform operation
fdiv.h f31, f17, f3, rmm # perform operation
fdiv.h f31, f17, f3, rne # perform operation
fdiv.h f31, f17, f3, rtz # perform operation
fdiv.h f31, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f31, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f31, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x15, 0x0d12fe9c5aa60744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fdiv.h f15, f10, f19, dyn # perform operation
fdiv.h f15, f10, f19, rdn # perform operation
fdiv.h f15, f10, f19, rmm # perform operation
fdiv.h f15, f10, f19, rne # perform operation
fdiv.h f15, f10, f19, rtz # perform operation
fdiv.h f15, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f15, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f15, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f15, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f15, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f15, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x29, 0x263dd012f17bf837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
fdiv.h f29, f21, f15, dyn # perform operation
fdiv.h f29, f21, f15, rdn # perform operation
fdiv.h f29, f21, f15, rmm # perform operation
fdiv.h f29, f21, f15, rne # perform operation
fdiv.h f29, f21, f15, rtz # perform operation
fdiv.h f29, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f29, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f29, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f29, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f29, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f29, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x10, 0x864a21071dd38eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fdiv.h f10, f28, f23, dyn # perform operation
fdiv.h f10, f28, f23, rdn # perform operation
fdiv.h f10, f28, f23, rmm # perform operation
fdiv.h f10, f28, f23, rne # perform operation
fdiv.h f10, f28, f23, rtz # perform operation
fdiv.h f10, f28, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fdiv.h f10, f28, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fdiv.h f10, f28, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fdiv.h f10, f28, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fdiv.h f10, f28, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fdiv.h f10, f28, f23 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x116e8ef3bf857291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb8b6ac4bc528c31 # load x3 with value 0xbb8b6ac4bc528c31
sw x3, 0(x2) # store 0xbb8b6ac4bc528c31 in memory
flh f13, 0(x2) # load 0xbb8b6ac4bc528c31 from memory into f13
li x3, 0xfabe1460d11c7ab4 # load x3 with value 0xfabe1460d11c7ab4
sw x3, 0(x2) # store 0xfabe1460d11c7ab4 in memory
flh f28, 0(x2) # load 0xfabe1460d11c7ab4 from memory into f28
fdiv.h f0, f13, f28 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x530a7ae6dedd97d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0c68e520d299aad # load x3 with value 0xf0c68e520d299aad
sw x3, 0(x2) # store 0xf0c68e520d299aad in memory
flh f23, 0(x2) # load 0xf0c68e520d299aad from memory into f23
li x3, 0x227f1ebbcb240835 # load x3 with value 0x227f1ebbcb240835
sw x3, 0(x2) # store 0x227f1ebbcb240835 in memory
flh f9, 0(x2) # load 0x227f1ebbcb240835 from memory into f9
fdiv.h f1, f23, f9 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x3c6d39521e86caab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6f7041644733695 # load x3 with value 0xa6f7041644733695
sw x3, 0(x2) # store 0xa6f7041644733695 in memory
flh f23, 0(x2) # load 0xa6f7041644733695 from memory into f23
li x3, 0xc7cc223412f91178 # load x3 with value 0xc7cc223412f91178
sw x3, 0(x2) # store 0xc7cc223412f91178 in memory
flh f17, 0(x2) # load 0xc7cc223412f91178 from memory into f17
fdiv.h f2, f23, f17 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x30240887b85f3123 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcccfbda282cef70 # load x3 with value 0xdcccfbda282cef70
sw x3, 0(x2) # store 0xdcccfbda282cef70 in memory
flh f13, 0(x2) # load 0xdcccfbda282cef70 from memory into f13
li x3, 0x106136700c7f1e9a # load x3 with value 0x106136700c7f1e9a
sw x3, 0(x2) # store 0x106136700c7f1e9a in memory
flh f6, 0(x2) # load 0x106136700c7f1e9a from memory into f6
fdiv.h f3, f13, f6 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xda79f68225c78d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3e9345a962fc6e6 # load x3 with value 0xb3e9345a962fc6e6
sw x3, 0(x2) # store 0xb3e9345a962fc6e6 in memory
flh f28, 0(x2) # load 0xb3e9345a962fc6e6 from memory into f28
li x3, 0x775da4c510719734 # load x3 with value 0x775da4c510719734
sw x3, 0(x2) # store 0x775da4c510719734 in memory
flh f14, 0(x2) # load 0x775da4c510719734 from memory into f14
fdiv.h f4, f28, f14 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xacec87e228fc4e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b3094cd542ff00f # load x3 with value 0x9b3094cd542ff00f
sw x3, 0(x2) # store 0x9b3094cd542ff00f in memory
flh f10, 0(x2) # load 0x9b3094cd542ff00f from memory into f10
li x3, 0xf82418cb1b902cf # load x3 with value 0xf82418cb1b902cf
sw x3, 0(x2) # store 0xf82418cb1b902cf in memory
flh f13, 0(x2) # load 0xf82418cb1b902cf from memory into f13
fdiv.h f5, f10, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x5eb86b43468a149f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99507a49dabdde73 # load x3 with value 0x99507a49dabdde73
sw x3, 0(x2) # store 0x99507a49dabdde73 in memory
flh f5, 0(x2) # load 0x99507a49dabdde73 from memory into f5
li x3, 0x5e489a055b499803 # load x3 with value 0x5e489a055b499803
sw x3, 0(x2) # store 0x5e489a055b499803 in memory
flh f27, 0(x2) # load 0x5e489a055b499803 from memory into f27
fdiv.h f6, f5, f27 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x25f8175bcd3c1c47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61d457b0f6779635 # load x3 with value 0x61d457b0f6779635
sw x3, 0(x2) # store 0x61d457b0f6779635 in memory
flh f23, 0(x2) # load 0x61d457b0f6779635 from memory into f23
li x3, 0x6bdff8da35149e3 # load x3 with value 0x6bdff8da35149e3
sw x3, 0(x2) # store 0x6bdff8da35149e3 in memory
flh f28, 0(x2) # load 0x6bdff8da35149e3 from memory into f28
fdiv.h f7, f23, f28 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x4f97c9b9861f8609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5258749e7f1cc7b4 # load x3 with value 0x5258749e7f1cc7b4
sw x3, 0(x2) # store 0x5258749e7f1cc7b4 in memory
flh f11, 0(x2) # load 0x5258749e7f1cc7b4 from memory into f11
li x3, 0xe9368cef5d14537e # load x3 with value 0xe9368cef5d14537e
sw x3, 0(x2) # store 0xe9368cef5d14537e in memory
flh f23, 0(x2) # load 0xe9368cef5d14537e from memory into f23
fdiv.h f8, f11, f23 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x1725d15cb3e4cf73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fc0ec8e29a57902 # load x3 with value 0x9fc0ec8e29a57902
sw x3, 0(x2) # store 0x9fc0ec8e29a57902 in memory
flh f16, 0(x2) # load 0x9fc0ec8e29a57902 from memory into f16
li x3, 0x7de23ba6b3f90f27 # load x3 with value 0x7de23ba6b3f90f27
sw x3, 0(x2) # store 0x7de23ba6b3f90f27 in memory
flh f13, 0(x2) # load 0x7de23ba6b3f90f27 from memory into f13
fdiv.h f9, f16, f13 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x916edb240f9fcf1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3aff9515f6f716d4 # load x3 with value 0x3aff9515f6f716d4
sw x3, 0(x2) # store 0x3aff9515f6f716d4 in memory
flh f12, 0(x2) # load 0x3aff9515f6f716d4 from memory into f12
li x3, 0x679260620c8fc865 # load x3 with value 0x679260620c8fc865
sw x3, 0(x2) # store 0x679260620c8fc865 in memory
flh f17, 0(x2) # load 0x679260620c8fc865 from memory into f17
fdiv.h f10, f12, f17 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x6f4f08122f301cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813e266b392d46ab # load x3 with value 0x813e266b392d46ab
sw x3, 0(x2) # store 0x813e266b392d46ab in memory
flh f15, 0(x2) # load 0x813e266b392d46ab from memory into f15
li x3, 0x6c369d1a785ec629 # load x3 with value 0x6c369d1a785ec629
sw x3, 0(x2) # store 0x6c369d1a785ec629 in memory
flh f19, 0(x2) # load 0x6c369d1a785ec629 from memory into f19
fdiv.h f11, f15, f19 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xd25175926ef904f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d9cb6d738a1f5f2 # load x3 with value 0x8d9cb6d738a1f5f2
sw x3, 0(x2) # store 0x8d9cb6d738a1f5f2 in memory
flh f12, 0(x2) # load 0x8d9cb6d738a1f5f2 from memory into f12
li x3, 0xe60d5176cc08dc0e # load x3 with value 0xe60d5176cc08dc0e
sw x3, 0(x2) # store 0xe60d5176cc08dc0e in memory
flh f10, 0(x2) # load 0xe60d5176cc08dc0e from memory into f10
fdiv.h f12, f12, f10 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8114fe6b7b42da7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c2a8cf01fe7fae7 # load x3 with value 0x5c2a8cf01fe7fae7
sw x3, 0(x2) # store 0x5c2a8cf01fe7fae7 in memory
flh f25, 0(x2) # load 0x5c2a8cf01fe7fae7 from memory into f25
li x3, 0xfecafff71ab33a2b # load x3 with value 0xfecafff71ab33a2b
sw x3, 0(x2) # store 0xfecafff71ab33a2b in memory
flh f6, 0(x2) # load 0xfecafff71ab33a2b from memory into f6
fdiv.h f13, f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x50e889cbab4b2e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54d1d445952a5b6b # load x3 with value 0x54d1d445952a5b6b
sw x3, 0(x2) # store 0x54d1d445952a5b6b in memory
flh f7, 0(x2) # load 0x54d1d445952a5b6b from memory into f7
li x3, 0xd6d9948a0eb0c185 # load x3 with value 0xd6d9948a0eb0c185
sw x3, 0(x2) # store 0xd6d9948a0eb0c185 in memory
flh f8, 0(x2) # load 0xd6d9948a0eb0c185 from memory into f8
fdiv.h f14, f7, f8 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x756a711642ec0768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5a7b7e79aa3edde # load x3 with value 0xa5a7b7e79aa3edde
sw x3, 0(x2) # store 0xa5a7b7e79aa3edde in memory
flh f27, 0(x2) # load 0xa5a7b7e79aa3edde from memory into f27
li x3, 0x2ef8d92520a3b8b0 # load x3 with value 0x2ef8d92520a3b8b0
sw x3, 0(x2) # store 0x2ef8d92520a3b8b0 in memory
flh f5, 0(x2) # load 0x2ef8d92520a3b8b0 from memory into f5
fdiv.h f15, f27, f5 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x1827ec963e449c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c2d7a439103a6e8 # load x3 with value 0x3c2d7a439103a6e8
sw x3, 0(x2) # store 0x3c2d7a439103a6e8 in memory
flh f30, 0(x2) # load 0x3c2d7a439103a6e8 from memory into f30
li x3, 0xe7120e9793b3f0d1 # load x3 with value 0xe7120e9793b3f0d1
sw x3, 0(x2) # store 0xe7120e9793b3f0d1 in memory
flh f22, 0(x2) # load 0xe7120e9793b3f0d1 from memory into f22
fdiv.h f16, f30, f22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xfea2fb829a7be488 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc130e510faa0f924 # load x3 with value 0xc130e510faa0f924
sw x3, 0(x2) # store 0xc130e510faa0f924 in memory
flh f17, 0(x2) # load 0xc130e510faa0f924 from memory into f17
li x3, 0x65e632d439a8ff00 # load x3 with value 0x65e632d439a8ff00
sw x3, 0(x2) # store 0x65e632d439a8ff00 in memory
flh f6, 0(x2) # load 0x65e632d439a8ff00 from memory into f6
fdiv.h f17, f17, f6 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x8ff857473fbe185d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbad3dcce36c89f3d # load x3 with value 0xbad3dcce36c89f3d
sw x3, 0(x2) # store 0xbad3dcce36c89f3d in memory
flh f20, 0(x2) # load 0xbad3dcce36c89f3d from memory into f20
li x3, 0xb632b929cbd2dd3b # load x3 with value 0xb632b929cbd2dd3b
sw x3, 0(x2) # store 0xb632b929cbd2dd3b in memory
flh f24, 0(x2) # load 0xb632b929cbd2dd3b from memory into f24
fdiv.h f18, f20, f24 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xd172101404f4c98b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34ab00e74ab109ff # load x3 with value 0x34ab00e74ab109ff
sw x3, 0(x2) # store 0x34ab00e74ab109ff in memory
flh f27, 0(x2) # load 0x34ab00e74ab109ff from memory into f27
li x3, 0x3af96b0bbee35106 # load x3 with value 0x3af96b0bbee35106
sw x3, 0(x2) # store 0x3af96b0bbee35106 in memory
flh f31, 0(x2) # load 0x3af96b0bbee35106 from memory into f31
fdiv.h f19, f27, f31 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x7815fc521a73c377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6632afa6fc516264 # load x3 with value 0x6632afa6fc516264
sw x3, 0(x2) # store 0x6632afa6fc516264 in memory
flh f9, 0(x2) # load 0x6632afa6fc516264 from memory into f9
li x3, 0xb8708f62eb3cad50 # load x3 with value 0xb8708f62eb3cad50
sw x3, 0(x2) # store 0xb8708f62eb3cad50 in memory
flh f25, 0(x2) # load 0xb8708f62eb3cad50 from memory into f25
fdiv.h f20, f9, f25 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x7a059c72e976c860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8713dcdf1561c12 # load x3 with value 0xc8713dcdf1561c12
sw x3, 0(x2) # store 0xc8713dcdf1561c12 in memory
flh f24, 0(x2) # load 0xc8713dcdf1561c12 from memory into f24
li x3, 0x2badc750247cd91d # load x3 with value 0x2badc750247cd91d
sw x3, 0(x2) # store 0x2badc750247cd91d in memory
flh f23, 0(x2) # load 0x2badc750247cd91d from memory into f23
fdiv.h f21, f24, f23 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x641235cf54e87ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76a48c3767d1cd14 # load x3 with value 0x76a48c3767d1cd14
sw x3, 0(x2) # store 0x76a48c3767d1cd14 in memory
flh f13, 0(x2) # load 0x76a48c3767d1cd14 from memory into f13
li x3, 0xbb91cc09f810018c # load x3 with value 0xbb91cc09f810018c
sw x3, 0(x2) # store 0xbb91cc09f810018c in memory
flh f12, 0(x2) # load 0xbb91cc09f810018c from memory into f12
fdiv.h f22, f13, f12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x6d36a40c3d83ac78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x762a145c7f1bedc # load x3 with value 0x762a145c7f1bedc
sw x3, 0(x2) # store 0x762a145c7f1bedc in memory
flh f22, 0(x2) # load 0x762a145c7f1bedc from memory into f22
li x3, 0x191e45bfdc3ffee # load x3 with value 0x191e45bfdc3ffee
sw x3, 0(x2) # store 0x191e45bfdc3ffee in memory
flh f20, 0(x2) # load 0x191e45bfdc3ffee from memory into f20
fdiv.h f23, f22, f20 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x7e3ad240cca065da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91c9c6a6d2942f7d # load x3 with value 0x91c9c6a6d2942f7d
sw x3, 0(x2) # store 0x91c9c6a6d2942f7d in memory
flh f8, 0(x2) # load 0x91c9c6a6d2942f7d from memory into f8
li x3, 0x4c96ce6c959aba5e # load x3 with value 0x4c96ce6c959aba5e
sw x3, 0(x2) # store 0x4c96ce6c959aba5e in memory
flh f7, 0(x2) # load 0x4c96ce6c959aba5e from memory into f7
fdiv.h f24, f8, f7 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xd9869832479d4744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x242ff8aa83f31902 # load x3 with value 0x242ff8aa83f31902
sw x3, 0(x2) # store 0x242ff8aa83f31902 in memory
flh f9, 0(x2) # load 0x242ff8aa83f31902 from memory into f9
li x3, 0x5b02f3253d71820a # load x3 with value 0x5b02f3253d71820a
sw x3, 0(x2) # store 0x5b02f3253d71820a in memory
flh f21, 0(x2) # load 0x5b02f3253d71820a from memory into f21
fdiv.h f25, f9, f21 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xba495941cd5c00a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e875f66f2e6f6bf # load x3 with value 0x7e875f66f2e6f6bf
sw x3, 0(x2) # store 0x7e875f66f2e6f6bf in memory
flh f19, 0(x2) # load 0x7e875f66f2e6f6bf from memory into f19
li x3, 0x5855e91893815317 # load x3 with value 0x5855e91893815317
sw x3, 0(x2) # store 0x5855e91893815317 in memory
flh f29, 0(x2) # load 0x5855e91893815317 from memory into f29
fdiv.h f26, f19, f29 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x1f795469be1f781e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4a0d9a811840600 # load x3 with value 0xf4a0d9a811840600
sw x3, 0(x2) # store 0xf4a0d9a811840600 in memory
flh f9, 0(x2) # load 0xf4a0d9a811840600 from memory into f9
li x3, 0xffa4fbeb9f0ba46c # load x3 with value 0xffa4fbeb9f0ba46c
sw x3, 0(x2) # store 0xffa4fbeb9f0ba46c in memory
flh f27, 0(x2) # load 0xffa4fbeb9f0ba46c from memory into f27
fdiv.h f27, f9, f27 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x97b1028d61cfc9de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf3ead89418e2d11 # load x3 with value 0xaf3ead89418e2d11
sw x3, 0(x2) # store 0xaf3ead89418e2d11 in memory
flh f15, 0(x2) # load 0xaf3ead89418e2d11 from memory into f15
li x3, 0x2b200f4cfb8c3917 # load x3 with value 0x2b200f4cfb8c3917
sw x3, 0(x2) # store 0x2b200f4cfb8c3917 in memory
flh f2, 0(x2) # load 0x2b200f4cfb8c3917 from memory into f2
fdiv.h f28, f15, f2 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x3e90a5f1a18df5be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7de14fa9238b08b # load x3 with value 0xf7de14fa9238b08b
sw x3, 0(x2) # store 0xf7de14fa9238b08b in memory
flh f23, 0(x2) # load 0xf7de14fa9238b08b from memory into f23
li x3, 0x7917684bf8b6876c # load x3 with value 0x7917684bf8b6876c
sw x3, 0(x2) # store 0x7917684bf8b6876c in memory
flh f22, 0(x2) # load 0x7917684bf8b6876c from memory into f22
fdiv.h f29, f23, f22 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x50880165901a2bc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50d84ec35de8b812 # load x3 with value 0x50d84ec35de8b812
sw x3, 0(x2) # store 0x50d84ec35de8b812 in memory
flh f30, 0(x2) # load 0x50d84ec35de8b812 from memory into f30
li x3, 0xf99f8bba39623990 # load x3 with value 0xf99f8bba39623990
sw x3, 0(x2) # store 0xf99f8bba39623990 in memory
flh f8, 0(x2) # load 0xf99f8bba39623990 from memory into f8
fdiv.h f30, f30, f8 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xb3706a1068d73336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3062bd20a2952545 # load x3 with value 0x3062bd20a2952545
sw x3, 0(x2) # store 0x3062bd20a2952545 in memory
flh f22, 0(x2) # load 0x3062bd20a2952545 from memory into f22
li x3, 0x5a7e77773911cc39 # load x3 with value 0x5a7e77773911cc39
sw x3, 0(x2) # store 0x5a7e77773911cc39 in memory
flh f1, 0(x2) # load 0x5a7e77773911cc39 from memory into f1
fdiv.h f31, f22, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x30, 0x86f1c104db1ab94c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8a21c9d31e8b340 # load x3 with value 0xe8a21c9d31e8b340
sw x3, 0(x2) # store 0xe8a21c9d31e8b340 in memory
flh f0, 0(x2) # load 0xe8a21c9d31e8b340 from memory into f0
li x3, 0x90f3d809130f0565 # load x3 with value 0x90f3d809130f0565
sw x3, 0(x2) # store 0x90f3d809130f0565 in memory
flh f26, 0(x2) # load 0x90f3d809130f0565 from memory into f26
fdiv.h f30, f0, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0xa8ca6fcc58994822 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe6d05b6ebcda9de # load x3 with value 0xfe6d05b6ebcda9de
sw x3, 0(x2) # store 0xfe6d05b6ebcda9de in memory
flh f1, 0(x2) # load 0xfe6d05b6ebcda9de from memory into f1
li x3, 0x9f7ae4a1faa5f4cc # load x3 with value 0x9f7ae4a1faa5f4cc
sw x3, 0(x2) # store 0x9f7ae4a1faa5f4cc in memory
flh f30, 0(x2) # load 0x9f7ae4a1faa5f4cc from memory into f30
fdiv.h f28, f1, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x26, 0x107298f3431d84eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe23924d15a6087dd # load x3 with value 0xe23924d15a6087dd
sw x3, 0(x2) # store 0xe23924d15a6087dd in memory
flh f2, 0(x2) # load 0xe23924d15a6087dd from memory into f2
li x3, 0x3b9462bb8d3cbc79 # load x3 with value 0x3b9462bb8d3cbc79
sw x3, 0(x2) # store 0x3b9462bb8d3cbc79 in memory
flh f11, 0(x2) # load 0x3b9462bb8d3cbc79 from memory into f11
fdiv.h f26, f2, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x9, 0xc249965b45d2a2cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fc5e4656a489d59 # load x3 with value 0x9fc5e4656a489d59
sw x3, 0(x2) # store 0x9fc5e4656a489d59 in memory
flh f3, 0(x2) # load 0x9fc5e4656a489d59 from memory into f3
li x3, 0x289067cc8e9bf126 # load x3 with value 0x289067cc8e9bf126
sw x3, 0(x2) # store 0x289067cc8e9bf126 in memory
flh f12, 0(x2) # load 0x289067cc8e9bf126 from memory into f12
fdiv.h f9, f3, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x9, 0x908ce2f7d7577776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe328640a9a5a1bb2 # load x3 with value 0xe328640a9a5a1bb2
sw x3, 0(x2) # store 0xe328640a9a5a1bb2 in memory
flh f4, 0(x2) # load 0xe328640a9a5a1bb2 from memory into f4
li x3, 0x657c989a5ca4f605 # load x3 with value 0x657c989a5ca4f605
sw x3, 0(x2) # store 0x657c989a5ca4f605 in memory
flh f12, 0(x2) # load 0x657c989a5ca4f605 from memory into f12
fdiv.h f9, f4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x1, 0xcdee76eb53b65153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x270bdddae8743a89 # load x3 with value 0x270bdddae8743a89
sw x3, 0(x2) # store 0x270bdddae8743a89 in memory
flh f5, 0(x2) # load 0x270bdddae8743a89 from memory into f5
li x3, 0xb1f265d8c5f665 # load x3 with value 0xb1f265d8c5f665
sw x3, 0(x2) # store 0xb1f265d8c5f665 in memory
flh f8, 0(x2) # load 0xb1f265d8c5f665 from memory into f8
fdiv.h f1, f5, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x3, 0xa4de0b2c35fff0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73e853a2621dc76a # load x3 with value 0x73e853a2621dc76a
sw x3, 0(x2) # store 0x73e853a2621dc76a in memory
flh f6, 0(x2) # load 0x73e853a2621dc76a from memory into f6
li x3, 0xb57c25439aabb82d # load x3 with value 0xb57c25439aabb82d
sw x3, 0(x2) # store 0xb57c25439aabb82d in memory
flh f2, 0(x2) # load 0xb57c25439aabb82d from memory into f2
fdiv.h f3, f6, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x24, 0x2b423c85734ed0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc63473d4c40c1223 # load x3 with value 0xc63473d4c40c1223
sw x3, 0(x2) # store 0xc63473d4c40c1223 in memory
flh f7, 0(x2) # load 0xc63473d4c40c1223 from memory into f7
li x3, 0x20e8d777894ea081 # load x3 with value 0x20e8d777894ea081
sw x3, 0(x2) # store 0x20e8d777894ea081 in memory
flh f20, 0(x2) # load 0x20e8d777894ea081 from memory into f20
fdiv.h f24, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x6, 0xbe2f53b0fb998591 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f9d88391a496e1e # load x3 with value 0x8f9d88391a496e1e
sw x3, 0(x2) # store 0x8f9d88391a496e1e in memory
flh f8, 0(x2) # load 0x8f9d88391a496e1e from memory into f8
li x3, 0x13c307937fe08fc4 # load x3 with value 0x13c307937fe08fc4
sw x3, 0(x2) # store 0x13c307937fe08fc4 in memory
flh f2, 0(x2) # load 0x13c307937fe08fc4 from memory into f2
fdiv.h f6, f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x15, 0x58bf34a926a92bd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4394a81ab7e385 # load x3 with value 0xe4394a81ab7e385
sw x3, 0(x2) # store 0xe4394a81ab7e385 in memory
flh f9, 0(x2) # load 0xe4394a81ab7e385 from memory into f9
li x3, 0x6f39f4226c75f6c2 # load x3 with value 0x6f39f4226c75f6c2
sw x3, 0(x2) # store 0x6f39f4226c75f6c2 in memory
flh f21, 0(x2) # load 0x6f39f4226c75f6c2 from memory into f21
fdiv.h f15, f9, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x24, 0x42906867684ecaeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x57b563d4df29f2df # load x3 with value 0x57b563d4df29f2df
sw x3, 0(x2) # store 0x57b563d4df29f2df in memory
flh f10, 0(x2) # load 0x57b563d4df29f2df from memory into f10
li x3, 0x149c61d642b66d83 # load x3 with value 0x149c61d642b66d83
sw x3, 0(x2) # store 0x149c61d642b66d83 in memory
flh f17, 0(x2) # load 0x149c61d642b66d83 from memory into f17
fdiv.h f24, f10, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x16, 0xbc22dfdad6e84156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd65058ad96d4fbb7 # load x3 with value 0xd65058ad96d4fbb7
sw x3, 0(x2) # store 0xd65058ad96d4fbb7 in memory
flh f11, 0(x2) # load 0xd65058ad96d4fbb7 from memory into f11
li x3, 0x78e01931c6d653a0 # load x3 with value 0x78e01931c6d653a0
sw x3, 0(x2) # store 0x78e01931c6d653a0 in memory
flh f30, 0(x2) # load 0x78e01931c6d653a0 from memory into f30
fdiv.h f16, f11, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x20, 0x327366a796980d88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x262366aabb724650 # load x3 with value 0x262366aabb724650
sw x3, 0(x2) # store 0x262366aabb724650 in memory
flh f12, 0(x2) # load 0x262366aabb724650 from memory into f12
li x3, 0x4a4c0b34cbced4f9 # load x3 with value 0x4a4c0b34cbced4f9
sw x3, 0(x2) # store 0x4a4c0b34cbced4f9 in memory
flh f29, 0(x2) # load 0x4a4c0b34cbced4f9 from memory into f29
fdiv.h f20, f12, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x24, 0x935c2e13dd4d59e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b1f7afb6352c6aa # load x3 with value 0x2b1f7afb6352c6aa
sw x3, 0(x2) # store 0x2b1f7afb6352c6aa in memory
flh f13, 0(x2) # load 0x2b1f7afb6352c6aa from memory into f13
li x3, 0xf18d1dbf82d519a2 # load x3 with value 0xf18d1dbf82d519a2
sw x3, 0(x2) # store 0xf18d1dbf82d519a2 in memory
flh f16, 0(x2) # load 0xf18d1dbf82d519a2 from memory into f16
fdiv.h f24, f13, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x12, 0x915fcd129bce57e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3fdf93942a0fb7e # load x3 with value 0xb3fdf93942a0fb7e
sw x3, 0(x2) # store 0xb3fdf93942a0fb7e in memory
flh f14, 0(x2) # load 0xb3fdf93942a0fb7e from memory into f14
li x3, 0x95cb68e4d530bb5d # load x3 with value 0x95cb68e4d530bb5d
sw x3, 0(x2) # store 0x95cb68e4d530bb5d in memory
flh f8, 0(x2) # load 0x95cb68e4d530bb5d from memory into f8
fdiv.h f12, f14, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x4, 0xde4e8744e6bd6fde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x857d9b0435af3f0a # load x3 with value 0x857d9b0435af3f0a
sw x3, 0(x2) # store 0x857d9b0435af3f0a in memory
flh f15, 0(x2) # load 0x857d9b0435af3f0a from memory into f15
li x3, 0xfdf9c3729640ec8e # load x3 with value 0xfdf9c3729640ec8e
sw x3, 0(x2) # store 0xfdf9c3729640ec8e in memory
flh f25, 0(x2) # load 0xfdf9c3729640ec8e from memory into f25
fdiv.h f4, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x30, 0xfe8961d4e4d03e61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e5a2cc94840fda0 # load x3 with value 0x9e5a2cc94840fda0
sw x3, 0(x2) # store 0x9e5a2cc94840fda0 in memory
flh f16, 0(x2) # load 0x9e5a2cc94840fda0 from memory into f16
li x3, 0x3342049826ca2391 # load x3 with value 0x3342049826ca2391
sw x3, 0(x2) # store 0x3342049826ca2391 in memory
flh f18, 0(x2) # load 0x3342049826ca2391 from memory into f18
fdiv.h f30, f16, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x15, 0xe2a069923fbdeacb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0e0daf97537cdf # load x3 with value 0xf0e0daf97537cdf
sw x3, 0(x2) # store 0xf0e0daf97537cdf in memory
flh f17, 0(x2) # load 0xf0e0daf97537cdf from memory into f17
li x3, 0x291b411ec09ecd01 # load x3 with value 0x291b411ec09ecd01
sw x3, 0(x2) # store 0x291b411ec09ecd01 in memory
flh f6, 0(x2) # load 0x291b411ec09ecd01 from memory into f6
fdiv.h f15, f17, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x22, 0xb59985f809ec693f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6193c1abf728b4ab # load x3 with value 0x6193c1abf728b4ab
sw x3, 0(x2) # store 0x6193c1abf728b4ab in memory
flh f18, 0(x2) # load 0x6193c1abf728b4ab from memory into f18
li x3, 0xd5468473a196df5c # load x3 with value 0xd5468473a196df5c
sw x3, 0(x2) # store 0xd5468473a196df5c in memory
flh f7, 0(x2) # load 0xd5468473a196df5c from memory into f7
fdiv.h f22, f18, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x4, 0x052e707057bca9bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd46aeee15db23f5b # load x3 with value 0xd46aeee15db23f5b
sw x3, 0(x2) # store 0xd46aeee15db23f5b in memory
flh f19, 0(x2) # load 0xd46aeee15db23f5b from memory into f19
li x3, 0x27f0f2dcf60f1b0d # load x3 with value 0x27f0f2dcf60f1b0d
sw x3, 0(x2) # store 0x27f0f2dcf60f1b0d in memory
flh f29, 0(x2) # load 0x27f0f2dcf60f1b0d from memory into f29
fdiv.h f4, f19, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x24, 0x785764964cb46212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x136069412939043d # load x3 with value 0x136069412939043d
sw x3, 0(x2) # store 0x136069412939043d in memory
flh f20, 0(x2) # load 0x136069412939043d from memory into f20
li x3, 0x9efacfc74d0c5853 # load x3 with value 0x9efacfc74d0c5853
sw x3, 0(x2) # store 0x9efacfc74d0c5853 in memory
flh f17, 0(x2) # load 0x9efacfc74d0c5853 from memory into f17
fdiv.h f24, f20, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x6, 0x4e80de5a6ad3aed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4946bb5bff71d27 # load x3 with value 0xa4946bb5bff71d27
sw x3, 0(x2) # store 0xa4946bb5bff71d27 in memory
flh f21, 0(x2) # load 0xa4946bb5bff71d27 from memory into f21
li x3, 0xf58e9aa9d65988a7 # load x3 with value 0xf58e9aa9d65988a7
sw x3, 0(x2) # store 0xf58e9aa9d65988a7 in memory
flh f26, 0(x2) # load 0xf58e9aa9d65988a7 from memory into f26
fdiv.h f6, f21, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x23, 0xdccdaf7135f7dc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x299440583f336175 # load x3 with value 0x299440583f336175
sw x3, 0(x2) # store 0x299440583f336175 in memory
flh f22, 0(x2) # load 0x299440583f336175 from memory into f22
li x3, 0xe47c23b698e2550b # load x3 with value 0xe47c23b698e2550b
sw x3, 0(x2) # store 0xe47c23b698e2550b in memory
flh f2, 0(x2) # load 0xe47c23b698e2550b from memory into f2
fdiv.h f23, f22, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x9, 0xaa22bd9fe17bc412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc5100e10c6df97b # load x3 with value 0xbc5100e10c6df97b
sw x3, 0(x2) # store 0xbc5100e10c6df97b in memory
flh f23, 0(x2) # load 0xbc5100e10c6df97b from memory into f23
li x3, 0x4fe331c972a84959 # load x3 with value 0x4fe331c972a84959
sw x3, 0(x2) # store 0x4fe331c972a84959 in memory
flh f21, 0(x2) # load 0x4fe331c972a84959 from memory into f21
fdiv.h f9, f23, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x30, 0xf589204910a0202c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x878a9ee61f678169 # load x3 with value 0x878a9ee61f678169
sw x3, 0(x2) # store 0x878a9ee61f678169 in memory
flh f24, 0(x2) # load 0x878a9ee61f678169 from memory into f24
li x3, 0xef4e2e023411d5ac # load x3 with value 0xef4e2e023411d5ac
sw x3, 0(x2) # store 0xef4e2e023411d5ac in memory
flh f6, 0(x2) # load 0xef4e2e023411d5ac from memory into f6
fdiv.h f30, f24, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x1, 0xf6e907247ed16b6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ff01b3cf60ca59b # load x3 with value 0x9ff01b3cf60ca59b
sw x3, 0(x2) # store 0x9ff01b3cf60ca59b in memory
flh f25, 0(x2) # load 0x9ff01b3cf60ca59b from memory into f25
li x3, 0xf9756efe9ae753e2 # load x3 with value 0xf9756efe9ae753e2
sw x3, 0(x2) # store 0xf9756efe9ae753e2 in memory
flh f17, 0(x2) # load 0xf9756efe9ae753e2 from memory into f17
fdiv.h f1, f25, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x10, 0xd7951b59a257bcb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4e7fe0d5070336c # load x3 with value 0xd4e7fe0d5070336c
sw x3, 0(x2) # store 0xd4e7fe0d5070336c in memory
flh f26, 0(x2) # load 0xd4e7fe0d5070336c from memory into f26
li x3, 0x9097261728d0667f # load x3 with value 0x9097261728d0667f
sw x3, 0(x2) # store 0x9097261728d0667f in memory
flh f14, 0(x2) # load 0x9097261728d0667f from memory into f14
fdiv.h f10, f26, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x29, 0x430707038c8832db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9012ca58854da20b # load x3 with value 0x9012ca58854da20b
sw x3, 0(x2) # store 0x9012ca58854da20b in memory
flh f27, 0(x2) # load 0x9012ca58854da20b from memory into f27
li x3, 0xd60e9cab1e7a23a # load x3 with value 0xd60e9cab1e7a23a
sw x3, 0(x2) # store 0xd60e9cab1e7a23a in memory
flh f21, 0(x2) # load 0xd60e9cab1e7a23a from memory into f21
fdiv.h f29, f27, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x22, 0xe6cfbe303ecf7a1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83fbbdc0c432833b # load x3 with value 0x83fbbdc0c432833b
sw x3, 0(x2) # store 0x83fbbdc0c432833b in memory
flh f28, 0(x2) # load 0x83fbbdc0c432833b from memory into f28
li x3, 0x1824b4156524718 # load x3 with value 0x1824b4156524718
sw x3, 0(x2) # store 0x1824b4156524718 in memory
flh f31, 0(x2) # load 0x1824b4156524718 from memory into f31
fdiv.h f22, f28, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x3, 0x9428ab3f184c7770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeda2eb8ac0648d03 # load x3 with value 0xeda2eb8ac0648d03
sw x3, 0(x2) # store 0xeda2eb8ac0648d03 in memory
flh f29, 0(x2) # load 0xeda2eb8ac0648d03 from memory into f29
li x3, 0x279e9eb659d7504c # load x3 with value 0x279e9eb659d7504c
sw x3, 0(x2) # store 0x279e9eb659d7504c in memory
flh f6, 0(x2) # load 0x279e9eb659d7504c from memory into f6
fdiv.h f3, f29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x31, 0xc829236e6b4cb28c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x954db6c585b8f61f # load x3 with value 0x954db6c585b8f61f
sw x3, 0(x2) # store 0x954db6c585b8f61f in memory
flh f30, 0(x2) # load 0x954db6c585b8f61f from memory into f30
li x3, 0x3d6dd91014e0f568 # load x3 with value 0x3d6dd91014e0f568
sw x3, 0(x2) # store 0x3d6dd91014e0f568 in memory
flh f17, 0(x2) # load 0x3d6dd91014e0f568 from memory into f17
fdiv.h f31, f30, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x9, 0x40ae31f153f9e5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd8fa4a603d9fdd4 # load x3 with value 0xdd8fa4a603d9fdd4
sw x3, 0(x2) # store 0xdd8fa4a603d9fdd4 in memory
flh f31, 0(x2) # load 0xdd8fa4a603d9fdd4 from memory into f31
li x3, 0x6eaff9636aad0026 # load x3 with value 0x6eaff9636aad0026
sw x3, 0(x2) # store 0x6eaff9636aad0026 in memory
flh f1, 0(x2) # load 0x6eaff9636aad0026 from memory into f1
fdiv.h f9, f31, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x22, 0xafe25c07d8269745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4715315b60de72ac # load x3 with value 0x4715315b60de72ac
sw x3, 0(x2) # store 0x4715315b60de72ac in memory
flh f1, 0(x2) # load 0x4715315b60de72ac from memory into f1
li x3, 0x817838ff827cf0b4 # load x3 with value 0x817838ff827cf0b4
sw x3, 0(x2) # store 0x817838ff827cf0b4 in memory
flh f0, 0(x2) # load 0x817838ff827cf0b4 from memory into f0
fdiv.h f22, f1, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x22, 0x1fec011c90db1956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3dba9fa701b633c6 # load x3 with value 0x3dba9fa701b633c6
sw x3, 0(x2) # store 0x3dba9fa701b633c6 in memory
flh f13, 0(x2) # load 0x3dba9fa701b633c6 from memory into f13
li x3, 0x84920ec44a8957a9 # load x3 with value 0x84920ec44a8957a9
sw x3, 0(x2) # store 0x84920ec44a8957a9 in memory
flh f1, 0(x2) # load 0x84920ec44a8957a9 from memory into f1
fdiv.h f22, f13, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x7, 0xeef556688e3b84bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x987a97fea1993a8f # load x3 with value 0x987a97fea1993a8f
sw x3, 0(x2) # store 0x987a97fea1993a8f in memory
flh f21, 0(x2) # load 0x987a97fea1993a8f from memory into f21
li x3, 0x13617b010170d6dd # load x3 with value 0x13617b010170d6dd
sw x3, 0(x2) # store 0x13617b010170d6dd in memory
flh f2, 0(x2) # load 0x13617b010170d6dd from memory into f2
fdiv.h f7, f21, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x9, 0x66d5b8c703e87e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36c6b016081f4410 # load x3 with value 0x36c6b016081f4410
sw x3, 0(x2) # store 0x36c6b016081f4410 in memory
flh f15, 0(x2) # load 0x36c6b016081f4410 from memory into f15
li x3, 0x9c3374c53f45dd29 # load x3 with value 0x9c3374c53f45dd29
sw x3, 0(x2) # store 0x9c3374c53f45dd29 in memory
flh f3, 0(x2) # load 0x9c3374c53f45dd29 from memory into f3
fdiv.h f9, f15, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x5, 0x124bfae0bdf70d37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f94ee323e74abb4 # load x3 with value 0x1f94ee323e74abb4
sw x3, 0(x2) # store 0x1f94ee323e74abb4 in memory
flh f1, 0(x2) # load 0x1f94ee323e74abb4 from memory into f1
li x3, 0x16c9f2df4de4ea0 # load x3 with value 0x16c9f2df4de4ea0
sw x3, 0(x2) # store 0x16c9f2df4de4ea0 in memory
flh f4, 0(x2) # load 0x16c9f2df4de4ea0 from memory into f4
fdiv.h f5, f1, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x5, 0xa59b6801b311aa8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x213b40601dd37cce # load x3 with value 0x213b40601dd37cce
sw x3, 0(x2) # store 0x213b40601dd37cce in memory
flh f15, 0(x2) # load 0x213b40601dd37cce from memory into f15
li x3, 0x28509ba08f9912f5 # load x3 with value 0x28509ba08f9912f5
sw x3, 0(x2) # store 0x28509ba08f9912f5 in memory
flh f5, 0(x2) # load 0x28509ba08f9912f5 from memory into f5
fdiv.h f5, f15, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x3, 0x78c7014b84ae330c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8784de63883a8e1c # load x3 with value 0x8784de63883a8e1c
sw x3, 0(x2) # store 0x8784de63883a8e1c in memory
flh f16, 0(x2) # load 0x8784de63883a8e1c from memory into f16
li x3, 0xf167d594fead89fa # load x3 with value 0xf167d594fead89fa
sw x3, 0(x2) # store 0xf167d594fead89fa in memory
flh f6, 0(x2) # load 0xf167d594fead89fa from memory into f6
fdiv.h f3, f16, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x16, 0x59fd8330cb1e99bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb52b323858c21fcf # load x3 with value 0xb52b323858c21fcf
sw x3, 0(x2) # store 0xb52b323858c21fcf in memory
flh f18, 0(x2) # load 0xb52b323858c21fcf from memory into f18
li x3, 0xe28bc61b930101c5 # load x3 with value 0xe28bc61b930101c5
sw x3, 0(x2) # store 0xe28bc61b930101c5 in memory
flh f7, 0(x2) # load 0xe28bc61b930101c5 from memory into f7
fdiv.h f16, f18, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x8, 0x0933c832baae0ff1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x649ea1d008f27e55 # load x3 with value 0x649ea1d008f27e55
sw x3, 0(x2) # store 0x649ea1d008f27e55 in memory
flh f15, 0(x2) # load 0x649ea1d008f27e55 from memory into f15
li x3, 0x146e7e4b46524f7d # load x3 with value 0x146e7e4b46524f7d
sw x3, 0(x2) # store 0x146e7e4b46524f7d in memory
flh f8, 0(x2) # load 0x146e7e4b46524f7d from memory into f8
fdiv.h f8, f15, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x23, 0xc982584a64ba0523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd41abed3041387ba # load x3 with value 0xd41abed3041387ba
sw x3, 0(x2) # store 0xd41abed3041387ba in memory
flh f12, 0(x2) # load 0xd41abed3041387ba from memory into f12
li x3, 0x9f119e3c5466b9f8 # load x3 with value 0x9f119e3c5466b9f8
sw x3, 0(x2) # store 0x9f119e3c5466b9f8 in memory
flh f9, 0(x2) # load 0x9f119e3c5466b9f8 from memory into f9
fdiv.h f23, f12, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x2, 0x445fa863eaa3fa42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62550afd9ed60808 # load x3 with value 0x62550afd9ed60808
sw x3, 0(x2) # store 0x62550afd9ed60808 in memory
flh f22, 0(x2) # load 0x62550afd9ed60808 from memory into f22
li x3, 0xb6fc3c595ed57575 # load x3 with value 0xb6fc3c595ed57575
sw x3, 0(x2) # store 0xb6fc3c595ed57575 in memory
flh f10, 0(x2) # load 0xb6fc3c595ed57575 from memory into f10
fdiv.h f2, f22, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x16, 0x2c3c2ad1a9e24788 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x154a5ef2694c2e9b # load x3 with value 0x154a5ef2694c2e9b
sw x3, 0(x2) # store 0x154a5ef2694c2e9b in memory
flh f27, 0(x2) # load 0x154a5ef2694c2e9b from memory into f27
li x3, 0x4d2cf8c9e145c392 # load x3 with value 0x4d2cf8c9e145c392
sw x3, 0(x2) # store 0x4d2cf8c9e145c392 in memory
flh f11, 0(x2) # load 0x4d2cf8c9e145c392 from memory into f11
fdiv.h f16, f27, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x10, 0x1dbc78e338615350 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93231f4e2d0e2a73 # load x3 with value 0x93231f4e2d0e2a73
sw x3, 0(x2) # store 0x93231f4e2d0e2a73 in memory
flh f1, 0(x2) # load 0x93231f4e2d0e2a73 from memory into f1
li x3, 0x81a086b5ad939c4f # load x3 with value 0x81a086b5ad939c4f
sw x3, 0(x2) # store 0x81a086b5ad939c4f in memory
flh f12, 0(x2) # load 0x81a086b5ad939c4f from memory into f12
fdiv.h f10, f1, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x11, 0x68e23564dbae8807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47149f6d1b28d5c4 # load x3 with value 0x47149f6d1b28d5c4
sw x3, 0(x2) # store 0x47149f6d1b28d5c4 in memory
flh f2, 0(x2) # load 0x47149f6d1b28d5c4 from memory into f2
li x3, 0x3536fec0668107c7 # load x3 with value 0x3536fec0668107c7
sw x3, 0(x2) # store 0x3536fec0668107c7 in memory
flh f13, 0(x2) # load 0x3536fec0668107c7 from memory into f13
fdiv.h f11, f2, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x14, 0x5c1b8baff461bf02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb101ff21fbb81aa5 # load x3 with value 0xb101ff21fbb81aa5
sw x3, 0(x2) # store 0xb101ff21fbb81aa5 in memory
flh f12, 0(x2) # load 0xb101ff21fbb81aa5 from memory into f12
li x3, 0xfb8c72b55f12d321 # load x3 with value 0xfb8c72b55f12d321
sw x3, 0(x2) # store 0xfb8c72b55f12d321 in memory
flh f14, 0(x2) # load 0xfb8c72b55f12d321 from memory into f14
fdiv.h f14, f12, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x30, 0x9d74dfe21d36ea46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7dd8f67ff62ba4b # load x3 with value 0xa7dd8f67ff62ba4b
sw x3, 0(x2) # store 0xa7dd8f67ff62ba4b in memory
flh f31, 0(x2) # load 0xa7dd8f67ff62ba4b from memory into f31
li x3, 0xc240d7c7089af6ae # load x3 with value 0xc240d7c7089af6ae
sw x3, 0(x2) # store 0xc240d7c7089af6ae in memory
flh f15, 0(x2) # load 0xc240d7c7089af6ae from memory into f15
fdiv.h f30, f31, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x6, 0x73b6709217897bb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa17c64f3c1ecd43 # load x3 with value 0xa17c64f3c1ecd43
sw x3, 0(x2) # store 0xa17c64f3c1ecd43 in memory
flh f11, 0(x2) # load 0xa17c64f3c1ecd43 from memory into f11
li x3, 0x49d91f8fa0d1a60b # load x3 with value 0x49d91f8fa0d1a60b
sw x3, 0(x2) # store 0x49d91f8fa0d1a60b in memory
flh f16, 0(x2) # load 0x49d91f8fa0d1a60b from memory into f16
fdiv.h f6, f11, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x5, 0x8fba35cfb2a13145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x546b2aeb5197e80c # load x3 with value 0x546b2aeb5197e80c
sw x3, 0(x2) # store 0x546b2aeb5197e80c in memory
flh f23, 0(x2) # load 0x546b2aeb5197e80c from memory into f23
li x3, 0xfc033b4b40a2a40d # load x3 with value 0xfc033b4b40a2a40d
sw x3, 0(x2) # store 0xfc033b4b40a2a40d in memory
flh f17, 0(x2) # load 0xfc033b4b40a2a40d from memory into f17
fdiv.h f5, f23, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x29, 0x6d08c79b91599e4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49c23e1574616f93 # load x3 with value 0x49c23e1574616f93
sw x3, 0(x2) # store 0x49c23e1574616f93 in memory
flh f2, 0(x2) # load 0x49c23e1574616f93 from memory into f2
li x3, 0x46a1e80174496caa # load x3 with value 0x46a1e80174496caa
sw x3, 0(x2) # store 0x46a1e80174496caa in memory
flh f18, 0(x2) # load 0x46a1e80174496caa from memory into f18
fdiv.h f29, f2, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x30, 0x641c35b561af5751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45a92b2dec915555 # load x3 with value 0x45a92b2dec915555
sw x3, 0(x2) # store 0x45a92b2dec915555 in memory
flh f27, 0(x2) # load 0x45a92b2dec915555 from memory into f27
li x3, 0x924b2216cdabd78a # load x3 with value 0x924b2216cdabd78a
sw x3, 0(x2) # store 0x924b2216cdabd78a in memory
flh f19, 0(x2) # load 0x924b2216cdabd78a from memory into f19
fdiv.h f30, f27, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x8, 0xec80e49ca7df96da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc771be778af202b1 # load x3 with value 0xc771be778af202b1
sw x3, 0(x2) # store 0xc771be778af202b1 in memory
flh f19, 0(x2) # load 0xc771be778af202b1 from memory into f19
li x3, 0x5027b36646fb9875 # load x3 with value 0x5027b36646fb9875
sw x3, 0(x2) # store 0x5027b36646fb9875 in memory
flh f20, 0(x2) # load 0x5027b36646fb9875 from memory into f20
fdiv.h f8, f19, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x1, 0xb1283971abad89af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3134537f0f0e5812 # load x3 with value 0x3134537f0f0e5812
sw x3, 0(x2) # store 0x3134537f0f0e5812 in memory
flh f25, 0(x2) # load 0x3134537f0f0e5812 from memory into f25
li x3, 0x609dfd8d62251f81 # load x3 with value 0x609dfd8d62251f81
sw x3, 0(x2) # store 0x609dfd8d62251f81 in memory
flh f21, 0(x2) # load 0x609dfd8d62251f81 from memory into f21
fdiv.h f1, f25, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x28, 0x1cfd6cc696cd9ba7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1178d84166164314 # load x3 with value 0x1178d84166164314
sw x3, 0(x2) # store 0x1178d84166164314 in memory
flh f15, 0(x2) # load 0x1178d84166164314 from memory into f15
li x3, 0xe4f76342dde7427e # load x3 with value 0xe4f76342dde7427e
sw x3, 0(x2) # store 0xe4f76342dde7427e in memory
flh f22, 0(x2) # load 0xe4f76342dde7427e from memory into f22
fdiv.h f28, f15, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x12, 0x0a9cb17a2fec3db3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2e22c45f465f375 # load x3 with value 0xf2e22c45f465f375
sw x3, 0(x2) # store 0xf2e22c45f465f375 in memory
flh f17, 0(x2) # load 0xf2e22c45f465f375 from memory into f17
li x3, 0x9285692a5c7abfb # load x3 with value 0x9285692a5c7abfb
sw x3, 0(x2) # store 0x9285692a5c7abfb in memory
flh f23, 0(x2) # load 0x9285692a5c7abfb from memory into f23
fdiv.h f12, f17, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x19, 0xbb46b9ad41e3f140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45f9b00a2c9af6a4 # load x3 with value 0x45f9b00a2c9af6a4
sw x3, 0(x2) # store 0x45f9b00a2c9af6a4 in memory
flh f14, 0(x2) # load 0x45f9b00a2c9af6a4 from memory into f14
li x3, 0xa718182e0a1eb01e # load x3 with value 0xa718182e0a1eb01e
sw x3, 0(x2) # store 0xa718182e0a1eb01e in memory
flh f24, 0(x2) # load 0xa718182e0a1eb01e from memory into f24
fdiv.h f19, f14, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x15, 0x710b73c09d7fcf8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1450e957cd0931ed # load x3 with value 0x1450e957cd0931ed
sw x3, 0(x2) # store 0x1450e957cd0931ed in memory
flh f18, 0(x2) # load 0x1450e957cd0931ed from memory into f18
li x3, 0xdb59862142261467 # load x3 with value 0xdb59862142261467
sw x3, 0(x2) # store 0xdb59862142261467 in memory
flh f25, 0(x2) # load 0xdb59862142261467 from memory into f25
fdiv.h f15, f18, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x27, 0x9505988090d5406c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa56e26c38ed37782 # load x3 with value 0xa56e26c38ed37782
sw x3, 0(x2) # store 0xa56e26c38ed37782 in memory
flh f11, 0(x2) # load 0xa56e26c38ed37782 from memory into f11
li x3, 0xc383a2399863bf09 # load x3 with value 0xc383a2399863bf09
sw x3, 0(x2) # store 0xc383a2399863bf09 in memory
flh f26, 0(x2) # load 0xc383a2399863bf09 from memory into f26
fdiv.h f27, f11, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x19, 0x54bbdcb393247842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe35858a843dfc4 # load x3 with value 0xe35858a843dfc4
sw x3, 0(x2) # store 0xe35858a843dfc4 in memory
flh f15, 0(x2) # load 0xe35858a843dfc4 from memory into f15
li x3, 0xc4fbce3788b801af # load x3 with value 0xc4fbce3788b801af
sw x3, 0(x2) # store 0xc4fbce3788b801af in memory
flh f27, 0(x2) # load 0xc4fbce3788b801af from memory into f27
fdiv.h f19, f15, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x9, 0x9c3b2e574a943f65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5db63e74cccc41b # load x3 with value 0xb5db63e74cccc41b
sw x3, 0(x2) # store 0xb5db63e74cccc41b in memory
flh f17, 0(x2) # load 0xb5db63e74cccc41b from memory into f17
li x3, 0xc70ae00b5f17a3f5 # load x3 with value 0xc70ae00b5f17a3f5
sw x3, 0(x2) # store 0xc70ae00b5f17a3f5 in memory
flh f28, 0(x2) # load 0xc70ae00b5f17a3f5 from memory into f28
fdiv.h f9, f17, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x14, 0x4ac5d87a597c1300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe6e0e7cd8c57131 # load x3 with value 0xbe6e0e7cd8c57131
sw x3, 0(x2) # store 0xbe6e0e7cd8c57131 in memory
flh f25, 0(x2) # load 0xbe6e0e7cd8c57131 from memory into f25
li x3, 0x197c7ad668b50822 # load x3 with value 0x197c7ad668b50822
sw x3, 0(x2) # store 0x197c7ad668b50822 in memory
flh f29, 0(x2) # load 0x197c7ad668b50822 from memory into f29
fdiv.h f14, f25, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x7, 0xf63c6206712272b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x785759a9a55f7cb # load x3 with value 0x785759a9a55f7cb
sw x3, 0(x2) # store 0x785759a9a55f7cb in memory
flh f13, 0(x2) # load 0x785759a9a55f7cb from memory into f13
li x3, 0x91bb9a71d44ce390 # load x3 with value 0x91bb9a71d44ce390
sw x3, 0(x2) # store 0x91bb9a71d44ce390 in memory
flh f30, 0(x2) # load 0x91bb9a71d44ce390 from memory into f30
fdiv.h f7, f13, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x1, 0x930c178a93b360ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbc062964f31d133 # load x3 with value 0xdbc062964f31d133
sw x3, 0(x2) # store 0xdbc062964f31d133 in memory
flh f10, 0(x2) # load 0xdbc062964f31d133 from memory into f10
li x3, 0xaf3a5da146420d1a # load x3 with value 0xaf3a5da146420d1a
sw x3, 0(x2) # store 0xaf3a5da146420d1a in memory
flh f31, 0(x2) # load 0xaf3a5da146420d1a from memory into f31
fdiv.h f1, f10, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
